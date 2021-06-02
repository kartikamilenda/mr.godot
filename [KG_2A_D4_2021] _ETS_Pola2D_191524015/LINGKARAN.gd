extends shape_

class_name circle

var randG = RandomNumberGenerator.new()
var center : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	colors = [Color( 1, 1, 0, 1 ), Color( 1, 1, 1, 1 ), Color( 1, 0.39, 0.28, 1 ),
	Color( 1, 0, 0, 1 ), Color( 1, 0.75, 0.8, 1 ),Color( 0.85, 0.44, 0.84, 1 ), Color( 0, 1, 0, 1 ),
	Color( 0.56, 0.93, 0.56, 1 ), Color( 0.2, 0.8, 0.2, 1 ), Color( 1, 0.89, 0.88, 1 )]

func mid_point_circle(center : Vector2,r : int,color):
	var x = r
	var y = 0
	
	var P = 1 - r
	while (x > y):
		y = y + 1
		if (P <= 0):
			P = P + 2*y + 1
		else:
			x -= 1
			P = P + 2*y - 2*x + 1
		
		if (x < y):
			break
		
		put_pixel(center.x + x, center.y + y, Color( 0.53, 0.81, 0.98, 1 ))
		put_pixel(center.x + x, center.y - y, Color( 0.53, 0.81, 0.98, 1 ))
		put_pixel(center.x - x, center.y + y, Color( 0.53, 0.81, 0.98, 1 ))
		put_pixel(center.x - x, center.y - y, Color( 0.53, 0.81, 0.98, 1 ))
		
		if x != y:
			put_pixel(center.x + y, center.y + x, Color( 0.53, 0.81, 0.98, 1 ))
			put_pixel(center.x + y, center.y - x, Color( 0.53, 0.81, 0.98, 1 ))
			put_pixel(center.x - y, center.y + x, Color( 0.53, 0.81, 0.98, 1 ))
			put_pixel(center.x - y, center.y - x, Color( 0.53, 0.81, 0.98, 1 ))

func draw_circle_arc_midpoint(center : Vector2, r : int, start_octan : int, end_octan : int,color):
	var x = r
	var y = 0
	
	var P = 1 - r
	while (x > y):
		y += 1
		if (P <= 0):
			P = P + 2*y + 1
		else:
			x -= 1
			P = P + 2*y - 2*x + 1
		
		if (x < y):
			break
		
		for n in range(start_octan, end_octan + 1):
			draw_octan(n, center, x, y,color)

func draw_octan(octan : int, center : Vector2, x : int, y : int,color):
	match octan:
		1:
			put_pixel(center.x + y, center.y - x,  Color( 0, 0, 0.55, 1 ))
		2:
			put_pixel(center.x + x, center.y - y,  Color( 0, 0, 0.55, 1 ))
		3:
			put_pixel(center.x + x, center.y + y,  Color( 0, 0, 0.55, 1 ))
		4:
			put_pixel(center.x + y, center.y + x,  Color( 0, 0, 0.55, 1 ))
		5:
			put_pixel(center.x - y, center.y + x,  Color( 0, 0, 0.55, 1 ))
		6:
			put_pixel(center.x - x, center.y + y,  Color( 0, 0, 0.55, 1 ))
		7:
			put_pixel(center.x - x, center.y - y,  Color( 0, 0, 0.55, 1 ))
		8:
			put_pixel(center.x - y, center.y - x,  Color( 0, 0, 0.55, 1 ))

func ellipse(center : Vector2, rx : int, ry : int, kuadran := [1,2,3,4], rotasi := 0, r_center := Vector2(-1,-1)):
	var rx2 = rx * rx
	var ry2 = ry * ry
	var tworx2 =2 * rx2
	var twory2 =2 * ry2
	var p
	var x = 0
	var y = ry
	var px = 0
	var py = tworx2 * y
	
	if(r_center == Vector2(-1,-1)):
		r_center = center
	
	#region1
	p = round(ry2 - (rx2 * ry) + (0.25 * rx2))
	while(px < py):
		x = x + 1
		px += twory2
		if(p < 0):
			p += ry2 + px
		else:
			y = y - 1
			py -= tworx2
			p += ry2 + px - py
		plot_point(center, x, y, rotasi, r_center, kuadran)
	#region2
	p = round(ry2 * (x + 0.5) * (x + 0.5) + rx2 * (y - 1)*(y - 1) - rx2 * ry2)
	while(y > 0):
		y = y - 1
		py -= tworx2
		if(p > 0):
			p += rx2 - py
		else:
			x = x + 1
			px += twory2
			p += rx2 - py + px
		plot_point(center, x, y, rotasi, r_center, kuadran)

func plot_point(center : Vector2, x, y, rotasi, r_center : Vector2, kuadran : Array):
	if (kuadran.size() == 4):
		center = rotasi_point(r_center, rotasi, center)
		var point = Vector2(center.x + x, center.y + y)
		var point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, Color( 1, 0.98, 0.94, 1 ))
		
		point = Vector2(center.x - x, center.y + y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, Color( 1, 0.98, 0.94, 1 ))
		
		point = Vector2(center.x + x, center.y - y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, Color( 1, 0.98, 0.94, 1 ))
		
		point = Vector2(center.x - x, center.y - y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, Color( 1, 0.98, 0.94, 1 ))
	else:
		center = rotasi_point(r_center, rotasi, center)
		var point = Vector2(center.x + x, center.y + y)
		var point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, colors[6])
		
		point = Vector2(center.x - x, center.y + y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, colors[3])

func put_pixel(x, y, color):
	var points = PoolVector2Array([Vector2(x, y)])
	var colors = PoolColorArray([color])
	draw_primitive(points,colors,points)

func rotasi_point(center : Vector2, angle, point : Vector2):
	var rad_angle = deg2rad(angle)
	return Vector2(cos(rad_angle) * (point.x - center.x) - sin(rad_angle) * (point.y - center.y) + center.x,
	sin(rad_angle) * (point.x - center.x) + cos(rad_angle) * (point.y - center.y) + center.y)
