extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exitbutton_pressed() -> void:
	get_tree().quit()


func _on_optionsbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://game_music_options.tscn")


func _on_back_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://main_game.tscn")


func _on_mainmenubutton_pressed() -> void:
	get_tree().change_scene_to_file("res://menu_screen.tscn")
