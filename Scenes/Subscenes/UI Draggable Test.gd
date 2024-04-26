extends TextureRect

var objectID
var placementCost
var previewDataOverride = {}

# Called when the node enters the scene tree for the first time.
func _get_drag_data(position: Vector2):
	
	var data = {}
	data["ID"] = objectID
	data["cost"] = placementCost
	data["previewOverride"] = previewDataOverride
	
	var dragPreview = DRAGPREVIEW.instance()
	dragPreview.texture = texture_normal
	add_child(dragPreview)
		
	return data
	
func _can_drop_data(at_position, data):
	return data is Texture2D
	
func _drop_data(at_position, data):
	texture = data
