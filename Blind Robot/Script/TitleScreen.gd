extends Control

var a = false
var b = false
var c = false

func animationManager():
	if a:
		$AnimationPlayer.play("hl01")
	else:
		$AnimationPlayer.play("hl01B")
	if b:
		$AnimationPlayer2.play("hl02")
	else:
		$AnimationPlayer2.play("hl02B")
	if c:
		$AnimationPlayer3.play("hl03")
	else:
		$AnimationPlayer3.play("hl03B")
	
func _on_Start_pressed():
	pass

func _on_Options_pressed():
	pass # Replace with function body.

func _on_Exit_pressed():
	pass # Replace with function body.

func _on_Start_mouse_entered():
	a = true
	animationManager()

func _on_Start_mouse_exited():
	a = false
	animationManager()

func _on_Options_mouse_entered():
	b = true
	animationManager()

func _on_Options_mouse_exited():
	b = false
	animationManager()

func _on_Exit_mouse_entered():
	c = true
	animationManager()

func _on_Exit_mouse_exited():
	c = false
	animationManager()
