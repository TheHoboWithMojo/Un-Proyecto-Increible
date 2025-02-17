extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body: Node):
	game_manager.add_point()
	GlobalInfo.add_trait("Money Hungry")
	animation_player.play("pickup")
