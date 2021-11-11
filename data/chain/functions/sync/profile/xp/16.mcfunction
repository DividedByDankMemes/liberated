
scoreboard players set $chain.xp_loaded chain.temp 1

#math
scoreboard players set $chain.xp chain.xp 6
scoreboard players operation $chain.xp chain.xp *= @s chain.xp
scoreboard players operation @s chain.xp *= @s chain.xp
scoreboard players operation @s chain.xp += $chain.xp chain.xp
scoreboard players operation @s chain.xp += @s chain.xpP


#reset and addition
experience set @p 0 levels
experience set @p 0 points
summon experience_orb ~ ~ ~ {Silent:1b}
execute store result entity @e[type=experience_orb,sort=nearest,limit=1] Value int 1 run scoreboard players get @s chain.xp 


