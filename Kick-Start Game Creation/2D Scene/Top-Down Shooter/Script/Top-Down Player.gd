extends KinematicBody2D

var Speed = 5000

func _physics_process(delta):
	if Input.get_action_strength("ui_left"):
		self.move_and_slide(Vector2(-Speed, 0) * delta)
	if Input.get_action_strength("ui_up"):
		self.move_and_slide(Vector2(0, -Speed) * delta)
	if Input.get_action_strength("ui_down"):
		self.move_and_slide(Vector2(0, Speed) * delta)
	if Input.get_action_strength("ui_right"):
		self.move_and_slide(Vector2(Speed, 0) * delta)
