execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## SWORD

# Enchant
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run data modify entity @s Item.components."minecraft:enchantments".levels."hymelhan:scorch_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run data modify entity @s Item.components."minecraft:custom_data".rune append value "scorch"

# Update Rune Count
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:swords unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## TOOLS

# Enchant
execute if items entity @s contents #hymelhan:tools run data modify entity @s Item.components."minecraft:enchantments".levels."hymelhan:scorch_tool" set value 1

# Add Custom Data
execute if items entity @s contents #hymelhan:tools run data modify entity @s Item.components."minecraft:custom_data".rune append value "scorch"

# Update Rune Count
execute if items entity @s contents #hymelhan:tools run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hymelhan:tools run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "scythe"}}}}] run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{weapon_type: "dagger"}}}}] run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute unless items entity @s contents #hymelhan:tools unless items entity @s contents #minecraft:swords run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
