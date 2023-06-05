# Called by dnv.vegancraft:award_xp or by itself, or other functions
# @s = player who will receive xp
# position = at @s
# Awards the integer part of dnv.vxp in the correct format of xp orbs (https://minecraft.fandom.com/wiki/Experience#Experience_orbs)

scoreboard players operation @s dnv.vxp_int = @s dnv.vxp
scoreboard players operation @s dnv.vxp_int /= dnv.dummy dnv.100
execute if score @s dnv.vxp_int matches 149.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:149}
execute if score @s dnv.vxp_int matches 149.. run scoreboard players remove @s dnv.vxp 14900
execute if score @s dnv.vxp_int matches 149.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 73.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:73}
execute if score @s dnv.vxp_int matches 73.. run scoreboard players remove @s dnv.vxp 7300
execute if score @s dnv.vxp_int matches 73.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 37.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:37}
execute if score @s dnv.vxp_int matches 37.. run scoreboard players remove @s dnv.vxp 3700
execute if score @s dnv.vxp_int matches 37.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 17.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:17}
execute if score @s dnv.vxp_int matches 17.. run scoreboard players remove @s dnv.vxp 1700
execute if score @s dnv.vxp_int matches 17.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 7.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:7}
execute if score @s dnv.vxp_int matches 7.. run scoreboard players remove @s dnv.vxp 700
execute if score @s dnv.vxp_int matches 7.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 3.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score @s dnv.vxp_int matches 3.. run scoreboard players remove @s dnv.vxp 300
execute if score @s dnv.vxp_int matches 3.. run function dnv.vegancraft:award_xp_player
execute if score @s dnv.vxp_int matches 1.. at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s dnv.vxp_int matches 1.. run scoreboard players remove @s dnv.vxp 100
execute if score @s dnv.vxp_int matches 1.. run function dnv.vegancraft:award_xp_player