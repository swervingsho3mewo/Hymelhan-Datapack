#  Get Grapple Coords
execute as @e[tag=global.items.grapple.target] store result score @s global.xcoord run data get entity @s Pos[0] 10
execute as @e[tag=global.items.grapple.target] store result score @s global.ycoord run data get entity @s Pos[1] 10
execute as @e[tag=global.items.grapple.target] store result score @s global.zcoord run data get entity @s Pos[2] 10
#  Store Player Coords
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainx run scoreboard players get @s global.xcoord
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainy run scoreboard players get @s global.ycoord
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainz run scoreboard players get @s global.zcoord
#  Subract Coords & Find Differeces
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainx run scoreboard players operation @s global.items.grapple.chainx -= @e[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] global.xcoord
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainy run scoreboard players operation @s global.items.grapple.chainy -= @e[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] global.ycoord
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainz run scoreboard players operation @s global.items.grapple.chainz -= @e[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] global.zcoord
#  Square Differences
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainx run scoreboard players operation @s global.items.grapple.chainx *= @s global.items.grapple.chainx
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainy run scoreboard players operation @s global.items.grapple.chainy *= @s global.items.grapple.chainy
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chainz run scoreboard players operation @s global.items.grapple.chainz *= @s global.items.grapple.chainz
#  Add Squared Differences
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.dist run scoreboard players operation @s global.items.grapple.chainy += @s global.items.grapple.chainz
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.dist run scoreboard players operation @s global.items.grapple.dist += @s global.items.grapple.chainx
#  Find And Store Square Root of Sum of Differences
execute as @a[tag=global.items.grapple.player] store result score in math_sqrt run scoreboard players get @s global.items.grapple.dist
function math:sqrt/exe
#  Divide Square Root & Set as Chain Length
execute as @a[tag=global.items.grapple.player] store result score @s global.items.grapple.chain_length run scoreboard players operation out math_sqrt /= 10 number
execute store result storage hysteria:grapple grapple_length int 1 run scoreboard players get @p global.items.grapple.chain_length
function hysteria:items/grapple/save with storage hysteria:grapple
#  Loop
execute as @a[tag=global.items.grapple.player] run schedule function hysteria:items/grapple/math_loop 1