extends circle
var radius
var xmax
var ymax

# Called when the node enters the scene tree for the first time.
func _ready():
	window_size = get_viewport().get_visible_rect()
	randG.randomize()
	xmax = window_size.end.x
	ymax = window_size.end.y
	radius = Vector2(xmax,ymax)
	colors = [Color( 1, 1, 0, 1 ), Color( 1, 1, 1, 1 ), Color( 1, 0.39, 0.28, 1 ),
	Color( 1, 0, 0, 1 ), Color( 1, 0.75, 0.8, 1 ),Color( 0.85, 0.44, 0.84, 1 ), 
	Color( 0, 1, 0, 1 ),Color( 0.56, 0.93, 0.56, 1 ), Color( 0.2, 0.8, 0.2, 1 ), Color( 1, 0.89, 0.88, 1 )]

func bunga_crest(radius : Vector2):
	var circle_center = Vector2(radius.x, radius.y - 90)
	var derajat_rotasi = (360/5)
	var radius_circle = 20
	var rand_radius = randG.randi_range(1,20)
	fill_circle(Vector2(radius.x, radius.y),radius_circle+rand_radius, Color( 1, 1, 0, 1 ))
	for i in range (5):
		var angle = derajat_rotasi * i
		fill_circle(rotasi_point(radius,angle,circle_center),(radius_circle*2)+rand_radius, Color( 1, 0.39, 0.28, 1 ))

func random_circle():
	#radius.x = randG.randi_range(0,xmax)
	#radius.y = randG.randi_range(0,ymax)
	radius = Vector2(xmax/2,ymax/2)
	bunga_crest(radius)

func fill_circle(center : Vector2, r : int, color):
	for n in range (r):
		mid_point_circle(center, n, color)
		
func _draw():
	var randomcirle = randG.randi_range(1,1)
	for n in range (randomcirle):
		random_circle()





func _on_Button_pressed():
	get_tree().change_scene("res://main.tscn")




func _on_Button2_pressed():
	get_tree().change_scene("res://crest.tscn")
