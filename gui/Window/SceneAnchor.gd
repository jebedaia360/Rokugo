extends Control


func _ready():
	setup()
	Rakugo.scene_anchor = self


func setup(scene = get_tree().current_scene):
	scene.connect("ready", self, "attach_scene", [scene])


func attach_scene(scene):
	var p = scene.get_parent()
	p.call_deferred("remove_child", scene)
	call_deferred("add_child", scene)
