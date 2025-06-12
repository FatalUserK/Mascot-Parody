extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/MainLevel.tscn")
	
	pass # Replace with function body.


func _on_continue_pressed():
	get_tree().change_scene_to_file("res://Scenes/LevelOld.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/OptionsMenu.tscn")


func _on_quit_pressed():
	get_tree().quit()
