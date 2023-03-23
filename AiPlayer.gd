extends Node2D


# Declare member variables here. Examples:
var t := 0.0
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta: float) -> void:
	t += delta
	$Path2D/PathFollow2D.offset = t * 200.0
	 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HurtBox_area_entered(area):
	pass # Replace with function body.
	print("collision AiPlayer")
