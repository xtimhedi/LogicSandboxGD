extends RayCast3D

func _physics_process(_delta):
	# 1. Force immediate physics sync to prevent mid-frame data mismatch
	force_raycast_update()
	if InputHandler.Tool == 0:
		if %InteractionRaycast.is_colliding():
			if Input.is_action_just_pressed("interact"):
				%InteractionRaycast.get_collider().press()
			elif Input.is_action_just_released("interact"):
				%InteractionRaycast.get_collider().release()
	
