extends Node



func WaitTick():
	await get_tree().create_timer(0.002).timeout
