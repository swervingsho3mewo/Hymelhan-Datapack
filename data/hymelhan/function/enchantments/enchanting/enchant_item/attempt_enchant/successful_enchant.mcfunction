kill @n[type=item,tag=global.enchantment_table.rune]

data merge entity @s {NoGravity:0b}
data merge entity @s {PickupDelay:0}
execute align xz run tp @s ~0.5 ~ ~0.5
data merge entity @s {Motion:[0.0,0.25,0.0]}
tag @s remove global.enchantment_table.enchantable
tag @s remove global.enchantment_table.item

playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 0.25 2
playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 0.75
particle minecraft:white_smoke ~ ~ ~ 0.1 0.1 0.1 0.5 20
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.5 10