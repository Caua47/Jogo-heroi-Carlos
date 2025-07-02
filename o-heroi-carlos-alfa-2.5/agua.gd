extends Area2D
var vel = 1000
var dir = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	position.x += vel * dir * delta
	$Sprite2D.flip_h = dir < 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("inimigo"):
		body.queue_free()
		queue_free()
