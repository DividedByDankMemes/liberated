# source: rx.playerdb:impl/v2.0.0/enumerate
execute unless score #rx.playerdb.major load.status matches 2.. run scoreboard players set #rx.playerdb.major load.status 2
execute if score #rx.playerdb.major load.status matches 2 unless score #rx.playerdb.minor load.status matches 0.. run scoreboard players set #rx.playerdb.minor load.status 0
execute if score #rx.playerdb.major load.status matches 2 if score #rx.playerdb.minor load.status matches 0 unless score #rx.playerdb.patch load.status matches 0.. run scoreboard players set #rx.playerdb.patch load.status 0
