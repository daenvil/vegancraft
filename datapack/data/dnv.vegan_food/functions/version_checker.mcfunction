# Called on load by function dnv.core:check_version
# Throw a warning if current version is not supported:

execute unless score @a[limit=1] dnv.game_version matches 2578.. run tellraw @a {"text":"[Plant-based Foods] WARNING: This datapack is intended for Minecraft 1.16.2+, some features might not be working.","color":"red","hoverEvent":{"action":"show_text","value":"This datapack does not support older versions of the game."}}