#tellraw @a "Ending context 8"

execute if score $get_cape suso.str matches 0 run function suso.str:internal/decode/interpret
execute if score $get_cape suso.str matches 0 run data modify storage suso.str:io out.cape set from storage suso.str:internal interpreted

function suso.str:internal/end