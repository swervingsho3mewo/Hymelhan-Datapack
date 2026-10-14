execute as @a[tag=intro_cutscene.play] at @s run function hysteria:story/storvolm/cutscene_tick

execute as @p[tag=intro_cutscene.play] if score @s intro_cutscene matches 100..400 at @s run tp @e[type=marker,tag=intro_cutscene.pos,limit=1] 1408 ~0.01 1370 ~-0.075 ~-0.075