extends Node2D

export(Array) var PetSlots = []
export(Array) var ShopSlots = []
export(Array) var BuffSlots = []
export(int) var TexturesAmount = 3

var RNG

func _ready():
	for n in PetSlots.size():
		PetSlots[n] = get_node(PetSlots[n])
	for n in ShopSlots.size():
		ShopSlots[n] = get_node(ShopSlots[n])
	for n in BuffSlots.size():
		BuffSlots[n] = get_node(BuffSlots[n])
	
	RNG = RandomNumberGenerator.new()
	RNG.randomize()
	
	RandomizeShop()

func RandomizeShop():
	for n in ShopSlots.size():
		var TextureNumber = RNG.randi_range(1, TexturesAmount)
		
		ShopSlots[n].Strength = RNG.randi_range(1, 9)
		ShopSlots[n].Health = RNG.randi_range(1, 9)
		ShopSlots[n].ItemAssigned = true
		ShopSlots[n].texture = load("res://2D Scene/Super Auto Pets/Textures/" + str(TextureNumber) + ".jpg")
		ShopSlots[n].ImageNumber = TextureNumber
		ShopSlots[n].UpdateNumbers()
	for n in BuffSlots.size():
		BuffSlots[n].Strength = RNG.randi_range(1, 9)
		BuffSlots[n].Health = RNG.randi_range(1, 9)
		BuffSlots[n].ItemAssigned = true
		BuffSlots[n].UpdateNumbers()

func SellPet(Strength, Health):
	for n in PetSlots.size():
		if PetSlots[n].Strength == Strength and PetSlots[n].Health == Health:
			PetSlots[n].Strength = 0
			PetSlots[n].Health = 0
			PetSlots[n].ItemAssigned = false

func BuyPet(Strength, Health, ImageNumber):
	for n in PetSlots.size():
		if PetSlots[n].ItemAssigned == false:
			PetSlots[n].ItemAssigned = true
			PetSlots[n].Strength = Strength
			PetSlots[n].Health = Health
			PetSlots[n].texture = load("res://2D Scene/Super Auto Pets/Textures/" + str(ImageNumber) + ".jpg")
			PetSlots[n].UpdateNumbers()
			break
	return

func BuyBuff(Strength, Health):
	var SlotGet = 1
	var BuyableBuff = false
	for n in PetSlots.size():
		if PetSlots[n].ItemAssigned == true:
			BuyableBuff = true
	while BuyableBuff == true:
		SlotGet = RNG.randi_range(1, PetSlots.size())
		if PetSlots[SlotGet - 1].ItemAssigned == true:
			PetSlots[SlotGet - 1].Strength += Strength
			PetSlots[SlotGet - 1].Health += Health
			PetSlots[SlotGet - 1].UpdateNumbers()
			return true
	return false
