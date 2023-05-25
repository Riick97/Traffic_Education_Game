extends AcceptDialog
var camera_node

func _ready():
	camera_node = get_node("/root/World/Car/Camera2D")
	update_position()

func _process(delta):
	update_position()

func update_position():
	var screen_position = camera_node.get_camera_screen_center()
	rect_position = screen_position
