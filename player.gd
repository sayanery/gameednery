extends CharacterBody2D

@export var bullet_scene: PackedScene
const SPEED = 300.0

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_pressed("left"):
		input_vector.x -= 1
	if Input.is_action_pressed("right"):
		input_vector.x += 1
	if Input.is_action_pressed("up"):
		input_vector.y -= 1
	if Input.is_action_pressed("down"):
		input_vector.y += 1

	input_vector = input_vector.normalized()
	velocity = input_vector * SPEED
	move_and_slide()
	 
	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	var bullet = bullet_scene.instantiate()
	get_tree().root.add_child(bullet)
	bullet.global_transform = $Sprite2D/Marker2D.global_transform


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	pass # Replace with function body.
