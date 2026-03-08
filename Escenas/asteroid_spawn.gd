extends Marker2D
@export var asteroids: Array[PackedScene]

@export var min_y: float = 87.0
@export var max_y: float = 565.0

var min_speed: float = 100.0
var max_speed: float = 300.0

func add_asteroid():
	var random_asteroid_scene = asteroids.pick_random()
	var random_asteroid_instance = random_asteroid_scene.instantiate()
	var random_y = randf_range(87,565)
	add_child(random_asteroid_instance)
	random_asteroid_instance.global_position.y = random_y
	
func _on_timer_timeout() -> void:
	add_asteroid()
	
