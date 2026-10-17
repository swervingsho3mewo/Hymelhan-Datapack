# go down
advancement grant @s only hymelhan:story/fast_travel/use
tag @s remove fast_travel.teleport.user
execute unless entity @s[nbt={OnGround:1b}] run attribute @s minecraft:gravity base set 50
execute unless entity @s[nbt={OnGround:1b}] run attribute @s minecraft:fall_damage_multiplier base set -1

# land
execute if entity @s[nbt={OnGround:1b}] run attribute @s minecraft:gravity base set 0.08
execute if entity @s[nbt={OnGround:1b}] run attribute @s minecraft:fall_damage_multiplier base set 1
execute if entity @s[nbt={OnGround:1b}] run particle minecraft:dust_plume ~ ~ ~ 0 0 0 0.5 100
execute if entity @s[nbt={OnGround:1b}] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 0.1 0.75
execute if entity @s[nbt={OnGround:1b}] run tag @s remove fast_travel.land.user

# loop
execute unless entity @s[nbt={OnGround:1b}] run schedule function hymelhan:global/fast_travel/land_loop 1