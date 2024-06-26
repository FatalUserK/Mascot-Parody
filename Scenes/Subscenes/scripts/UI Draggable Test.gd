extends TextureRect

var data = {}

var objectID
var placementCost
var previewDataOverride = {}

var overrideImageValid
var overrideImageInvalid


var DRAGPREVIEW = preload("res://Scenes/Subscenes/DragPreview.tscn")

# Called when the node enters the scene tree for the first time.
func _get_drag_data(position: Vector2):
	var slot = get_parent().get_name()
	

	data["ID"] = objectID
	data["cost"] = placementCost
	data["previewOverride"] = previewDataOverride
	
	var dragPreview = DRAGPREVIEW.instantiate()

	add_child(dragPreview)
	dragPreview.data = data
		
	return data
	
func _can_drop_data(at_position, data):
	return false

	
func _drop_data(at_position, data):
	texture = data
