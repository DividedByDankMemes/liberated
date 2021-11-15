
scoreboard players set $chain.xp_loaded chain.temp 1

#math
scoreboard players set $chain.xpnum chain.temp 6
scoreboard players operation $chain.xpnum chain.temp *= $chain.xpl chain.temp
scoreboard players operation $chain.xpl chain.temp *= $chain.xpl chain.temp
scoreboard players operation $chain.xpl chain.temp += $chain.xpnum chain.temp
scoreboard players operation $chain.xpl chain.temp += $chain.xpp chain.temp


#reset and addition
experience set @s 0 levels
experience set @s 0 points
summon experience_orb ~ ~1 ~ {Tags:["chain.sync","global.ignore"]}
execute store result entity @e[type=experience_orb,sort=nearest,limit=1] Value int 1 run scoreboard players get $chain.xpl chain.temp


 