extends Node

@export var on = false
var material = StandardMaterial3D.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%MeshInstance3D.set_surface_override_material(0, material)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if on:
		material.albedo_color = Color(1, 0, 0) # Red
		material.emission_enabled = true
		material.emission = Color(1, 0, 0)
		material.emission_energy_multiplier = 30
	else:
		material.albedo_color = Color(0.0, 0.0, 0.0, 1.0) # Black
		material.emission_enabled = false
