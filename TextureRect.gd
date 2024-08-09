extends TextureRect

# Called when the node enters the scene tree for the first time.
func _ready():
	# Load the image file as an Image
	var img = Image.new()
	img.load("res://BACKGROUND.png")
	
	# Create an ImageTexture from the Image
	var img_texture = ImageTexture.new()
	img_texture.create_from_image(img)
	
	# Assign the loaded texture to the TextureRect's texture property
	self.texture = img_texture
	
	# Enable stretch mode to keep aspect ratio
	self.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT
	
	# Make the TextureRect non-interactable
	self.mouse_filter = Control.MOUSE_FILTER_IGNORE

	# Print a message to confirm that the image has been loaded
	print("Image loaded, scaling is smooth, and the TextureRect is untouchable!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
