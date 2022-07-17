extends Control

onready var Internet = get_node("Internet")
onready var Trash = get_node("Trash")

func _on_Log_Off_pressed():
	self.visible = false

# Turn on the internet
func _on_Internet_Button_pressed(arg_0):
	if arg_0 == false:
		Internet.visible = true
	else:
		Internet.visible = false

# Turn on the trash
func _on_Trash_Can_pressed():
	Trash.popup()
