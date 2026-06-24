extends Area2D

@export var item_definition: ItemDefinition

func set_item_definition(item: ItemDefinition) -> void:
	item_definition = item
	print(item_definition)

func _process(delta: float) -> void:
	position += 100 * delta * Vector2.RIGHT

func _on_body_entered(body: Node2D) -> void:
	if not item_definition:
		printerr("Shit be broken")
		return
		
	var chance: float = clampf(item_definition.adhesion_factor - item_definition.weight, 5, 95)
	print("A %s has a %.1f%% chance to stick" % [item_definition.name, chance])
	print(randf() * 100 <= chance)
