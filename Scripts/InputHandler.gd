extends Node

var Tool = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_1):
		Tool = 0
	elif Input.is_key_pressed(KEY_2):
		Tool = 1
	elif Input.is_key_pressed(KEY_3):
		Tool = 2
		
	print(Tool)	
