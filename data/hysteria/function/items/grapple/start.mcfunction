tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{grapple:true}}}}] add global.items.grapple.player
execute as @a[tag=global.items.grapple.player] at @s run schedule function hysteria:items/grapple/math_loop 1
execute as @a[tag=global.items.grapple.player] at @s run schedule function hysteria:items/grapple/motion_loop 1
execute as @a[tag=global.items.grapple.player] at @s run function hysteria:items/grapple/spawn
execute as @a[tag=global.items.grapple.player] at @s run function hysteria:items/grapple/fallback
