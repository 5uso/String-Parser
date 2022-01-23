#tellraw @a "Fix time"

data remove storage suso.str:internal possible_chars2
data modify storage suso.str:internal possible_chars set from storage suso.str:internal possible_chars_set
execute if score $get suso.str matches 1.. run function suso.str:internal/possibilities/get

scoreboard players set $state suso.str 0
