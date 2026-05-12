extends Node

const WireScript = """

extends MeshInstance3D

var LinkA : StaticBody3D
var LinkB : StaticBody3D

func _process(float) -> void:
	if LinkA.on:
		if !LinkB.on:
			LinkB.on = true
	else:
		LinkB.on = false
"""
var WSGD = GDScript.new()

func _ready():
	WSGD.source_code = WireScript
	WSGD.reload()

func SpawnWire(Start: Vector3, End: Vector3, LinkA, LinkB, WireColor: Color = Color.BLACK, Radius: float = 0.06) -> MeshInstance3D:
	var NewMeshInstance = MeshInstance3D.new()
	var NewCylinder = CylinderMesh.new()
	
	NewMeshInstance.set_script(WSGD)
	
	NewMeshInstance.LinkA = LinkA
	NewMeshInstance.LinkB = LinkB
	
	
	NewCylinder.top_radius = Radius
	NewCylinder.bottom_radius = Radius
	NewCylinder.radial_segments = 8
	NewCylinder.rings = 1
	
	
	var NewMaterial = StandardMaterial3D.new()
	NewMaterial.albedo_color = WireColor
	NewCylinder.material = NewMaterial
	NewMeshInstance.mesh = NewCylinder
	
	get_tree().current_scene.add_child(NewMeshInstance)
	update_wire_position(NewMeshInstance, Start, End)
	
	return NewMeshInstance

func update_wire_position(WireInstance: MeshInstance3D, Start: Vector3, End: Vector3):
	var Direction: Vector3 = End - Start
	var Length: float = Direction.length()
	
	if Length < 0.001: 
		return
		
	WireInstance.mesh.height = Length
	WireInstance.global_position = Start + (Direction * 0.5)
	
	WireInstance.global_transform = Transform3D(
		Basis.looking_at(Direction, Vector3.UP), 
		WireInstance.global_position
	)
	WireInstance.rotate_object_local(Vector3.RIGHT, deg_to_rad(90))
	
