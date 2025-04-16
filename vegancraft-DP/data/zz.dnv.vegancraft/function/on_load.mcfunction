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
scoreboard objectives add dnv.count.crafted_copper_horn dummy
scoreboard objectives add dnv.success dummy
scoreboard objectives add dnv.count.crafted_copper_horn_ponder dummy
scoreboard objectives add dnv.count.crafted_copper_horn_sing dummy
scoreboard objectives add dnv.count.crafted_copper_horn_seek dummy
scoreboard objectives add dnv.count.crafted_copper_horn_feel dummy
scoreboard objectives add dnv.count.crafted_copper_horn_admire dummy
scoreboard objectives add dnv.count.crafted_copper_horn_call dummy
scoreboard objectives add dnv.count.crafted_copper_horn_yearn dummy
scoreboard objectives add dnv.count.crafted_copper_horn_dream dummy
scoreboard objectives add dnv.xp_from_crops_disabled dummy
execute unless score #dnv dnv.xp_from_crops_disabled matches 1 run scoreboard players set #dnv dnv.xp_from_crops_disabled 0
scoreboard objectives add dnv.xp_nerfer dummy

execute as @a unless score @s dnv.xp_nerfer matches 1.. run scoreboard players set @s dnv.xp_nerfer 0
schedule function zz.dnv.vegancraft:decay_xp_nerf 1200 replace
schedule function zz.dnv.vegancraft:trades/villager_init 5s
schedule function zz.dnv.vegancraft:trades/wandering_trader_init 20s