extends CanvasLayer

var jogo_cena = preload("res://tela_de_inicio.tscn")  

var teladeinicio = true

func _ready():
	$tela_de_vitoria/voltar.pressed.connect(_on_voltar_pressed)
	$tela_de_vitoria/recomecar.pressed.connect(_on_recomecar_pressed)
	$tela_de_vitoria/sair.pressed.connect(_on_sair_pressed)

func _on_voltar_pressed():
	teladeinicio = false
	$tela_de_vitoria.visible = false
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_recomecar_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_sair_pressed():
	get_tree().quit()
	
