diameter = 8

function generate_buildings = (
	for i=1 to diameter do (
		for j=1 to diameter do(
			local building = box length:2 width:2 height:(10+random 2 10)
			building.name = "building"+i as string+j as string
			move building [i*3,j*3,0]
		)
	)
)

generate_buildings()