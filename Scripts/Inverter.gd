extends Node3D



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if %In/InputPeg.on:
		Helpers.WaitTick()
		%Out/OutputPeg.on = false
	elif %In/InputPeg.on == false:
		Helpers.WaitTick()
		%Out/OutputPeg.on = true
