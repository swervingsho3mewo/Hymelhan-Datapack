execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## SWORD

# Enchant
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:scorch_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "scorch"

# Update Rune Count
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## TOOLS

# Enchant
execute if items entity @s contents #hysteria:tools run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:scorch_tool" set value 1

# Add Custom Data
execute if items entity @s contents #hysteria:tools run data modify entity @s Item.components."minecraft:custom_data".rune append value "scorch"

# Update Rune Count
execute if items entity @s contents #hysteria:tools run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hysteria:tools run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute unless items entity @s contents #hysteria:tools unless items entity @s contents #minecraft:swords run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
