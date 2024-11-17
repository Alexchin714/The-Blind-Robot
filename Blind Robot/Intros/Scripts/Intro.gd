extends CanvasLayer

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _on_Timer_timeout():
	SceneTransition.change_scene("res://Scene/TitleScreen.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
