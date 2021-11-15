
#prevent repeat
scoreboard players set $chain.xp_loaded chain.temp 0

#get data
scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
function rx.playerdb:api/get

#set scores
execute store result score $chain.xpl chain.temp run data get storage rx.playerdb:io player.data.chain.xp.levels 1
execute store result score $chain.xpp chain.temp run data get storage rx.playerdb:io player.data.chain.xp.points 1

#different equations
execute if score $chain.xpl chain.temp matches 0..16 unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/16
execute if score $chain.xpl chain.temp matches 17..31 unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/31
execute if score $chain.xpl chain.temp matches 32.. unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/32

