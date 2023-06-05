# Called by function dnv.vegan_food:recipes/steak if vegancraft is enabled
# @s = player who used the custom steak recipe

scoreboard players add @s dnv.vxp 1005
tag @s add dnv.vc.award_xp
schedule function dnv.vegancraft:award_xp 1t replace