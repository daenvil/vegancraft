advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_notfish_fillet
tag @s add dnv.subject.crafted_notfish_fillet
scoreboard players add @s dnv.count.crafted_notfish_fillet 3
schedule function zz.dnv.vegancraft:slots/on_crafted_notfish_fillet_delayed 1t append

function zz.dnv.vegancraft:award_xp {xp:195}