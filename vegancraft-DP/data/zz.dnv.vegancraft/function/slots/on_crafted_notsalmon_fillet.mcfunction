advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_notsalmon_fillet
tag @s add dnv.subject.crafted_notsalmon_fillet
scoreboard players add @s dnv.count.crafted_notsalmon_fillet 1
schedule function zz.dnv.vegancraft:slots/on_crafted_notsalmon_fillet_delayed 1t append

function zz.dnv.vegancraft:award_xp {xp:130}