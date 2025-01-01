extends CharacterBody2D

var speed = 150
@onready var player: CharacterBody2D = $"../Player"

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * speed
	move_and_slide()
