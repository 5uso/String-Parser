data modify storage suso.str:internal result set value ["e","w","o","g","I","C","J","0","a","W","1","l","c","3","R","h","b","X","A","i","I","D","o","g"]
data modify storage suso.str:io in.prep set value ""
data modify storage suso.str:io in.max_chars set value 0

scoreboard players operation $get_time suso.str = $get suso.str
scoreboard players operation $get_time suso.str %= #2 suso.str
scoreboard players operation $get_id suso.str = $get suso.str
scoreboard players operation $get_id suso.str %= #3 suso.str
scoreboard players operation $get_name suso.str = $get suso.str
scoreboard players operation $get_name suso.str %= #5 suso.str
scoreboard players operation $get_sig suso.str = $get suso.str
scoreboard players operation $get_sig suso.str %= #7 suso.str
scoreboard players operation $get_skin suso.str = $get suso.str
scoreboard players operation $get_skin suso.str %= #11 suso.str
scoreboard players operation $get_model suso.str = $get suso.str
scoreboard players operation $get_model suso.str %= #13 suso.str
scoreboard players operation $get_cape suso.str = $get suso.str
scoreboard players operation $get_cape suso.str %= #17 suso.str
function suso.str:internal/possibilities/get

#time 2, id 3, name 5, signaturereq 7, skin 11, model 13, cape 17
