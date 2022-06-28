extends Control
onready var editorShow = get_node("SoftwareList/TextEditor_Popup")



func _process(delta):
	if Input.is_action_just_pressed("runner"):
		gl.RunnerShow = true
	elif Input.is_action_just_pressed("terminal"):
		gl.TerminalShow = true
