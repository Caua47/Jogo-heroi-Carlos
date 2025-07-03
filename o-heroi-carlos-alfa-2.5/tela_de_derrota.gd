extends CanvasLayer

var jogo_cena = preload("res://tela_de_inicio.tscn")  

var teladeinicio = true

func _ready():
	$Control/voltar.pressed.connect(_on_voltar_pressed)
	$Control/recomecar.pressed.connect(_on_recomecar_pressed)
	$Control/sair.pressed.connect(_on_sair_pressed)

func _on_voltar_pressed():
	teladeinicio = false
	$Control.visible = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Tela_inicial.tscn")


func _on_recomecar_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_sair_pressed():
	get_tree().quit()
