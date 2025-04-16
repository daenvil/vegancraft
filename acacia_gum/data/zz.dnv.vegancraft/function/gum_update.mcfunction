execute as @e[type=marker,tag=dnv.thrown_ball_marker] at @s unless entity @e[type=snowball,distance=..0.5] run function zz.dnv.vegancraft:gum_hit
schedule function zz.dnv.vegancraft:gum_update 4t