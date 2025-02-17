extends Node

@onready var style: DialogicStyle = preload("res://Assets/default_style.tres")
const NEW_CONVO = preload("res://Dialogues/new convo.dtl")
const NPC_AH_SHIT = preload("res://Dialogues/npc ah shit.dtl")
const NPC = preload("res://Dialogues/npc.dch")
const START_GAME = preload("res://Dialogues/start game.dtl")

func _ready():
	style.prepare()
	print("started!")
	Dialogic.start("start game")
