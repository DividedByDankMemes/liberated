
#initialisation
gamerule commandBlockOutput false
scoreboard objectives add chain.uninstall trigger
scoreboard objectives add chain.log trigger
scoreboard objectives add chain.id dummy
scoreboard objectives add chain.temp dummy
scoreboard objectives add chain.health health
scoreboard objectives add chain.xp dummy
scoreboard objectives add chain.xpP dummy


#math numbers
scoreboard players set $chain.num chain.temp 2
scoreboard players set $chain.neg chain.temp -1


#checking if the player has loaded
scoreboard players set $chain.loaded chain.temp 0

#checking if the world has been logged into
scoreboard players set $chain.logged chain.temp 1

#setting up the player with an id if they don't have one (also managed by tick)
execute unless score $chain.uid chain.id <= $chain.num chain.temp run scoreboard players set $chain.uid chain.id 1
