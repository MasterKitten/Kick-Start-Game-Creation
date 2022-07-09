extends Control

export(PoolStringArray) var TextPieces = ["test"]
export(PoolStringArray) var RequiredAnswers = ["next"]
var TextNumber = 0

export(PoolStringArray) var OptionalAnswers = [""]
export(PoolIntArray) var WhenOptional = [0]
export(PoolIntArray) var SkipToLine = [0]
var OptionalTextNumber = 0

onready var CommandPrompt = get_node("Command Prompt/RichTextLabel")
onready var Line = get_node("LineEdit")

func _ready():
	CommandPrompt.text = "> " + TextPieces[TextNumber]

# If you are reading this code, that means you must have encountererd the "last optional array bug"
# To solve that bug, add one last array to OptionalAnswers, WhenOptional and SkipToLine. That solves the issue.
func _on_LineEdit_text_entered(new_text):
	if WhenOptional[OptionalTextNumber] == TextNumber:
		if Line.text == OptionalAnswers[OptionalTextNumber]:
			TextNumber = SkipToLine[OptionalTextNumber]
			CommandPrompt.text = CommandPrompt.text + "\n> " + TextPieces[TextNumber]
			OptionalTextNumber += 1
	if Line.text == RequiredAnswers[TextNumber]:
		if WhenOptional[OptionalTextNumber] == TextNumber:
			OptionalTextNumber += 1
		TextNumber += 1
		CommandPrompt.text = CommandPrompt.text + "\n> " + TextPieces[TextNumber]
	Line.text = ""
