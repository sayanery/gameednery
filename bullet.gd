extends Area2D

@export var speed: float = 700.0

func _process(delta):
	position += Vector2.RIGHT.rotated(rotation) * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
