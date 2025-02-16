extends Node

@onready var score_label: Label = $ScoreLabel

#Keeps track of global variables and functions
var score: int = 0

func add_point():
	score += 1
	score_label.text = "You have " + str(score) + " points"
	
