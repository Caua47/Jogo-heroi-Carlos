extends CanvasLayer

var jogo_cena = preload("res://node_2d.tscn")  
var dudu = preload("res://tela_de_configuracoes.tscn")
var teladeinicio = true

func _ready():
	$tela_de_inicio/jogar.pressed.connect(_on_jogar_pressed)
	$tela_de_inicio/configuracoes.pressed.connect(_on_configurar_pressed)
	$tela_de_inicio/fechar.pressed.connect(_on_fechar_pressed)

func _on_jogar_pressed():
	teladeinicio = false
	$tela_de_inicio.visible = false
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_configurar_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://tela_de_configuracoes.tscn")
func _on_fechar_pressed():
	get_tree().quit()
