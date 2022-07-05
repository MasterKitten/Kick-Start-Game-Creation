extends WindowDialog

onready var CalculatorBasic = get_parent().get_node("Calculator Basic")
onready var CalculatorMeasuring = get_parent().get_node("Calculator Measuring")

func _on_Basic_Calc_pressed():
	self.visible = false
	Make_Stuff_Hidden(1)

func _on_Advanced_Calc_pressed():
	self.visible = false
	Make_Stuff_Hidden(2)

func _on_Measuring_Calc_pressed():
	self.visible = false
	Make_Stuff_Hidden(3)

func Make_Stuff_Hidden(var ButtonPressed):
	match ButtonPressed:
		1:
			CalculatorMeasuring.visible = false
		2:
			CalculatorBasic.visible = false
			CalculatorMeasuring.visible = false
		3:
			CalculatorBasic.visible = false
