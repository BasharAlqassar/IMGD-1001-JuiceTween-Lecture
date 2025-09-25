extends Node


func _process(_delta: float) -> void:
	
	#Restart current scene 
	if(Input.is_action_just_pressed("Reset")):
		get_tree().reload_current_scene()
