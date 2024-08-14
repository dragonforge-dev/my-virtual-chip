extends Window
var is_dragging = false
var mouse_offset


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	#if gui_is_dragging():
	#if is_dragging:
		#
		#print(position, get_mouse_position())
		#position += Vector2i(get_mouse_position())
		##position = position.snapped(Vector2i(get_mouse_position()))


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)
		get_tree().quit()
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT:
		if event.is_pressed():
			if get_visible_rect().has_point(event.position):
				print("clicked on chip")
				print("Window Position: ", position)
				print("Window Position: ", position)
				print("Window Size: ", size)
				print("Mouse Position: ", event.position)
				print("Mouse Local Position: ", get_mouse_position())
				is_dragging = true
				mouse_offset = event.position
				print("Mouse Offset: ", mouse_offset)
		else:
			print("up")
			is_dragging = false
	if event is InputEventMouseMotion and is_dragging:
		#print(position, event.position)
		position += Vector2i(event.position - mouse_offset)
