extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Start.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	
	get_tree().quit()


func _on_Start_focus_entered():
	$VBoxContainer/SE.play()


func _on_Quit_focus_entered():
	$VBoxContainer/SE.play()
	
func _process(delta):
	if $"CanvasLayer/black".modulate.a>=0:
		$"CanvasLayer/black".modulate.a-= 1.0*delta
