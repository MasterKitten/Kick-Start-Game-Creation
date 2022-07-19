extends Sprite3D

export (float) var Health = 10.0
export (float) var BodyDefense = 1.0
export (float) var HeadDefense = 1.0

onready var Enemy = get_parent().get_node("Punch Enemy")

func _process(_delta):
	if Input.is_action_just_pressed("Left_Head_Uppercut"):
		Enemy.Health -= 1
	if Input.is_action_just_pressed("Left_Bodyblow"):
		Enemy.Health -= 1
	if Input.is_action_just_pressed("Right_Head_Uppercut"):
		Enemy.Health -= 1
	if Input.is_action_just_pressed("Right_Bodyblow"):
		Enemy.Health -= 1
