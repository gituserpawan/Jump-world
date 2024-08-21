extends Node




func _on_easy_pressed():
	get_tree().change_scene_to_file("res://scenes/level1.tscn")




func _on_medium_pressed():
	get_tree().change_scene_to_file("res://scenes/level3.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	


func _on_hard_pressed():
	get_tree().change_scene_to_file("res://scenes/level4.tscn")
