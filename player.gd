extends CharacterBody2D

@onready var happy_boo: Node2D = %HappyBoo

var speed = 600

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down",)
	velocity = direction * speed
	move_and_slide()
	
	if velocity.length() > 0.0:
		happy_boo.play_walk_animation()
	else:
		happy_boo.play_idle_animation()
