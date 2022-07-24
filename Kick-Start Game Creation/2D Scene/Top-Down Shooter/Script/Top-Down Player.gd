extends KinematicBody2D

var Speed = 5000
export(PackedScene) var Bullet
onready var Scene = get_parent()

# Walk, damn it!
func _physics_process(delta):
	look_at(get_global_mouse_position())
	
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
		b.transform = $Muzzle.global_transform
