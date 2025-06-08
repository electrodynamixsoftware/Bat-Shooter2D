extends Area2D
#Signals

#creates a signal in which the checkpoint detects the player passing through it
func _on_body_entered(body):
	print("CHECKPOINT ENTERED!! +50")
	queue_free() #The checkpoint scene is removed after the player has passed through it
	
