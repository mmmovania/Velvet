#pragma once

#include <iostream>
#include <vector>
#include <glm/glm.hpp>

namespace Velvet
{
	using namespace std;

	class SpatialHashCPU
	{
	public:
		SpatialHashCPU(float spacing, int maxNumObjects)
		{
			m_particleDiameter2 = spacing * spacing;
			m_spacing = spacing * Global::simParams.hashCellSizeScalar;
			m_spacing2 = m_spacing * m_spacing;
			m_tableSize = 2 * maxNumObjects;
			m_cellStart = vector<int>(m_tableSize + 1, 0);
			m_cellEntries = vector<int>(maxNumObjects, 0);
			m_neighbors = vector<vector<int>>(maxNumObjects);
		}

		void SetInitialPositions(const vector<glm::vec3>& positions)
		{
			m_initialPositions.resize(positions.size());
			for (int i = 0; i < positions.size(); i++)
			{
				m_initialPositions[i] = positions[i];
			}
		}

		void HashObjects(const vector<glm::vec3>& positions)
		{
			std::fill(m_cellStart.begin(), m_cellStart.end(), 0);
			std::fill(m_cellEntries.begin(), m_cellEntries.end(), 0);

			// determine cell sizes
			for (int i = 0; i < positions.size(); i++)
			{
				int coords = HashPosition(positions[i]);
				m_cellStart[coords]++;
			}

			// determine cell starts
			int start = 0;
			for (int i = 0; i < m_tableSize; i++)
			{
				start += m_cellStart[i];
				m_cellStart[i] = start;
			}
			m_cellStart[m_tableSize] = start;

			// fill in object ids
			for (int i = 0; i < positions.size(); i++)
			{
				int coords = HashPosition(positions[i]);
				m_cellStart[coords]--;
				m_cellEntries[m_cellStart[coords]] = i;
			}

			CacheNeighbors(positions);
		}

		vector<int>& GetNeighbors(int i)
		{
			return m_neighbors[i];
		}

	private:
		vector<int> m_cellEntries;
		vector<int> m_cellStart;
		vector<vector<int>> m_neighbors;
		vector<glm::vec3> m_initialPositions;
		int m_tableSize;
		float m_spacing, m_spacing2, m_particleDiameter2;

		inline int ComputeIntCoord(float value)
		{
			return (int)floor(value / m_spacing);
		}

		inline int HashCoords(int x, int y, int z)
		{
			int h = (x * 92837111) ^ (y * 689287499) ^ (z * 283923481);	// fantasy function
			return abs(h % m_tableSize); 
		}

		inline int HashPosition(glm::vec3 position)
		{
			int x = ComputeIntCoord(position.x);
			int y = ComputeIntCoord(position.y);
			int z = ComputeIntCoord(position.z);

			int h = HashCoords(x, y, z);
			return h;
		}

		void CacheNeighbors(const vector<glm::vec3>& positions)
		{
			for (int i = 0; i < positions.size(); i++)
			{
				m_neighbors[i] = QueryNeighbors(positions, i);
			}
		}

		vector<int> QueryNeighbors(const vector<glm::vec3>& positions, int id)
		{
			vector<int> result;

			glm::vec3 position = positions[id];
			glm::vec3 originalPosition = m_initialPositions[id];

			int ix = ComputeIntCoord(position.x);
			int iy = ComputeIntCoord(position.y);
			int iz = ComputeIntCoord(position.z);

			 
			for (int x = ix - 1; x <= ix + 1; x++)
			{
				for (int y = iy - 1; y <= iy + 1; y++)
				{
					for (int z = iz - 1; z <= iz + 1; z++)
					{
						/*
						int h = HashCoords(x, y, z);
						int start = m_cellStart[h];
						int end = m_cellStart[h + 1];

						for (int i = start; i < end; i++)
						{
							result.push_back(m_cellEntries[i]);
						}
						*/

						int h = HashCoords(x, y, z);
						int start = m_cellStart[h];
						if (start == 0xffffffff) continue;

						int end = m_cellStart[h+1];

						for (int i = start; i < end; i++)
						{
							int neighbor = m_cellEntries[i];
							// ignore collision when particles are initially close
							if (neighbor != id &&
								(glm::distance(position, positions[neighbor]) < m_spacing) &&
								(glm::distance(originalPosition, m_initialPositions[neighbor]) > m_spacing))
							{ 
								//m_neighbors[id].push_back( neighbor );
								result.push_back(neighbor);
							}
						}
					}
				}
			}

			return result;
		}
	};
}