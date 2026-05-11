extends StaticBody3D

@onready var BAnim = $AnimationPlayer.get_animation("press")

func _ready() -> void:
	BAnim.loop_mode = Animation.LOOP_NONE
# Called when the node enters the scene tree for the first time.


func press():
	
	$AnimationPlayer.play("press")
	%OutputPeg.on = true
	
func release():
	
	$AnimationPlayer.play_backwards("press")
	%OutputPeg.on = false
	

	
