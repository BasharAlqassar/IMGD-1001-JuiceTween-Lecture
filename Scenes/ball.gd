class_name Ball
extends CharacterBody2D

#How much damage this ball does 
@export var ball_damage = 1




func _physics_process(delta: float) -> void:
	
	check_collisions(delta)
	
	move_and_slide()



#Checks collsions of the ball to handle interactions correctly 
func check_collisions(delta : float) -> void:
	
	#Get the number of collsions every frame 
	var num_collsions = get_slide_collision_count()
	
	for collision_id in num_collsions:
		
		#Get the collison data
		var collision : KinematicCollision2D = get_slide_collision(collision_id)
		
		#Get the collided object
		var collided = collision.get_collider()
		
		if(collided is Paddle):
			hit_paddle(collided, delta)
		elif(collided is Block):
			hit_block(collided, delta)
		elif(collided is Wall):
			hit_wall(collided, delta)




## Ball hit functions 

#Ran when the ball hits the paddle  
func hit_paddle(paddle : Paddle, delta: float) -> void:
	pass

#Ran when the ball hits a wall 
func hit_wall(wall : Wall, delta: float) -> void:
	pass

#Ran when the ball hits a brick 
func hit_block(block : Block, delta: float) -> void:
	pass
