extends Node2D

func _ready():
	if Global.door_name:
		var door_node = find_node(Global.door_name)
		if door_node:
			$MainPlayer.position.x = 376
			$MainPlayer.position.y = 2008


func _process(delta):
	if $CanvasLayer/black.modulate.a>=0:
		$CanvasLayer/black.modulate.a-= 1.5*delta
