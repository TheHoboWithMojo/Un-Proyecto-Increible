extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

@onready var ray_cast_right: RayCast2D = $ray_cast_right

@onready var ray_cast_left: RayCast2D = $ray_cast_right/ray_cast_left

const SPEED: float = 30.0

var direction: int = 1

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction*SPEED*delta #60pix/sec
