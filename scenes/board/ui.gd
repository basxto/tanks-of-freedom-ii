extends Control

onready var radial = $"radial/radial"
onready var resource_label = $"resources/coin_view/label"

onready var tile_highlight = $"tile_highlight/tile_view"
onready var tile_highlight_unit_panel_hp = $"tile_highlight/tile_view/hp"

var icons = preload("res://scenes/ui/icons/icons.gd").new()

func is_popup_open():
    return false

func is_panel_open():
    if self.radial.is_visible():
        return true
    if self.is_popup_open():
        return true

    return false

func is_radial_open():
    return self.radial.is_visible()

func show_radial():
    self.radial.show_menu()

func hide_radial():
    self.radial.hide_menu()

func toggle_radial():
    if self.radial.is_visible():
        self.hide_radial()
    else:
        self.show_radial()

func update_resource_value(value):
    self.resource_label.set_text(str(value))


func update_tile_highlight(tile_preview):
    self.clear_tile_highlight()
    self.tile_highlight.show()
    self.tile_highlight.set_tile(tile_preview, 0)

func update_tile_highlight_unit_panel(unit):
    self.tile_highlight_unit_panel_hp.set_text(str(unit.hp) + "/" + str(unit.max_hp))

func update_tile_highlight_building_panel(building):
    self.tile_highlight_unit_panel_hp.set_text("+" + str(building.ap_gain))

    

func clear_tile_highlight():
    self.tile_highlight.clear()
    self.tile_highlight.hide()
    self.tile_highlight_unit_panel_hp.set_text("")

