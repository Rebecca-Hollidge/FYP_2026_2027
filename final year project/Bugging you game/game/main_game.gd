extends Node2D


@onready var main_char: Sprite2D = $main_char

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_optionsmenugame_pressed() -> void:
	get_tree().change_scene_to_file("res://menu_game.tscn")


func _on_bugbag_pressed() -> void:
	get_tree().change_scene_to_file("res://bug_bag.tscn")


func _on_bugbook_pressed() -> void:
	s
