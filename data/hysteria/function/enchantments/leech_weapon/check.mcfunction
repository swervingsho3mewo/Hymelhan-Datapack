execute store result storage hysteria:damage_dealt damage int 1.5 run attribute @s minecraft:attack_damage get
function hysteria:enchantments/leech_weapon/update with storage hysteria:damage_dealt

playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 0.2 1.5
playsound minecraft:entity.slime.death ambient @a ~ ~ ~ 0.25 0.25
playsound minecraft:block.honey_block.place ambient @a ~ ~ ~ 0.25 0.5

particle minecraft:damage_indicator ~ ~-0.25 ~ 0.25 0.25 0.25 0.5 10 normal
particle minecraft:heart ~ ~-0.25 ~ 0.25 0.5 0.25 0.25 3 normal
particle dust_pillar{block_state:"minecraft:redstone_block"} ~ ~-0.25 ~ 0.25 0.25 0.25 0 10 normal