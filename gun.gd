extends Area2D

func _physics_process(delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemies = enemies_in_range.front()
		look_at(target_enemies.global_position)
