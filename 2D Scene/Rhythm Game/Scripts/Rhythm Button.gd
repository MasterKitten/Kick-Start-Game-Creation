extends Node2D

export(bool) var Bot_Mode = false
export var Left_Hold = false
export var Up_Hold = false
export var Down_Hold = false
export var Right_Hold = false

func _process(_delta):
	if Bot_Mode == false:
		# make sure you can't automatically do something
		$Left.set_collision_layer_bit(0, false)
		$Left.set_collision_mask_bit(0, false)
		$Up.set_collision_layer_bit(0, false)
		$Up.set_collision_mask_bit(0, false)
		$Down.set_collision_layer_bit(0, false)
		$Down.set_collision_mask_bit(0, false)
		$Right.set_collision_layer_bit(0, false)
		$Right.set_collision_mask_bit(0, false)
		# Bot mode, for if you have a bot playing with you.
	if Bot_Mode == true:
		$Left.set_collision_layer_bit(0, true)
		$Left.set_collision_mask_bit(0, true)
		$Up.set_collision_layer_bit(0, true)
		$Up.set_collision_mask_bit(0, true)
		$Down.set_collision_layer_bit(0, true)
		$Down.set_collision_mask_bit(0, true)
		$Right.set_collision_layer_bit(0, true)
		$Right.set_collision_mask_bit(0, true)
# Actions for the player.
# So the first one is the immediate "pressing" while the next sentence is holding stuff.
	if Bot_Mode == false:
		if Input.is_action_just_pressed("ui_left") or (Input.get_action_strength("ui_left") and Left_Hold == true):
			$Left.set_collision_layer_bit(0, true)
			$Left.set_collision_mask_bit(0, true)
		if Input.is_action_just_pressed("ui_up") or (Input.get_action_strength("ui_up") and Up_Hold == true):
			$Up.set_collision_layer_bit(0, true)
			$Up.set_collision_mask_bit(0, true)
		if Input.is_action_just_pressed("ui_down") or (Input.get_action_strength("ui_down") and Down_Hold == true):
			$Down.set_collision_layer_bit(0, true)
			$Down.set_collision_mask_bit(0, true)
		if Input.is_action_just_pressed("ui_right") or (Input.get_action_strength("ui_right") and Right_Hold == true):
			$Right.set_collision_layer_bit(0, true)
			$Right.set_collision_mask_bit(0, true)
