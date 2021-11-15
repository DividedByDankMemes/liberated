# get data
scoreboard players operation $in.uid rx.pdb.io = @p rx.uid
function rx.playerdb:api/get

#store data + spawnpoint
execute store result entity @s Pos[0] double 1 run data get storage rx.playerdb:io player.data.chain.spos.x 1
execute store result entity @s Pos[1] double 1 run data get storage rx.playerdb:io player.data.chain.spos.y 1
execute store result entity @s Pos[2] double 1 run data get storage rx.playerdb:io player.data.chain.spos.z 1
execute at @s as @p run spawnpoint @s ~ ~ ~

#store data
data modify entity @s Pos[0] set from storage rx.playerdb:io player.data.chain.pos.x
data modify entity @s Pos[1] set from storage rx.playerdb:io player.data.chain.pos.y
data modify entity @s Pos[2] set from storage rx.playerdb:io player.data.chain.pos.z


#tp and cleanup
execute at @s run tp @p ~ ~ ~
execute at @s run tp @e[type=experience_orb,tag=chain.sync] ~ ~ ~
kill @s