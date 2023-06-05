# Called by dnv.omni_pets:dropped_item_consumed if item was tagged as vegan
# @s = item entity
# This is just to grant advancements if needed

execute if score dnv.dummy dnv.pet_type matches 1 if entity @s[nbt={Item:{id:"minecraft:cooked_beef"}}] on origin run function dnv.vegancraft:food/pets/wolf_feeder_found
execute if score dnv.dummy dnv.pet_type matches 2 if entity @s[nbt={Item:{id:"minecraft:cod"}}] on origin run function dnv.vegancraft:food/pets/cat_feeder_found