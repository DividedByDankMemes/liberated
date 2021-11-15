# source: rx.playerdb:impl/v2.0.0/tick/player
execute unless score @s rx.playerdb.cntr = $global rx.playerdb.cntr run function rx.playerdb:impl/v2.0.0/upgrade/player
execute unless score @s rx.uuid0 = @s rx.uuid0 run function rx.playerdb:impl/v2.0.0/uuid/set
execute unless score @s rx.playerdb.cntr = $global rx.playerdb.cntr run function rx.playerdb:impl/v2.0.0/uuid/check
scoreboard players operation @s rx.playerdb.cntr = $global rx.playerdb.cntr
execute unless score @s rx.playerdb.list matches 0 run function rx.playerdb:admin/list
