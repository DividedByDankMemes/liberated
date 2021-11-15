# source: rx.playerdb:impl/v2.0.0/upgrade/v1tov2/player
execute if score @s rx.uuid0 = @s rx.uuid0 if score @s rx.pdb.hasEntry matches 0.. run scoreboard players operation @s rx.playerdb.hnt = @s rx.pdb.hasEntry
execute if score @s rx.uuid0 = @s rx.uuid0 run scoreboard players operation $uid rx.temp = @s rx.uuid0
execute if score @s rx.uuid0 = @s rx.uuid0 run function rx.playerdb:impl/v2.0.0/uuid/select
execute if score @s rx.uuid0 = @s rx.uuid0 store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry byte 1 run scoreboard players get @s rx.playerdb.hnt
execute if score @s rx.uuid0 = @s rx.uuid0 run tellraw @a[tag=rx.admin] ["", {"nbt": "playerdb.name", "storage": "rx:info"}, {"text": " "}, {"text": "Upgrade Success: Your data has been safely transfered :)", "color": "#1DF368"}]
