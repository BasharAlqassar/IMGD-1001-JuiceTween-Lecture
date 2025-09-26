class_name ThrowAwayBlock
extends RigidBody2D

#A Scene that exists purely as a visual effect 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var random_force_x = randf_range(-5, 5) * 100
	var random_force_y = randf_range(-5, -10) * 10
	
	self.apply_impulse(Vector2(random_force_x, random_force_y))
	self.add_constant_torque(10000)
	
	
	
	
	$TextureRect.color = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
	




#NOTE 
## Be responsible with your juice! 
## Make sure we are not building up too many visual effects offscreen! 

func _on_lifetime_timeout() -> void:
	self.queue_free()
