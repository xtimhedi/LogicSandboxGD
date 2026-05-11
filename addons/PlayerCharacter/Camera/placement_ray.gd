extends RayCast3D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if InputHandler.Tool == 1:
		if Input.is_action_just_pressed("interact"):
			if is_colliding():
				Placement.PlaceObject(InputHandler.Gate, get_collision_point())
			
	
	
