extends PopupDialog

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#connect("pressed", self, "_on_Button_pressed")
	get_node("./HBoxContainer/VBoxContainer/Button").connect("pressed", self, "_on_Button_pressed")
	get_node("./HBoxContainer/VBoxContainer/Button2").connect("pressed", self, "_on_Button2_pressed")
	get_node("./HBoxContainer/VBoxContainer/Button3").connect("pressed", self, "_on_Button3_pressed")
	get_node("./HBoxContainer/VBoxContainer/Button4").connect("pressed", self, "_on_Button4_pressed")



func _on_Button_pressed():
	print ("incorrect answer")
	hide() # Hide the popup

func _on_Button2_pressed():
	print ("correct answer")
	var button_node = get_node("./HBoxContainer/VBoxContainer/Button2")
	print(button_node)
	Global.increase_value_in_scene_b()
	#hide() # Hide the popup

func _on_Button3_pressed():
	print ("incorrect answer")
	hide() # Hide the popup
	
	
func _on_Button4_pressed():
	print ("incorrect answer")
	hide() # Hide the popup

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
