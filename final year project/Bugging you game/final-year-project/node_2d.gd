extends Sprite2D

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
	
	
