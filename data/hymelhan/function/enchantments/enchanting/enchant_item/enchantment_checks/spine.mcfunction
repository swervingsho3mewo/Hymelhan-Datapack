execute unless data entity @s Item.components."minecraft:custom_data".runes run data modify entity @s Item.components."minecraft:custom_data".rune set value []

## RANGED

# Enchant
execute if items entity @s contents #hymelhan:tools run data modify entity @s Item.components."minecraft:enchantments".levels."hymelhan:spine_weapon" set value 1

# Add Custom Data
execute if items entity @s contents #hymelhan:tools run data modify entity @s Item.components."minecraft:custom_data".rune append value "spine"

# Update Rune Count
execute if items entity @s contents #hymelhan:tools run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hymelhan:tools run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant

## LEGGINGS

# Enchant
execute if items entity @s contents #hymelhan:armor unless items entity @s contents #minecraft:foot_armor run data modify entity @s Item.components."minecraft:enchantments".levels."hymelhan:spine_armor" set value 1

# Add Custom Data
execute if items entity @s contents #hymelhan:armor unless items entity @s contents #minecraft:foot_armor run data modify entity @s Item.components."minecraft:custom_data".rune append value "spine"

# Update Rune Count
execute if items entity @s contents #hymelhan:armor unless items entity @s contents #minecraft:foot_armor run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/rune_count

# Enchant Worked
execute if items entity @s contents #hymelhan:armor unless items entity @s contents #minecraft:foot_armor run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/successful_enchant


## FAILED
execute unless items entity @s contents #hymelhan:armor unless items entity @s contents #hymelhan:weapons_ranged run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
execute if items entity @s contents #minecraft:foot_armor run function hymelhan:enchantments/enchanting/enchant_item/attempt_enchant/incorrect_item
