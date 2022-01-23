#tellraw @a "Ending context 1"

execute if score $get_time suso.str matches 0 run function suso.str:internal/decode/interpret
execute if score $get_time suso.str matches 0 run data modify storage suso.str:io out.time set from storage suso.str:internal interpreted

data modify storage suso.str:internal result append value "w"
data modify storage suso.str:internal result append value "K"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "C"
data modify storage suso.str:internal result append value "A"
data modify storage suso.str:internal result append value "i"
data modify storage suso.str:internal result append value "c"
data modify storage suso.str:internal result append value "H"
data modify storage suso.str:internal result append value "J"
data modify storage suso.str:internal result append value "v"
data modify storage suso.str:internal result append value "Z"
data modify storage suso.str:internal result append value "m"
data modify storage suso.str:internal result append value "l"
data modify storage suso.str:internal result append value "s"
data modify storage suso.str:internal result append value "Z"
data modify storage suso.str:internal result append value "U"
data modify storage suso.str:internal result append value "l"
data modify storage suso.str:internal result append value "k"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "i"
data modify storage suso.str:internal result append value "A"
data modify storage suso.str:internal result append value "6"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "C"
scoreboard players set $context suso.str 2
scoreboard players set $offset suso.str -1

execute unless score $get_id suso.str matches 0 unless score $get_name suso.str matches 0 unless score $get_sig suso.str matches 0 unless score $get_skin suso.str matches 0 unless score $get_model suso.str matches 0 unless score $get_cape suso.str matches 0 run function suso.str:internal/end