#toggle once player is loaded
scoreboard players set $chain.loaded chain.temp 3
gamemode survival @s
kill @e[type=marker,tag=chain.tp]

#check whether player has been synced before
scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
function rx.playerdb:api/get
execute store result score $chain.synced chain.temp run data get storage rx.playerdb:io player.data.chain.sync 1
execute if score $chain.synced chain.temp matches 1.. as @s at @s run function chain:sync/initialise/sync_
