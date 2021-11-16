#get data
scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
function rx.playerdb:api/get

#set scores
execute store result score $chain.health chain.temp run data get storage rx.playerdb:io player.data.chain.health 1
execute store result score $chain.health_cur chain.temp run data get entity @s Health 1

#math
scoreboard players operation $chain.health chain.temp -= $chain.health_cur chain.temp
scoreboard players operation $chain.health chain.temp *= $chain.neg chain.temp
scoreboard players operation @s custom_damage = $chain.health chain.temp

#apply
function custom_damage:apply