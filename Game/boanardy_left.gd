extends StaticBody2D

var is_soc_touching = false
signal next_scene

func _ready():
	connect()

# Go to Graveyard signal	
func _on_area_entered(area):
	is_soc_touching = true
	if is_soc_touching == true:
		next_scene.connect(_go_to_next_scene)
	
