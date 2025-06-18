extends Sprite2D

var spin: float = 5.0

func _process(delta):
	spin = 0.0

	if Input.is_action_pressed("rotate_left"):
		spin = -5.0
	if Input.is_action_pressed("rotate_right"):
		spin = 5.0

	rotation += spin * delta
