
scoreboard players set $chain.xp_loaded chain.temp 1

#math
scoreboard players set $chain.xpnum chain.temp 1625
scoreboard players set $chain.xpnum2 chain.temp 45
scoreboard players operation $chain.xpnum chain.temp *= $chain.xpl chain.temp
scoreboard players operation $chain.xpl chain.temp *= $chain.xpl chain.temp
scoreboard players operation $chain.xpl chain.temp *= $chain.xpnum2 chain.temp
scoreboard players operation $chain.xpl chain.temp -= $chain.xpnum chain.temp
scoreboard players set $chain.xpnum chain.temp 22200
scoreboard players operation $chain.xpl chain.temp += $chain.xpnum chain.temp
scoreboard players set $chain.xpnum chain.temp 10
scoreboard players operation $chain.xpl chain.temp /= $chain.xpnum chain.temp
scoreboard players operation $chain.xpl chain.temp += $chain.xpp chain.temp



#reset and addition
experience set @p 0 levels
experience set @p 0 points
summon experience_orb ~ ~1 ~ {Tags:["chain.sync","global.ignore"]}
execute store result entity @e[type=experience_orb,sort=nearest,limit=1] Value int 1 run scoreboard players get $chain.xpl chain.temp 
