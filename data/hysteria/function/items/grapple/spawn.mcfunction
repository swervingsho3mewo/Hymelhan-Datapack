




#  Spawn Entities and Give Tags
execute at @s unless entity @e[tag=global.items.grapple.target] positioned ~ ~1.62 ~ as @e[type=arrow,distance=..4,nbt={inGround:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:awkward",custom_color:0}}}}] run summon block_display ~ ~ ~ {Tags:["global.items.grapple.chain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:chain",Properties:{waterlogged:"false",axis:"z"}}}

execute at @s unless entity @e[tag=global.items.grapple.target] positioned ~ ~1.62 ~ as @e[type=arrow,distance=..4,nbt={inGround:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:awkward",custom_color:0}}}}] run tag @s add global.items.grapple.arrow

execute at @s unless entity @e[tag=global.items.grapple.target] positioned ~ ~1.62 ~ store result score @n[type=arrow,distance=..4,tag=global.items.grapple.arrow] global.player.id run scoreboard players get @s global.player.id
execute at @s unless entity @e[tag=global.items.grapple.target] positioned ~ ~1.62 ~ store result score @n[type=block_display,distance=..4,tag=global.items.grapple.chain] global.player.id run scoreboard players get @s global.player.id

execute at @s unless entity @e[tag=global.items.grapple.target] positioned ~ ~1.62 ~ as @e[type=arrow,distance=..4,nbt={inGround:0b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:awkward",custom_color:0}}}}] run tag @s add global.items.grapple.target



#  Arrow Land
execute as @e[type=arrow,tag=global.items.grapple.arrow,nbt={inGround:1b}] at @s run summon marker ~ ~ ~ {Tags:["global.items.grapple.target"]}
execute as @e[type=arrow,tag=global.items.grapple.arrow,nbt={inGround:1b}] at @s store result score @n[type=marker,distance=..4,tag=global.items.grapple.target] global.player.id run scoreboard players get @s global.player.id


execute at @e[type=arrow,tag=global.items.grapple.arrow,nbt={inGround:1b}] as @a[distance=..100] at @s run playsound minecraft:block.anvil.place ambient @a ~ ~1 ~ 0.05 2


execute at @e[type=marker,tag=global.items.grapple.target] unless entity @n[type=armor_stand,tag=global.items.grapple.pos,predicate=!hysteria:global.id_match] as @p[tag=global.items.grapple.player,predicate=!hysteria:global.id_match] at @s run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Invisible:1b,Tags:["global.items.grapple.pos"],attributes:[{id:"minecraft:scale",base:0.1},{id:"minecraft:max_health",base:0}]}
execute as @e[type=armor_stand,tag=global.items.grapple.pos] at @s store result score @s global.player.id run scoreboard players get @p[tag=global.items.grapple.player] global.player.id

execute as @a[tag=global.items.grapple.player] at @s run ride @s mount @n[tag=global.items.grapple.pos,type=armor_stand,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.chain] at @s run tp @s @p[tag=global.items.grapple.player,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.chain,type=block_display] at @s run tp @s ~ ~1 ~ facing entity @n[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] feet

execute as @e[type=arrow,tag=global.items.grapple.arrow,nbt={inGround:1b}] run schedule function hysteria:items/grapple/motion_loop 2
execute as @e[type=arrow,tag=global.items.grapple.arrow,nbt={inGround:1b}] run kill @s


#  Loop
execute as @a[tag=global.items.grapple.player] run schedule function hysteria:items/grapple/spawn 1