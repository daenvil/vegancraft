scoreboard players add #dnv dnv.xp_from_crops_disabled 1
execute if score #dnv dnv.xp_from_crops_disabled matches 2 run scoreboard players set #dnv dnv.xp_from_crops_disabled 0
execute if score #dnv dnv.xp_from_crops_disabled matches 0 run tellraw @s {"text":"* Vegancraft: XP from crops is now enabled *","color":"green","italic":true}
execute if score #dnv dnv.xp_from_crops_disabled matches 1 run tellraw @s {"text":"* Vegancraft: XP from crops is now disabled *","color":"red","italic":true}