
function rx.playerdb:test/utils/reset_self

scoreboard players remove $loop rx.temp 1
execute if score $loop rx.temp matches 1.. run function rx.playerdb:test/utils/create/main
