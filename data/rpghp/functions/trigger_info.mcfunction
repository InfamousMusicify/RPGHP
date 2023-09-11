# trigger_info



tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                           RPGHealth",{"text":" / ","color":"gray"},"Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to check global settings.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Global Settings "]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle RPGHealth.\n(turn off rpghp)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," RPGHealth ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.rpghp"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Health modification.\n(turn off hp changes, but keep getting exp)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," HP Mod ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.hpmod"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle Respawn Healing.\n(heal if above 20 hp)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," Respawn Heal ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.respheal"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set your HP.\n(only up to your currently earned max HP)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\n0=OFF","color":"dark_gray"}]}}," Choose HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.hpch"},"color":"gray"},{"text":")","color":"gray"}]



tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"text":"Max HP: ","color":"gray"},"",{"score":{"name":"#max_hp","objective":"rpghp.config"},"color":"gray"}]

#tellraw @s ["","HP       ",{"score":{"name":"@s","objective":"rpghp.hptrack"},"color":"gray"}]
#tellraw @s ["",{"text":"          ➠  ","color":"red"},{"score":{"name":"@s","objective":"rpghp.xptrack"},"color":"red","bold":"true"},{"text":"/","color":"red","bold":"true"},{"score":{"name":"@s","objective":"rpghp.xpmult"},"color":"red","bold":"true"}]

tellraw @s ["",{"text":"All EXP: ","color":"blue"},"",{"score":{"name":"@s","objective":"rpghp.xpcount"},"color":"blue"}]
scoreboard players operation #tempguy rpghp.hptrack = @s rpghp.hptrack
execute if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add #tempguy rpghp.hptrack 1
tellraw @s ["",{"text":"HP   ","color":"red"},{"score":{"name":"@s","objective":"rpghp.hptrack"},"color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Your current HP","color":"gray"},{"text":"","color":"dark_gray"}]}},"",{"text":"   ➠  ","color":"red"},{"score":{"name":"@s","objective":"rpghp.xptrack"},"color":"red","bold":"true","hoverEvent":{"action":"show_text","contents":["",{"text":"Your current EXP\n(per level)","color":"gray"},{"text":"","color":"dark_gray"}]}},{"text":"/","color":"red","bold":"true"},{"score":{"name":"@s","objective":"rpghp.xpmult"},"color":"red","bold":"true","hoverEvent":{"action":"show_text","contents":["",{"text":"Required EXP for next level","color":"gray"},{"text":"","color":"dark_gray"}]}},{"text":"   ➠   ","color":"red"},{"score":{"name":"#tempguy","objective":"rpghp.hptrack"},"color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Next Level","color":"gray"},{"text":"","color":"dark_gray"}]}}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

#execute as @s[scores={rpghp=-5}] run function rpghp:trigger_respheal
#execute as @s[scores={rpghp=-6}] run function rpghp:trigger_logheal
