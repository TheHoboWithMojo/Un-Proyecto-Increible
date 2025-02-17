extends Node

var player_character_traits = []

func in_character_traits(string):
	if string in player_character_traits:
		return true
	else:
		return false

func add_trait(string):
	if in_character_traits(string) == false:
		player_character_traits.append(string)
		print("Trait added: " + string)
		print(player_character_traits)
