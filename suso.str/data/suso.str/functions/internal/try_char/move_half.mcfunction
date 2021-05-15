data modify storage suso.str:internal possible_chars2 append from storage suso.str:internal possible_chars[0]
data remove storage suso.str:internal possible_chars[0]

scoreboard players remove $half suso.str 1
execute if score $half suso.str matches 1.. run function suso.str:internal/try_char/move_half