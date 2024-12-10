extends CharacterBody2D


const SPEED = 150.0


func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	var xdirection := Input.get_axis("left", "right")
	if xdirection:
		velocity.x = xdirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var ydirection := Input.get_axis("up", "down")
	if ydirection:
		velocity.y = ydirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()
