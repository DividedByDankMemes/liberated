scoreboard players set $chain.loaded chain.temp 1
summon marker ~ ~ ~ {Tags:["chain.load","global.ignore"]}
schedule function chain:sync/initialise/load/load_check 2t append
