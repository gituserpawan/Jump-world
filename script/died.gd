extends Node



func _on_change_mode_pressed():
	get_tree().change_scene_to_file("res://scenes/mode.tscn")


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
