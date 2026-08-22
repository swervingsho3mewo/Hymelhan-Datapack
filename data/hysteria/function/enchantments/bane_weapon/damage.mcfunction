$damage @s $(mob_damage) hysteria:bane
$execute as @p[tag=global.enchantments.player.bane,scores={global.player.health=3..},distance=..8] run damage @s $(player_damage)

tag @a remove global.enchantments.player.bane
tag @e[tag=global.enchantments.target.bane] remove global.enchantments.target.bane
