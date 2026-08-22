execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target] run kill @e[tag=global.items.grapple.chain]
execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target] run kill @e[tag=global.items.grapple.pos]

execute as @e[tag=global.items.grapple.chain] unless entity @e[tag=global.items.grapple.target] run kill @s
execute as @e[tag=global.items.grapple.pos] unless entity @e[tag=global.items.grapple.target] run kill @s

execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target] run tag @s remove global.items.grapple.started
execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target] run tag @s remove global.items.grapple.death
execute as @a[tag=global.items.grapple.player] unless entity @e[tag=global.items.grapple.target] run tag @s remove global.items.grapple.player

execute as @a[tag=global.items.grapple.player] run schedule function hysteria:items/grapple/fallback 4