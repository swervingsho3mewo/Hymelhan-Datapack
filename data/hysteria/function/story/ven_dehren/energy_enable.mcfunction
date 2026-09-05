playsound minecraft:entity.wither.break_block ambient @a -62 79 2954 0.25 2
playsound minecraft:entity.wither.break_block ambient @a -62 79 2954 0.1 0.25
particle wax_off -62 79.5 2954 0.25 0.25 0.25 1 20 normal
fill -85 144 2991 -29 69 2942 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]

tellraw @a [{"bold":true,"color":"light_purple","text":"[ ReizenAI ] "},{"bold":false,"color":"white","text":"Ven'Dehren energy temporarily restored. Remaining fuel: 84.06%"}]
scoreboard players set energy local.ven_dehren.energy_status 1