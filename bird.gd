extends Node2D


var velocity = 0.0
var gravity = 1000.0
var jump_force = -400
var hitPipe = false
@onready var player = $AnimationPlayer
signal BirdHitPipe
var Points = 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and hitPipe == false:
		player.play("BirdFlap")
		velocity=jump_force
	
func _process(delta: float) -> void:
	if not hitPipe:
		velocity += gravity * delta
		position.y += velocity * delta



func _on_area_2d_area_entered(area: Area2D) -> void:
	print(area.name)
	if area.name == "Points":
		Points += 1
		$ScoreLabel.text = "Score: %d" % Points
	else:
		hitPipe = true
		BirdHitPipe.emit()
		print(Points)

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	hitPipe = true
	BirdHitPipe.emit()
	print(Points)
