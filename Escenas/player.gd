extends CharacterBody2D
@export var speed:float
@onready var LaserScene = preload("res://Escenas/Laser.tscn")

func _physics_process(delta: float):

	if Input.is_action_just_pressed("Space"):
		create_laser()

	var x_input = Input.get_axis("left", "right")
	var y_input = Input.get_axis("up", "down")

	velocity.x = x_input * speed
	velocity.y = y_input * speed
	
	move_and_slide()

func create_laser():
	var laser = LaserScene.instantiate()
	laser.global_position = global_position
	add_sibling(laser)


func _on_detection_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("Asteroides"):
		queue_free()
