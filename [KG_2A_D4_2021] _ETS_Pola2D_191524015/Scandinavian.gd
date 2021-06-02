extends circle
var xmax
var ymax
var radius
var angle = 100
var alter = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	window_size = get_viewport().get_visible_rect()
	xmax = window_size.end.x
	ymax = window_size.end.y
	radius = Vector2(xmax-900,ymax-500)
	colors = [Color( 1, 1, 0, 1 ), Color( 1, 1, 1, 1 ), Color( 1, 0.39, 0.28, 1 ),
	Color( 1, 0, 0, 1 ), Color( 1, 0.75, 0.8, 1 ),Color( 0.85, 0.44, 0.84, 1 ), 
	Color( 0, 1, 0, 1 ),Color( 0.56, 0.93, 0.56, 1 ), Color( 0.2, 0.8, 0.2, 1 ), Color( 1, 0.89, 0.88, 1 )]

func triple_circle():
	radius = Vector2(xmax-900,ymax-500)
	fill_circle(Vector2(radius.x, radius.y-50),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x-50, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+50, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+250, radius.y-50),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+200, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+300, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+500, radius.y-50),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+450, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+550, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+750, radius.y-50),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+700, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+800, radius.y-40),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x-140, radius.y+475),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x-190, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x-90, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+120, radius.y+475),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+70, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+170, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+380, radius.y+475),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+330, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+430, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+640, radius.y+475),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+590, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+690, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	
	fill_circle(Vector2(radius.x+900, radius.y+475),25,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+850, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	fill_circle(Vector2(radius.x+950, radius.y+465),15,1,8, Color( 1, 1, 1, 1 ))
	
func half_circle():
	radius = Vector2(xmax-900,ymax-500)
	fill_circle(Vector2(radius.x, radius.y),100,3,6, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+250, radius.y),100,3,6, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+500, radius.y),100,3,6, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+750, radius.y),100,3,6, Color( 1, 1, 0, 1 ))
	#1
	fill_circle(Vector2(radius.x-140, radius.y+420),100,1,2, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x-140, radius.y+420),100,7,8, Color( 1, 1, 0, 1 ))
	#2
	fill_circle(Vector2(radius.x+120, radius.y+420),100,1,2, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+120, radius.y+420),100,7,8, Color( 1, 1, 0, 1 ))
	#3
	fill_circle(Vector2(radius.x+380, radius.y+420),100,1,2, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+380, radius.y+420),100,7,8, Color( 1, 1, 0, 1 ))
	#4
	fill_circle(Vector2(radius.x+640, radius.y+420),100,1,2, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+640, radius.y+420),100,7,8, Color( 1, 1, 0, 1 ))
	#5
	fill_circle(Vector2(radius.x+900, radius.y+420),100,1,2, Color( 1, 1, 0, 1 ))
	fill_circle(Vector2(radius.x+900, radius.y+420),100,7,8, Color( 1, 1, 0, 1 ))



func fill_circle(center : Vector2, r : int, start_octan : int, end_octan : int,color):
	for n in range (r):
		draw_circle_arc_midpoint(center, n,start_octan,end_octan,color)


func kelopak_ellips_atas(center : Vector2, panjang_k, lebar_k):
	var ellipse_center = Vector2(center.x,center.y + panjang_k)
	#angle = 100
	ellipse(ellipse_center, lebar_k, panjang_k, [1,2,3,4],angle, center)
	ellipse(ellipse_center, lebar_k, panjang_k, [1,2,3,4],angle+150, center)

func kelopak_ellips_bawah(center : Vector2, panjang_k, lebar_k):
	var ellipse_center = Vector2(center.x,center.y + panjang_k)
	var angle = 50
	ellipse(ellipse_center, lebar_k, panjang_k, [1,2,3,4],angle, center)
	ellipse(ellipse_center, lebar_k, panjang_k, [1,2,3,4],angle+250, center)

func draw_kelopak_besar():
	var panjang_k = ymax / 12
	var lebar_k = panjang_k / 2
	kelopak_ellips_atas(Vector2(panjang_k * 2.55, panjang_k * 5), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 7.55, panjang_k * 5), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 12.55, panjang_k * 5), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 17.55, panjang_k * 5), panjang_k, lebar_k)
	
	kelopak_ellips_bawah(Vector2(panjang_k * 4.85, panjang_k * 7), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 10.10, panjang_k * 7), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 15.25, panjang_k * 7), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 20.45, panjang_k * 7), panjang_k, lebar_k)

func draw_kelopak_kecil():
	var panjang_k = ymax / 16
	var lebar_k = panjang_k / 2
	kelopak_ellips_atas(Vector2(panjang_k * 3.45, panjang_k * 9), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 9.90, panjang_k * 9), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 16.60, panjang_k * 9), panjang_k, lebar_k)
	kelopak_ellips_atas(Vector2(panjang_k * 23.40, panjang_k * 9), panjang_k, lebar_k)
	
	kelopak_ellips_bawah(Vector2(panjang_k * 6.55, panjang_k * 6.8), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 13.50, panjang_k * 6.8), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 20.25, panjang_k * 6.8), panjang_k, lebar_k)
	kelopak_ellips_bawah(Vector2(panjang_k * 27.35, panjang_k * 6.8), panjang_k, lebar_k)



func draw_tangkai():
	advLineGen(Vector2(122,198), Vector2(122,400), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(372,198), Vector2(372,400), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(622,198), Vector2(622,400), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(872,198), Vector2(872,400), Color( 1, 0.98, 0.94, 1 ),4)
	
	advLineGen(Vector2(244,220), Vector2(244,420), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(504,220), Vector2(504,420), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(764,220), Vector2(764,420), Color( 1, 0.98, 0.94, 1 ),4)
	advLineGen(Vector2(1024,220), Vector2(1024,420), Color( 1, 0.98, 0.94, 1 ),4)

func _process(delta):
	if (angle == 0):
		alter = +10
	elif (angle >=  100):
		alter = -10
	update()


func _draw():
		half_circle()
		triple_circle()
		draw_kelopak_kecil()
		draw_kelopak_besar()
		draw_tangkai()
		
	

func _on_Button_pressed():
	get_tree().change_scene("res://main.tscn")
