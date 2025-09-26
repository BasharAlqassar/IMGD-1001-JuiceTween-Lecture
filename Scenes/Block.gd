@tool
class_name Block
extends StaticBody2D


var throw_away_refrence = preload("res://Art/TechArt/ThrowAwayBlock.tscn")

@export var block_hp := 1:
	set(value):
		block_hp = value
		$TextureRect/BlockHP.text = str("[center]", value)



#Handles when a ball hits this block
func hit_block_with_ball(ball : Ball):
	
	#Deal Damage
	block_hp -= ball.ball_damage
	
	#Check if this block has hp left
	if(block_hp <= 0):
		destroy_block()



#Destroy this block, called when HP is less than 0 
func destroy_block():
	self.queue_free()
	
	##Add a throw away block to the current scene! 
	#var throw_visual := throw_away_refrence.instantiate()
	#throw_visual.global_position = self.global_position
	#get_tree().current_scene.add_child(throw_visual)
