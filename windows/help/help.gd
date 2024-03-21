extends Control


func _on_btn_exit_pressed():
	get_tree().change_scene_to_file("res://windows/main/main.tscn")
