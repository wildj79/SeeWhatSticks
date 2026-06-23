class_name ModifierDefinition
extends Resource
## How we define modifiers. 
##
## These are the properties that define a modifer. These modifiers are used when
## an item is thrown at the wall to either give it a better or worse chance to 
## stick.

## Does the modifier add or multiply it's bonus to effected item property.
enum ModifierOperation {
	ADDITIVE, ## Adds to the effected property
	MULTIPLICATIVE, ## Multiplies the effected property
}

## Does this modifier target an items adhesion or weight.
enum ModifierTarget {
	ADHESION, ## Effects the items adhesion_factor
	WEIGHT, ## Effects the items weight
}

## The bonus value applied to the effected stat.
@export var bonus: float = 0.0

## The item property targeted by this modifier
@export var target := ModifierTarget.ADHESION

## The human readable name assigned to this modifier
@export var name: String = ""

## How does this modifier affect the effected item property
@export var modifier_operation := ModifierOperation.ADDITIVE

## Description of the modifier.
@export_multiline var description: String = ""
