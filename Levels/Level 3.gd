extends Node2D

func _ready():
	if Global.door_name:
		var door_node = find_node(Global.door_name)
		if door_node:
			$YSort/MainPlayer.position.x = 256
			$YSort/MainPlayer.position.y = 21257

