extends Area2D
class_name Pipe

func _ready():
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D):
	if body is Bird:
		Signals.bird_crashed.emit()
