extends Control
# Variable for how much player click will do.
export var ClickValue = 1

var Score = 0
onready var ScoreText = get_node("TextItem")
# Items Per Second
var TotalIPS = 0

func _process(delta):
	Score += TotalIPS * delta
	ScoreText.text = "Items: " + str(round(Score)) + "\nTotal IPS: " + str(TotalIPS)

func ClickedItemButton():
	# Add ClickValue to score
	Score += ClickValue

func AddIPS(var IPSValue, var Price):
	TotalIPS += IPSValue
	Score -= Price
