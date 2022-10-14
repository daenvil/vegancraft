# Called by dnv.vegancraft:textiles/utility/player_tick_real when player crafts a cobweb

give @s minecraft:cobweb{display:{Name:'[{"translate":"dnv.ethical_textiles.item.cobweb","italic":false}]'}} 2

# Difference in vegan ingredients:
execute store result score @s dnv.vslimes_d run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vslimes_d -= @s dnv.vslime
execute store result score @s dnv.vstrings_d run clear @s minecraft:string{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vstrings_d -= @s dnv.vstrings

# Difference in total ingredients:
execute store result score @s dnv.slimes_d run clear @s minecraft:slime_ball 0
scoreboard players operation @s dnv.slimes_d -= @s dnv.slimes
execute store result score @s dnv.strings_d run clear @s minecraft:string 0
scoreboard players operation @s dnv.strings_d -= @s dnv.strings

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vslimes_d = @s dnv.slimes_d if score @s dnv.vstrings_d = @s dnv.strings_d run advancement grant @s only dnv.vegancraft:textiles/cobweb
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 8
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 1

# Check if only 7 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 7
# Check if only 6 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 6
# Check if only 5 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 5
# Check if only 4 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 4
# Check if only 3 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 3
# Check if only 2 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 2
# Check if only 1 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 1

# Update total counts
scoreboard players remove @s dnv.slimes 1
scoreboard players remove @s dnv.strings 8