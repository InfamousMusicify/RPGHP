# trigger_hpchoose


scoreboard players add @s[scores={rpghp.hpchoose=0..}] rpghp.hpchoose 1
#scoreboard players set @s[scores={rpghp.hpchoose=2..}] rpghp.hpchoose 0

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -7"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to unset hp.\n(turn off custom hp)","color":"gray"},{"text":"\n1+=Edit HP Mode\n0=not editing hp","color":"dark_gray"}]}},"",{"text":" HP Unset: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.hpchoose"},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set hp.\n(up to your earned maximum HP)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\n0=OFF","color":"dark_gray"}]}}," HP Choose: ",{"text":"","color":"green"},{"score":{"name":"@s","objective":"rpghp.hpch"},"color":"gray"},{"text":"","color":"gray"}]
