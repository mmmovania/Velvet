#include <iostream>

#include "VtGraphics.h"

using namespace Velvet;

int main()
{
	VtGraphics graphics;

	graphics.AddActor(Actor::PrefabCamera());
	graphics.AddActor(Actor::PrefabCube());

	return graphics.Run();
}