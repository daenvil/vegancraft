# Called by function dnv.ethical_textiles:recipes/string if vegancraft is enabled
# @s = player who used the custom recipe

# Give items
give @s minecraft:string{display:{Name:'[{"translate":"dnv.ethical_textiles.item.plant_string","italic":false,"fallback":"Plant String"}]'},CustomModelData:9261007,dnv.Vegan:1b} 2
advancement grant @s only dnv.vegancraft:textiles/string

# XP reward
scoreboard players add @s dnv.vxp 10
tag @s add dnv.vc.award_xp
schedule function dnv.vegancraft:award_xp 1t replace