execute if score $offset suso.str matches 4 run scoreboard players set $offset suso.str 0
execute if score $offset suso.str matches 0 run data modify storage suso.str:internal possible_chars set value ["L","M","N","O"]
execute if score $offset suso.str matches 1 run function suso.str:internal/possibilities/ctx1/1
execute if score $offset suso.str matches 2 run data modify storage suso.str:internal possible_chars set value ["A","E","I","M","Q","U","Y","c","g","k"]
execute if score $offset suso.str matches 3 run data modify storage suso.str:internal possible_chars set value ["0","1","2","3","4","5","s","w","x","y","z"]