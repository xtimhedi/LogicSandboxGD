extends Node3D

#define all of the items you can place
const LSBButton = preload("res://Scenes/Objects/Button.tscn")
const LSBInverter = preload("res://Scenes/Objects/Gates/Inverter.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#PlaceObject(LSBButton,Vector3(0,5,-4))
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func PlaceObject(ObjectToPlace: PackedScene, SpawnPosition: Vector3):
	var NewObject = ObjectToPlace.instantiate()
	
	add_child(NewObject)
	NewObject.position = SpawnPosition

	
	
