extends Area2D

func On_Body_Entered(body):
	if body.UsableMoney == true:
		body.Money += 1
		queue_free()
