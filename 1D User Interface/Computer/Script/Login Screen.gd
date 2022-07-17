extends Control

export var Username = "Admin"
export var Password = "Password"

onready var UsernameLine = get_node("Username/LineEdit")
onready var PasswordLine = get_node("Password/LineEdit")

onready var PasswordWrong = get_node("Password Wrong")

var SeeChange = false
var Stopwatch = 0

func _on_Login_pressed():
	SeeChange = false
	Stopwatch = 0
	if UsernameLine.text == Username and PasswordLine.text == Password:
		get_parent().get_node("Desktop").visible = true
		UsernameLine.text = ""
		PasswordLine.text = ""
	else:
		SeeChange = true

# You can't see the changes, so I had to put this in like in windows xp :D
func _process(delta):
	if SeeChange == true:
		Stopwatch += delta

	if Stopwatch > 0.02:
		PasswordWrong.visible = true
	else:
		PasswordWrong.visible = false
