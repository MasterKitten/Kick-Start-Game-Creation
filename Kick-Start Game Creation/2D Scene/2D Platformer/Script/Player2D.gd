extends KinematicBody2D

export(float) var RunSpeed
export(float) var JumpSpeed
export(float) var Gravity

var Velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.get_action_raw_strength("Right"):
		Velocity.x = RunSpeed
	if Input.get_action_raw_strength("Left"):
		Velocity.x = -RunSpeed
	if Input.is_action_just_pressed("Up") and is_on_floor():
		Velocity.y = -JumpSpeed
	
	Velocity = move_and_slide(Velocity, Vector2(0, -1), false)
	
	#slow player down
	Velocity.x = lerp(Velocity.x, 0, 0.1)
	#Gravity
	Velocity.y += Gravity
