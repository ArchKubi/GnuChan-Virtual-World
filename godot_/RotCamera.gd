extends Spatial

var mouse_sensitivity = 0.63

func _input(event):
	if event is InputEventMouseMotion and gl.camera == true:
		rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		gl.camera = true
	
	if Input.is_action_just_pressed("rot_") and gl.camera == true:
		gl.camera = false
	elif Input.is_action_just_pressed("rot_") and gl.camera == false:
		gl.camera = true
