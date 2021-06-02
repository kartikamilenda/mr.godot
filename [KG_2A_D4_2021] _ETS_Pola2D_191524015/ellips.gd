extends Ellipse
var xmax
var ymax
var randG = RandomNumberGenerator.new()
var window_size : Rect2
var center : Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	window_size = get_viewport().get_visible_rect()
	xmax = window_size.end.x
	ymax = window_size.end.y
	randG.randomize()

func random_ellipse():
	var radiusx = randG.randi_range(10,80)
	var radiusy = randG.randi_range(10,80)
	center.x = randG.randi_range(0,xmax)
	center.y = randG.randi_range(0,ymax)
	ellipse(center,radiusx,radiusy)

func _draw():
	var randomellipse = randG.randi_range(1,10)
	for n in range (randomellipse):
		random_ellipse()


func _on_Button_pressed():
	get_tree().change_scene("res://ellips.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://main.tscn")
