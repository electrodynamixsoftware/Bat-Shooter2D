extends Area2D
#Killzone

@onready var timer = $Timer #Exports the Timer node to the script 

func _on_body_entered(body): #(body) is also the player 
	print("YOU DIED!!!")
	Engine.time_scale = 0.5 #Modifies the time scale
	body.get_node("CollisionShape2D").queue_free() #Removes player from the map when dead
	timer.start() #Starts the timer for when our character dies


func _on_timer_timeout():  #Ends the timer 
	Engine.time_scale = 1.0 #Reloads the game at the default time scale of 1.0
	get_tree().reload_current_scene() #Acesses the scene tree and tells it to reload, and restarts game
