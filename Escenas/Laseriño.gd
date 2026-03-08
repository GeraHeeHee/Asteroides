extends Area2D

@export var speed = 700

func _process(delta: float) -> void:
	position.x -= speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Asteroides"):
		queue_free()
