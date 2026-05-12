extends Node

func destroy():
	%OutputPeg.queue_free()
	%ButtonRoot.queue_free()
	queue_free()
	

	
