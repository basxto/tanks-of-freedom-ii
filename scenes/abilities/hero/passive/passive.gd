extends "res://scenes/abilities/hero/hero.gd"

func _init():
    self.TYPE = "hero_passive"

func get_modified_cost(cost, _template_name):
    return cost

func get_modified_cooldown(cd_value):
    return cd_value

func get_modified_ap_gain(value, _template_name):
    return value
