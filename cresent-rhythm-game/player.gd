extends CharacterBody2D


const SPEED = 200
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("down"):
		velocity.y = SPEED
	elif Input.is_action_pressed("up"):
		velocity.y = SPEED * -1
	else:
		velocity.y = 0
	move_and_slide()
