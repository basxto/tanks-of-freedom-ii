
var disk = preload("res://scenes/ui/icons/disk.tscn")
var back = preload("res://scenes/ui/icons/back.tscn")
var trash = preload("res://scenes/ui/icons/trash.tscn")
var tick = preload("res://scenes/ui/icons/tick.tscn")

var deep_strike = preload("res://scenes/ui/icons/abilities/deep_strike.tscn")
var infiltration = preload("res://scenes/ui/icons/abilities/infiltration.tscn")
var targeting_automaton = preload("res://scenes/ui/icons/abilities/targeting_automaton.tscn")


var named_icons = {
    "disk" : self.disk,
    "back" : self.back,
    "trash" : self.trash,
    "tick" : self.tick,

    "deep_strike" : self.deep_strike,
    "infiltration" : self.infiltration,
    "targeting_automaton" : self.targeting_automaton,
}

func get_named_icon(name):
    return self.named_icons[name].instance()
