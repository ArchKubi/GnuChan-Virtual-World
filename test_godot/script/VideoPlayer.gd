extends VideoPlayer


func _process(delta):
	if Input.is_action_just_pressed("e"):
		self.stream = load("res://video/2022-07-13-00-44-51.webm")
		self.play()
	elif Input.is_action_just_pressed("q"):
		self.stream = load("res://video/2022-07-13-00-44-13.webm")
		self.play()
