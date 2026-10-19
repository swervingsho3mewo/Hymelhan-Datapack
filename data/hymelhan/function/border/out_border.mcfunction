# Reset the timer for the time spent in the biome
scoreboard players set @s global.border.time 0

# Remove the overlay if the player didn't have a helmet stored
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:command_block",components:{"minecraft:equippable":{camera_overlay:"hymelhan:misc/vignette"}}}]}] run item replace entity @s armor.head with air

# Store the current helmet id
execute store result storage hymelhan:border.helmet_id helmet_id int 1 run scoreboard players get @s global.border.helmet_id

# If the player has an helmet stored, recover it
# Load the function with the helmet id
execute if entity @a[scores={global.border.helmet_id=0..}] run function hymelhan:border/restore_helmet with storage hymelhan:border.helmet_id