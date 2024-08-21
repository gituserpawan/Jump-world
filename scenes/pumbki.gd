extends Area2D

@onready var gamemaneger = %gamemaneger


func _on_body_entered(body):
	gamemaneger.add_point()
	queue_free()
