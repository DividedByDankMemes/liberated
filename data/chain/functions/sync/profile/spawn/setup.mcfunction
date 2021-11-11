#stores spawn pos back in for next check
execute store result score $chain.SpawnX chain.temp run data get entity @p SpawnX
execute store result score $chain.SpawnY chain.temp run data get entity @p SpawnY
execute store result score $chain.SpawnZ chain.temp run data get entity @p SpawnZ

#removes other spawn markers and sets up a new one
execute as @e[type=marker,tag=chain.set] if score @s chain.id = @p chain.id at @s run function chain:sync/profile/spawn/spawn_clear
summon marker ~ ~ ~ {Tags:["chain.set","global.ignore"]}
execute as @e[type=marker,tag=chain.set,sort=nearest,limit=1] at @s run function chain:sync/profile/spawn/sync_spawn