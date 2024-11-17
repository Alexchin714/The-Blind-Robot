extends Node

var sfx_sound = AudioServer.get_bus_index("SFX")
var music_sound = AudioServer.get_bus_index("Music")
var master_sound = AudioServer.get_bus_index("Master")

signal voxelgi(value)
signal shadows(value)

func toggle_fullscreen(value):
	OS.window_fullscreen = value
	SaveSettings.game_data.fullscreen_on = value
	SaveSettings.save_data()
	
func toggle_vsync(value):
	OS.vsync_enabled = value
	SaveSettings.game_data.vsync_on = value
	SaveSettings.save_data()

func toggle_voxel_gi(value):
	SaveSettings.game_data.voxelgi_on = value
	SaveSettings.save_data()
	
func toggle_shadows(value):
	SaveSettings.game_data.shadows_on = value
	SaveSettings.save_data()
