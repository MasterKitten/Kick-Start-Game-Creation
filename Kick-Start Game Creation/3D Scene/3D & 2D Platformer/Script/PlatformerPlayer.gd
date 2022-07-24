extends KinematicBody

export(float) var RunSpeed
export(float) var JumpSpeed
export(float) var Gravity

export(bool) var CanAirJump
export(int) var MaxAirJumps
var CurrentAirJumps = 0

var Velocity = Vector3(0,0,0)

func _physics_process(delta):
	# Actions
	if Input.get_action_raw_strength("Right"):
		Velocity.x = RunSpeed
	if Input.get_action_raw_strength("Left"):
		Velocity.x = -RunSpeed
	if Input.is_action_just_pressed("Up") and is_on_floor():
		Velocity.y = JumpSpeed
	# Air Jumps
	if Input.is_action_just_pressed("Up") and CanAirJump == true and CurrentAirJumps != MaxAirJumps:
		CurrentAirJumps += 1
		Velocity.y = JumpSpeed
	if is_on_floor():
		CurrentAirJumps = 0
	
	Velocity = move_and_slide(Velocity, Vector3(0, 1, 0), false)
	
	#slow player down
	Velocity.x = lerp(Velocity.x, 0, 0.1)
	#Gravity
	Velocity.y += -Gravity
