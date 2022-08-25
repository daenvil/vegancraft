advancement revoke @s only dnv.acacia_gum:used_axe_on_acacia_bark

# Decide beforehand if gumball is going to drop, to avoid useless processing:
execute if predicate dnv.acacia_gum:drop_chance_no_fortune run function dnv.acacia_gum:find_stripped_acacia
