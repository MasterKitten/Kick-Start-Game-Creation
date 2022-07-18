extends KinematicBody2D

export(float) var Speed
export(float) var Gravity = 40.0
onready var camera = get_node("Camera2D")
var Velocity = Vector2(0, 0)

func _physics_process(_delta):
	Velocity.y += Gravity
	Velocity.x = Speed
	if is_on_wall():
		Speed = 0
		queue_free()
	if Input.is_action_just_pressed("Up") and is_on_floor():
		Velocity.y = -600
	Velocity = move_and_slide(Velocity, Vector2(0, -1))
