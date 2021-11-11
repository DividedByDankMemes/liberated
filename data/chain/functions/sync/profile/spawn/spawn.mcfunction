
#reset advancement and other shit
advancement revoke @s only chain:set_spawn
scoreboard players set $chain.spawnpoint chain.temp 0


#store current spawn coords to compare against previous one
execute store result score $chain.SpawnX2 chain.temp run data get entity @p SpawnX
execute store result score $chain.SpawnY2 chain.temp run data get entity @p SpawnX
execute store result score $chain.SpawnZ2 chain.temp run data get entity @p SpawnX


#if its different then spawn point has been set and a marker needs to be made
execute unless score $chain.SpawnX chain.temp = $chain.SpawnX2 chain.temp unless score $chain.SpawnY chain.temp = $chain.SpawnY2 chain.temp unless score $chain.SpawnZ chain.temp = $chain.SpawnZ2 chain.temp unless score $chain.logged chain.temp matches 0 at @s run function chain:sync/profile/spawn/setup
execute as @e[type=marker,tag=chain.set] if score @s chain.id = @p chain.id run scoreboard players set $chain.spawnpoint chain.temp 1
execute unless score $chain.spawnpoint chain.temp matches 1 at @s run function chain:sync/profile/spawn/setup