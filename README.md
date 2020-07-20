# godot-palette-swap
Color swapping with palette and by code

This repo exist of two scenes that uses the same shader, it is used to swap palette by the red color channel. So your original palette has to have unique red palette channel(256 keys), and then at the palette image the replacement is at x:(red key).

This is useful if you want to be able to have a simple way to change colors of a texture and only want to change some colors of the texture.

## Palette swap scene
This scene uses a palette image to change the original color of the texture

## Palette swap by code scene
This example creates a palette in runtime and swap two colors out of four.
