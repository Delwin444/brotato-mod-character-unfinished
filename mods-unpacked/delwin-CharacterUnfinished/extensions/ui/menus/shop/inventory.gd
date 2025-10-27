extends "res://ui/menus/shop/inventory.gd"

func _spawn_element(element: Resource, _display_banned: float = 0, animated_entrance = false) -> InventoryElement:
	var instance = ._spawn_element(element, _display_banned, animated_entrance)

	if element is CharacterData:
		var is_unfinished = true
		for zone in ZoneService.zones:
			var progress = ProgressData.get_character_difficulty_info(element.my_id, zone.my_id)
			if progress.max_difficulty_beaten.difficulty_value != -1:
				is_unfinished = false
		if not is_unfinished:
			instance.add_unfinished_marker()
	
	return instance
