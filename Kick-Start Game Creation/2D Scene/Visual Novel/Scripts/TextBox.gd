extends ColorRect

export var TextPieces = ["test"]
var TextChainNumber = 0
# This is whomever is speaking, FLASE is left, TRUE is right
export var PersonSpeaking = [false]

export onready var Person1 = get_parent().get_node("Character")
export onready var Person2 = get_parent().get_node("Character2")
onready var Text = get_node("RichTextLabel")

func _ready():
	if PersonSpeaking[TextChainNumber] == false:
		Text.text = Person1.Name + ": " + TextPieces[TextChainNumber]
	else:
		Text.text = Person2.Name + ": " + TextPieces[TextChainNumber]

func on_input():
	TextChainNumber += 1
	if PersonSpeaking[TextChainNumber] == false:
		Text.text = Person1.Name + ": " + TextPieces[TextChainNumber]
	else:
		Text.text = Person2.Name + ": " + TextPieces[TextChainNumber]
	
