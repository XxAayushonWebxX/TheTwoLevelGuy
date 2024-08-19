extends Node

var points = 0
@onready var score = %score

func add_points():
	points += 1
	score.text = str("Score: ", points)
	
func _on_button_pressed():
	get_tree().reload_current_scene()
	
func game_finished():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
