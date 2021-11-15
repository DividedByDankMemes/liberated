# source: rx.playerdb:impl/v2.0.0/tick
execute as @a run function rx.playerdb:impl/v2.0.0/tick/player
execute store result score @a rx.playerdb.cntr run scoreboard players add $global rx.playerdb.cntr 1
schedule function rx.playerdb:impl/v2.0.0/tick 1 replace
