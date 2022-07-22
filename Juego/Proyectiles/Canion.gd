#Canion.gd
class_name Canion
extends Node2D

## Atributos
export var proyectil:PackedScene = null
export var cadencia_disparo:float = 0.8
export var velocidad_proyectil:int = 100
export var danio_proyectil:int = 1

## Atributos OnReady
onready var timer_enfriamiento:Timer = $TimerEnfriamiento
onready var disparo_sfx:AudioStreamPlayer2D = $DisparoSFX
onready var esta_enfriado:bool = true
onready var esta_disparando:bool = false setget set_esta_disparando

## Atributos
var puntos_disparo:Array = []

##Setters y Getters
func set_esta_disparando(disparando: bool) -> void:
	esta_disparando = disparando
