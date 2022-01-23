#tellraw @a "Ending context 3"

execute if score $get_name suso.str matches 0 run function suso.str:internal/decode/interpret
execute if score $get_name suso.str matches 0 run data modify storage suso.str:io out.name set from storage suso.str:internal interpreted

execute unless score $get_sig suso.str matches 0 unless score $get_skin suso.str matches 0 unless score $get_model suso.str matches 0 unless score $get_cape suso.str matches 0 run function suso.str:internal/end

execute if score $temp suso.str matches 0 if score $offset suso.str matches 0 run function suso.str:internal/context/end/3/0
execute if score $temp suso.str matches 0 if score $offset suso.str matches 1 run function suso.str:internal/context/end/3/1
execute if score $temp suso.str matches 0 if score $offset suso.str matches 3 run function suso.str:internal/context/end/3/3
scoreboard players set $context suso.str 4

# 3=LAogICJ
# 1=IsCiAgI
# 0=iwKICAi