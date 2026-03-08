extends Area2D

@export var speed: float = 200.0

func _process(delta):
	position.x += speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Laser"):
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	print("Cuerpo detectado")
