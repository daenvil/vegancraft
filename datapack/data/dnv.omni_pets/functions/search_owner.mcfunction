# Called by dnv.omni_pets:taming_success
# @s = player

execute unless entity @s[tag=dnv.id] run function dnv.core:id_player
execute if score @s dnv.player_uuid = dnv.dummy dnv.player_uuid run function dnv.omni_pets:owner_found