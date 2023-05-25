extends Node2D

var value = 0

func increase_value():
	value += 1
	print("Value is now: ", value)
	get_node("./Label").text = "bla2"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
	var label_node = get_node("./Label")
	print(label_node.text)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
