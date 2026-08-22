#  Setup Scoreboards

scoreboard objectives add global.num dummy
scoreboard players set -1 global.num -1
scoreboard players set 2 global.num 2
scoreboard players set 1 global.num 1

scoreboard objectives add math_sqrt dummy

scoreboard objectives add global.xcoord dummy
scoreboard objectives add global.ycoord dummy
scoreboard objectives add global.zcoord dummy

scoreboard objectives add global.items.grapple.x dummy
scoreboard objectives add global.items.grapple.y dummy
scoreboard objectives add global.items.grapple.z dummy

scoreboard objectives add global.items.grapple.chainx dummy
scoreboard objectives add global.items.grapple.chainy dummy
scoreboard objectives add global.items.grapple.chainz dummy

scoreboard objectives add global.items.grapple.dx dummy
scoreboard objectives add global.items.grapple.dy dummy
scoreboard objectives add global.items.grapple.dz dummy

scoreboard objectives add global.items.grapple.motionX dummy
scoreboard objectives add global.items.grapple.motionX2 dummy
scoreboard objectives add global.items.grapple.motionY dummy
scoreboard objectives add global.items.grapple.motionY2 dummy
scoreboard objectives add global.items.grapple.motionZ dummy
scoreboard objectives add global.items.grapple.motionZ2 dummy

scoreboard objectives add global.items.grapple.stopTime dummy

scoreboard objectives add global.items.grapple.chain_length dummy
scoreboard objectives add global.items.grapple.dist dummy

scoreboard objectives add global.items.grapple.motionXYZ dummy

scoreboard objectives add number dummy
scoreboard players set 10 number 10

scoreboard players set 2 math_sqrt 2

scoreboard objectives add global.mob_health dummy
scoreboard objectives add global.current_mob_health dummy

scoreboard objectives add global.player.id dummy

scoreboard objectives add local.ven_dehren.energy_status dummy
scoreboard objectives add local.ven_dehren.ward_status dummy

scoreboard objectives add global.player.damage_dealt dummy

scoreboard objectives add global.player.kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add global.player.health health

scoreboard objectives add global.enchantments.bane.damage dummy
scoreboard objectives add global.enchantments.count dummy

schedule function hysteria:items/grapple/load 20

scoreboard objectives add settings trigger
scoreboard players enable @a settings