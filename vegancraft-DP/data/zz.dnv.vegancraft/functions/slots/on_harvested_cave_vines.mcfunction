advancement revoke @s only zz.dnv.vegancraft:triggers/harvested_cave_vines
execute if score #dnv dnv.xp_from_crops_disabled matches 1 run return 0
execute unless predicate {"condition":"random_chance","chance":0.4} run return 0
execute unless predicate {"condition":"entity_scores","entity":"this","scores":{"dnv.xp_nerfer":{"min":0,"max":{"min":200,"max":500}}}} run return 0
summon experience_orb ~ ~ ~ {Value:1, Tags:[dnv.xp_ignore]}
scoreboard players add @s dnv.xp_nerfer 1