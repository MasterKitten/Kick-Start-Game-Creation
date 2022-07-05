extends Control

onready var TypeLine = get_node("LineEdit")
var SavedFirstPart = 0.0
var WhateverThingToDo = 0

# Next 10 functions dedicated to the number buttons
func One_Button_Pressed():
	TypeLine.text = TypeLine.text + "1"

func Two_Button_Pressed():
	TypeLine.text = TypeLine.text + "2"

func Three_Button_Pressed():
	TypeLine.text = TypeLine.text + "3"

func Four_Button_Pressed():
	TypeLine.text = TypeLine.text + "4"

func Five_Button_Pressed():
	TypeLine.text = TypeLine.text + "5"

func Six_Button_Pressed():
	TypeLine.text = TypeLine.text + "6"

func Seven_Button_Pressed():
	TypeLine.text = TypeLine.text + "7"

func Eight_Button_Pressed():
	TypeLine.text = TypeLine.text + "8"

func Nine_Button_Pressed():
	TypeLine.text = TypeLine.text + "9"

func Zero_Button_Pressed():
	TypeLine.text = TypeLine.text + "0"

# Next four functions dedicated to the methods of math
func Add_Button_Pressed():
	if SavedFirstPart == 0:
		SavedFirstPart = TypeLine.text.to_float()
	else:
		Enter_Button_Pressed()
		SavedFirstPart = TypeLine.text.to_float()
	TypeLine.text = ""
	WhateverThingToDo = 1

func Subtract_Button_Pressed():
	if SavedFirstPart == 0:
		SavedFirstPart = TypeLine.text.to_float()
	else:
		Enter_Button_Pressed()
		SavedFirstPart = TypeLine.text.to_float()
	TypeLine.text = ""
	WhateverThingToDo = 2

func Divide_Button_Pressed():
	if SavedFirstPart == 0:
		SavedFirstPart = TypeLine.text.to_float()
	else:
		Enter_Button_Pressed()
		SavedFirstPart = TypeLine.text.to_float()
	TypeLine.text = ""
	WhateverThingToDo = 3

func Multiply():
	if SavedFirstPart == 0:
		SavedFirstPart = TypeLine.text.to_float()
	else:
		Enter_Button_Pressed()
		SavedFirstPart = TypeLine.text.to_float()
	TypeLine.text = ""
	WhateverThingToDo = 4

# Next 3 functions are dedicated to the other symbols on the calculator
func Delete_Button_Pressed():
	TypeLine.text = ""
	SavedFirstPart = 0

func PI_Button_Pressed():
	TypeLine.text = str(PI)

func Dot_Button_Pressed():
	TypeLine.text = TypeLine.text + "."

# Lastly, the Enter button to do all the lovely calculations.
func Enter_Button_Pressed():
	var FinalResult = 0
	
	match WhateverThingToDo:
		# Adding
		1:
			FinalResult = SavedFirstPart + TypeLine.text.to_float()
			FinalResult = stepify(FinalResult,0.00001)
			TypeLine.text = str(FinalResult)
			SavedFirstPart = 0
		# Subtracting
		2:
			FinalResult = SavedFirstPart - TypeLine.text.to_float()
			FinalResult = stepify(FinalResult,0.00001)
			TypeLine.text = str(FinalResult)
			SavedFirstPart = 0
		# Dividing
		3:
			FinalResult = SavedFirstPart / TypeLine.text.to_float()
			FinalResult = stepify(FinalResult,0.00001)
			TypeLine.text = str(FinalResult)
			SavedFirstPart = 0
		# Multiplying
		4:
			FinalResult = SavedFirstPart * TypeLine.text.to_float()
			FinalResult = stepify(FinalResult,0.00001)
			TypeLine.text = str(FinalResult)
			SavedFirstPart = 0
