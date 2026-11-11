extends Node3D
## Cena principal da Fase 0: clique no chão para mover a célula.

@onready var camera: Camera3D = $Camera3D
@onready var cell: Cell = $Cell

const GROUND_PLANE := Plane(Vector3.UP, 0.0)


func _ready() -> void:
	camera.look_at_from_position(Vector3(0.0, 9.0, 9.0), Vector3.ZERO)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var origin: Vector3 = camera.project_ray_origin(event.position)
		var direction: Vector3 = camera.project_ray_normal(event.position)
		var hit: Variant = GROUND_PLANE.intersects_ray(origin, direction)
		if hit != null:
			cell.move_to(hit as Vector3)
