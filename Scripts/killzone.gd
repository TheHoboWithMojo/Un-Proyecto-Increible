extends Area2D
	
func _on_body_entered(body: Node) -> void:
	print("you died!")
	
	body.get_node("CollisionShape2D").queue_free()
	
	Engine.time_scale = 0.5
	
	await get_tree().create_timer(0.5).timeout
	
	Engine.time_scale = 1
	
	get_tree().reload_current_scene()
