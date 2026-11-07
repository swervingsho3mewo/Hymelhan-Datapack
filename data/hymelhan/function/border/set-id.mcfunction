# Add tag to prevent the function from running multiple time
tag @s add global.border.helmet_stored

# Increment the global helmet id
scoreboard players add .id global.border.helmet_id 1

# Summon a storage armorstand
summon minecraft:armor_stand 1373 41 1342 {Tags:["global.border.helmet_storage"]}

# Give the same helmet id to the armor stand and the player
execute as @e[tag=global.border.helmet_storage] unless score @s global.border.helmet_id matches 0.. store result score @s global.border.helmet_id run scoreboard players get .id global.border.helmet_id
execute store result score @s global.border.helmet_id run scoreboard players get .id global.border.helmet_id

# Store the current helmet id
execute store result storage hymelhan:border.helmet_id helmet_id int 1 run scoreboard players get @s global.border.helmet_id

# Load the function with the helmet id
function hymelhan:border/store_helmet with storage hymelhan:border.helmet_id