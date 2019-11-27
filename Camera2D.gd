extends Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var Blue_Cow = preload("res://Item/blue_cow/Blue_Cow.tscn")
var Soul = preload("res://Item/soul/Soul.tscn")
var countBlue = 15.0
var countSoul = 4.0
var size = Vector2(1590.0, 950.0)
# Called when the node enters the scene tree for the first time.
func _ready():
	Camera2D.ANCHOR_MODE_DRAG_CENTER
	pass # Replace with function body.

func _physics_process(delta): 
	countBlue -= delta
	countSoul -= delta
	if(countBlue<0):
		countBlue = 15.0
		var positionInArea = Vector2()
		positionInArea.x = (rand_range(-size.x/4 , size.x/4))
		positionInArea.y = (rand_range(-size.y/4 , size.y/4))
		print(positionInArea)
		var spawn = Blue_Cow.instance()
		spawn.position = positionInArea
		add_child(spawn)
	if(countSoul<0):
		countSoul = 4.0
		var positionInArea = Vector2()
		positionInArea.x = 7*(rand_range(-size.x/16 , size.x/16))
		positionInArea.y = 7*(rand_range(-size.y/16 , size.y/16))
		print(positionInArea)
		var spawn = Soul.instance()
		spawn.position = positionInArea
		add_child(spawn)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
