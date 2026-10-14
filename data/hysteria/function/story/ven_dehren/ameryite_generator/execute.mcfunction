execute if score timer local.ven_dehren.generator_timer matches 1..2 run playsound minecraft:item.elytra.flying ambient @a -66.50 101.50 2967.50 0.25 1.5
execute if score timer local.ven_dehren.generator_timer matches ..99 if block -67 101 2967 air run setblock -67 101 2967 structure_void

execute if score timer local.ven_dehren.generator_timer matches 1..50 run particle minecraft:end_rod -66.50 101.50 2968.00 1 1 0.5 0 5
execute if score timer local.ven_dehren.generator_timer matches 5..15 run playsound minecraft:block.copper_bulb.turn_on ambient @a -66.50 101.50 2967.50 1 1
execute if score timer local.ven_dehren.generator_timer matches 15..30 run playsound minecraft:block.copper_bulb.turn_on ambient @a -66.50 101.50 2967.50 1 1.5
execute if score timer local.ven_dehren.generator_timer matches 30..50 run playsound minecraft:block.copper_bulb.turn_on ambient @a -66.50 101.50 2967.50 1 2

execute if score timer local.ven_dehren.generator_timer matches 50..90 run particle minecraft:end_rod -66.50 101.50 2968.00 1 1 0.5 0 15
execute if score timer local.ven_dehren.generator_timer matches 50..100 run playsound minecraft:ui.button.click ambient @a -66.50 101.50 2967.50 0.5 2

execute if score timer local.ven_dehren.generator_timer matches 100 run playsound minecraft:entity.wither.spawn ambient @a -66.50 101.50 2967.50 0.25 1.5
execute if score timer local.ven_dehren.generator_timer matches 100 run playsound minecraft:block.enchantment_table.use ambient @a -66.50 101.50 2967.50 0.25 2
execute if score timer local.ven_dehren.generator_timer matches 100 run playsound minecraft:block.amethyst_cluster.place ambient @a -66.50 101.50 2967.50 1 1
execute if score timer local.ven_dehren.generator_timer matches 100 run particle minecraft:reverse_portal -66.50 101.50 2968.00 0 0 0 5 80
execute if score timer local.ven_dehren.generator_timer matches 100 run setblock -67 101 2967 minecraft:amethyst_cluster[facing=north,waterlogged=false]

execute if score timer local.ven_dehren.generator_timer matches 100 run scoreboard players set timer local.ven_dehren.generator_timer -50

scoreboard players set status local.ven_dehren.generator 0
execute if block -67 101 2967 air run scoreboard players add timer local.ven_dehren.generator_timer 1
execute if block -67 101 2967 structure_void run scoreboard players add timer local.ven_dehren.generator_timer 1
execute if score timer local.ven_dehren.generator_timer matches ..100 run schedule function hysteria:story/ven_dehren/ameryite_generator/loop 2