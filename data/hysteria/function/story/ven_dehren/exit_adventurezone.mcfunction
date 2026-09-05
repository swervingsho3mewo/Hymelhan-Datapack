advancement revoke @s only hysteria:story/ven_dehren/enter_adventurezone
execute if entity @s[gamemode=adventure] run title @s actionbar {"color":"dark_gray","italic":true,"text":"The weakness fades..."}
execute if entity @s[gamemode=adventure] run gamemode survival @s
execute if entity @s[gamemode=adventure] at @s run playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 0.5 1.8