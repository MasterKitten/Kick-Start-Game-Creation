extends Control

var MoneySpent = 0.0
var MoneyGave = 0.0

export var MoneyRequired = 25.0
var MoneyHave = 1000000
# As the game progresses, the person should get only this PERCENTAGE back fron the machine
export var PercentWin = 10.0

# The LovelyNumberForRigging is used for how many slots were landed on. Yes, im rigging this :D
func Rigged(var LovelyNumberForRigging):
	match LovelyNumberForRigging:
		2:
			if (MoneyGave / MoneySpent) < (PercentWin / 100) * 2 or MoneyGave == 0:
				MoneyHave += MoneyRequired
				MoneyGave += MoneyRequired
			else:
				print("Rigged!")
		3:
			if MoneyGave / MoneySpent < PercentWin / 100 or MoneyGave == 0:
				MoneyHave += MoneyRequired * 2
				MoneyGave += MoneyRequired
			else:
				print("Rigged!")
