tool
extends Sprite

var imageTexture
export var isInit:bool = false
export var color_118:Color
export var color_144:Color

func set_palette():
	var dynImage = Image.new()
	imageTexture = ImageTexture.new()
	dynImage.create(256,1,false,Image.FORMAT_RGBA8)
	dynImage.lock()
	dynImage.set_pixel(118,0,color_118)
	dynImage.set_pixel(144,0,color_144)
	
	dynImage.unlock()
	print(color_118)
	imageTexture.create_from_image(dynImage)
	print(imageTexture.FLAG_FILTER)
	material.set_shader_param("replace", imageTexture)
	
	
func _process(delta):
	if not isInit:
		set_palette()
		isInit = true
