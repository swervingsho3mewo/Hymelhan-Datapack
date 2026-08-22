tag @s add global.enchantments.frost
effect give @s slowness 10 3 true
playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ .25 1
particle block{block_state:"minecraft:packed_ice"} ~ ~1 ~ .5 .5 .5 1 50 normal
summon block_display ~ ~ ~ {Tags:["global.enchantments.frost_ice"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1.5f,1f]},block_state:{Name:"minecraft:ice"}}
execute store result score @s global.current_mob_health run scoreboard players get @s global.mob_health
function hysteria:enchantments/frost_weapon/stop
schedule function hysteria:enchantments/frost_weapon/backup 3