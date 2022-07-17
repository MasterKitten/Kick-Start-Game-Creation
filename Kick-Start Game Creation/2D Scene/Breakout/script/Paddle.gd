extends KinematicBody2D

export(float) var Speed
export(bool) var AlwaysMoving = false
var Velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.get_action_strength("Left"):
		Velocity.x = -Speed
	if Input.get_action_strength("Right"):
		Velocity.x = Speed
	
	move_and_collide(Velocity)
	
	# Neat extra feature, for the people who want it :D
	if AlwaysMoving == false:
		Velocity.x = lerp(Velocity.x, 0, 0.5)
