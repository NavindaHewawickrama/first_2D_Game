extends KinematicBody2D


export var move_speed : float = 100

# parameters/idle/blend_position

func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("right")-Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	var velocity = input_direction * move_speed
	move_and_slide(velocity)
