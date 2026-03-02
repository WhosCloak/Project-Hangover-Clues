extends Control

@onready var option_button: OptionButton = $HBoxContainer/OptionButton



func _on_option_button_item_selected(index: int) -> void:
	match index: 
		0:
			DisplayServer.window_set_size(Vector2i(1920, 1080),0)
			print(DisplayServer.window_get_size())
		1:
			DisplayServer.window_set_size(Vector2i(3840, 2160),1)
			print(DisplayServer.window_get_size())
		2:
			DisplayServer.window_set_size(Vector2i(1680, 1050),2)
			print(DisplayServer.window_get_size())
