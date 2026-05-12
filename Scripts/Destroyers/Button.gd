extends Node

func destroy():
	%OutputPeg.queue_free()
	%Interactable.queue_free()
	queue_free()
	

	
