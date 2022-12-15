# Called by dnv.vegancraft:plant_wax/utility/player_tick_real when player crafts a waxed copper variant

scoreboard players set @s dnv.craf_waxed_cblock 0
scoreboard players set @s dnv.craf_waxed_cblock_exp 0
scoreboard players set @s dnv.craf_waxed_cblock_wea 0
scoreboard players set @s dnv.craf_waxed_cblock_oxi 0
scoreboard players set @s dnv.craf_waxed_ccut 0
scoreboard players set @s dnv.craf_waxed_ccut_exp 0
scoreboard players set @s dnv.craf_waxed_ccut_wea 0
scoreboard players set @s dnv.craf_waxed_ccut_oxi 0
scoreboard players set @s dnv.craf_waxed_cstairs 0
scoreboard players set @s dnv.craf_waxed_cstairs_exp 0
scoreboard players set @s dnv.craf_waxed_cstairs_wea 0
scoreboard players set @s dnv.craf_waxed_cstairs_oxi 0
scoreboard players set @s dnv.craf_waxed_cslab 0
scoreboard players set @s dnv.craf_waxed_cslab_exp 0
scoreboard players set @s dnv.craf_waxed_cslab_wea 0
scoreboard players set @s dnv.craf_waxed_cslab_oxi 0

# Difference in vegan ingredients:
execute store result score @s dnv.vhoneycombs_d run clear @s minecraft:honeycomb{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vhoneycombs_d -= @s dnv.vhoneycombs

# Difference in total ingredients:
execute store result score @s dnv.honeycombs_d run clear @s minecraft:honeycomb 0
scoreboard players operation @s dnv.honeycombs_d -= @s dnv.honeycombs

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 1

# Update total counts
scoreboard players remove @s dnv.honeycombs 1