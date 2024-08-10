extends Node3D


@export var rotation_speed: float = 1.0


func _process(delta: float) -> void:
	rotation += transform.basis.z * rotation_speed * delta
