extends Control

@onready var text = $bg/text

func _ready():
	pass # Replace with function body.


func _on_записи_id_pressed(id):
	print(id)
	match id:
		0:
			# SAVE
			pass
		1:
			# OPEN
			get_tree().change_scene_to_file("res://windows/search/search.tscn")
		2:
			# NEW
			text.text = ''


func _on_выход_about_to_popup():
	get_tree().quit()
