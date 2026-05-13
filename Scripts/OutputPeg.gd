extends Node

@export var on = false
var SMaterial = StandardMaterial3D.new()
var ConnectedPegs: Array = [] 

func _ready() -> void:
	%MeshInstance3D.set_surface_override_material(0, SMaterial)

func _process(_delta: float) -> void:
	UpdateVisuals()

func UpdateVisuals() -> void:
	if on:
		SMaterial.albedo_color = Color(1, 0, 0)
		SMaterial.emission_enabled = true
		SMaterial.emission = Color(1, 0, 0)
		SMaterial.emission_energy_multiplier = 100
	else:
		SMaterial.albedo_color = Color(0, 0, 0)
		SMaterial.emission_enabled = false
func SetSignalState(NewState: bool, SourceNode = null) -> void:
	if on == NewState:
		return
	on = NewState
	for CurrentPeg in ConnectedPegs:
		if CurrentPeg != SourceNode:
			CurrentPeg.SetSignalState(NewState, self)
func GetSignalState() -> bool:
	return on
