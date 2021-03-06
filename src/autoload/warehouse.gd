extends Node


onready var _resources = {
	"Logger": load("res://src/logger_and_player/entity_logger/EntityLogger.tscn"),
	"Player": load("res://src/logger_and_player/entity_player/EntityPlayer.tscn"),
	"Character": load("res://src/character/Character.tscn"),
	"CharacterClone": load("res://src/clone/Clone.tscn"),
	"Gun": load("res://src/object/gun/Gun.tscn")
	}


func get_resource(resource_name: String) -> Resource:
	assert(_resources.has(resource_name))
	return _resources[resource_name]
