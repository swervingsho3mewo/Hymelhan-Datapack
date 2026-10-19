# Timer for the time spent in the zone
scoreboard players add @s global.border.time 1

# If entity doesn't have an helmet, set the overlay
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head with minecraft:command_block[enchantments={"binding_curse":1},equippable={slot:"head",camera_overlay:"hymelhan:misc/vignette"},minecraft:hide_tooltip={},minecraft:item_model="air",custom_data={vignette:1b}]

# If entity has an helmet, run function to store it
execute unless entity @s[tag=global.border.helmet_stored,nbt={Inventory:[{Slot:103b,components:{"custom_data":{vignette:1b}}}]}] run function hymelhan:border/set-id

# Action bar titles based of time spent in the zone
execute if score @s global.border.time matches 0..60 run title @s actionbar {"color":"red","text":"You should probably go back...","italic":true}
execute if score @s global.border.time matches 61..200 run title @s actionbar {"color":"red","text":"You really need to go back...","italic":true}
execute if score @s global.border.time matches 201..250 run title @s actionbar {"color":"red","text":"Ok fine.","italic":true}

# Damage based of the amount of time spent in the zone
execute if score @s global.border.time matches 61.. run damage @s 1 minecraft:outside_border
execute if score @s global.border.time matches 250.. run damage @s 100000 minecraft:outside_border