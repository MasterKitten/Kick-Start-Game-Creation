extends Button

onready var BlackScreen = get_node("/root/Computer Example/Off")

func _on_Setting_Menu_toggled(button_pressed):
	if button_pressed == true:
		get_node("Menu").visible = true
	else:
		get_node("Menu").visible = false

# Computer off, so far it goes back to login screen
func _on_Off_pressed():
	# Gets Desktop
	BlackScreen.visible = true
