# setup
execute unless entity @s[tag=fast_travel.launch.user] run tag @a[distance=..1] add fast_travel.launch.user
execute unless score @s fast_travel_launch matches 1.. run scoreboard players set @s fast_travel_launch 1

# increase scoreboard
execute if score @s fast_travel_launch matches 1.. run scoreboard players add @s fast_travel_launch 1

# lock in place
execute if score @s fast_travel_launch matches 45..55 run tag @a[distance=..2] add fast_travel.launch.user

execute if score @s fast_travel_launch matches 45 run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1
execute if score @s fast_travel_launch matches 45..120 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.1 1

execute if score @s fast_travel_launch matches 45..120 positioned as @n[type=marker,tag=fast_travel.launch.pos,distance=..1] run tp @s ~ ~ ~
execute if score @s fast_travel_launch matches 25..120 run particle witch ~ ~ ~ 0.25 0.5 0.25 0 10

# setblocks
execute if score @s fast_travel_launch matches 45..349 at @n[type=marker,tag=fast_travel.launch.pos] run setblock ~ ~-1 ~ purple_stained_glass
execute if score @s fast_travel_launch matches 349.. at @n[type=marker,tag=fast_travel.launch.pos] run setblock ~ ~-1 ~ purpur_pillar

# tp up
execute if score @s fast_travel_launch matches 120 run attribute @s gravity base set 0
execute if score @s fast_travel_launch matches 130 run playsound minecraft:item.elytra.flying ambient @a ~ ~ ~ 0.5 1
execute if score @s fast_travel_launch matches 120 run playsound minecraft:entity.wind_charge.wind_burst ambient @a ~ ~ ~ 0.25 0.5
execute if score @s fast_travel_launch matches 45..120 run playsound minecraft:block.beacon.ambient ambient @a ~ ~2 ~ 3 1
execute if score @s fast_travel_launch matches 120.. align xz run tp @s ~0.5 ~0.5 ~0.5
execute if score @s fast_travel_launch matches 120.. unless block ~ ~1 ~ #hymelhan:nonsolid run tp @s ~ ~1 ~
execute if score @s fast_travel_launch matches 120.. run particle witch ~ ~2 ~ 0.25 0.5 0.25 0 10

# effects
execute if score @s fast_travel_launch matches 312 run playsound minecraft:block.portal.trigger ambient @s ~ ~5 ~ 0.25 1.5
execute if score @s fast_travel_launch matches 312 run effect give @s minecraft:darkness 3



# tp to landing point
execute if score @s fast_travel_launch matches 350.. run tag @s add fast_travel.land.user
execute if score @s fast_travel_launch matches 350.. run tag @s add fast_travel.teleport.user
execute if score @s fast_travel_launch matches 350.. run tag @s remove fast_travel.launch.user
execute if score @s fast_travel_launch matches 350.. run function hymelhan:global/fast_travel/teleport with storage hymelhan:tower
execute if score @s fast_travel_launch matches 350.. run scoreboard players reset @s fast_travel_launch




# loop
execute if score @s fast_travel_launch matches 1.. run schedule function hymelhan:global/fast_travel/launch_loop 1

# stop
execute if score @s fast_travel_launch matches 1..50 unless entity @n[type=marker,tag=fast_travel.launch.pos,distance=..2] run tag @s remove fast_travel.launch.user
execute if score @s fast_travel_launch matches 1..50 unless entity @n[type=marker,tag=fast_travel.launch.pos,distance=..2] run scoreboard players reset @s fast_travel_launch