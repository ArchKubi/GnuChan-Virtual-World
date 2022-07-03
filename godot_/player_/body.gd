extends Spatial

onready var animPlayer = get_node("GnuchanMD/AnimationPlayer")

func _ready():
	animPlayer.play("Stend_IDL")
	$GnuchanMD/fly_desk.hide()
	$GnuchanMD/Screen.hide()
	$GnuchanMD/gnuChan_Chair.hide()


func _process(delta):
	if Input.is_action_just_pressed("tab") and gl.sit == true:
		$GnuchanMD/fly_desk.show()
		$GnuchanMD/Screen.show()
	elif Input.is_action_just_pressed("tab") and gl.sit == true:
		$GnuchanMD/fly_desk.hide()
		$GnuchanMD/Screen.hide()

	if Input.is_action_just_pressed("sit") and gl.sit == false:
			animPlayer.play("Sit_IDL")
			gl.sit = true
			$GnuchanMD/gnuChan_Chair.show()
	elif Input.is_action_just_pressed("sit") and gl.sit == true:
			animPlayer.play("Stend_IDL")
			gl.sit = false
			$GnuchanMD/gnuChan_Chair.hide()
