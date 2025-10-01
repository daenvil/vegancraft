advancement revoke @s only zz.dnv.vegancraft:triggers/started_riding_ghast
execute on vehicle if entity @s[tag=dnv.balloon] run attribute @s flying_speed base set 0.005000
execute unless entity @s[advancements={dnv.vegancraft:rode_balloon=true}] on vehicle if entity @s[tag=dnv.balloon] on controller run advancement grant @s only dnv.vegancraft:rode_balloon