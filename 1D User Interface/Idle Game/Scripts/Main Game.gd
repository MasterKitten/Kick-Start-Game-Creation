extends Control
# Variable for how much player click will do.
export var ClickValue = 1

onready var ClickProgressBar = get_node("ClickProgressBar")
onready var IdleProgressBar = get_node("IdleProgressBar")

var Score = 0
onready var ScoreText = get_node("TextItem")
# Items Per Second
var TotalIPS = 0

func _process(delta):
	Score += TotalIPS * delta
	ScoreText.text = "Items: " + str(round(Score)) + "\nTotal IPS: " + str(TotalIPS)
	IdleProgressBar.value += TotalIPS * delta

func ClickedItemButton():
	# Add ClickValue to score
	Score += ClickValue
	ClickProgressBar.value += ClickValue
	

func AddIPS(var IPSValue, var Price):
	TotalIPS += IPSValue
	Score -= Price

func ClickProgress(Value):
	if Value == 100:
		ClickProgressBar.value = 0
		ClickValue += 1 # It doesn't have to be this, this is just a example

func IdleProgress(Value):
	if Value == 100:
		IdleProgressBar.value = 0
		TotalIPS += 1 # 0It doesn't have to be this, this is just a example
