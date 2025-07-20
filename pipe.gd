extends Node2D

var hitBird = false
var startPosition = position
func _process(delta: float) -> void:
	if hitBird == false: position.x -= 10


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	position = startPosition


func _on_area_2d_area_entered(area: Area2D) -> void:
	hitBird = true


func _on_bird_bird_hit_pipe() -> void:
	hitBird = true
