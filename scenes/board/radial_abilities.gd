
var tile_view_template = preload("res://scenes/map_editor/tile_view.tscn")

func fill_radial_with_abilities(board, radial, context_object):
    if context_object is board.map.templates.generic_building:
        self.fill_radial_with_building_abilities(board, radial, context_object)


func fill_radial_with_building_abilities(board, radial, building):
    radial.set_field(board.ui.icons.back.instance(), "Back", 6, board, "toggle_radial_menu")

    var icon
    var label

    for ability in building.abilities:
        if ability.TYPE == "production":
            icon = tile_view_template.instance()
            icon.hide_background()
            icon.is_side_tile = false
            icon.viewport_size = 11
            icon.set_tile(board.map.templates.get_template(ability.template_name), 0)
            label = ability.label
            label += "\n" + str(ability.ap_cost) + " AP"
            radial.set_field(icon, label, ability.index, board, "activate_production_ability", [ability])

