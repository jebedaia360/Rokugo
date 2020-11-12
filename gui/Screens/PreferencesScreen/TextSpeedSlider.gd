extends Slider

func _on_value_changed(value):
	Settings.set("rakugo/default/delays/typing_effect_delay", abs(value))

func _on_visibility_changed():
	if visible:
		value = -Settings.get("rakugo/default/delays/typing_effect_delay")
