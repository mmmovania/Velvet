#pragma once

#include "Component.hpp"
#include "Actor.hpp"
#include "Global.hpp"
#include "Timer.hpp"

namespace Velvet
{
	
	class Collider : public Component
	{
	public:
		ColliderType type = ColliderType::Sphere;
		glm::vec3 lastPos;
		glm::vec3 velocity;
		glm::mat4 curTransform;
		glm::mat4 invCurTransform;
		glm::mat4 lastTransform;
		glm::vec3 scale;

		Collider(ColliderType _type)
		{
			name = __func__;
			type = _type;
		}

		void Start() override
		{
			lastPos = actor->transform->position;

			curTransform = actor->transform->matrix();
			invCurTransform = glm::inverse(curTransform);
			lastTransform = curTransform;
			scale = actor->transform->scale;
		}

		void FixedUpdate() override
		{
			auto curPos = actor->transform->position;
			velocity = (curPos - lastPos) / Timer::fixedDeltaTime();
			lastPos = actor->transform->position;

			lastTransform = curTransform;
			curTransform = actor->transform->matrix();
			invCurTransform = glm::inverse(curTransform);
			scale = actor->transform->scale;
		}

		virtual glm::vec3 ComputeSDF(glm::vec3 position)
		{
			if (type == ColliderType::Plane)
			{
				return ComputePlaneSDF(position);
			}
			else if (type == ColliderType::Sphere)
			{
				return ComputeSphereSDF(position);
			}
			else if (type == ColliderType::Cube)
			{
				return ComputeCubeSDF(position);
			} 
		}

		virtual glm::vec3 ComputePlaneSDF(glm::vec3 position)
		{
			if (position.y < Global::simParams.collisionMargin)
			{
				return glm::vec3(0, Global::simParams.collisionMargin - position.y, 0);
			}
			return glm::vec3(0);
		}

		virtual glm::vec3 ComputeSphereSDF(glm::vec3 position)
		{
			auto mypos = actor->transform->position;
			float radius = actor->transform->scale.x + Global::simParams.collisionMargin;

			auto diff = position - mypos;
			float distance = glm::length(diff);
			if (distance < radius)
			{
				auto direction = diff / distance;
				return (radius - distance) * direction;
			}
			return glm::vec3(0);
		}

		float sgn(float value) const 
		{ 
			return (value > 0) ? 1.0f : (value < 0 ? -1.0f : 0.0f); 
		}


		virtual glm::vec3 ComputeCubeSDF(glm::vec3 position)
		{  
			glm::vec3 correction = glm::vec3(0);
			glm::vec3 localPos = invCurTransform * glm::vec4(position, 1.0);
			glm::vec3 cubeSize = glm::vec3(0.5f, 0.5f, 0.5f) + Global::simParams.collisionMargin / scale;
			glm::vec3 offset = glm::abs(localPos) - cubeSize;

			float maxVal = max(offset.x, max(offset.y, offset.z));
			float minVal = min(offset.x, min(offset.y, offset.z));
			float midVal = offset.x + offset.y + offset.z - maxVal - minVal;
			float scalar = 1.0f;

			if (maxVal < 0)
			{
				// make cube corner round to avoid particle vibration	
				float margin = 0.03f;
				if (midVal > -margin) scalar = 0.2f;
				if (minVal > -margin)
				{
					glm::vec3 mask;
					mask.x = offset.x < 0 ? sgn(localPos.x) : 0;
					mask.y = offset.y < 0 ? sgn(localPos.y) : 0;
					mask.z = offset.z < 0 ? sgn(localPos.z) : 0;

					glm::vec3 vec = offset + glm::vec3(margin);
					float len = glm::length(vec);
					if (len < margin)
						correction = mask * glm::normalize(vec) * (margin - len);
				}
				else if (offset.x == maxVal)
				{
					correction = glm::vec3(copysignf(-offset.x, localPos.x), 0, 0);
				}
				else if (offset.y == maxVal)
				{
					correction = glm::vec3(0, copysignf(-offset.y, localPos.y), 0);
				}
				else if (offset.z == maxVal)
				{
					correction = glm::vec3(0, 0, copysignf(-offset.z, localPos.z));
				}
				return glm::vec3(curTransform * glm::vec4(scalar * correction, 0));
			}
			return glm::vec3(0, 0, 0);
		}

		glm::vec3 VelocityAt(const glm::vec3 targetPosition, float deltaTime)
		{
			glm::vec4 lastPos = lastTransform * invCurTransform * glm::vec4(targetPosition, 1.0);
			glm::vec3 vel = (targetPosition - glm::vec3(lastPos)) / deltaTime;
			return vel; 
		}
	};
}