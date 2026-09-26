extends CharacterBody2D

@export var speed: float = 150.0

func _physics_process(delta: float) -> void:
	# [Input.get_vector(...)] addresses the directions of the movement with the input map, it automatically
	# normalizes the diagonal inputs so pressing W + D at the same time will move you diagonally but at the same
	# speed as pressing only W or D
	var input_direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed
	move_and_slide()
