--generates a 'block' of buildings, x buildings along x-axis and y buildings along y-axis
--example: generate_block 8 8
function generate_block x y = (
	for i=1 to x do (
		for j=1 to y do(
			make_building i j
		)
	)
)

--generates buildings given bitmap where image is white
--example: generate_with_street()
function generate_with_street = (
	--32 by 32 buildings
	map_scale = 16
	map = selectBitMap caption:"load street file"
	for i=1 to map.height/map_scale do (
		for j=1 to map.width/map_scale do (
			--note to self: maxscript arrays start at 1 :( 
			if (getPixels map [i*map_scale,j*map_scale] 1)[1] != Color 0 0 0 do (
				make_building i j
			)
		)
	)
)

--generates a single box representing a building at location xcoord, ycoord
--example: make_building xcoord ycoord
function make_building xcoord ycoord = (
	local building = box length:2 width:2 height:(10+random 2 10)
	building.name = "building"+xcoord as string+jcoord as string
	move building [xcoord*3,ycoord*3,0]
)

