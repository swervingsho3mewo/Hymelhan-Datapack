advancement revoke @s only hysteria:global.interaction.interacted

execute as @n[type=interaction,tag=global.enchantment_table.pos] at @s run function hysteria:enchantments/enchanting/enchant_item/add_item/check

execute as @n[type=interaction,tag=lobby.text.youtube,nbt={interaction:{}}] at @s run tellraw @a {"clickEvent":{"action":"open_url","value":"https://www.youtube.com/@Hymelhan"},"color":"red","text":" [ Youtube Link ]"}
execute as @n[type=interaction,tag=lobby.text.website,nbt={interaction:{}}] at @s run tellraw @a {"clickEvent":{"action":"open_url","value":"https://hymelhan.github.io"},"color":"gray","text":" [ Website Link ]"}
execute as @n[type=interaction,tag=lobby.text.discord,nbt={interaction:{}}] at @s run tellraw @a {"clickEvent":{"action":"open_url","value":"https://discord.gg/vsv3uSfJtP"},"color":"blue","text":" [ Discord Link ]"}

execute as @n[type=interaction,tag=dia.therk.q1,nbt={interaction:{}}] run setblock 1420 13 1315 redstone_block

execute as @e[type=interaction,distance=..10] run data remove entity @s interaction