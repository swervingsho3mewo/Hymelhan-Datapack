summon item ~-0.25 ~1 ~-0.25 {NoGravity:1b,Age:-32768,PickupDelay:32767,Tags:["global.enchantment_table.rune","global.enchantment_table.item"],Item:{id:"minecraft:book",count:1}}
item replace entity @n[type=item,tag=global.enchantment_table.rune] contents from entity @p weapon.mainhand
item replace entity @p weapon.mainhand with air

execute if entity @n[type=item,tag=global.enchantment_table.enchantable,distance=..2] run schedule function hysteria:enchantments/enchanting/enchant_item/attempt_enchant/check 2.5s
execute if entity @n[type=item,tag=global.enchantment_table.enchantable,distance=..2] run playsound minecraft:block.portal.trigger ambient @a ~ ~1 ~ 0.25 1.5
execute if entity @n[type=item,tag=global.enchantment_table.enchantable,distance=..2] run particle portal ~ ~1 ~ 0 0 0 1 20 normal

playsound minecraft:ui.button.click ambient @a ~ ~1 ~ 1 2
playsound minecraft:block.enchantment_table.use ambient @a ~ ~1 ~ 0.25 2
particle minecraft:enchant ~ ~1 ~ 0.25 0.25 0.25 0.5 10