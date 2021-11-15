# source: rx.playerdb:admin/delete_player/logic
scoreboard players operation $in.uid rx.playerdb.io = @s rx.uid
function rx.playerdb:admin/remove_entry/logic
execute if score $size rx.temp matches 1 run scoreboard players reset @s rx.playerdb.hnt
