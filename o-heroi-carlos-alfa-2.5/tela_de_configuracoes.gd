extends CanvasLayer

var jogo_cena = preload("res://tela_inicial.tscn")  
var cachaca = preload("res://tela_de_controle.tscn")
var dudu2 = preload("res://tela_creditos.tscn")
var teladeinicio = true

func _ready():
	$Control/controle.pressed.connect(_on_controle_pressed)
	$Control/creditos.pressed.connect(_on_creditos_pressed)
	$Control/quitt.pressed.connect(_on_quitt_pressed)

func _on_controle_pressed():
	teladeinicio = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://tela_de_controle.tscn")


func _on_creditos_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://tela_creditos.tscn")

func _on_quitt_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Tela_inicial.tscn")
