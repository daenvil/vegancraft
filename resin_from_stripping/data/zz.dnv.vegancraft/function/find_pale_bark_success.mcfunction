scoreboard players set @s dnv.resin_from_stripping.found_pale_bark 1
execute unless block ~ ~ ~ #zz.dnv.core:pale_oak_bark run return 0
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~ ~1 air run setblock ~ ~ ~1 resin_clump[north=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~ ~1 resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~1 ~ ~ air run setblock ~1 ~ ~ resin_clump[west=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~1 ~ ~ resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~ ~-1 air run setblock ~ ~ ~-1 resin_clump[south=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~ ~-1 resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~-1 ~ ~ air run setblock ~-1 ~ ~ resin_clump[east=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~-1 ~ ~ resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~-1 ~ air run setblock ~ ~-1 ~ resin_clump[up=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~-1 ~ resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~1 ~ air run setblock ~ ~1 ~ resin_clump[down=true]
execute unless score @s dnv.resin_from_stripping.n_drops matches 0 if block ~ ~1 ~ resin_clump run scoreboard players remove @s dnv.resin_from_stripping.n_drops 1
function zz.dnv.vegancraft:award_xp {xp:40}