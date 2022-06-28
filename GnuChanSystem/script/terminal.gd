extends Control


onready var inputTerm = get_node("MainWindow/bottomBar/inputBackground/input")
onready var outputTerm = get_node("MainWindow/bottomBar/bg_otp/output")

var inputText = ""
var outputText = ""

func _ready():
	outputTerm.text = gl.welcomeTerminal

func _process(delta):
	inputText  = inputTerm.text

	if Input.is_action_just_pressed("enter") and gl.TerminalShow == true:
		if "clear" == inputText:
			outputTerm.text = ""
			inputTerm.text = ""
		elif "help" == inputText:
			outputTerm.text += gl.help + "\n"
			inputTerm.text = ""
		elif "neofetch" == inputText:
			outputTerm.text += gl.neofetch
			inputTerm.text = ""

		else:
			outputTerm.text += inputText + "\n"
		inputTerm.text = ""

	if gl.TerminalShow == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.TerminalShow = false
