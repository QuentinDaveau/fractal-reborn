extends Position2D

const SHOOT_VELOCITY: float = 4000.0


onready var _bullet = load("res://src/object/bullet/Bullet.tscn")


func shoot() -> void:
	if not $Timer.is_stopped():
		return
	var b = _bullet.instance()
	b.set_velocity((Vector2.RIGHT * SHOOT_VELOCITY).rotated(global_rotation))
	b.global_position = global_position
	get_tree().get_root().add_child(b)