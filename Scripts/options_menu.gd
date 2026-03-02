class_name Options_menu 
extends Control

func _ready() -> void:
	set_process(false)
	

func show_menu() -> void: #goes to main_menu script
	show()
	set_process(true)

func _on_return_button_down() -> void:
	hide()
	
	
