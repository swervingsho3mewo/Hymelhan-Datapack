# Give the player's helmet back
$item replace entity @s armor.head from entity @n[type=armor_stand,scores={global.border.helmet_id=$(helmet_id)}] armor.head

# Kill the sorage armorstand
$execute as @n[type=armor_stand,scores={global.border.helmet_id=$(helmet_id)}] run kill @s

# Resets
scoreboard players reset @s global.border.helmet_id
tag @s remove global.border.helmet_stored