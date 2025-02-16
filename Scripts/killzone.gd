extends Area2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(_body):
	print("you died!")
		
	audio_stream_player_2d.stream = load("res://Assets/sounds/hurt.wav")
	audio_stream_player_2d.play()
	await audio_stream_player_2d.finished
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()
