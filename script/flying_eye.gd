extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_2d_right = $RayCast2D_right
@onready var ray_cast_2d_left = $RayCast2D_left
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if ray_cast_2d_right.is_colliding():
		direction = -1 
		animated_sprite.flip_h = true
	elif ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false  
	
	# Update the position of the node
	position.x += direction * SPEED * delta
	

