extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var taken = false
var ITEM_NAME

class_name Item

# func item_effect():
	

func _on_item_body_entered(body):
	if not taken and body is Player or Player2:
		#($Anim as AnimationPlayer).play("taken")
		if body.has_method("get_item"):
			body.call("get_item", ITEM_NAME)
		taken = true
	pass # Replace with function body.
