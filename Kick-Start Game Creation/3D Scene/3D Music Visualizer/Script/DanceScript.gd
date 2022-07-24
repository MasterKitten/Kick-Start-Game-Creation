extends Spatial

var Altbeat = false
var MusicStart = false

var timer = 0.0
export (float) var BPM = 0.0

onready var Dancing = get_node("Animated Thing/AnimationPlayer")

func _ready():
	get_node("Camera/AudioStreamPlayer").play()
	MusicStart = true

func _process(delta):
	if MusicStart == true:
		timer += delta
	if timer >= (60 / BPM):
		timer = 0
		if Altbeat == false:
			Dancing.play("Dance_1")
			Altbeat = true
		else:
			Dancing.play("Dance_2")
			Altbeat = false
