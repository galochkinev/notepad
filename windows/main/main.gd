extends Control

@onready var text = $bg/text
@onready var panel_save_note = $bg/panel_save_note
var isDialogSaveOpened: bool = false


func _ready():
	panel_save_note.visible = false

# КНОПКА ЗАПИСКИ
func _on_записи_id_pressed(id):
	match id:
		0:
			# SAVE
			isDialogSaveOpened = not isDialogSaveOpened
			panel_save_note.visible = isDialogSaveOpened
		1:
			# OPEN
			get_tree().change_scene_to_file("res://windows/search/search.tscn")
		2:
			# NEW
			text.text = ''
# КНОПКА СПРАВКА
func _on_справка_about_to_popup():
	get_tree().change_scene_to_file("res://windows/help/help.tscn")

func _on_выход_about_to_popup():
	get_tree().quit()


func _on_cancel_pressed():
	panel_save_note.visible = false


func _on_save_pressed():
	SIN_FILE.add_note($bg/panel_save_note/code.text, $bg/text.text)
	panel_save_note.visible = false
	



