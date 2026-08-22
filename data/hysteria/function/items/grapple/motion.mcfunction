execute as @a[tag=global.items.grapple.player] at @s run ride @s mount @n[tag=global.items.grapple.pos,type=armor_stand,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.chain] at @s run tp @s @p[tag=global.items.grapple.player,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.chain,type=block_display] at @s run tp @s ~ ~1 ~ facing entity @n[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] feet
execute at @s run playsound minecraft:block.chain.place ambient @a ~ ~ ~ 0.15 0.75 0.25

# get positions of target and grapple
execute store result score @s global.xcoord run data get entity @s Pos[0] 1
execute store result score @s global.ycoord run data get entity @s Pos[1] 1
execute store result score @s global.zcoord run data get entity @s Pos[2] 1

execute store result score @s global.items.grapple.motionX2 run data get entity @s Motion[0] 1
execute store result score @s global.items.grapple.motionY2 run data get entity @s Motion[1] 1
execute store result score @s global.items.grapple.motionZ2 run data get entity @s Motion[2] 1

execute store result score @s global.items.grapple.x run data get entity @e[tag=global.items.grapple.target,limit=1,sort=nearest,predicate=!hysteria:global.id_match] Pos[0] 1
execute store result score @s global.items.grapple.y run data get entity @e[tag=global.items.grapple.target,limit=1,sort=nearest,predicate=!hysteria:global.id_match] Pos[1] 1
execute store result score @s global.items.grapple.z run data get entity @e[tag=global.items.grapple.target,limit=1,sort=nearest,predicate=!hysteria:global.id_match] Pos[2] 1

# check difference betweent target and grapple
scoreboard players operation @s global.items.grapple.dx = @s global.items.grapple.x
scoreboard players operation @s global.items.grapple.dx -= @s global.xcoord
scoreboard players operation @s global.items.grapple.dz = @s global.items.grapple.z
scoreboard players operation @s global.items.grapple.dz -= @s global.zcoord
scoreboard players operation @s global.items.grapple.dy = @s global.items.grapple.y
scoreboard players operation @s global.items.grapple.dy -= @s global.ycoord

# motion to scoreboard
scoreboard players operation @s global.items.grapple.motionX = @s global.items.grapple.dx
scoreboard players operation @s global.items.grapple.motionZ = @s global.items.grapple.dz
scoreboard players operation @s global.items.grapple.motionY = @s global.items.grapple.dy

# clamp motion to max
execute if score @s global.items.grapple.motionX matches 40.. run scoreboard players set @s global.items.grapple.motionX 40
execute if score @s global.items.grapple.motionX matches ..-40 run scoreboard players set @s global.items.grapple.motionX -40

execute if score @s global.items.grapple.motionZ matches 40.. run scoreboard players set @s global.items.grapple.motionZ 40
execute if score @s global.items.grapple.motionZ matches ..-40 run scoreboard players set @s global.items.grapple.motionZ -40

execute if score @s global.items.grapple.motionY matches 40.. run scoreboard players set @s global.items.grapple.motionY 40
execute if score @s global.items.grapple.motionY matches ..-40 run scoreboard players set @s global.items.grapple.motionY -40

# add started tag
execute unless score @s global.items.grapple.motionXYZ matches -1..1 run tag @s add global.items.grapple.started

# motion to the thing
execute store result entity @s Motion[0] double 0.2 run scoreboard players get @s global.items.grapple.motionX
execute store result entity @s Motion[2] double 0.2 run scoreboard players get @s global.items.grapple.motionZ
execute if score @s global.items.grapple.motionY matches 1.. run execute store result entity @s Motion[1] double 0.15 run scoreboard players get @s global.items.grapple.motionY
execute if score @s global.items.grapple.motionY matches ..-1 run execute store result entity @s Motion[1] double 0.25 run scoreboard players get @s global.items.grapple.motionY

# absolute value of motion
execute if score @s global.items.grapple.motionX2 matches ..-1 run scoreboard players operation @s global.items.grapple.motionX2 *= -1 global.num
execute if score @s global.items.grapple.motionY2 matches ..-1 run scoreboard players operation @s global.items.grapple.motionY2 *= -1 global.num
execute if score @s global.items.grapple.motionZ2 matches ..-1 run scoreboard players operation @s global.items.grapple.motionZ2 *= -1 global.num

# sum motion values
scoreboard players operation @s global.items.grapple.motionXYZ = @s global.items.grapple.motionX2
scoreboard players operation @s global.items.grapple.motionXYZ += @s global.items.grapple.motionY2
scoreboard players operation @s global.items.grapple.motionXYZ += @s global.items.grapple.motionZ2

# wait for small motion
execute if entity @s[tag=global.items.grapple.started] if score @s global.items.grapple.motionXYZ matches -1..1 run scoreboard players add @s global.items.grapple.stopTime 1
execute if entity @s[tag=global.items.grapple.started] unless score @s global.items.grapple.motionXYZ matches -1..1 run scoreboard players set @s global.items.grapple.stopTime 0

# kill if little motion or target close
execute if entity @s[tag=global.items.grapple.started] if score @s global.items.grapple.stopTime matches 10.. run tag @s add global.items.grapple.death
execute if entity @s[tag=global.items.grapple.started] if entity @e[tag=global.items.grapple.target,type=marker,distance=..0.5,predicate=!hysteria:global.id_match] run tag @s add global.items.grapple.death
execute unless entity @s[tag=global.items.grapple.started] if entity @e[tag=global.items.grapple.target,type=marker,distance=..5,predicate=!hysteria:global.id_match] run tag @s add global.items.grapple.death

execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target,predicate=!hysteria:global.id_match] run tag @s remove global.items.grapple.player
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @s run tag @a remove global.items.grapple.player
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @n[tag=global.items.grapple.target,type=marker,predicate=!hysteria:global.id_match] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:arrow",count:1}}
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @s run playsound minecraft:block.anvil.use ambient @a ~ ~ ~ 0.1 1.5
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @s run kill @n[tag=global.items.grapple.target,type=marker,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @s run kill @n[tag=global.items.grapple.chain,type=block_display,predicate=!hysteria:global.id_match]
execute as @e[tag=global.items.grapple.death,type=armor_stand] at @s run kill @s

# loopity loop
schedule function hysteria:items/grapple/motion_loop 1