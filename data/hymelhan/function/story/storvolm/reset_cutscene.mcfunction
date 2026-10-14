
# Reset player data
scoreboard players set @a intro_cutscene -1
# tp @a[tag=intro_cutscene.play] 1421 0 1283
# gamemode creative @a[tag=intro_cutscene.play]
tag @a[tag=intro_cutscene.play] remove intro_cutscene.play

# Set block to purpur for beacon
setblock 1375 141 1305 minecraft:purpur_pillar[axis=y]

# Reset player count
scoreboard players set #tag_count player_count 0
setblock 555 232 -6572 minecraft:redstone_block

# Kill balls
kill @e[type=marker,tag=reizen_ball]
scoreboard players set #spawner ball_timer 0
tag @a remove needs_ball