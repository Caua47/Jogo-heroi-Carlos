extends CanvasLayer

var jogo_cena = preload("res://tela_de_configuracoes.tscn")  

var teladeinicio = true

func _ready():
	$Control/Button.pressed.connect(_on_merda_pressed)

func _on_merda_pressed():
	teladeinicio = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://tela_de_configuracoes.tscn")
