extends Node

func get_scene_b():
	# Try to find SceneB in the tree
	var scene_b = get_tree().root.get_node_or_null("SceneB")

	# If SceneB isn't found, instantiate it
	if scene_b == null:
		var scene_b_packed = load("res://SceneB.tscn")
		scene_b = scene_b_packed.instance()
		get_tree().root.add_child(scene_b)

	return scene_b

func increase_value_in_scene_b():
	var scene_b = get_scene_b()
	scene_b.increase_value()
