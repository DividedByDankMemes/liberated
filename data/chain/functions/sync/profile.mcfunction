
#reset trigger and prevents further manipulation
scoreboard players set @s chain.log 0
scoreboard players set $chain.logged chain.temp 0
gamemode spectator @p

#synchronise marker with unique player and transfer inventory/health/experience data
summon marker ~ ~ ~ {Tags:["chain.sync","global.ignore"]}
execute as @e[type=marker,sort=nearest,tag=chain.sync,limit=1] run function chain:sync/initialise/setup

#forceload so player can tp back regardless, clear xp and clear inventory to ensure no dupe
experience set @p 0 levels
experience set @p 0 points
forceload add ~ ~
clear @s