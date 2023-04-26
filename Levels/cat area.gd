extends Area2D

var active = false


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, '_ON_npc_body_entered')
	connect("body_exited", self, '_ON_npc_body_exited')
	
	
func _input(event): #ui_accept
	if get_node_or_null('DialogNode')==null:
		if event.is_action_pressed("ui_accept") and active:
			get_tree().paused=true
			var dialog= Dialogic.start('cat')
			dialog.pause_mode=Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end',self,'unpause')
			dialog.connect('dialogic_signal', self, '_on_dialogic_signal')
			add_child(dialog)
			yield(dialog,'timeline_end')
			
#func _on_dialogic_signal(argument):
	#perm.a=argument

func unpause(timeline_name):
	get_tree().paused=false


func _ON_npc_body_entered(body):
	if body.name == 'MainPlayer':
		active=true

func _ON_npc_body_exited(body):
	if body.name == 'MainPlayer':
		active=false
