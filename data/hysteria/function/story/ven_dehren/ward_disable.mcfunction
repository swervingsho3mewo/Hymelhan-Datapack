playsound minecraft:entity.wither.break_block ambient @a -54 85 2953 0.25 2
playsound minecraft:entity.wither.break_block ambient @a -54 85 2953 0.1 0.25
playsound minecraft:entity.elder_guardian.death ambient @a -54 85 2953 1 1.5
particle wax_off -54 85 2953 0.25 0.25 0.25 1 20 normal

gamemode survival @s
scoreboard players set ward local.ven_dehren.ward_status 0
tellraw @s [{"bold":true,"color":"light_purple","text":"[ ReizenAI ] "},{"bold":false,"color":"white","text":"Ven'Dehren lockdown mode disabled. Welcome back, officer."}]
title @s actionbar {"color":"dark_gray","italic":true,"text":"The weakness fades for good..."}

particle end_rod -49.00 85.50 2953.00 1 2 1 0 50 force
fill -50 86 2952 -49 84 2953 light[level=0]
particle end_rod -40.50 85.50 2948.00 0.5 2 1 0 50 force
fill -41 86 2947 -41 84 2948 light[level=0]
particle end_rod -54.50 135.5 2962.50 1.5 0.5 2.5 0 50 force
fill -56 135 2965 -53 135 2959 light[level=0]
fill -57 135 2959 -57 135 2964 light[level=0]
particle end_rod -61.50 127 2957.50 0.5 2.5 1.5 0 50 force
fill -62 124 2958 -62 129 2956 light[level=0]
particle end_rod -47.50 127.00 2964.00 0.5 2.5 1 0 50 force
fill -48 125 2964 -48 129 2963 light[level=0]