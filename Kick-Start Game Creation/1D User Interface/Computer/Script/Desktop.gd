extends Control

func _on_Log_Off_pressed():
	self.visible = false

# Buttons on the desktop
func _on_Internet_Button_pressed():
	get_node("Internet Button/Internet").visible = true

func _on_Internet_Button_Back_pressed():
	get_node("Internet Button/Internet").visible = false
