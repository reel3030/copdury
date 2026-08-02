extends CharacterBody2D

@export var walk_speed: float = 50
@export var run_speed: float = 100
var is_moving: bool = false
var is_running
var current_speed: float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(_delta):
	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	if Input.is_action_pressed("ui_shift"):
		current_speed = run_speed
	else:
		current_speed = walk_speed
		
	velocity = direction * current_speed
	is_moving = direction != Vector2.ZERO
	is_running = is_moving and current_speed == run_speed
	move_and_slide()
	
	# print(position)
