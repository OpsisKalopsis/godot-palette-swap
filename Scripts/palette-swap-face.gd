tool
extends Sprite

var imageTexture
export var isInit:bool = false
export var color_border:Color
export var color_eye:Color
export var color_skin:Color
export var color_skin_shadow:Color
export var color_eyebrows:Color
export var color_skin_shadow2:Color
export var color_hair:Color
export var color_hair_shadow:Color

func set_palette():
	var dynImage = Image.new()
	imageTexture = ImageTexture.new()
	dynImage.create(256,1,false,Image.FORMAT_RGBA8)
	dynImage.lock()
	dynImage.set_pixel(35,0,color_border)
	dynImage.set_pixel(69,0,color_eye)
	dynImage.set_pixel(235,0,color_skin)
	dynImage.set_pixel(209,0,color_skin_shadow)
	dynImage.set_pixel(148,0,color_eyebrows)
	dynImage.set_pixel(92,0,color_skin_shadow2)
	dynImage.set_pixel(254,0,color_hair)
	dynImage.set_pixel(243,0,color_hair_shadow)
	
	dynImage.unlock()
	imageTexture.create_from_image(dynImage, 0)
	material.set_shader_param("replace", imageTexture)
	print(imageTexture.FLAG_FILTER)
	
	
func _process(delta):
	if not isInit:
		set_palette()
		isInit = true
