scoreboard objectives add dnv.vxp dummy
scoreboard objectives add dnv.vxp_int dummy
scoreboard objectives add dnv.100 dummy
scoreboard players set #dnv dnv.100 100
scoreboard objectives add dnv.hail_seitan dummy
scoreboard objectives add dnv.vegancraft.diet_time dummy
scoreboard objectives add dnv.vegancraft.diet_time_alive dummy
scoreboard objectives add dnv.vegancraft.animal_lover_time dummy
scoreboard objectives add dnv.vegancraft.deaths minecraft.custom:deaths
schedule function zz.dnv.vegancraft:utils/diet_loop 4000 replace
scoreboard objectives add dnv.ate_nonvegan dummy
scoreboard objectives add dnv.ate_vegan_alt dummy
scoreboard objectives add dnv.success dummy
scoreboard objectives add dnv.xp_nerfer dummy

execute as @a unless score @s dnv.xp_nerfer matches 1.. run scoreboard players set @s dnv.xp_nerfer 0
schedule function zz.dnv.vegancraft:decay_xp_nerf 1200 replace