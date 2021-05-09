extends Area2D

export var tile_size := 64

# Called when the node enters the scene tree for the first time.
func _ready():
	position = position.snapped(Vector2.ONE * tile_size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
