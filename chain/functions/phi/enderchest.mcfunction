# Copy player ender chest data to storage so it can be loaded.
scoreboard players operation $in.uid rx.playerdb.io = @s rx.uid
function rx.playerdb:api/get
data modify storage phi.modifyinv:temp enderchest set from storage rx.playerdb:io player.data.chain.enderchest