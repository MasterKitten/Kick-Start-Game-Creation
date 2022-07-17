extends Node2D

export(PackedScene) var Left
export(PackedScene) var Up
export(PackedScene) var Down
export(PackedScene) var Right
export(PackedScene) var Hold

onready var Game = get_node("/root/Rhythm Game Example")

# 1 is left, 2 is up, 3 is down, 4 is right, 0 is no note
export(PoolIntArray) var NoteSection
# 0 is regular note, 1 is hold note
export(PoolIntArray) var NoteType

func _on_SpawnNotes_pressed():
	var BPM = Game.BPM
	for x in range(0, NoteSection.size()):
		if NoteSection[x] == 1:
			var nodeInstance
			if NoteType[x] == 1:
				nodeInstance = Hold.instance()
				nodeInstance.Hold == true
			else:
				nodeInstance = Left.instance()
			add_child(nodeInstance)
			nodeInstance.position = $"Left".position + Vector2(0, x * 120)
		if NoteSection[x] == 2:
			var nodeInstance
			if NoteType[x] == 1:
				nodeInstance = Hold.instance()
				nodeInstance.Hold == true
			else:
				nodeInstance = Up.instance()
			add_child(nodeInstance)
			nodeInstance.position = $"Up".position + Vector2(0, x * 120)
		if NoteSection[x] == 3:
			var nodeInstance
			if NoteType[x] == 1:
				nodeInstance = Hold.instance()
				nodeInstance.Hold == true
			else:
				nodeInstance = Down.instance()
			add_child(nodeInstance)
			nodeInstance.position = $"Down".position + Vector2(0, x * 120)
		if NoteSection[x] == 4:
			var nodeInstance
			if NoteType[x] == 1:
				nodeInstance = Hold.instance()
				nodeInstance.Hold = true
			else:
				nodeInstance = Right.instance()
			add_child(nodeInstance)
			nodeInstance.position = $"Right".position + Vector2(0, x * 120)
		if NoteSection[x] == 0:
			pass
