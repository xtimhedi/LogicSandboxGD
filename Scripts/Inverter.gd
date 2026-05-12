extends Node3D

var LocalTickCounter : int = 0

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if LocalTickCounter == 32:
		%Out/OutputPeg.on = not %In/InputPeg.on
		LocalTickCounter = 0
	LocalTickCounter += 1
