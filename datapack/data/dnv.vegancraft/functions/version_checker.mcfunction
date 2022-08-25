# Called on load by function dnv.core:check_version
# Throw a warning if current version is not supported, and clean up afterwards:

execute unless score @a[limit=1] dnv.game_version matches 2724..2975 run tellraw @a {"text":"[Vegancraft] WARNING: This datapack is intended for Minecraft 1.17-1.18.2, some features might not be working.","color":"red","hoverEvent":{"action":"show_text","value":"Download the appropiate version for your game version."}}