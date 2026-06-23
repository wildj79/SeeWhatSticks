extends CharacterBody2D

@export var item_definition: ItemDefinition

func set_item_definition(item: ItemDefinition) -> void:
	self.item_definition = item
