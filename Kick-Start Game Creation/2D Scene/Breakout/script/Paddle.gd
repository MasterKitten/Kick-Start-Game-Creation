extends KinematicBody2D

export(float) var Speed

func _physics_process(delta):
	if Input.get_action_strength("Left"):
		self.move_and_slide(Vector2(-Speed, 0) * delta)
	if Input.get_action_strength("Right"):
		self.move_and_slide(Vector2(Speed, 0) * delta)
