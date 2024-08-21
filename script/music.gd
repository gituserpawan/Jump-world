extends AudioStreamPlayer2D

func _ready():
	# Load the appropriate music file for this scene
	match get_tree().current_scene.name:
		"level1":
			self.stream = load("res://assets/music/auto.wav")
		"level3":
			self.stream = load("res://assets/music/SFX_Chiptune_Adventures_1.ogg")
		"level4":
			self.stream = load("res://assets/music/time_for_adventure.mp3")
	
	# Play the music
	self.play()
