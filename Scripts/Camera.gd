extends Camera2D


# Called when the node enters the scene tree for the first time.
func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		if event.button_mask == MOUSE_BUTTON_MASK_MIDDLE:
			position -= event.relative / zoom
	pass


var zoom_min = Vector2(1,1)
var zoom_max = Vector2(3,3)
var zoom_speed = Vector2(.75,.75)

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				if zoom > zoom_min:
					zoom -= zoom_speed
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				if zoom < zoom_max:
					zoom += zoom_speed
	pass
