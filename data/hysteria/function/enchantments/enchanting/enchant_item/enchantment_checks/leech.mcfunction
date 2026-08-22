execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## SWORD

# Enchant
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "broadsword"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:leech_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "broadsword"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "leech"

# Update Rune Count
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "broadsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "broadsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## AXES

# Enchant
execute if items entity @s contents #minecraft:axes unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "battle_axe"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:leech_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:axes unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "battle_axe"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "leech"

# Update Rune Count
execute if items entity @s contents #minecraft:axes unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "battle_axe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:axes unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "battle_axe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "broadsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "battle_axe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute unless items entity @s contents #minecraft:axes unless items entity @s contents #minecraft:swords run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
