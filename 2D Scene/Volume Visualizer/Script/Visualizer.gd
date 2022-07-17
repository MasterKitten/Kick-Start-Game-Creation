extends CPUParticles2D

export(Vector2) var Pos

func _ready():
	get_parent().get_node("AudioStreamPlayer2D").play()

func _process(delta):
	var Audio = AudioServer.get_bus_peak_volume_left_db(0, 0)
	position.y = Pos.y + (Audio * 10)
	position.x += 10 * delta

func _on_AudioStreamPlayer2D_finished():
	get_parent().get_node("AudioStreamPlayer2D").stop()
