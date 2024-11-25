extends KinematicBody

export var speed := 10
export var gravity := 50

var motion = Vector3.ZERO; var snapFactor = Vector3.DOWN
onready var pos = get_node("pos")
onready var springArm = get_node("SpringArm")
onready var model = get_node("tbr_Player")

func _physics_process(delta):
	var Mdir = Vector3.ZERO
	Mdir.x = Input.get_action_strength("a") - Input.get_action_strength("d")
	Mdir.z = Input.get_action_strength("w") - Input.get_action_strength("s")
	
	motion.x = Mdir.x * speed
	motion.z = Mdir.z * speed
	motion.y -= gravity* delta
	motion = move_and_slide_with_snap(motion, snapFactor, Vector3.UP, true)

	if motion.length() > 0.2:
		var lookDir = Vector2(motion.z, motion.x)
		model.rotation.y = lookDir.angle()

func _process(delta):
	pass
