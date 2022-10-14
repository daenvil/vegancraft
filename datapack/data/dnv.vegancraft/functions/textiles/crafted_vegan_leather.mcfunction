# Called by dnv.vegancraft:textiles/recipes/leather
# @s = player who crafted
# Gives the appropiate item and reduces score dnv.vslime by 3, to take into account the case where the player is crafting multiple times one after the other

give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.vegan_leather","italic":false}]'},dnv.Vegan:1b,CustomModelData:9261006} 1
scoreboard players remove @s dnv.vslime 3
scoreboard players add @s dnv.vleathers 1
advancement grant @s only dnv.vegancraft:textiles/leather

# XP reward (the first 3 XP were given before, this is for also using vegan slimeball)
scoreboard players add @s dnv.vxp 180
function dnv.vegancraft:award_xp