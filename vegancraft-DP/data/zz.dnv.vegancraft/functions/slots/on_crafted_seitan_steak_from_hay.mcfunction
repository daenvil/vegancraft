advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_seitan_steak_from_hay
give @s bowl 1
function zz.dnv.vegancraft:award_xp {xp:15}

# For Vegancraft advancement:
scoreboard players add @s dnv.hail_seitan 3
function zz.dnv.vegancraft:utils/grant_hail_seitan_criteria