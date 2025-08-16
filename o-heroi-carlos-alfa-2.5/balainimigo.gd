extends Area2D
@onready var morte = preload("res://tela_de_derrota.tscn")
var vel = 250
var dir = -1

func _process(delta: float) -> void:
	position.x += vel * dir * delta
	$Sprite2D.flip_h = dir < 0


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Carlos"):
		body.queue_free()
		get_tree().paused = false
		get_tree().change_scene_to_file("res://tela_de_derrota.tscn")
	if  body.is_in_group("parede"):
		queue_free()


func morrer():
	var derrota = morte.instantiate()
	get_tree().paused = false
	get_tree().current_scene.add_child(derrota)
