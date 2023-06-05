# Scheduled by multiple functions
# Calls the xp-awarder function on tagged players and untags them

execute as @a[tag=dnv.vc.award_xp] at @s run function dnv.vegancraft:award_xp_player
tag @a remove dnv.vc.award_xp