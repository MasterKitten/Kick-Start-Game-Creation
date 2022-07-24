extends Node2D

var Random = 0
export(PackedScene) var Platform1
export(PackedScene) var Platform2

func Spawn(object):
	var RNG = RandomNumberGenerator.new()
	RNG.randomize()
	Random = RNG.randi_range(1, 2)
	match(Random):
		1:
			var Thing = Platform1.instance()
			print("working1")
			add_child(Thing)
			Thing.position = object.position + Vector2(1000, 0)
		2:
			var Thing = Platform2.instance()
			print("working2")
			add_child(Thing)
			Thing.position = object.position + Vector2(1000, 0)
