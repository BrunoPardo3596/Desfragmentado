extends Node2D

class_name MovingPlatform


# Member variables
export var motion = Vector2()
export var cycle = 10.0
var accum = 0.0
func _ready():
	motion = Vector2(20* rand_range(-1,1), 20* rand_range(-1,1))
	
func _physics_process(delta):
	accum += delta * (1.0 / cycle) * PI * 2.0 * rand_range(0,1)
	
	accum = fmod(accum, PI * 2.0)
	var d = sin(accum)
	var xf = Transform2D()
	xf[2] = motion * d
	($Platform as KinematicBody2D).transform = xf
