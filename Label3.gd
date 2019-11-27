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
	var p1 =  get_node("../../Player").get('souls')
	var p2 =  get_node("../../Player2").get('souls')
	if p1 > p2 :
		self.text = ("Player 1 wins!");
	if p1 < p2 :
		self.text = ("Player 2 wins!");
		
		
	
func adjust(adjustment):
	value = adjustment;
	