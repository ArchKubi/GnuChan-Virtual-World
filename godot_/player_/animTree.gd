extends AnimationTree

var playback : AnimationNodeStateMachinePlayback

func _ready():
	playback = get("parameters/playback")
	playback.start("sit_idl")
	active = true




####################################################################################################

func _process(delta):

	if Input.is_action_just_pressed("sit") and gl.sit == false:
		playback.start("sit_idl")
		gl.sit = true
	elif Input.is_action_just_pressed("sit") and gl.sit == true:
		playback.travel("stend_idl")
		gl.sit = false
	print(gl.sit)
	if gl.sit == true:
		if Input.is_action_pressed("Right_m") and gl.itemUse == false:
			playback.travel("sit_bye")
		elif Input.is_action_just_released("Right_m") and gl.itemUse == false:
			playback.travel("sit_idl")

		if Input.is_action_just_pressed("left_m") and gl.itemUse == false:
			playback.travel("computer_use")
		elif Input.is_action_just_released("left_m") and gl.itemUse == false:
			playback.travel("sit_idl")

	## Use 
		if Input.is_action_just_pressed("tab") and gl.itemUse == false:
			playback.travel("sit_computer_idl")
			gl.itemUse = true
			gl.gnuChan64 = true
		elif Input.is_action_just_pressed("tab") and gl.gnuChan64 == true:
			playback.travel("sit_idl")
			gl.itemUse = false
			gl.gnuChan64 = false
		elif Input.is_action_pressed("left_m") and gl.gnuChan64 == true:
			playback.travel("sit_computer_use")
		elif Input.is_action_just_released("left_m") and gl.gnuChan64 == true:
			playback.travel("sit_computer_idl")


		if Input.is_action_just_pressed("1") and gl.itemUse == false:
			playback.travel("sit_gamegirl_idl")
			gl.itemUse = true
			gl.gnuChanGameGirl = true
		elif Input.is_action_just_pressed("1") and gl.gnuChanGameGirl == true:
			playback.travel("sit_idl")
			gl.itemUse = false
			gl.gnuChanGameGirl = false
		elif Input.is_action_pressed("left_m") and gl.gnuChanGameGirl == true:
			playback.travel("sit_gamegirl_play")
		elif Input.is_action_just_released("left_m") and gl.gnuChanGameGirl == true:
			playback.travel("sit_gamegirl_idl")

		if Input.is_action_just_pressed("2") and gl.itemUse == false:
			playback.travel("sit_deck_idl")
			gl.itemUse = true
			gl.gnuChanDeck = true
		elif Input.is_action_just_pressed("2") and gl.gnuChanDeck == true:
			playback.travel("sit_idl")
			gl.itemUse = false
			gl.gnuChanDeck = false
		elif Input.is_action_pressed("left_m") and gl.gnuChanDeck == true:
			playback.travel("sit_deck_play")
		elif Input.is_action_just_released("left_m") and gl.gnuChanDeck == true:
			playback.travel("sit_deck_idl")

	elif gl.sit == false:
		playback.travel("stend_idl_normal")
		if Input.is_action_pressed("w"):
			playback.travel("stend_walk_forward")
		elif Input.is_action_pressed("s"):
			playback.travel("stend_walk_backword")


		if Input.is_action_just_pressed("t") and gl.talk == false:
			gl.talk = true
		elif Input.is_action_just_pressed("t") and gl.talk == true:
			gl.talk = false
		elif gl.talk == true:
			if Input.is_action_pressed("Right_m"):
				playback.travel("stend_idl")
			elif Input.is_action_just_released("Right_m"):
				playback.travel("stend_idl_normal")
####################################################################################################
