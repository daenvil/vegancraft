# Called by dnv.vegancraft:textiles/utility/player_tick

# Vanilla recipes containing leather as ingredient:
execute if score @s dnv.craf_lboots matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_boots
execute if score @s dnv.craf_llegs matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_legs
execute if score @s dnv.craf_lchest matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_chest
execute if score @s dnv.craf_lhelm matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_helm
execute if score @s dnv.craf_book matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_book
execute if score @s dnv.craf_lharmor matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_harmor
execute if score @s dnv.craf_frame matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_frame

# Vanilla recipes with leather as output:
execute if score @s dnv.craf_leather matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_leather/crafted_leather

# Vanilla recipes containing string as ingredient:
execute if score @s dnv.craf_bow matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_bow
execute if score @s dnv.craf_candle matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_1string
execute if score @s dnv.craf_scaff matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_1string
execute if score @s dnv.craf_xbow matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_2strings
execute if score @s dnv.craf_frod matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_2strings
execute if score @s dnv.craf_loom matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_2strings
execute if score @s dnv.craf_wool matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_w_4strings
execute if score @s dnv.craf_lead matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_string/crafted_lead

# Vanilla recipes containing slimeball as ingredient:
execute if score @s dnv.craf_mcream matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_slime/crafted_w_1slime
execute if score @s dnv.craf_spiston matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_slime/crafted_w_1slime
execute if score @s dnv.craf_sblock matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_slime/crafted_block

# Vanilla recipes with slime as output:
execute if score @s dnv.craf_sball matches 1.. run function dnv.vegancraft:textiles/utility/vanilla_slime/crafted_ball