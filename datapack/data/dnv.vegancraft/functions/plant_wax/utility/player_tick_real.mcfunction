# Called by dnv.vegancraft:plant_wax/utility/player_tick

# Vanilla recipes containing honeycomb as ingredient:
execute if score @s dnv.craf_candle matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_candle
execute if score @s dnv.craf_beehive matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_beehive
execute if score @s dnv.craf_honeycomb_block matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_honeycomb_block

execute if score @s dnv.craf_waxed_cblock matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cblock_exp matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cblock_wea matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cblock_oxi matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_ccut matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_ccut_exp matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_ccut_wea matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_ccut_oxi matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cstairs matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cstairs_exp matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cstairs_wea matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cstairs_oxi matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cslab matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cslab_exp matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cslab_wea matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper
execute if score @s dnv.craf_waxed_cslab_oxi matches 1.. run function dnv.vegancraft:plant_wax/utility/vanilla_honeycomb/crafted_waxed_copper

execute if score @s dnv.pickup_honeycomb matches 1.. run function dnv.vegancraft:plant_wax/utility/interacted_with_crafting_table
execute if score @s dnv.dropped_honeycomb matches 1.. run function dnv.vegancraft:plant_wax/utility/interacted_with_crafting_table