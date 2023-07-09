# Install script for directory: F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Assimp")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libassimp5.2.5-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/lib/Debug/assimp-vc142-mtd.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/lib/Release/assimp-vc142-mt.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/lib/MinSizeRel/assimp-vc142-mt.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/lib/RelWithDebInfo/assimp-vc142-mt.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libassimp5.2.5" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/bin/Debug/assimp-vc142-mtd.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/bin/Release/assimp-vc142-mt.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/bin/MinSizeRel/assimp-vc142-mt.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/bin/RelWithDebInfo/assimp-vc142-mt.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/anim.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/aabb.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ai_assert.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/camera.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/color4.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/color4.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/code/../include/assimp/config.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ColladaMetaData.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/commonMetaData.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/defs.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/cfileio.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/light.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/material.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/material.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/matrix3x3.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/matrix3x3.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/matrix4x4.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/matrix4x4.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/mesh.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ObjMaterial.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/pbrmaterial.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/GltfMaterial.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/postprocess.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/quaternion.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/quaternion.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/scene.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/metadata.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/texture.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/types.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/vector2.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/vector2.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/vector3.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/vector3.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/version.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/cimport.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/AssertHandler.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/importerdesc.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Importer.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/DefaultLogger.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ProgressHandler.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/IOStream.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/IOSystem.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Logger.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/LogStream.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/NullLogger.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/cexport.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Exporter.hpp"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/DefaultIOStream.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/DefaultIOSystem.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ZipArchiveIOSystem.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SceneCombiner.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/fast_atof.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/qnan.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/BaseImporter.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Hash.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/MemoryIOWrapper.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ParsingUtils.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/StreamReader.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/StreamWriter.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/StringComparison.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/StringUtils.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SGSpatialSort.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/GenericProperty.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SpatialSort.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SkeletonMeshBuilder.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SmallVector.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SmoothingGroups.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/SmoothingGroups.inl"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/StandardShapes.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/RemoveComments.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Subdivision.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Vertex.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/LineSplitter.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/TinyFormatter.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Profiler.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/LogAux.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Bitmap.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/XMLTools.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/IOStreamBuffer.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/CreateAnimMesh.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/XmlParser.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/BlobIOSystem.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/MathFunctions.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Exceptional.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/ByteSwapper.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Base64.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Compiler/pushpack1.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Compiler/poppack1.h"
    "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/code/Debug/assimp-vc142-mtd.pdb")
  endif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "F:/FreelanceWork/2022/Jeff_GarmentSimulator/Task4/Velvet-master/3rdParty/assimp-master/build/code/RelWithDebInfo/assimp-vc142-mt.pdb")
  endif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

