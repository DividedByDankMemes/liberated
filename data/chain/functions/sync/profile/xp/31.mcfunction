
scoreboard players set $chain.xp_loaded chain.temp 1

#math
scoreboard players set $chain.xp chain.xp 10
scoreboard players operation @s chain.xp *= $chain.xp chain.xp
scoreboard players operation @s chain.xpP *= $chain.xp chain.xp
scoreboard players set $chain.xp chain.xp 405
scoreboard players set $chain.xp2 chain.xp 25
scoreboard players operation $chain.xp chain.xp *= @s chain.xp
scoreboard players operation @s chain.xp *= @s chain.xp
scoreboard players operation @s chain.xp *= $chain.xp2 chain.xp
scoreboard players operation @s chain.xp -= $chain.xp chain.xp
scoreboard players set $chain.xp chain.xp 3600
scoreboard players operation @s chain.xp += $chain.xp chain.xp
scoreboard players operation @s chain.xp += @s chain.xpP
scoreboard players set $chain.xp chain.xp 1550
scoreboard players operation @s chain.xp /= $chain.xp chain.xp


#reset and addition
experience set @p 0 levels
experience set @p 0 points
summon experience_orb ~ ~ ~ {Silent:1b}
execute store result entity @e[type=experience_orb,sort=nearest,limit=1] Value int 1 run scoreboard players get @s chain.xp 