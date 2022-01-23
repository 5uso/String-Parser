#tellraw @a "Ending context 2"

execute if score $get_id suso.str matches 0 run function suso.str:internal/decode/interpret
execute if score $get_id suso.str matches 0 run data modify storage suso.str:io out.id set from storage suso.str:internal interpreted

data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "s"
data modify storage suso.str:internal result append value "C"
data modify storage suso.str:internal result append value "i"
data modify storage suso.str:internal result append value "A"
data modify storage suso.str:internal result append value "g"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "n"
data modify storage suso.str:internal result append value "B"
data modify storage suso.str:internal result append value "y"
data modify storage suso.str:internal result append value "b"
data modify storage suso.str:internal result append value "2"
data modify storage suso.str:internal result append value "Z"
data modify storage suso.str:internal result append value "p"
data modify storage suso.str:internal result append value "b"
data modify storage suso.str:internal result append value "G"
data modify storage suso.str:internal result append value "V"
data modify storage suso.str:internal result append value "O"
data modify storage suso.str:internal result append value "Y"
data modify storage suso.str:internal result append value "W"
data modify storage suso.str:internal result append value "1"
data modify storage suso.str:internal result append value "l"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "i"
data modify storage suso.str:internal result append value "A"
data modify storage suso.str:internal result append value "6"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "C"
scoreboard players set $context suso.str 3
scoreboard players set $offset suso.str 1

execute unless score $get_name suso.str matches 0 unless score $get_sig suso.str matches 0 unless score $get_skin suso.str matches 0 unless score $get_model suso.str matches 0 unless score $get_cape suso.str matches 0 run function suso.str:internal/end