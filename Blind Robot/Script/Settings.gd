extends CanvasLayer

onready var fullscreen = $Asset/Fullscreen
onready var vsync = $Asset/VSync
onready var voxelgi = $Asset/VoxelGI
onready var shadows = $Asset/Shadows
onready var musicS = $Asset/Music
onready var sfxS = $Asset/SFX

func _ready():
	fullscreen.select(1 if SaveSettings.game_data.fullscreen_on else 0)
	GlobalSettings.toggleFullscreen(SaveSettings.game_data.fullscreen_on)
	vsync.pressed = SaveSettings.game_data.vsync_on
	voxelgi.pressed = SaveSettings.game_data.voxelgi_on
	shadows.pressed = SaveSettings.game_data.shadows_on
