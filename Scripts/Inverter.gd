extends Node3D

var LastInputState : bool = false

func _ready() -> void:
	var InitialInput = %In/InputPeg.on
	LastInputState = InitialInput
	%Out/OutputPeg.SetSignalState(not InitialInput, null)

func _process(_delta: float) -> void:
	var CurrentInput = %In/InputPeg.on
	
	if CurrentInput != LastInputState:
		LastInputState = CurrentInput
		%Out/OutputPeg.SetSignalState(not CurrentInput, null)
