extends RichTextLabel

var number = 10

func _process(delta):

	if Input.is_action_pressed("1"):
		number += 10
		print("number")

	self.text = str(" number:",number)
