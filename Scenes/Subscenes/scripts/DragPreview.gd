extends Sprite2D


var previewType

var tileData

var data = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = snapped(get_global_mouse_position(),Vector2(16, 16))
	


	if Input.is_action_just_released("LeftMouse"):

		queue_free()
	
	pass
