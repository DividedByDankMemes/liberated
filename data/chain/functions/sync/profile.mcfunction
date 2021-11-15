
#reset trigger and prevents further manipulation
scoreboard players set @s chain.log 0
scoreboard players set $chain.logged chain.temp 0

#gets data
function #rx.playerdb:api/v2/get/self

#syncs health
data modify storage rx.playerdb:io player.data.chain.health set from entity @s Health

#syncs experience
execute store result storage rx.playerdb:io player.data.chain.xp.levels int 1 run experience query @s levels
execute store result storage rx.playerdb:io player.data.chain.xp.points int 1 run experience query @s points

#syncs inventory and enderchest
data modify storage rx.playerdb:io player.data.chain.inventory set from entity @s Inventory
data modify storage rx.playerdb:io player.data.chain.enderchest set from entity @s EnderItems

#syncs pos
data modify storage rx.playerdb:io player.data.chain.pos.x set from entity @s Pos[0]
data modify storage rx.playerdb:io player.data.chain.pos.y set from entity @s Pos[1]
data modify storage rx.playerdb:io player.data.chain.pos.z set from entity @s Pos[2]

#syncs spawnpos
data modify storage rx.playerdb:io player.data.chain.spos.x set from entity @s SpawnX
data modify storage rx.playerdb:io player.data.chain.spos.y set from entity @s SpawnY
data modify storage rx.playerdb:io player.data.chain.spos.z set from entity @s SpawnZ

#saves data
function rx.playerdb:api/save_self


#clear and maintain
experience set @p 0 levels
experience set @p 0 points
clear @s
summon marker ~ ~ ~ {Tags:["chain.tp","global.ignore"]}
gamemode spectator @p

