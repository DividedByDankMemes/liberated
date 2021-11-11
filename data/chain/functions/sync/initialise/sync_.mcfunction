
#inventory manipulation, health syncing, hunger syncing, xp, and cleaning up
function chain:sync/profile/inventory
function chain:sync/profile/health
function chain:sync/profile/xp/xp
tp @p ~ ~ ~
kill @s
forceload remove ~ ~