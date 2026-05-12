extends Node

#it well, it destroys the gate
func destroy():
	%Script.queue_free()
	%In.queue_free()
	%Out.queue_free()
	%Base.queue_free()
	queue_free()
