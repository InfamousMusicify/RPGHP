#

execute as @s[scores={rpghp=1}] run function rpghp:trigger_info
execute as @s[scores={rpghp=2}] run function rpghp:trigger_
execute as @s[scores={rpghp=3}] run function rpghp:trigger_

execute as @s[scores={rpghp=..-1}] run scoreboard players set @s rpghp 0
execute as @s[scores={rpghp=4..}] run scoreboard players set @s rpghp 0
#scoreboard players set @s rpghp 0

