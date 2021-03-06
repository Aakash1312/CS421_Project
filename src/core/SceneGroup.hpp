/*
 * SceneGroup.hpp
 *
 *  Created on: Feb 12, 2009
 *      Author: jima
 *      Modified: sidch
 */
#define _GLIBCXX_USE_CXX11_ABI 0

#ifndef __SceneGroup_hpp__
#define __SceneGroup_hpp__

#include "SceneData.hpp"
#include "MeshInfo.hpp"
#include "Algebra3.hpp"
#include <vector>

class SceneGroup
{
  public:
    std::string getName();  ///< Get the name of the group, useful for debugging.

    // Functions to get objects that can exist at leaf nodes -- return false if the related object is not present.
    bool computeMesh(TriangleMesh *& mesh, MaterialInfo & material, int time); /* get a mesh */
    bool computeSphere(double & radius, MaterialInfo & material, int time); /* get a sphere */
    bool computeLens(double & radius, double & width, MaterialInfo & material, int time); /* get a sphere */
    bool computeCylinder(double & radius, Vec3 &top, Vec3 &bottom, MaterialInfo & material, int time); /* get a sphere */
    bool computeLight(LightInfo & ld, int time = 0); /* get light parameters */
    bool computeCamera(CameraInfo & frustum, int time = 0); /* get camera frustum */

    int getChildCount();  ///< Get the number of instances which are in the group.
    SceneInstance * getChild(int i);   ///< Get a child node.

    virtual ~SceneGroup();  ///< Destructor.

  private:
    SceneGroup(); // private constructor to be called by SceneLoader only

    // private copy constructor and assignment operator to avoid copying this data
    SceneGroup(const SceneGroup &);
    SceneGroup & operator=(const SceneGroup &);

    std::string name_;
    std::vector<SceneInstance *> children_;
    ParametricSphere * sphere_;
    ParametricLens * lens_;
    ParametricCylinder * cylinder_;
    ParametricLight * light_;
    ParametricCamera * camera_;
    ParametricTriangle * triangle_;
    TriangleMesh * mesh_;
    ParametricMaterial * meshMaterial_;

    friend class SceneLoader;
};

#endif  // __SceneGroup_hpp__
