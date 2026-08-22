execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## RANGED

# Enchant
execute if items entity @s contents #hysteria:weapons_ranged run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:visage_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #hysteria:weapons_ranged run data modify entity @s Item.components."minecraft:custom_data".rune append value "visage"

# Update Rune Count
execute if items entity @s contents #hysteria:weapons_ranged run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hysteria:weapons_ranged run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## HELMET

# Enchant
execute if items entity @s contents #minecraft:head_armor run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:visage_armor" set value 1

# Add Custom Data
execute if items entity @s contents #minecraft:head_armor run data modify entity @s Item.components."minecraft:custom_data".rune append value "visage"

# Update Rune Count
execute if items entity @s contents #minecraft:head_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #minecraft:head_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant



## FAILED
execute unless items entity @s contents #hysteria:weapons_ranged unless items entity @s contents #minecraft:head_armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
