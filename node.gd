extends Node

# Function to convert AtlasTexture to Image
func convert_atlas_texture_to_image(atlas_texture: AtlasTexture) -> Image:
	# Get the original texture from the AtlasTexture
	var original_texture = atlas_texture.get_atlas()
	
	# Convert the original texture to an Image
	var full_image = original_texture.get_image()
	
	# Get the region from the AtlasTexture
	var region = atlas_texture.region
	
	# Crop the image based on the region defined in AtlasTexture
	var cropped_image = full_image.get_region(region)
	
	return cropped_image

# This function will run when the scene is loaded
func _ready():
	# Load the AtlasTexture from the path
	var atlas_texture = preload("res://Assets/sprites/npc.tres")
	
	# Convert the AtlasTexture to a cropped Image
	var cropped_image = convert_atlas_texture_to_image(atlas_texture)
	
	# Save the cropped image as a PNG
	var save_path = "res://Assets/sprites/cropped_npc.png"
	cropped_image.save_png(save_path)
	
	print("Image saved as:", save_path)
	
