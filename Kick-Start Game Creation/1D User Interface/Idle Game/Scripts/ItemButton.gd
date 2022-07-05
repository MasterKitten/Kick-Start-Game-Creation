extends Button

export var PriceOfItem = 1
export var PriceMultiplier = 1.1
# Amount of IPS that the TotalIPS variable gets.
export var AddedIPS = 1
onready var Game = get_node("/root/Idle Game Example")

func _ready():
	get_node("RichTextLabel").text = "Cost: " + str(round(PriceOfItem))

func _on_Self_pressed():
	if Game.Score >= PriceOfItem:
		Game.AddIPS(AddedIPS, PriceOfItem)
		PriceOfItem = PriceOfItem * PriceMultiplier
		get_node("RichTextLabel").text = "Cost: " + str(round(PriceOfItem))
