
#toggle once player is loaded
scoreboard players set $chain.loaded chain.temp 1
gamemode survival @p

#start inventory manipulation - also lumped in id shit and spawn
execute store result score $chain.SpawnX chain.temp run data get entity @p SpawnX
execute store result score $chain.SpawnY chain.temp run data get entity @p SpawnY
execute store result score $chain.SpawnZ chain.temp run data get entity @p SpawnZ

execute as @e[type=marker,tag=chain.set] if score @s chain.id = @p chain.id at @s run function chain:sync/profile/spawn/set_spawn
execute as @e[type=marker,tag=chain.sync] if score @s chain.id = @p chain.id at @s run function chain:sync/initialise/sync_
execute as @a unless score @s chain.id = @s chain.id run function chain:sync/id
