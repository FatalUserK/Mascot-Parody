extends Sprite2D


var previewType

var tileData

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = get_global_mouse_position()
	
	print("MOUSE DRAG CONTINUING!!")

	if Input.is_action_just_released("LEFTMOUSE"):
		print("MOUSE DRAG HALTING!!")
		queue_free()
	
	pass