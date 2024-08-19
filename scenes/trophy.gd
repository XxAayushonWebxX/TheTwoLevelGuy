extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body):
	if (body.name == "MainHero"):
		queue_free()
		game_manager.game_finished()
