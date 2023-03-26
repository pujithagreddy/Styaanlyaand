extends Node2D

func _ready():
	if Global.door_name:
		var door_node = find_node(Global.door_name)
		if door_node:
			$YSort/MainPlayer.position.x = 892
			$YSort/MainPlayer.position.y = 400

