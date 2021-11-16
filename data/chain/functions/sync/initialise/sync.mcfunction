#toggle once player is loaded
scoreboard players set $chain.loaded chain.temp 3
gamemode survival @s
kill @e[type=marker,tag=chain.tp]

#check whether player has been synced before
scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
function rx.playerdb:api/get
execute store result score $chain.synced chain.temp run data get storage rx.playerdb:io player.data.chain.sync 1

#if synced before then run as normal, if not then reset back to world spawn
execute if score $chain.synced chain.temp matches 1.. as @s at @s run function chain:sync/initialise/sync_
execute if score $chain.synced chain.temp matches 0 run schedule function chain:sync/initialise/spawn 1t append

