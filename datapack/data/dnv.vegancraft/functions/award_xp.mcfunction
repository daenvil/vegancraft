# Called by multiple functions
# @s = player who may receive xp
# awards the integer part of dnv.vxp

scoreboard players operation @s dnv.vxp_int = @s dnv.vxp
scoreboard players operation @s dnv.vxp_int /= dnv.dummy dnv.100
execute if score @s dnv.vxp_int matches 7.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:7}
execute if score @s dnv.vxp_int matches 7.. run scoreboard players remove @s dnv.vxp 700
execute if score @s dnv.vxp_int matches 7.. run function dnv.vegancraft:award_xp
execute if score @s dnv.vxp_int matches 3.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score @s dnv.vxp_int matches 3.. run scoreboard players remove @s dnv.vxp 300
execute if score @s dnv.vxp_int matches 3.. run function dnv.vegancraft:award_xp
execute if score @s dnv.vxp_int matches 1.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s dnv.vxp_int matches 1.. run scoreboard players remove @s dnv.vxp 100
execute if score @s dnv.vxp_int matches 1.. run function dnv.vegancraft:award_xp