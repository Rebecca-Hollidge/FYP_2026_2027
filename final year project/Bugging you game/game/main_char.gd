extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export var speed: float = 200.0

@onready var animation_player = $AnimationPlayer

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")

	position += input_direction * speed * get_physics_process_delta_time()


	if input_direction.x < 0:
		animation_player.play("left_animation")
	elif input_direction.x > 0:
		animation_player.play("right_animation")
	elif input_direction.y < 0:
		animation_player.play("up_animation")
	elif input_direction.y > 0:
		animation_player.play("down_animation")

func _physics_process(_delta):
	get_input() 
