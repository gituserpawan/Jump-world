extends Node

@onready var points_label = %"Points Label"

var score = 0

func add_point():
	score +=1
	print(score)
	points_label.text = "SCORE :" + str(score)
