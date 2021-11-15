# source: rx.playerdb:admin/migrate_account/logic
execute store result score $uid rx.temp run data get storage rx.playerdb:temp admin.migrate.UUID[0]
function rx.playerdb:impl/v2.0.0/uuid/select
execute if score $found rx.temp matches 0 run tellraw @a[tag=rx.admin] ["", {"nbt": "playerdb.name", "storage": "rx:info"}, {"text": " "}, {"text": "Migration Error: Input UUID account not found", "color": "#CE4257"}]
execute if score $found rx.temp matches 1 run function rx.playerdb:admin/migrate_account/logic/found_acc
