execute unless entity @e[type=marker,tag=chain.load] run schedule function chain:sync/initialise/load/load_check 1t append
execute as @e[type=marker,tag=chain.load] run scoreboard players set $chain.loaded chain.temp 2
execute as @e[type=marker,tag=chain.load] run kill @s