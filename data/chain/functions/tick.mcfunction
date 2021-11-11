
#detect log-off preparation
scoreboard players enable @a chain.log
scoreboard players enable @a chain.uninstall
execute as @a[scores={chain.uninstall=1..}] run function chain:uninstall
execute as @a[scores={chain.log=1..}] unless score $chain.logged chain.temp matches 0 at @s run function chain:sync/profile

#detect that the player is completely loaded in before performing inventory manipulation + id shit
execute if score $chain.loaded chain.temp matches 0 if entity @a run function chain:sync/initialise/sync

#prevent players from doing shit after /trigger
execute as @e[type=marker,tag=chain.sync] if score @s chain.id = @p chain.id at @s run tp @p ~ ~ ~