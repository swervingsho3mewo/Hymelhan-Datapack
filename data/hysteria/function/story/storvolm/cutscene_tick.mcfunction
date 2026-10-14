# Add 1 to timer
scoreboard players add @s[tag=intro_cutscene.play,tag=!paused] intro_cutscene 1
# Perma slowness
execute if score @s intro_cutscene matches 1..1470 run effect give @s minecraft:slowness 1 10 true
# Sound
execute if score @s intro_cutscene matches 1..1470 run playsound minecraft:block.beacon.ambient ambient @s 1375 142 1305 0.5 1

# 1, TP player to marker
execute if score @s intro_cutscene matches 1..1470 run tp @s @e[type=marker,tag=intro_cutscene.pos,limit=1]
# 2, TP marker to start
execute if score @s intro_cutscene matches 1..100 run tp @e[type=marker,tag=intro_cutscene.pos,limit=1] 1408 125 1370 180 0

# 4, first tellraw
execute if score @s intro_cutscene matches 420..420 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 420..420 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Storvolm Outpost Reizen Tower reboot attempt detected. Connecting to Reizen Network...","color":"white"}]
# 5, first beacon flicker
execute if score @s intro_cutscene matches 440..440 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 450..450 run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 5 1.5
execute if score @s intro_cutscene matches 455..455 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 465..465 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 480..480 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 480..480 run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 5 0.75
# 6, second and third tellraw
execute if score @s intro_cutscene matches 530..530 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 530..530 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Reizen Network offline. Attempting full system restart…\u2026","color":"white"}]
execute if score @s intro_cutscene matches 660..660 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 660..660 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" ERROR 41: Unable to restore power to Reizen Network Towers. Manual reboots will be required in order to reconnect them with other towers.","color":"white"}]
# 7, second beacon flicker
execute if score @s intro_cutscene matches 710..710 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 710..710 run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 4 1.5
execute if score @s intro_cutscene matches 715..715 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 719..719 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 727..727 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 730..730 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 740..740 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 745..745 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 752..752 run setblock 1375 141 1305 purpur_pillar
# 8, fourth tellraw
execute if score @s intro_cutscene matches 780..780 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Storvolm Outpost Reizen Tower online. Accessing user catalog…","color":"white"}]
execute if score @s intro_cutscene matches 780..780 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 840..840 run setblock 1375 141 1305 purple_stained_glass
execute if score @s intro_cutscene matches 840..840 run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 4 1
execute if score @s intro_cutscene matches 870..870 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" "},{"score":{"name":"#tag_count","objective":"player_count"},"color":"white"},{"text":" user detected. Attempting Reizen landing sequence\u2026","color":"white"}]
execute if score @s intro_cutscene matches 870..870 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
# 9, balls
execute if score @s intro_cutscene matches 910..910 run tag @s add needs_ball
execute as @a[tag=intro_cutscene.play,limit=1] if score @s intro_cutscene matches 910.. run scoreboard players add #spawner ball_timer 1

execute as @a[tag=intro_cutscene.play,limit=1] if score @s intro_cutscene matches 910.. if score #spawner ball_timer matches 50.. if entity @a[tag=needs_ball] run summon marker 1375 200 1305 {Tags:["reizen_ball"]}
execute as @a[tag=intro_cutscene.play,limit=1] if score @s intro_cutscene matches 910.. if score #spawner ball_timer matches 50.. if entity @a[tag=needs_ball] run tag @a[tag=needs_ball,limit=1] remove needs_ball
execute as @a[tag=intro_cutscene.play,limit=1] if score @s intro_cutscene matches 910.. if score #spawner ball_timer matches 50.. run scoreboard players set #spawner ball_timer 0
execute if score @s intro_cutscene matches 910.. if score #spawner ball_timer matches 50.. run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 2 2

# Move the balls down into the tower
execute as @e[type=marker,tag=reizen_ball] at @s run tp @s ~ ~-0.5 ~
execute if entity @e[type=marker,tag=reizen_ball] run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 0.25 2
execute as @e[type=marker,tag=reizen_ball] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 1 80 force

# 10, pause Logic
execute as @a[tag=intro_cutscene.play] if score @s intro_cutscene matches 911..911 if entity @a[tag=needs_ball] run tag @s add paused
# If the timer is paused, but nobody needs a ball anymore, unpause it
execute as @a[tag=paused] unless entity @a[tag=needs_ball] run tag @s remove paused

# 11, fifth tellraw
execute if score @s intro_cutscene matches 960..960 run kill @e[type=marker,tag=reizen_ball]
execute if score @s intro_cutscene matches 990..990 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Landing sequence completed, Reizen users released from sky stasis.","color":"white"}]
execute if score @s intro_cutscene matches 990..990 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
# 12, constant teleport
execute if score @s intro_cutscene matches 990..1150 run tp @e[type=marker,tag=intro_cutscene.pos,limit=1] 1375 142 1305 0 0
execute if score @s intro_cutscene matches 990..1150 run gamemode survival @s
execute if score @s intro_cutscene matches 990..1150 run particle minecraft:witch 1376 143 1305 0.1 0.5 0.1 1 10 normal
execute if score @s intro_cutscene matches 990..1150 run particle minecraft:witch 1375 143 1306 0.1 0.5 0.1 1 10 normal
execute if score @s intro_cutscene matches 990..1150 run particle minecraft:witch 1374 143 1305 0.1 0.5 0.1 1 10 normal
execute if score @s intro_cutscene matches 990..1150 run particle minecraft:witch 1375 143 1304 0.1 0.5 0.1 1 10 normal
# 13, sixth telrraw
execute if score @s intro_cutscene matches 1100..1100 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Ranking Reizen user detected. Attempting to retrieve officer rank…","color":"white"}]
execute if score @s intro_cutscene matches 1100..1100 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 1300..1300 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Unable to retrieve officer rank, but found one (1) recorded message for remaining officers. Attempting to transmit message…","color":"white"}]
execute if score @s intro_cutscene matches 1300..1300 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 1450..1450 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Low system power detected, unable to transmit. Deactivating Storvolm Outpost Reizen Tower and canceling unnecessary tasks to preserve power…","color":"white"}]
execute if score @s intro_cutscene matches 1450..1450 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
# 14, shutoff, seventh telrraw
execute if score @s intro_cutscene matches 1470..1470 run setblock 1375 141 1305 purpur_pillar
execute if score @s intro_cutscene matches 1470..1470 run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 3 0.75
execute if score @s intro_cutscene matches 1470..1470 run effect clear @s slowness
execute if score @s intro_cutscene matches 1530..1530 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Power conservation measures complete, re-attempting message transmission…","color":"white"}]
execute if score @s intro_cutscene matches 1530..1530 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 1670..1670 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Attempt successful, transmitting message…","color":"white"}]
execute if score @s intro_cutscene matches 1670..1670 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 1870..1870 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" \"All remaining officers of Ven\u2019Eihn, report to the capital. Something has gone terribly wrong. The entire council disappeared, behind our guard. We do not know what happened, but the situation is dire. Return to Ven\u2019Dehren immediately.\"","color":"white"}]
execute if score @s intro_cutscene matches 1870..1870 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 2110..2110 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" ERROR 32: Unable to identify time of message recording and author. Entire Reizen system appears to be degraded. Attempting to acquire location of recording…","color":"white"}]
execute if score @s intro_cutscene matches 2110..2110 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 2250..2250 run tellraw @s[tag=intro_cutscene.play] ["",{"text":"[ReizenAI]:","bold":true,"color":"light_purple"},{"text":" Attempt success. Transmitting coordinates…","color":"white"}]
execute if score @s intro_cutscene matches 2250..2250 run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s intro_cutscene matches 2280..2280 run give @s compass[custom_name='[{"text":"ven\'dehren compass (real)","italic":false}]']

execute if score @s intro_cutscene >= @e[tag=intro_cutscene.pos,limit=1] intro_length run function hysteria:story/storvolm/reset_cutscene

execute if score @s intro_cutscene matches 1..2280 run schedule function hysteria:story/storvolm/cutscene_loop 1
