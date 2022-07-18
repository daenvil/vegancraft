# Called on load by function dnv.core:check_version
# Throw a warning if current version is not supported, and clean up afterwards:

execute unless score @a[limit=1] dnv.game_version matches 3105.. run tellraw @a {"text":"[Omnivorous Pets] WARNING: This datapack is intended for Minecraft 1.19+, some features might not be working.","color":"red","hoverEvent":{"action":"show_text","value":"Download the appropiate version for your game version."}}