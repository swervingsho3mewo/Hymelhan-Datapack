execute if score @s global.player.kills matches 1.. run effect give @s invisibility 6 0 true
execute if score @s global.player.kills matches 1.. run effect give @s speed 6 2 true
execute if score @s global.player.kills matches 1.. run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 0.8
execute if score @s global.player.kills matches 1.. run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1.5
function hysteria:enchantments/veil_weapon/reset