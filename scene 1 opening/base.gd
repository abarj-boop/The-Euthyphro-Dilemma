extends Node2D

const OPENING_DIALOGUE = preload("res://scene 1 opening/Opening.dialogue")
var is_dia_active = true

func _ready() -> void:
	DialogueManager.show_dialogue_balloon(OPENING_DIALOGUE)
	DialogueManager.dialogue_ended.connect(_on_dia_end)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_dia_end(dialogue):
	is_dia_active = false
	if is_dia_active == false:
		get_tree().change_scene_to_file("res://scene 2/game.tscn")
