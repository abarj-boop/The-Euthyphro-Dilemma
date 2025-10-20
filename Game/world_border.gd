extends Area2D


# Called when the node enters the scene tree for the first time.
func  _on_body_entered(body: Node) -> void:
	if body.is_in_group("soc"):
		get_tree().change_scene_to_file("res://Game/Graveyard.tscn")
