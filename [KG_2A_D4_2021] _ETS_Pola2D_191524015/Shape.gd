extends Node2D

class_name shape_

var colors : PoolColorArray
var window_size : Rect2
var thinline = {tebal = 2, space = 0, dot = false}
var thickline = {tebal = 4, space = 0, dot = false}
var stripsline = {tebal = 2, space = 6, dot = false}
var stripsdotline = {tebal = 2, space = 6, dot = true}

# Called when the node enters the scene tree for the first time.
func _ready():
	window_size = get_viewport().get_visible_rect()
	colors = [Color( 1, 1, 0, 1 ), Color( 1, 1, 1, 1 ), Color( 1, 0.39, 0.28, 1 ),
	Color( 1, 0, 0, 1 ), Color( 1, 0.75, 0.8, 1 ),Color( 0.85, 0.44, 0.84, 1 ), Color( 0, 1, 0, 1 ),
	Color( 0.56, 0.93, 0.56, 1 ), Color( 0.2, 0.8, 0.2, 1 ), Color( 1, 0.89, 0.88, 1 )]

func advLineGen(awal : Vector2, akhir : Vector2, color : Color, tebal := 1, space := 0, dot := false):
	var dx = akhir.x - awal.x
	var dy = akhir.y - awal.y
	var steps = abs(dx) if (abs(dx) > abs(dy)) else abs(dy)
	var xIncrement = dx / steps
	var yIncrement = dy / steps
	var x = awal.x
	var y = awal.y 
	
	put_pixel(x, y, color)
	
	if (space != 0):
		for k in steps:
			x += xIncrement
			y += yIncrement
			if ((k / space) % 2):
				if (dot && (k % space == 1)):
					put_pixel(x, y, color)
			else:
				put_pixel(x, y, color)
	else:
		for k in steps:
			x += xIncrement
			y += yIncrement
			put_pixel(x, y, color)

	if (tebal != 1):
		awal.x += 1
		akhir.x += 1
		tebal -= 1
		advLineGen(awal,akhir,color,tebal,space)

func garisPinggir(p1 : Vector2, p2 : Vector2, p3 : Vector2, color, types : Dictionary):
	
	# titik 1 ke titik 2
	advLineGen(p1,p2,color,types.tebal, types.space, types.dot)
	# titik 2 ke titik 3
	advLineGen(p2,p3,color,types.tebal, types.space, types.dot)
	# titik 3 ke titik 4
	advLineGen(p3,p1,color,types.tebal, types.space, types.dot)
	# titik 4 ke titik 1

func segitigasamasisi(awal : Vector2, sisi : int ,color,types):
	garisPinggir(awal,
	Vector2(awal.x + sisi, awal.y),
		rotasi_point(awal,-60, Vector2(awal.x + sisi, awal.y)),
		color,types)

func belahketupat(awal : Vector2, sisi : int, color, types):
	garisPinggir(awal,
	Vector2(awal.x + sisi, awal.y),
		rotasi_point(awal,60, Vector2(awal.x + sisi, awal.y)),
		color,types)
	garisPinggir(awal	,
	Vector2(awal.x + sisi, awal.y),
		rotasi_point(awal,-60, Vector2(awal.x + sisi, awal.y)),
		color,types)	

func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array(
		[Vector2(x, y)]), 
		PoolColorArray([color]), 
		PoolVector2Array()
	)

func rotasi_point(center : Vector2, angle, point : Vector2):
	var rad_angle = deg2rad(angle)
	return Vector2(cos(rad_angle) * (point.x - center.x) - sin(rad_angle) * (point.y - center.y) + center.x,
	sin(rad_angle) * (point.x - center.x) + cos(rad_angle) * (point.y - center.y) + center.y)
