extends CharacterBody2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player

func _physics_process(delta):
	#Gravity For Frog
		velocity.y += gravity * delta
		move_and_slide()

func _on_player_detection_body_entered(body):
	if body.name == "Player":
		player = get_node("../../Player/Player")
		var direction =(player.position - self.position).normalized()
		if direction.x > 0:
			 
			print("right")
		else: 
			print("left")
