#

execute as @s[scores={rpghp=-7}] run scoreboard players set @s rpghp.hpch 0
execute as @s[scores={rpghp=-7}] run tellraw @s ["",{"text":"HP Unset: ","color":"red","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set hp.\n(up to your earned maximum HP)","color":"gray"},{"text":"\nAccepts: whole numbers 1+","color":"dark_gray"}]}},{"score":{"name":"@s","objective":"rpghp.earnt_hp"},"color":"gray"},{"text":"","color":"gray"}]

execute as @s[scores={rpghp=1..,rpghp.hpchoose=1..}] run function rpghp:trigger_sethp

execute as @s[scores={rpghp=1,rpghp.hpchoose=0}] run function rpghp:trigger_info

execute as @s[scores={rpghp=-2}] run function rpghp:trigger_rpghp
execute as @s[scores={rpghp=-3}] run function rpghp:trigger_hpmod
execute as @s[scores={rpghp=-4}] run function rpghp:trigger_hpchoose

execute as @s[scores={rpghp=-5}] run function rpghp:trigger_respheal
execute as @s[scores={rpghp=-6}] run function rpghp:trigger_global


#execute as @s[scores={rpghp=-6}] run function rpghp:trigger_

#execute as @s[scores={rpghp=..-1}] run scoreboard players set @s rpghp 0
#execute as @s[scores={rpghp=7..}] run scoreboard players set @s rpghp 0
scoreboard players set @s rpghp 0
#scoreboard players set @s rpghp 0

