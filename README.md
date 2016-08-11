

## Introduction

MagneticFloor is a mod that adds a totally new gameplay element, allowing for automation of player movements (and vehicles in the future), based on the conceit of using magnetic levitation to float.

## Tutorial
The foundation of Magnetic Floor are the floor tiles known as copper-floor, which by default gives better bonus than concrete for speed movement bonus. Each successive tier(Level 1: ![Copper Floor](graphics/icons/copper-floor-icon.png) , Level 2: ![Copper Floor Level2](graphics/icons/copper-floor-icon_level2.png) , Level 3: ![Copper Floor Level3](graphics/icons/copper-floor-icon_level3.png)  ) of copper floors give better bonus movement. More important than the speed movement bonus they provide, they also provide the pathways that the movement automation feature rely on.

To actually move player automatically across the map required a multiple of requisites, some of which required technology research. All tiers copper floor required green and red science, but unlocking the directives and the accelerator required blue science.

First, ensure that the equipment hoverboard ()![hoverboard](graphics/icons/hoverboard-icon.png)) is equipped in your power armor and that you are wearing it. If you are doing it correctly, the hoverboard UI (![hoverboard_ui](graphics/examples/hoverboard-ui.png)), should appears somewhere around the upper left corner. If not, then you did not correctly equip the hoverboard.

If the button is indicated 'OFF', then you'll need to click on the button to turn on activate navigation. Otherwise, you will not be able to do any automated movement.

Next, you'll need to lay a path of copper flooring from your intended starting location to your intended destination.

**Example: Copper Floor pathways**
<hr>
![pathway](graphics/examples/copper_pathway.png)
<hr>
The last component for automated movement is the the accelerator tile(![accelerator](graphics/directives/accelerator.png)) with directives(![left](graphics/directives/left.png), ![right](graphics/directives/right.png), ![down](graphics/directives/down.png), ![up](graphics/directives/up.png)) to redirect movement. You'll need to supply electricity to your accelerator in order for the tile to work. The purpose of an accelerator is to charge your hoverboard, providing the energy it needs for automated movement for five seconds, or five ticks. Directive tiles will supply your hoverboard with changes in the direction of your character's movement. Up, down, left, right arrows are what it is said on the tin.

**Example: Necessary components for movement.**
<hr>
![all_parts](graphics/examples/all_parts.png)
<hr>

It is also worth keeping in mind that automated movement won't work on grass tiles and such. The hoverboard's charges will set to zero once it hit non-copper flooring tiles, with the exception of directive and accelerator tiles.

##Further examples

A complete loop is shown below. As long as the accelerator is charged, the player character should keep moving indefinitely in an automatic fashion.

**Example: A Loop**
<hr>
![a_loop](graphics/examples/magnetic_floor_loop.gif)
</hr>

## Copyright Notice

Code and graphics by kiba is copyrighted under the MIT license, unless otherwise noted. Factorio art assets used or modified in this mod belongs to their respective copyright owner, and is not under the MIT.
