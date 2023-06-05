# Return the type of cat:

execute if entity @s[nbt={variant:"minecraft:tabby"}] run return 0
execute if entity @s[nbt={variant:"minecraft:black"}] run return 1
execute if entity @s[nbt={variant:"minecraft:red"}] run return 2
execute if entity @s[nbt={variant:"minecraft:siamese"}] run return 3
execute if entity @s[nbt={variant:"minecraft:british_shorthair"}] run return 4
execute if entity @s[nbt={variant:"minecraft:calico"}] run return 5
execute if entity @s[nbt={variant:"minecraft:persian"}] run return 6
execute if entity @s[nbt={variant:"minecraft:ragdoll"}] run return 7
execute if entity @s[nbt={variant:"minecraft:white"}] run return 8
execute if entity @s[nbt={variant:"minecraft:jellie"}] run return 9
execute if entity @s[nbt={variant:"minecraft:all_black"}] run return 10
return -1