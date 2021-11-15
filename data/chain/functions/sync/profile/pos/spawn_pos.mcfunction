# get data
scoreboard players operation $in.uid rx.playerdb.io = @p rx.uid
function rx.playerdb:api/get

#store data
data modify entity @s Pos[0] set from storage rx.playerdb:io player.data.chain.spos.x
data modify entity @s Pos[1] set from storage rx.playerdb:io player.data.chain.spos.y
data modify entity @s Pos[2] set from storage rx.playerdb:io player.data.chain.spos.z

#cleanup
execute at @s as @p run spawnpoint @s ~ ~ ~
kill @s