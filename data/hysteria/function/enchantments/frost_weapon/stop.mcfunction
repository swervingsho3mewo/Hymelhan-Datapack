execute if entity @s[tag=global.enchantments.frost_health] if score @s global.current_mob_health > @s global.mob_health run tag @s add global.enchantments.frost_stop
execute store result score @s global.current_mob_health run scoreboard players get @s global.mob_health

execute unless entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run tag @s add global.enchantments.frost_stop

execute if entity @s[tag=global.enchantments.frost_stop] run effect clear @s slowness
execute if entity @s[tag=global.enchantments.frost_stop] run kill @e[type=block_display,tag=global.enchantments.frost_ice,distance=..2,sort=nearest,limit=1]
execute if entity @s[tag=global.enchantments.frost_stop] run tag @s remove global.enchantments.frost
execute if entity @s[tag=global.enchantments.frost_stop] run tag @s remove global.enchantments.frost_health
execute if entity @s[tag=global.enchantments.frost_stop] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 .5
execute if entity @s[tag=global.enchantments.frost_stop] run tag @s remove global.enchantments.frost_stop

execute unless entity @s[tag=global.enchantments.frost_stop] run tp @e[type=block_display,tag=global.enchantments.frost_ice,distance=..2,sort=nearest,limit=1] @s
execute unless entity @s[tag=global.enchantments.frost_stop] as @e[type=block_display,tag=global.enchantments.frost_ice,distance=..2,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute unless entity @s[tag=global.enchantments.frost_stop] run particle block{block_state:"minecraft:packed_ice"} ~ ~.5 ~ .25 .5 .25 1 5 normal

execute run schedule function hysteria:enchantments/frost_weapon/loop 1

