extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var value = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = String(value);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = get_node("../../../Player").get('souls')
	self.text = String(value);
	
func adjust(adjustment):
	value = adjustment;
	