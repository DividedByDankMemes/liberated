#syncs up marker pos with player spawn pos, mimics player id and forceloads the chunk
forceload add ~ ~
scoreboard players operation @s chain.id = @p chain.id
execute store result entity @s Pos[0] double 1 run data get entity @p SpawnX 1
execute store result entity @s Pos[1] double 1 run data get entity @p SpawnY 1
execute store result entity @s Pos[2] double 1 run data get entity @p SpawnZ 1

