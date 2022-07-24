extends StaticBody2D

func Next_Thing(_body):
	get_node("/root/Endless Runner Example").Spawn(self)
