extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HurtBox_area_entered(area):
	print("area entered")
	print(global_position)
	var popup_scene = load("res://AcceptDialog.tscn")
	var popup_instance = popup_scene.instance()
	add_child(popup_instance)
	popup_instance.popup_centered()

