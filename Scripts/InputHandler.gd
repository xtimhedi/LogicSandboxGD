extends Node

var Tool = 0
var Gate = Placement.LSBButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# interact
	if Input.is_key_pressed(KEY_I):
		Tool = 0
	# place
	elif Input.is_key_pressed(KEY_P):
		Tool = 1
	# delete
	elif Input.is_key_pressed(KEY_R):
		Tool = 2
	# Test wire
	elif Input.is_key_pressed(KEY_B):
		WireManager.SpawnWire(Vector3(1,5,1),Vector3(5,5,5))
		
	# add some gate choices
	elif Input.is_key_pressed(KEY_1):
		Gate = Placement.LSBButton
	elif Input.is_key_pressed(KEY_2):
		Gate = Placement.LSBInverter
