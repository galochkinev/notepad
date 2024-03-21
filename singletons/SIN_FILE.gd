extends Node

var work_path: String = 'user://data.dat'
var notes: Array = []

func _ready():
	if data_exists():
		data_load()
	else:
		data_save()

func data_load():
	var filer = FileAccess.open(work_path, FileAccess.READ)
	notes = filer.get_var()
	filer.close()

func data_save():
	var filer = FileAccess.open(work_path, FileAccess.WRITE)
	filer.store_var(notes)
	filer.close()
	
func data_exists():
	return FileAccess.file_exists(work_path)



func add_note(code: String, text: String):
	var note: Dictionary = {
		'code': code,
		'text': text
	}
	notes.append(note)
	data_save()

func get_note(code: String):
	data_load()
	for i in range(notes.size()):
		if notes[i]['code'] == code:
			return notes[i]['text']
	return ''
