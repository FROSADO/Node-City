extends Node

export var levels_path:NodePath
var level_manager
signal hide_ui

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_manager = get_node_or_null(levels_path)
	assert(level_manager,"Level Manager missing")

func _on_tank_detroyed(tank_type : String):
	match tank_type:
		"PlayerTank":
			print("hey")
			level_manager.reload_current_stage()

func _on_base_destroyed():
	level_manager.reload_current_stage()

func run(var name:String):
	match name:
		"start":
			level_manager.load_stage(0) #Placeholder
			emit_signal("hide_ui")
