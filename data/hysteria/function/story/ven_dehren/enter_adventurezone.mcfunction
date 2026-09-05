advancement revoke @s only hysteria:story/ven_dehren/exit_adventurezone
execute if entity @s[gamemode=survival] unless score ward local.ven_dehren.ward_status matches 0 run title @s actionbar {"color":"dark_gray","italic":true,"text":"A sudden weakness washes over you..."}
execute if entity @s[gamemode=survival] unless score ward local.ven_dehren.ward_status matches 0 run gamemode adventure @s
execute if entity @s[gamemode=survival] unless score ward local.ven_dehren.ward_status matches 0 at @s run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 0.5 0.75