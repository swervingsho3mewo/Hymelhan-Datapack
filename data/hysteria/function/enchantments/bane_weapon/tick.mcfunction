execute on attacker if entity @s[scores={global.player.health=3..}] run tag @s add global.enchantments.player.bane

execute store result score @s global.enchantments.bane.damage run scoreboard players operation @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] global.player.health -= 2 global.num
execute store result storage hysteria:bane.damage mob_damage int 0.5 run scoreboard players get @s global.enchantments.bane.damage

execute as @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] store result score @s global.enchantments.bane.damage run scoreboard players get @s global.player.health
execute store result storage hysteria:bane.damage player_damage int 1 run scoreboard players get @s global.enchantments.bane.damage

execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run playsound minecraft:block.honey_block.hit ambient @a ~ ~ ~ 0.5 0.75
execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run playsound minecraft:entity.parrot.imitate.wither_skeleton ambient @a ~ ~ ~ 1 0.5
execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ 0.2 2

execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run particle minecraft:crit ~ ~.25 ~ 0.25 0.25 0.25 1 20
execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run particle minecraft:damage_indicator ~ ~-0.25 ~ 0.25 0.25 0.25 0.5 10 normal
execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run particle minecraft:reverse_portal ~ ~0.25 ~ 0.25 0.25 0.25 10 20
execute at @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run particle minecraft:angry_villager ~ ~ ~ 0.25 0.25 0.25 1 5

function hysteria:enchantments/bane_weapon/damage with storage hysteria:bane.damage








