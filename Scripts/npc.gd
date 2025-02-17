extends Area2D

@onready var ray_cast_right: RayCast2D = $ray_cast_right
@onready var ray_cast_left: RayCast2D = $ray_cast_left

func _process(_delta: float) -> void:
	if ray_cast_right.is_colliding() or ray_cast_left.is_colliding():
		if Input.is_action_just_pressed("interact"):
			Dialogic.start("npc ah shit")  # Indented properly inside the if statements
