extends Node2D

const speed = 60

var direction = 1

@onready var ray_cast_down = $RayCastDown #Moves our enemy down 
@onready var ray_cast_up = $RayCastUp #Moves our up
@onready var animated_sprite_2d = $AnimatedSprite2D #References the AnimatedSprite2D node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_down.is_colliding(): #Enemy will move down until it collides with the ceiling, up again
		direction = -1
		animated_sprite_2d.flip_v = true #flip_h = left & right(horizontal), flip_v = up & down(vertical)
	
	if ray_cast_up.is_colliding(): #Enemy will move up until colliding with ground and down again
		direction = 1
		animated_sprite_2d.flip_v = false
		
	position.y += direction * speed * delta #speed * delta, makes speed independent of delta
