class_name MainGame
extends Node

@export var item_definitions: Array[ItemDefinition]
@export var modifier_definintions: Array[ModifierDefinition]
@export var wall_scene: PackedScene
@export var item_scene: PackedScene

# World Roots
@onready var level_root: Node2D = %LevelRoot
@onready var entity_root: Node2D = %EntityRoot
@onready var effect_root: Node2D = %EffectRoot

# UI Roots
@onready var hud_root: Control = %HudRoot
@onready var pause_root: Control = %PauseRoot
@onready var transition_root: Control = %TransitionRoot
@onready var debug_root: Control = %DebugRoot

func _ready() -> void:
	var wall = wall_scene.instantiate()
	var item = item_scene.instantiate()
	var rect = get_viewport().get_visible_rect()
	wall.position = rect.get_center() + Vector2(50, 0)
	item.position = rect.get_center() - Vector2(50, 0)
	item.set_item_definition(item_definitions[randi() % item_definitions.size()])
	entity_root.add_child(wall)
	entity_root.add_child(item)
