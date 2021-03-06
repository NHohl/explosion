extends Area

signal exploded

func _ready():
	pass

func explode():
	var exploded_items = get_overlapping_bodies()
	print(exploded_items)
	for item in exploded_items:
		if item.is_in_group("ExplodeReceptor") and not item == get_parent():
			item.explode(global_transform.origin)
	emit_signal("exploded")