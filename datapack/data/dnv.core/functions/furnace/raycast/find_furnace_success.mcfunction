# Called by function dnv.core:furnace/raycast/find_furnace(_line/_wide)
# ~ ~ ~ = position of the targeted block

scoreboard players set @s dnv.found_furnace 1

execute align xyz unless entity @e[dx=0,dy=0,dz=0,type=marker,tag=dnv.furnace,limit=1] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["dnv.furnace"]}