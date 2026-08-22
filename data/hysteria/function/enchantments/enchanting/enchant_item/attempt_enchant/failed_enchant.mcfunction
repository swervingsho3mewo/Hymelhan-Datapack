execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run data merge entity @s {NoGravity:0b}
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run data merge entity @s {PickupDelay:0}
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run execute align xz run tp @s ~0.5 ~ ~0.5
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run data merge entity @s {Motion:[0.0,0.25,0.0]}

execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0.5
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 0.1 0.25
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.5 10
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run particle block_crumble{block_state:"minecraft:glass"} ~ ~ ~ 0.25 0.25 0.25 1 20 normal

execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run tag @s remove global.enchantment_table.enchantable
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run tag @s remove global.enchantment_table.rune
execute at @a as @e[type=item,tag=global.enchantment_table.item,distance=..5] at @s run tag @s remove global.enchantment_table.item