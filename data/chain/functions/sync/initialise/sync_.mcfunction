#le various synchronisations
function chain:sync/profile/inventory
function chain:sync/profile/health
function chain:sync/profile/xp/xp


#marker for tping player to log off spot
summon marker ~ ~ ~ {Tags:["chain.sync","global.ignore"]}
execute as @e[type=marker,tag=chain.sync,sort=nearest,limit=1] at @s run function chain:sync/profile/pos/pos