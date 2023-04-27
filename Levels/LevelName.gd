extends CanvasLayer

func _ready():
	if get_parent().name == "Level 10":
		$Label.text = "E001"
	show_name()

	if get_parent().name == "Level 11":
		$Label.text = "E002"
	show_name()
	
	if get_parent().name == "Level 12":
		$Label.text = "Washroom"
	show_name()
	
	if get_parent().name == "Level 13":
		$Label.text = "Lab"
	show_name()
	
	if get_parent().name == "Level 14":
		$Label.text = "Staff room"
	show_name()
	
	if get_parent().name == "Level 15":
		$Label.text = "Seminar Hall"
	show_name()
	
	if get_parent().name == "Level 16":
		$Label.text = "Library"
	show_name()
	
func show_name():
	$AnimationPlayer.play("ShowName")
	yield($AnimationPlayer,"animation_finished")
	queue_free()
