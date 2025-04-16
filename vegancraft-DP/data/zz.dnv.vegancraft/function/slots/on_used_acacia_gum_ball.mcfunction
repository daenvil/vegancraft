advancement revoke @s only zz.dnv.vegancraft:triggers/used_acacia_gum_ball
summon marker ~ ~ ~ {Tags:["dnv.motion_marker"]}
execute as @e[type=marker,tag=dnv.motion_marker,sort=nearest,limit=1] positioned 0.0 0.0 0.0 run function zz.dnv.vegancraft:gum_get_motion
execute anchored eyes run summon snowball ^ ^ ^1 {Tags:["dnv.projectile"],Item:{id:"slime_ball",count:1,components:{custom_model_data:{floats:[9261005]}}},Passengers:[{id:"marker",Tags:["dnv.thrown_ball_marker"]}]}
schedule function zz.dnv.vegancraft:gum_set_motion 1t