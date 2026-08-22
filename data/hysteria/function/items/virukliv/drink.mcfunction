advancement revoke @s only hysteria:items/virukliv/drink

effect give @s instant_health 1 2
effect give @s saturation 1 5

particle minecraft:flame ~ ~1 ~ 0.25 0.5 0.25 0 50
particle minecraft:flame ~ ~1 ~ 0.25 0.5 0.25 1 5
particle minecraft:dripping_honey ~ ~1 ~ 0.25 0.5 0.25 0 50

playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 0.25 0.8
playsound minecraft:block.honey_block.place ambient @a ~ ~ ~ 0.5 1
playsound minecraft:entity.witch.drink ambient @a ~ ~ ~ 1 0.5

give @s command_block[item_name='{"bold":true,"color":"gold","italic":false,"text":"Viruk\'Liv","underlined":true}',item_model="minecraft:virukliv",food={nutrition:1,saturation:1,can_always_eat:true},use_cooldown={seconds:12,cooldown_group:"virukliv"},consumable={consume_seconds:4,animation:"drink",sound:"item.honey_bottle.drink",has_consume_particles:true},custom_data={virukliv:1b},max_stack_size=1,lore=['"Hundreds of Aârs ago, the realm\'s "','"first mages and warlocks pledged"','"to not meddle over life and death,"','"in exchange for Heihdôn\'s magic."','"Now, even alchemy walks beyond"','"those bounds."','" "','{"color":"gold","italic":false,"text":"Boundless Vigor:"}','{"color":"dark_gray","italic":true,"text":"This item can be drank an"}','{"color":"dark_gray","italic":true,"text":"unlimited number of times,"}','{"color":"dark_gray","italic":true,"text":"restoring health and hunger."}','" "','{"color":"gold","italic":false,"text":"Fabled"}']] 1
