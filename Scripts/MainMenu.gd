extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://MainLevel.tscn")
	
	pass # Replace with function body.


func _on_continue_pressed():
	get_tree().quit()


func _on_options_pressed():
	get_tree().change_scene_to_file("res://OptionsMenu.tscn")


func _on_quit_pressed():
	get_tree().quit()
