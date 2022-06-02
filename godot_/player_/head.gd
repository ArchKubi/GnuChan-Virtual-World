extends Spatial

onready var clapy = get_node("gnuClapy")
onready var sec = get_node("gnuSecuritron")

func _process(delta):
	if Input.is_action_just_pressed("1"):
		clapy.visible = not clapy.visible
		sec.visible = not sec.visible
	elif Input.is_action_just_pressed("2"):
		clapy.visible = not clapy.visible
		sec.visible = not sec.visible
