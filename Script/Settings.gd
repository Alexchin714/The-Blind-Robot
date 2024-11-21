extends CanvasLayer

var s = false
onready var fullscreen = $Asset/Fullscreen
onready var vsync = $Asset/VSync
onready var voxelgi = $Asset/VoxelGI
onready var shadows = $Asset/Shadows
onready var musicS = $Asset/Music
onready var sfxS = $Asset/SFX

func _ready():
	fullscreen.pressed = SaveSettings.game_data.fullscreen_on
	vsync.pressed = SaveSettings.game_data.vsync_on
	voxelgi.pressed = SaveSettings.game_data.voxelgi_on
	shadows.pressed = SaveSettings.game_data.shadows_on
	musicS.value = SaveSettings.game_data.musicVol
	sfxS.value = SaveSettings.game_data.sfxVol

func openSettings():
	if s == false: $AnimationPlayer.play("layDown") ; s = true
		
func back():
	if s == true: $AnimationPlayer.play_backwards("layDown") . s = false
	
func _input(event):
	if Input.is_action_just_pressed("ui_cancel") && s == false: back()
	
func _on_Fullscreen_toggled(button_pressed):
	GlobalSettings.toggle_fullscreen(button_pressed)

func _on_VSync_toggled(button_pressed):
	GlobalSettings.toggle_vsync(button_pressed)

func _on_VoxelGI_toggled(button_pressed):
	GlobalSettings.toggle_voxel_gi(button_pressed)

func _on_Shadows_toggled(button_pressed):
	GlobalSettings.toggle_shadows(button_pressed)

func _on_Music_value_changed(value):
	GlobalSettings.change_music(value)

func _on_SFX_value_changed(value):
	GlobalSettings.change_sfx(value)
