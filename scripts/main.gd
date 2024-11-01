extends Control

var playerwindow = preload("res://scenes/window.tscn")
@onready var player_cam: Camera2D = $Player_cam

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_viewport().set_embedding_subwindows(false)
	var pl = playerwindow.instantiate()
	add_child(pl)
	
	pl.visible = true
	pl.position = Vector2(1000,1000)
	pl.title = "Player Window"
	pl.borderless = false
	pl.size = Vector2(1920,1080)
	
	player_cam.reparent(pl)
	
	print(DisplayServer.get_screen_count())
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
