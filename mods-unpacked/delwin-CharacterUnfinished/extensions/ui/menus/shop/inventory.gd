extends "res://ui/menus/shop/inventory.gd"

func _spawn_element(element: Resource) -> Resource:
	var instance = ._spawn_element(element)

	if element is CharacterData:
		var is_unfinished = true
		for zone in ZoneService.zones:
			var progress = ProgressData.get_character_difficulty_info(element.my_id, zone.my_id)
			if progress.max_difficulty_beaten.difficulty_value != -1:
				is_unfinished = false
		if is_unfinished == true:
			instance.add_unfinished_marker()

	return instance
