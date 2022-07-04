extends Node2D

export(int) var Score = 0
export(float) var BPM

var GameStart = false

var stopwatch = 0

func StartGame():
	if GameStart == false:
		get_node("Music").play()
		GameStart = true

func _process(_delta):
	if Score >= 7:
		Win()

func Win():
	get_node("Win").visible = true
	Score = 0

# Seperate Shit for other scripts
func AddPoints():
	Score += 1
	print(Score)

func _on_Win_pressed():
	get_node("Win").visible = false
