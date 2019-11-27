extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.

func _process(delta):
	var p1 =  get_node("../Player").get('souls')
	var p2 =  get_node("../Player2").get('souls')
	if p1 >= 30 or p2 >= 30:
		get_node("AnimationPlayer").play("Fade")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
