extends Node2D


var hitPipe = false
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		print("space")
		position.y -= 175
	
func _process(delta: float) -> void:
	if hitPipe == false: position.y += 5


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("Au")
	hitPipe = true
