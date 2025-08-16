extends CharacterBody2D
@onready var bala = preload("res://balainimigo.tscn")

const SPEED = 150.0
var direction := 1


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	velocity.x = direction * SPEED
	move_and_slide()
	if is_on_wall():
		direction *= -1


func _on_timer_timeout() -> void:
	var bullet = bala.instantiate()
	bullet.global_position = $saidadabala.global_position
	get_parent().add_child(bullet)
