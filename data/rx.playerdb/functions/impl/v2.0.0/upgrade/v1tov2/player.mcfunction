# source: rx.playerdb:impl/v2.0.0/upgrade/v1tov2/player
execute if score @s rx.pdb.hasEntry matches 0.. run scoreboard players operation @s rx.pdb.has_entry = @s rx.pdb.hasEntry
scoreboard players operation $uid rx.temp = @s rx.uuid0
function rx.playerdb:impl/v2.0.0/uuid/select
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry byte 1 run scoreboard players get @s rx.pdb.has_entry
data remove storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].hasEntry
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Upgrade Success: Your data has been safely transfered :)", "color": "#1DF368"}]
