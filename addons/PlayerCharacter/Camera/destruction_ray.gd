extends RayCast3D



func _process(delta: float) -> void:
	if InputHandler.Tool == 2:
		if Input.is_action_just_pressed("interact"):
			if is_colliding():
				get_collider().destroy()
