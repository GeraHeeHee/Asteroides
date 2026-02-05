extends Area2D

@export var speed = -300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x <= 0:
		var numero_aleatorioS = randi_range(38, 615);
		var numero_aleatoriox = randi_range(1200, 2000);
		position.x = numero_aleatoriox;
		position.y = numero_aleatorioS;
		
	
	position.x += speed*delta;
