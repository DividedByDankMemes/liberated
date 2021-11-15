
function chain:tick

#initialisation
gamerule commandBlockOutput false
scoreboard objectives add chain.uninstall trigger
scoreboard objectives add chain.log trigger
scoreboard objectives add chain.temp dummy


#math numbers
scoreboard players set $chain.num chain.temp 2
scoreboard players set $chain.neg chain.temp -1


#checking if the player has loaded
scoreboard players set $chain.loaded chain.temp 0

#checking if the world has been logged into
scoreboard players set $chain.logged chain.temp 1
