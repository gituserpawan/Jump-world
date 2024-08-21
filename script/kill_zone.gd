extends Area2D

@onready var timer = $Timer
@export var target_level: PackedScene

func _on_body_entered(body):
	if body.name == "hero" or body.is_in_group("enemies"):
		print("You died!")
		Engine.time_scale = 0.5  # Slow down the game when the player dies
		body.get_node("CollisionShape2D").queue_free()  # Optional: Disable collision
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0  # Reset time scale to normal speed
	get_tree().change_scene_to_packed(target_level)  # Change to the target level
