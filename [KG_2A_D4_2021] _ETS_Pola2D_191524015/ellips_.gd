extends Node2D
class_name Ellipse


var colors : PoolColorArray

# Called when the node enters the scene tree for the first time.
func _ready():
	colors = [Color( 1, 1, 0, 1 ), Color( 1, 1, 1, 1 ), Color( 1, 0.39, 0.28, 1 ),
	Color( 1, 0, 0, 1 ), Color( 1, 0.75, 0.8, 1 ),Color( 0.85, 0.44, 0.84, 1 ), Color( 0, 1, 0, 1 ),
	Color( 0.56, 0.93, 0.56, 1 ), Color( 0.2, 0.8, 0.2, 1 ), Color( 1, 0.89, 0.88, 1 )]

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
		put_pixel(point_rotate.x, point_rotate.y, colors[2])
		
		point = Vector2(center.x - x, center.y + y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, colors[3])
		
		point = Vector2(center.x + x, center.y - y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, colors[6])
		
		point = Vector2(center.x - x, center.y - y)
		point_rotate = rotasi_point(center, rotasi, point)
		put_pixel(point_rotate.x, point_rotate.y, colors[7])
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
