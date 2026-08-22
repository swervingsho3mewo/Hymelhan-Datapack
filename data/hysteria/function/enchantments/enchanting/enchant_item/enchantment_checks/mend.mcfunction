execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## Enchantale

# Enchant
execute if items entity @s contents #hysteria:armor run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:mend_armor" set value 1

# Add Custom Data
execute if items entity @s contents #hysteria:armor run data modify entity @s Item.components."minecraft:custom_data".rune append value "mend"

# Update Rune Count
execute if items entity @s contents #hysteria:armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hysteria:armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute unless items entity @s contents #hysteria:armor run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
