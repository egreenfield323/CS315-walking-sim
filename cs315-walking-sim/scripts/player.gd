extends CharacterBody3D

@export var speed = 10
var mouse_sensitivity = .005

func _physics_process(delta: float) -> void:
	velocity = Vector3(0, 0, 0)
	
	if Input.is_action_pressed("W"):
		velocity = get_global_transform().basis.z * -speed
		
	if Input.is_action_pressed("S"):
		velocity = get_global_transform().basis.z * speed

	move_and_slide()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
