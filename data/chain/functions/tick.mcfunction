
#detect log-off preparation
scoreboard players enable @a chain.log
scoreboard players enable @a chain.uninstall
execute as @a[scores={chain.uninstall=1..}] run function chain:uninstall
execute as @a[scores={chain.log=1..}] unless score $chain.logged chain.temp matches 0 at @s run function chain:sync/profile

#detect that the player and world is completely loaded in before performing inventory manipulation + id shit
execute if score $chain.loaded chain.temp matches 0 as @a at @s run function chain:sync/initialise/load/loaded
execute if score $chain.loaded chain.temp matches 2 as @a at @s run function chain:sync/initialise/sync

#tp
tp @p @e[type=marker,tag=chain.tp,limit=1]

schedule function chain:tick 1t replace