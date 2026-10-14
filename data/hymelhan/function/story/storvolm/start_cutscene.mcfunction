
# Change player data accordingly
tag @a add intro_cutscene.play
gamemode spectator @a[tag=intro_cutscene.play]
scoreboard players reset @a intro_cutscene
function hymelhan:story/storvolm/cutscene_loop
execute as @a run scoreboard players add #tag_count player_count 1

# Set block to purpur for beacon
setblock 1375 141 1305 minecraft:purpur_pillar