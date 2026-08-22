execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## Enchantale

# Enchant
execute if items entity @s contents #hysteria:enchantable run data modify entity @s Item.components."minecraft:enchantments".levels."hysteria:adamant" set value 1

# Add Custom Data
execute if items entity @s contents #hysteria:enchantable run data modify entity @s Item.components."minecraft:custom_data".rune append value "adamant"

# Update Rune Count
execute if items entity @s contents #hysteria:enchantable run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hysteria:enchantable run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## FAILED
execute unless items entity @s contents #hysteria:enchantable run function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
