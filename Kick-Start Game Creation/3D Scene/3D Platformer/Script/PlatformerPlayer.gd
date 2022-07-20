extends KinematicBody

export(float) var Speed = 8.0
export(float) var RunMultiplier = 1.5
export(float) var Gravity = 4
export(float) var JumpStrength = 50

var Velocity = Vector3(0, 0, 0)
var CameraMovement = Vector3(0, 0, 0)

onready var Axis = get_node("RotationAxis")

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	if event is InputEventMouseMotion:
		self.rotate_y(-deg2rad(event.relative.x))
		Axis.rotate_x(-deg2rad(event.relative.y))
		if Axis.rotation_degrees.x >= 80:
			Axis.rotation_degrees.x = 80
		if Axis.rotation_degrees.x <= -80:
			Axis.rotation_degrees.x = -80

func _physics_process(delta):
	# WHY DOES THIS WORK BUT THE OTHER SH*T DESIDES TO GO _spin_ LIKE WHAT!? sorry for stealing code, I really tried.
	Velocity = Vector3((Input.get_action_strength("Right") - Input.get_action_strength("Left")), Velocity.y, (Input.get_action_strength("Down") - Input.get_action_strength("Up")))
	Velocity = Velocity.rotated(Vector3.UP, self.global_transform.basis.get_euler().y)
	
	Velocity = Vector3(Velocity.x * Speed, Velocity.y, Velocity.z * Speed)
	if Input.get_action_strength("Run"):
		Velocity = Vector3(Velocity.x * RunMultiplier, Velocity.y, Velocity.z * RunMultiplier)
	
	if Input.is_action_just_pressed("Jump3D") and is_on_floor():
		# Not Working At The Moment, trying to find a fix.
		Velocity.y = JumpStrength

	Velocity.y -= Gravity
	
	Velocity = move_and_slide(Velocity, Vector3.UP)
