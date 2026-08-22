execute unless items entity @p weapon.mainhand * run function hysteria:enchantments/enchanting/enchant_item/add_item/remove_items

execute if items entity @p weapon.mainhand #hysteria:enchantable unless entity @e[type=item,tag=global.enchantment_table.enchantable,distance=..5] run function hysteria:enchantments/enchanting/enchant_item/add_item/add_enchantable

execute if data entity @p SelectedItem.components."minecraft:custom_data".runes unless entity @e[type=item,tag=global.enchantment_table.rune,distance=..5] run function hysteria:enchantments/enchanting/enchant_item/add_item/add_rune

