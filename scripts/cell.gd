class_name Cell
extends Node3D
## Fase 0: uma "célula" de teste que se move até um ponto alvo.
## Na Fase 1 a lógica (necessidades, traços) vai viver em dados separados
## e este nó ficará só com a parte visual.

@export var speed: float = 4.0

var target: Vector3


func _ready() -> void:
	target = global_position


func move_to(point: Vector3) -> void:
	target = Vector3(point.x, global_position.y, point.z)


func _process(delta: float) -> void:
	global_position = global_position.move_toward(target, speed * delta)
