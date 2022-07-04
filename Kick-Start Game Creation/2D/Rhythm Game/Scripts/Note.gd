extends KinematicBody2D
var Hold = false

onready var Game = get_node("/root/Rhythm Game Example")

func _process(delta):
	print(self.position)
	if self.position.y <= -449:
		Game.StartGame()
	# Beats per minute, change it on Rhythm Manager
	var BPM = Game.BPM
	var collision_info = move_and_collide(Vector2(0, -120 * delta * (BPM / 60)))
	if collision_info:
		var thing = collision_info.get_collider()
		if Hold == true:
			# The game needs to figure out what button requires holding, so holding doesn't go with other buttons
			match thing.name:
				"Left":
					thing.get_parent().Left_Hold = true
				"Up":
					thing.get_parent().Up_Hold = true
				"Down":
					thing.get_parent().Down_Hold = true
				"Right":
					thing.get_parent().Right_Hold = true
		else:
			thing.get_parent().Left_Hold = false
			thing.get_parent().Up_Hold = false
			thing.get_parent().Down_Hold = false
			thing.get_parent().Right_Hold = false
		queue_free()
		# If there is a score error, try and find the path that is made and put it here!
		Game.AddPoints()
