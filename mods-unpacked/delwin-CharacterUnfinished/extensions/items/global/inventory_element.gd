extends "res://items/global/inventory_element.gd"

func add_unfinished_marker() -> void:
	var color_rect = ColorRect.new()
	color_rect.color = Color(1, 0, 0, 1)
	color_rect.rect_min_size = Vector2(50, 1)
	color_rect.anchor_bottom = ANCHOR_END
	color_rect.anchor_top = ANCHOR_END
	color_rect.anchor_right = 0.5
	color_rect.anchor_left = 0.5
	color_rect.margin_left = -25.0
	color_rect.margin_right = 25.0
	color_rect.margin_top = -1
	add_child(color_rect)