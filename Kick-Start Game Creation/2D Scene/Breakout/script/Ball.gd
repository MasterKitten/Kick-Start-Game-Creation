extends RigidBody2D

func _on_Ball_body_entered(body):
	# detect if this is an enemy (I like using bits)
	if body.get_collision_layer_bit(1) and body.get_collision_mask_bit(1):
		body.queue_free()
