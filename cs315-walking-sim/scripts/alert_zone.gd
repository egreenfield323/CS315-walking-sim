extends Area3D

var playerInside

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("E"):
		if playerInside == true:
			$CollisionShape3D/AudioStreamPlayer3D.play()
			print("played sound")
	pass


func _on_body_entered(body: Node3D) -> void:
	$CollisionShape3D/AudioStreamPlayer3D/Label3D.visible = true
	playerInside = true
	pass


func _on_body_exited(body: Node3D) -> void:
	$CollisionShape3D/AudioStreamPlayer3D/Label3D.visible = false
	playerInside = false
	pass
