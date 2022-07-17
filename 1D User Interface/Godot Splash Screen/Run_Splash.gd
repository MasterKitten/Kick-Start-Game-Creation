extends Control

onready var Audio = get_node("AudioStreamPlayer2D")
onready var AnimationThing = get_node("AnimationPlayer")
var AnimationName = "Bumpin Animation"

func _ready():
	AnimationThing.play(AnimationName)
	Audio.play()

func _process(delta):
	if get_node("AnimationPlayer").is_playing() == false:
		Audio.stop()
		# Input what scene you want to switch to, the audio is for not annoying me :D
