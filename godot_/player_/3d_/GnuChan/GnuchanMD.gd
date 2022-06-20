extends Spatial


onready var gnuChan64 = get_node("gnuChanBody/fly_desk")
onready var gnuChan64_screen = get_node("gnuChanBody/Screen")
onready var gnuChanGameGirl = get_node("gnuChanBody/GnuChanRig/Skeleton/GnuChan_GameGirl_0")
onready var gnuchanDeck = get_node("gnuChanBody/GnuChanRig/Skeleton/GnuChanDeck_0")

onready var textLabel = get_node("CanvasLayer/Label/situation")
var textSituation = ""

func _ready():
	gnuChan64.hide()
	gnuChan64_screen.hide()
	gnuChanGameGirl.hide()
	gnuchanDeck.hide()

func _process(delta):
	textLabel.text = textSituation 

	if gl.gnuChan64 == true:
		textSituation = "GnuChan64:-> GnuChan64: " + str(gl.gnuChan64)
	elif gl.gnuChanDeck == true:
		textSituation = "GnuChanDeck:-> GnuChanDeck: " + str(gl.gnuChanDeck)
	elif gl.gnuChanGameGirl == true:
		textSituation = "GnuChanDeck:-> GnuChanGameGirl: " + str(gl.gnuChanGameGirl)
	elif gl.talk == true:
		textSituation = "Talk Mode:->" + str(gl.talk)
	else:
		textSituation = "Empty"


	if gl.sit == true:
		$gnuChanBody/gnuChan_Chair.show()
		if gl.itemUse == false:
			if Input.is_action_just_pressed("tab") and gl.gnuChan64 == false:
				gnuChan64.show()
				gnuChan64_screen.show()
			if Input.is_action_just_pressed("1") and gl.gnuChanGameGirl == false:
				gnuChanGameGirl.show()
			if Input.is_action_just_pressed("2") and gl.gnuChanDeck == false:
				gnuchanDeck.show()

		elif gl.itemUse == true:
			if Input.is_action_just_pressed("tab") and gl.gnuChan64 == true:
				gnuChan64.hide()
				gnuChan64_screen.hide()	
			elif Input.is_action_just_pressed("1") and gl.gnuChanGameGirl == true:
				gnuChanGameGirl.hide()
			elif Input.is_action_just_pressed("2") and gl.gnuChanDeck == true:
				gnuchanDeck.hide()
	elif gl.sit == false:
		$gnuChanBody/gnuChan_Chair.hide()
