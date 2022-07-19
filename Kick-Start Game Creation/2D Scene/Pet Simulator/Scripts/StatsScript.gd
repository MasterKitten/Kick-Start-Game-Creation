extends WindowDialog

export(float) var Bladder = 100.0
export(float) var Hunger = 100.0
export(float) var Energy = 100.0
export(float) var Fun = 100.0
export(float) var Social = 100.0
export(float) var Hygiene = 100.0

export(float) var StatDown = 10.0

var IncreaseBladder = false
var IncreaseHunger = false
var IncreaseEnergy = false
var IncreaseFun = false
var IncreaseSocial = false
var IncreaseHygiene = false

func _process(delta):
	if Bladder >= 101.0:
		IncreaseBladder = false
	if Hunger >= 101.0:
		IncreaseHunger = false
	if Energy >= 101.0:
		IncreaseEnergy = false
	if Fun >= 101.0:
		IncreaseFun = false
	if Social >= 101.0:
		IncreaseSocial = false
	if Hygiene >= 101.0:
		IncreaseHygiene = false
	
	Bladder -= (delta / StatDown)
	get_node("Bladder").value = Bladder
	Hunger -= (delta / StatDown)
	get_node("Hunger").value = Hunger
	Energy -= (delta / StatDown)
	get_node("Energy").value = Energy
	Fun -= (delta / StatDown)
	get_node("Fun").value = Fun
	Social -= (delta / StatDown)
	get_node("Social").value = Social
	Hygiene -= (delta / StatDown)
	get_node("Hygiene").value = Hygiene
	
	if IncreaseBladder == true:
		Bladder += delta
	if IncreaseHunger == true :
		Hunger += delta
	if IncreaseEnergy == true:
		Energy += delta
	if IncreaseFun == true:
		Fun += delta
	if IncreaseSocial == true:
		Social += delta
	if IncreaseHygiene == true:
		Hygiene += delta

func ShowStats():
	self.popup()

func IncreaseBladder():
	IncreaseBladder = true

func IncreaseHunger():
	IncreaseHunger = true

func IncreaseEnergy():
	IncreaseEnergy = true

func IncreaseFun():
	IncreaseFun = true

func IncreaseSocial():
	IncreaseSocial = true

func IncreaseHygine():
	IncreaseHygiene = true
