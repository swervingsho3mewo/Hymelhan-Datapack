# Store the helmet
$item replace entity @n[type=armor_stand,scores={global.border.helmet_id=$(helmet_id)}] armor.head from entity @s armor.head

# Set the overlay
item replace entity @s armor.head with minecraft:command_block[enchantments={"binding_curse":1},equippable={slot:"head",camera_overlay:"hymelhan:misc/vignette"},minecraft:hide_tooltip={},minecraft:item_model="air",custom_data={vignette:1b}]