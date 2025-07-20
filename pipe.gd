extends Node2D


func _process(delta: float) -> void:
	position.x -= 10


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	position.x = 1000
	position.y = 300
	position = Vector2(1000,300)
