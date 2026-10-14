execute at @a as @e[tag=global.enchantments.scorch,type=marker,distance=..20] at @s if block ~ ~ ~ air run function hymelhan:enchantments/scorch_tool/stop
execute at @a as @e[tag=global.enchantments.scorch,type=marker,distance=..20] at @s unless block ~ ~ ~ #hymelhan:scorch-able run kill @s
execute at @a as @e[tag=global.enchantments.scorch,type=marker,distance=..20] at @s unless entity @p[distance=..5] run kill @s
execute at @a if entity @e[tag=global.enchantments.scorch,type=marker,distance=..20] run schedule function hymelhan:enchantments/scorch_tool/check 1