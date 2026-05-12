extends RayCast3D

var SelectedCounter = 0
var PegA : PackedScene
var PegB : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if InputHandler.Tool == 1:
		if Input.is_action_just_pressed("interact"):
			if is_colliding():
				Placement.PlaceObject(InputHandler.Gate, get_collision_point())
	elif InputHandler.Tool == 3:
		if Input.is_action_just_pressed("interact"):
			if SelectedCounter == 0:
				if not PegA:
					var LocalPeg = get_collider()
					if LocalPeg.name == "Peg":
						PegA = get_collider()
						SelectedCounter += 1
						print(SelectedCounter)
					else:
						return
			
				
			
	
	
