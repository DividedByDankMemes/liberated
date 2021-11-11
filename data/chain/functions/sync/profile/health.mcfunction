scoreboard players operation @s chain.temp -= @p chain.health
scoreboard players operation @s chain.temp *= $chain.neg chain.temp
scoreboard players operation @p custom_damage = @s chain.temp
execute as @p run function custom_damage:apply