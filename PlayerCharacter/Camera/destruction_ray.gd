extends RayCast3D



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("LSB_RotateCW"):
		if is_colliding():
			InputHandler.RotateCW(get_collider().owner)
			
	if Input.is_action_just_pressed("LSB_RotateCCW"):
		if is_colliding():
			InputHandler.RotateCCW(get_collider().owner)
	if InputHandler.Tool == 2:
		
		
		if Input.is_action_just_pressed("interact"):
			if is_colliding():
				get_collider().destroy()
