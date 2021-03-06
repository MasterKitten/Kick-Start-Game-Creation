extends KinematicBody2D

export var Speed = 5000
export(PackedScene) var Bullet

func _physics_process(delta):
	if Input.get_action_strength("Left"):
		self.move_and_slide(Vector2(-Speed, 0) * delta)
	if Input.get_action_strength("Up"):
		self.move_and_slide(Vector2(0, -Speed) * delta)
	if Input.get_action_strength("Down"):
		self.move_and_slide(Vector2(0, Speed) * delta)
	if Input.get_action_strength("Right"):
		self.move_and_slide(Vector2(Speed, 0) * delta)
		
	if Input.is_action_just_pressed("Click"):
		var b = Bullet.instance()
		owner.add_child(b)
		b.transform = $"Shooting Area".global_transform
