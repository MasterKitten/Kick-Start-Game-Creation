extends Control

export(String) var Name = "Bob"
export(int) var Strength
export(int) var Agility
export(int) var Body
export(int) var Charisma
export(int) var Intelligence
export(int) var Willpower

var EnemyName = "Jack"
var EnemyStrength = 5
var EnemyAgility = 5
var EnemyBody = 5
var EnemyCharisma = 5
var EnemyIntelligence = 5
var EnemyWillpower = 5

# Stuff for things to function
var IsEnemyAlive = false

func IncreaseAllStats(var Amount):
	Strength += Amount
	Agility += Amount
	Body += Amount
	Charisma += Amount
	Intelligence += Amount
	Willpower += Amount

func Win():
	print("You win! " + EnemyName + " is defeated!")
	IsEnemyAlive = false
	IncreaseAllStats(1)

func Checking_Stats():
	print("Name: " + Name)
	print("Strength: " + str(Strength))
	print("Agility: " + str(Agility))
	print("Body: " + str(Body))
	print("Charisma: " + str(Charisma))
	print("Intelligence: " + str(Intelligence))
	print("Willpower: " + str(Willpower))

func Find_Enemy():
	if IsEnemyAlive == false:
		IsEnemyAlive = true
		print("You found: " + EnemyName)
	else:
		print(EnemyName + " is waiting for you...")

func Attack():
	if Strength > EnemyStrength:
		Win()
		
func Chat():
	if Charisma > EnemyCharisma:
		Win()
		
