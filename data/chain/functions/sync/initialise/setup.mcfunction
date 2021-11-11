#syncs player id
scoreboard players operation @s chain.id = @p chain.id

#syncs health
scoreboard players operation @s chain.temp = @p chain.health

#syncs xp
execute store result score @s chain.xp run experience query @p levels
execute store result score @s chain.xpP run experience query @p points

#syncs inventory
data modify entity @s data.Inventory set from entity @p Inventory

