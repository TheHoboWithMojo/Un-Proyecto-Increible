extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $"AnimatedSprite2D"

const SPEED: float = 150.0
const JUMP_VELOCITY: float = -300.0

var traits = []

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Handle jump physics
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction, -1, 0, or 1
	var direction := Input.get_axis("move_left", "move_right")
	
	#flip sprite based on direction
	if direction < 0:
		animated_sprite.flip_h = true
	elif direction > 0:
		animated_sprite.flip_h = false
	
	#choose animation
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	#Calculate speed
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
