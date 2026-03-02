extends Control

@onready var audio_name: Label = $"HBoxContainer/Audio Name"
@onready var slider_number: Label = $"HBoxContainer/Slider Number"
@onready var h_slider: HSlider = $HBoxContainer/HSlider

@export_enum("Master", "Music", "SFX") var audio_bus : String

var bus_index : int = 0

func _ready():
	h_slider.value_changed.connect(on_value_changed)
	get_bus_name_by_index()
	set_name_label_text()
	set_slider_value()

func set_name_label_text() -> void:
	audio_name.text = str(audio_bus) + " Volume"


func set_audio_num_label_text() -> void:
	slider_number.text = str(h_slider.value * 100) + "%"

func get_bus_name_by_index() -> void:
	bus_index = AudioServer.get_bus_index(audio_bus)

func set_slider_value() -> void:
	h_slider.value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))
	set_audio_num_label_text()


func on_value_changed(value : float) -> void:
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
	set_audio_num_label_text()
