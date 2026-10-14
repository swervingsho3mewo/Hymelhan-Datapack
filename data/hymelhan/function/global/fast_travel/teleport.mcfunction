$execute as @e[type=marker,tag=fast_travel.land$(tower_number).pos] at @s[type=marker,tag=fast_travel.land.activated] run tp @a[tag=fast_travel.land.user,tag=fast_travel.teleport.user] ~ ~100 ~
$execute if entity @e[type=marker,tag=fast_travel.land$(tower_number).pos,tag=fast_travel.land.activated] as @a[tag=fast_travel.land.user,tag=fast_travel.teleport.user] at @s run schedule function hymelhan:global/fast_travel/land_loop 2

$execute unless entity @e[type=marker,tag=fast_travel.land$(tower_number).pos,tag=fast_travel.land.activated] run tellraw @s ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Reizen destination offline. Redirecting to nearest activated Reizen tower...","color":"white"}]
$execute unless entity @e[type=marker,tag=fast_travel.land$(tower_number).pos,tag=fast_travel.land.activated] run playsound block.note_block.bit master @s ~ ~ ~ 1 1
$execute unless entity @e[type=marker,tag=fast_travel.land$(tower_number).pos,tag=fast_travel.land.activated] at @n[type=marker,tag=fast_travel.land.activated] run tp @a[tag=fast_travel.land.user,tag=fast_travel.teleport.user] ~ ~100 ~
$execute unless entity @e[type=marker,tag=fast_travel.land$(tower_number).pos,tag=fast_travel.land.activated] as @a[tag=fast_travel.land.user,tag=fast_travel.teleport.user] at @s run schedule function hymelhan:global/fast_travel/land_loop 2

advancement revoke @s only hymelhan:story/fast_travel/initiate