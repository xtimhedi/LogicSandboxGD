extends CanvasLayer

class_name HUD

#player character reference variable
@export var play_char : PlayerCharacter

#label references variables
@onready var frames_per_second_label_text: Label = %FramesPerSecondLabelText

func _process(_delta : float) -> void:
	display_current_FPS()
	
	

	
func display_current_FPS() -> void:
	frames_per_second_label_text.set_text(str(Engine.get_frames_per_second()))
	

	
	
	
	
