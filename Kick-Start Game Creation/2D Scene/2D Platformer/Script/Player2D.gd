extends KinematicBody2D

export(float) var WalkSpeed
export(float) var JumpSpeed
export(float) var Gravity

export(bool) var CanRun = true
export(float) var RunSpeed

export(bool) var UsableMoney = true
export(float) var Money

export(bool) var CanAirJump = true
export(int) var MaxAirJumps
var CurrentAirJumps = 0

var Velocity = Vector2(0,0)

func _physics_process(_delta):
	# Actions
	if Input.get_action_raw_strength("Right"):
		Velocity.x = WalkSpeed
		if Input.get_action_raw_strength("Run") and CanRun == true:
			Velocity.x = RunSpeed
	if Input.get_action_raw_strength("Left"):
		Velocity.x = -WalkSpeed
		if Input.get_action_raw_strength("Run") and CanRun == true:
			Velocity.x = -RunSpeed
	if Input.is_action_just_pressed("Up") and is_on_floor():
		Velocity.y = -JumpSpeed
	# Air Jumps
	if Input.is_action_just_pressed("Up") and CanAirJump == true and CurrentAirJumps != MaxAirJumps:
		CurrentAirJumps += 1
		Velocity.y = -JumpSpeed
	if is_on_floor():
		CurrentAirJumps = 0
	
	Velocity = move_and_slide(Velocity, Vector2(0, -1), false)
	
	#slow player down
	Velocity.x = lerp(Velocity.x, 0, 0.1)
	#Gravity
	Velocity.y += Gravity

func Die():
	get_node("Sprite").queue_free()
	get_node("CollisionShape2D").queue_free()
	WalkSpeed = 0
	RunSpeed = 0
	get_node("CPUParticles2D").emitting = true
