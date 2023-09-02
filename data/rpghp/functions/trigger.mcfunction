#

execute as @s[scores={rpghp=1}] run function rpghp:trigger_info

execute as @s[scores={rpghp=-2}] run function rpghp:trigger_rpghp
execute as @s[scores={rpghp=-3}] run function rpghp:trigger_hpmod
execute as @s[scores={rpghp=-4}] run function rpghp:trigger_hpchoose

execute as @s[scores={rpghp=-5}] run function rpghp:trigger_respheal
execute as @s[scores={rpghp=-6}] run function rpghp:trigger_logheal

#execute as @s[scores={rpghp=..-1}] run scoreboard players set @s rpghp 0
#execute as @s[scores={rpghp=7..}] run scoreboard players set @s rpghp 0
scoreboard players set @s rpghp 0
#scoreboard players set @s rpghp 0

