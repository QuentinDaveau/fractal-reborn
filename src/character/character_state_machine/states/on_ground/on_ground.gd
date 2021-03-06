extends "../character_state.gd"

#export(NodePath) var GROUNDED_CHECK_PATH

func enter() -> void:
	owner.set_snap(true)
	.enter()


func handle_input(event) -> void:
	.handle_input(event)
	if event.is_action_pressed("game_jump"):
		emit_signal("finished", "jump")


func update(delta) -> void:
	.update(delta)
	if not owner.is_on_floor():
		emit_signal("finished", "fall")
