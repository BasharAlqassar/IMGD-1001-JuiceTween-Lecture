extends Button


#A tween class handler to re-use tween buttons
var tween : Tween
var prev_text : String


func _process(delta: float) -> void:
	
	#If text was changed
	if(prev_text != text):
		pivot_offset = size / 2.0
		reset_tween()
		tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
		tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.2).from(Vector2(0.8, 0.8))
	
	prev_text = text


func _on_pressed() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.4).from(Vector2(1.0, 1.0))
	self.release_focus()


func _on_mouse_entered() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.2).from(Vector2(1.0, 1.0))


func _on_mouse_exited() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.2).from(Vector2(1.2, 1.2))


func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()
