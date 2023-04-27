extends Node2D

var Level = preload("res://Levels/LevelName.tscn")
func _ready():
	
	var level_name = Level.instance()
	add_child(level_name)
