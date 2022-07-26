extends Sprite

export(int) var Strength = 0
export(int) var Health = 0
var ImageNumber = 0

export(bool) var PetSlot
export(bool) var ShopSlot
export(bool) var BuffSlot

export(bool) var ItemAssigned

func UpdateNumbers():
	get_node("Strength").text = str(Strength)
	get_node("Health").text = str(Health)

func _on_Button_pressed():
	# Pet Slots
	if PetSlot == true:
		if ItemAssigned == true:
			get_parent().SellPet(Strength, Health)
			self.texture = null
			UpdateNumbers()
	# Shop Slots
	if ShopSlot == true:
		if ItemAssigned == true:
			get_parent().BuyPet(Strength, Health, ImageNumber)
			ItemAssigned = false
			Strength = 0
			Health = 0
			self.texture = null
			UpdateNumbers()
	# Buff Slots
	if BuffSlot == true:
		if ItemAssigned == true:
			var ItemRecieved = get_parent().BuyBuff(Strength, Health)
			if ItemRecieved == true:
				ItemAssigned = false
				Strength = 0
				Health = 0
				UpdateNumbers()
