extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_on_Button_pressed")



func _on_Button_pressed():
	print ("incorrect answer")
	get_tree().change_scene("res://World.tscn")

func _on_Button2_pressed():
	print ("correct answer")
	Global.increase_value_in_scene_b()
	get_tree().change_scene("res://World.tscn")

func _on_Button3_pressed():
	print ("incorrect answer")
	get_tree().change_scene("res://World.tscn")

func _on_Button4_pressed():
	print ("incorrect answer")
	get_tree().change_scene("res://World.tscn")
