tool
extends Sprite

var imageTexture
export var isInit:bool = false
export var color_195:Color
export var color_130:Color
export var color_89:Color
export var color_55:Color

func set_palette():
	var dynImage = Image.new()
	imageTexture = ImageTexture.new()
	dynImage.create(256,1,false,Image.FORMAT_RGBA8)
	dynImage.lock()
	dynImage.set_pixel(195,0,color_195)
	dynImage.set_pixel(130,0,color_130)
	dynImage.set_pixel(89,0,color_89)
	dynImage.set_pixel(55,0,color_55)
	
	dynImage.unlock()
	imageTexture.create_from_image(dynImage, 0)
	material.set_shader_param("replace", imageTexture)
	
	
func _process(delta):
	if not isInit:
		set_palette()
		isInit = true
