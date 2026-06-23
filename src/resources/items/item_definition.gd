class_name ItemDefinition
extends Resource
## The definition of an item.
##
## These are the properties that define an item that can be thrown at the wall.

## The human readable name of the item.
@export var name: String = ""

## Base adhesion value for this item.
##
## Higher values increase the final stick chance.
@export var adhesion_factor: float = 0.0

## The weight of the item. 
##
## Higher values decrease the final stick chance.
@export var weight: float = 0.0

@export_file_path var item_preview: String = ""

## Description of the item.
@export_multiline var description: String = ""
