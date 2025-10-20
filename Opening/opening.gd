extends Node2D

const OPENING_DIALOGUE = preload("res://Opening/opening.dialogue")
var is_dia_active = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(OPENING_DIALOGUE)
	DialogueManager.dialogue_ended.connect(_on_dia_end)

func _on_dia_end(_dialogue):
	is_dia_active = false
	if is_dia_active == false:
		get_tree().change_scene_to_file("res://Game/Town_Square.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
