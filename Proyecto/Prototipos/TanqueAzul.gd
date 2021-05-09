extends KinematicBody2D

export var tile_size := 64
export var _speed := 200
var _velocity = Vector2()
onready var move_size := tile_size / 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print (position)
	print (Vector2.ONE * tile_size)
	position = position.snapped(Vector2.ONE * tile_size)
	print (position)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2.ZERO	
	if Input.is_action_pressed("ui_right"):
		$Sprite.rotation_degrees = 90
		direction = Vector2.RIGHT
		
	if Input.is_action_pressed("ui_left"):
		$Sprite.rotation_degrees = -90
		direction = Vector2.LEFT
	if Input.is_action_pressed("ui_down"):
		$Sprite.rotation_degrees = 180
		direction = Vector2.DOWN
	if Input.is_action_pressed("ui_up"):
		$Sprite.rotation_degrees = 0
		direction = Vector2.UP
	var _velocity = direction.normalized() * _speed
	_velocity = _velocity.snapped(Vector2.ONE*tile_size)
	# print (_velocity)
	move_and_slide(_velocity)
