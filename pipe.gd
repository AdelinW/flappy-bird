extends Node2D

var hitBird = false
func _process(delta: float) -> void:
	if hitBird == false: position.x -= 10


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	position = Vector2(1000,300)


func _on_area_2d_area_entered(area: Area2D) -> void:
	hitBird = true
