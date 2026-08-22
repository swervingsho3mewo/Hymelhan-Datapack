execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## LONGSWORDS

# Enchant
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "longsword"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:bane_weapon" set value 1

# Add Custom Data
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "longsword"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "bane"

# Update Rune Count
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "longsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "longsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## SCYTHES

# Enchant
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:bane_weapon" set value 1

# Add Custom Data
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "bane"

# Update Rune Count
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## AXES

# Enchant
execute if items entity @s contents #minecraft:axes run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:bane_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:axes run data modify entity @s Item.components."minecraft:custom_data".rune append value "bane"

# Update Rune Count
execute if items entity @s contents #minecraft:axes run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:axes run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "longsword"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute unless items entity @s contents #minecraft:axes run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item