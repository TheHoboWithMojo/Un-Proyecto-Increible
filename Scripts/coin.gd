extends Area2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(_body):
	print("+1 coins!")
	
	audio_stream_player_2d.stream = load("res://Assets/sounds/coin.wav")
	audio_stream_player_2d.play()
	await audio_stream_player_2d.finished
	queue_free()
