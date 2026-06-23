class_name MainGame
extends Node

@export var item_definitions: Array[ItemDefinition]
@export var modifier_definintions: Array[ModifierDefinition]

# World Roots
@onready var level_root: Node2D = %LevelRoot
@onready var entity_root: Node2D = %EntityRoot
@onready var effect_root: Node2D = %EffectRoot

# UI Roots
@onready var hud_root: Control = %HudRoot
@onready var pause_root: Control = %PauseRoot
@onready var transition_root: Control = %TransitionRoot
@onready var debug_root: Control = %DebugRoot
