# Called on load by function dnv.core:check_version
# Throw a warning if current version is not supported:

execute unless score @a[limit=1] dnv.game_version matches 3462.. run tellraw @a {"text":"[Vegancraft] WARNING: This datapack is intended for Minecraft 1.20+, some features might not be working.","color":"red","hoverEvent":{"action":"show_text","value":"Download the appropiate version for your Minecraft version."}}