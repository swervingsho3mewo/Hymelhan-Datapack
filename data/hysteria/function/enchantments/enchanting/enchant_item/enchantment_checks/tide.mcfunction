execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## TOOLS

# Enchant
execute if items entity @s contents #hysteria:tools run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:tide_tool" set value 1

# Add Custom Data
execute if items entity @s contents #hysteria:tools run data modify entity @s Item.components."minecraft:custom_data".rune append value "tide"

# Update Rune Count
execute if items entity @s contents #hysteria:tools run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hysteria:tools run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## HELMET

# Enchant
execute if items entity @s contents #minecraft:head_armor run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:tide_helmet" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:head_armor run data modify entity @s Item.components."minecraft:custom_data".rune append value "tide"

# Update Rune Count
execute if items entity @s contents #minecraft:head_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:head_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## BOOTS

# Enchant
execute if items entity @s contents #minecraft:foot_armor run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:tide_boots" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:foot_armor run data modify entity @s Item.components."minecraft:custom_data".rune append value "tide"

# Update Rune Count
execute if items entity @s contents #minecraft:foot_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:foot_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant



## FAILED
execute unless items entity @s contents #hysteria:tools unless items entity @s contents #minecraft:head_armor unless items entity @s contents #minecraft:foot_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
