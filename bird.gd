extends Node2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		print("space")
		position.y -= 175
	
func _process(delta: float) -> void:
	position.y += 5
