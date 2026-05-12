extends RayCast3D

@export var PegNumber = 0
@export var SelectedPegA : StaticBody3D
@export var SelectedPegB : StaticBody3D

func _physics_process(_delta):
	# 1. Force immediate physics sync to prevent mid-frame data mismatch
	force_raycast_update()
	if InputHandler.Tool == 0:
		if %InteractionRaycast.is_colliding():
			if %InteractionRaycast.get_collider().name == "Interactable":
				if Input.is_action_just_pressed("interact"):
					%InteractionRaycast.get_collider().press()
				elif Input.is_action_just_released("interact"):
					%InteractionRaycast.get_collider().release()
					
	if InputHandler.Tool == 3:
		
		if %InteractionRaycast.is_colliding():
			var collider = %InteractionRaycast.get_collider()
			if collider.name == "OutputPeg" or collider.name == "InputPeg":
				if Input.is_action_just_pressed("interact"):
				
					if PegNumber == 0:
						SelectedPegA = %InteractionRaycast.get_collider()
						print(SelectedPegA.global_position)
						PegNumber += 1
						print(SelectedPegA)
						await Input.is_action_just_released("interact")
					elif PegNumber == 1:
						SelectedPegB = %InteractionRaycast.get_collider()
						print(SelectedPegB.global_position)
						print(SelectedPegB)
						if SelectedPegA.name == "OutputPeg":
							if SelectedPegB.name != "OutputPeg":
								await Input.is_action_just_released("interact")
								print(SelectedPegA, SelectedPegB)
								WireManager.SpawnWire(SelectedPegA.global_position,SelectedPegB.global_position, SelectedPegA, SelectedPegB)
								PegNumber = 0
						elif SelectedPegA.name == "InputPeg":
							if SelectedPegB.name != "InputPeg":
								await Input.is_action_just_released("interact")
								print(SelectedPegA, SelectedPegB)
								WireManager.SpawnWire(SelectedPegA.global_position,SelectedPegB.global_position, SelectedPegA, SelectedPegB)
								PegNumber = 0
						
				
	
