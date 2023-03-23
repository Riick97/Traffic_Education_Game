extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func save_player_position():
	var player_pos = get_node("/root/Player").transform
	var save_data = dict()
	save_data["player_position"] = player_pos
	save(save_data, "save_file.save")
	
func load_player_position():
	if not File.new().file_exists("save_file.save"):
		return
	var save_data = load("save_file.save")
	var player_pos = save_data["player_position"]
	get_node("/root/Player").transform = player_pos


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
