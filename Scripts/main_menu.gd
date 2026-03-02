extends Control

@onready var margin_container: MarginContainer = $MarginContainer
@onready var start: Button = $MarginContainer/HBoxContainer/VBoxContainer/Start
@onready var options: Button = $MarginContainer/HBoxContainer/VBoxContainer/Options
@onready var exit: Button = $MarginContainer/HBoxContainer/VBoxContainer/Exit
@onready var options_menu: Control = $"Options Menu"

@onready var level_1: PackedScene = preload("res://Scenes/world.tscn")

func _ready() -> void:
	start.grab_focus()


func _on_start_pressed() -> void:
		get_tree().change_scene_to_packed(level_1)



func _on_options_pressed() -> void:
	options_menu.show_menu() #recieved from options script
	


func _on_exit_pressed() -> void:
	get_tree().quit()
