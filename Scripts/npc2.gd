extends Area2D

@onready var ray_cast_right: RayCast2D = $ray_cast_right
@onready var ray_cast_left: RayCast2D = $ray_cast_left

func _process(_delta: float) -> void:
	if ray_cast_right and ray_cast_left:  # Ensure both raycasts are initialized
		if (ray_cast_right.is_colliding() or ray_cast_left.is_colliding()) and (Dialogic.current_timeline == null):
			if Input.is_action_just_pressed("interact"):
				print("Interact pressed at:", Time.get_ticks_msec())

				var start_time = Time.get_ticks_msec()

				print("Before Dialogic start:", Time.get_ticks_msec() - start_time, "ms")
				Dialogic.start_timeline("new convo")
				print("After Dialogic start:", Time.get_ticks_msec() - start_time, "ms")
	else:
		print("RayCast nodes not initialized properly.")
