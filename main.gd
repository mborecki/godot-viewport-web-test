extends Node2D

@onready var sub_viewport: SubViewport = %SubViewport
@onready var sub_viewport_2: SubViewport = %SubViewport2
@onready var sub_viewport_3: SubViewport = %SubViewport3

@onready var view_1: Sprite2D = %View1
@onready var view_2: Sprite2D = %View2

@onready var view_1_label: Label = %View1Label
@onready var view_2_label: Label = %View2Label


func change_view(new_view: SubViewport):
	view_1.texture.viewport_path = view_2.texture.viewport_path;
	view_2.texture.viewport_path = new_view.get_path();
	
	view_1_label.text = "View1: %s" % view_1.texture.viewport_path;
	view_2_label.text = "View2: %s" % view_2.texture.viewport_path;

func _on_set_view_1_pressed() -> void:
	change_view(sub_viewport);
	pass # Replace with function body.


func _on_set_view_2_pressed() -> void:
	change_view(sub_viewport_2);
	pass # Replace with function body.


func _on_set_view_3_button_down() -> void:
	change_view(sub_viewport_3);
	pass # Replace with function body.
