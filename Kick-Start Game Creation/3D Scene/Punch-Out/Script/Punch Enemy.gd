extends Sprite3D

export (float) var Health = 10.0
export (float) var BodyDefense = 1.0
export (float) var HeadDefense = 1.0

func _process(_delta):
	if Health == 0:
		print("Win")
