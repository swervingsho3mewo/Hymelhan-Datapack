execute as @n[type=item,tag=global.enchantment_table.item,distance=..5] run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 0.1 2
execute as @n[type=item,tag=global.enchantment_table.item,distance=..5] run playsound minecraft:entity.chicken.egg ambient @a ~ ~ ~ 0.25 2

data merge entity @n[type=item,tag=global.enchantment_table.item,distance=..5] {PickupDelay:0}
tp @n[type=item,tag=global.enchantment_table.item,distance=..5] @p