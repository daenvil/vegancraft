# Called by dnv.omni_pets:taming_success
# @s = player without dnv.vegancraft.pets.ignore tag

execute unless entity @s[tag=dnv.id] run function dnv.core:id_player
execute if score @s dnv.player_uuid = dnv.dummy dnv.player_uuid run function dnv.vegancraft:pets/owner_found