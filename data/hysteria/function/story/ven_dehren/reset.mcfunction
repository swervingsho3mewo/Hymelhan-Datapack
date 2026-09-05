setblock -57 85 2947 tinted_glass
fill -85 144 2991 -29 69 2942 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp[lit=true]
fill -85 144 2991 -29 69 2942 minecraft:tinted_glass replace minecraft:light[level=0]
scoreboard players set ward local.ven_dehren.ward_status 1
scoreboard players set energy local.ven_dehren.energy_status 0
advancement revoke @a only hysteria:story/ven_dehren/enter_adventurezone
advancement revoke @a only hysteria:story/ven_dehren/exit_adventurezone
advancement revoke @a only hysteria:story/ven_dehren/ward_disable