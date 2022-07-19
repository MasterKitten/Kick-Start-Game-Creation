extends ColorRect

export var TextPieces = ["test"]
var TextChainNumber = 0

export var TextChoices = ["Test 1", "Test 2"]
var AnswerChainNumber = 0
var Answering = false

export onready var Answer1 = get_parent().get_node("Buttons/Answer1")
export onready var Answer2 = get_parent().get_node("Buttons/Answer2")
# This is whomever is speaking, 1 is left, 2 is right, 3 is player
export var PersonSpeaking = [1]
export var PersonEmotion = ["Adoration"]

export onready var Person1 = get_parent().get_node("Character")
export onready var Person2 = get_parent().get_node("Character2")
onready var Text = get_node("RichTextLabel")

func _ready():
	if Answering == false:
		if PersonSpeaking[TextChainNumber] == 1:
			Text.text = Person1.Name + ": " + TextPieces[TextChainNumber]
			Change_Emotion(PersonEmotion[TextChainNumber])
		elif PersonSpeaking[TextChainNumber] == 2:
			Text.text = Person2.Name + ": " + TextPieces[TextChainNumber]
			Change_Emotion(PersonEmotion[TextChainNumber])
		else:
			Text.text = TextPieces[TextChainNumber]
			Answering = true
			GetAnswers()

func GetAnswers():
	Answer1.visible = true
	Answer1.text = TextChoices[AnswerChainNumber]
	AnswerChainNumber += 1
	Answer2.visible = true
	Answer2.text = TextChoices[AnswerChainNumber]
	AnswerChainNumber += 1

func on_input():
	if Answering == false:
		TextChainNumber += 1
		if PersonSpeaking[TextChainNumber] == 1:
			Text.text = Person1.Name + ": " + TextPieces[TextChainNumber]
			Change_Emotion(PersonEmotion[TextChainNumber])
		elif PersonSpeaking[TextChainNumber] == 2:
			Text.text = Person2.Name + ": " + TextPieces[TextChainNumber]
			Change_Emotion(PersonEmotion[TextChainNumber])
		else:
			Text.text = TextPieces[TextChainNumber]
			Answering = true
			GetAnswers()
	
func Change_Emotion(var EmotionString):
	match EmotionString:
		"Admiration":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Admiration
			else:
				Person2.texture = Person1.Admiration
		"Adoration":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Adoration
			else:
				Person2.texture = Person1.Adoration
		"Aesthetic Appreciation":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.AestheticAppreciation
			else:
				Person2.texture = Person1.AestheticAppreciation
		"Amusement":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Amusement
			else:
				Person2.texture = Person1.Amusement
		"Anger":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Anger
			else:
				Person2.texture = Person1.Anger
		"Anxiety":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Anxiety
			else:
				Person2.texture = Person1.Anxiety
		"Awe":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Awe
			else:
				Person2.texture = Person1.Awe
		"Awkwardness":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Awkwardness
			else:
				Person2.texture = Person1.Awkwardness
		"Boredom":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Boredom
			else:
				Person2.texture = Person1.Boredom
		"Calmness":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Calmness
			else:
				Person2.texture = Person1.Calmness
		"Confusion":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Confusion
			else:
				Person2.texture = Person1.Confusion
		"Craving":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Craving
			else:
				Person2.texture = Person1.Craving
		"Disgust":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Disgust
			else:
				Person2.texture = Person1.Disgust
		"Empathic Pain":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.EmpathicPain
			else:
				Person2.texture = Person1.EmpathicPain
		"Entrancement":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Entrancement
			else:
				Person2.texture = Person1.Entrancement
		"Excitement":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Excitement
			else:
				Person2.texture = Person1.Excitement
		"Fear":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Fear
			else:
				Person2.texture = Person1.Fear
		"Horror":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Horror
			else:
				Person2.texture = Person1.Horror
		"Interest":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Interest
			else:
				Person2.texture = Person1.Interest
		"Joy":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Joy
			else:
				Person2.texture = Person1.Joy
		"Nostalgia":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Nostalgia
			else:
				Person2.texture = Person1.Nostalgia
		"Relief":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Relief
			else:
				Person2.texture = Person1.Relief
		"Romance":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Romance
			else:
				Person2.texture = Person1.Romance
		"Sadness":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Sadness
			else:
				Person2.texture = Person1.Sadness
		"Satisfaction":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Satisfaction
			else:
				Person2.texture = Person1.Satisfaction
		"Sexual Desire":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.SexualDesire
			else:
				Person2.texture = Person1.SexualDesire
		"Surprise":
			if PersonSpeaking[TextChainNumber] == 1:
				Person1.texture = Person1.Surprise
			else:
				Person2.texture = Person1.Surprise

func _on_Answer1_pressed():
	Answer1.visible = false
	Answer2.visible = false
	Answering = false
	on_input()

func _on_Answer2_pressed():
	Answer1.visible = false
	Answer2.visible = false
	Answering = false
	on_input()
