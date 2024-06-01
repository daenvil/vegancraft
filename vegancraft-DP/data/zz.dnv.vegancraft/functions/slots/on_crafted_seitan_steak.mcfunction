advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_seitan_steak
give @s bowl 1
function zz.dnv.vegancraft:award_xp {xp:5}

# For Vegancraft advancement:
scoreboard players add @s dnv.hail_seitan 1
function zz.dnv.vegancraft:utils/grant_hail_seitan_criteria