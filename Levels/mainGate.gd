extends Area2D

export(String, FILE, "*.tscn,*.scn") var new_scene 

var permission=0
#var active=false
onready var Global = get_node("/root/Global")

func _input(event):
	if event.is_action_pressed("ui_accept"):
		if get_overlapping_bodies().size() > 1:
			if permission==0:
				if get_node_or_null('DialogNode')==null:
					if event.is_action_pressed("ui_accept"):
						get_tree().paused=true
						var dialog= Dialogic.start('permission0')
						dialog.pause_mode=Node.PAUSE_MODE_PROCESS
						dialog.connect('timeline_end',self,'unpause')
						#dialog.connect('dialogic_signal', self, '_on_dialogic_signal')
						add_child(dialog)
						yield(dialog,'timeline_end')
			elif permission==1:
				next_level()
			
func perm():
	permission=1
	print(permission)
	print("works")

func next_level():
	var PTS = get_tree().change_scene(new_scene)
	Global.door_name = name

func unpause(timeline_name):
	get_tree().paused=false

