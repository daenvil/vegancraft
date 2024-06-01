execute as @a unless score @s dnv.xp_nerfer matches 1.. run scoreboard players set @s dnv.xp_nerfer 0
execute as @a if score @s dnv.xp_nerfer matches 64.. run scoreboard players remove @s dnv.xp_nerfer 64
schedule function zz.dnv.vegancraft:decay_xp_nerf 1200 replace