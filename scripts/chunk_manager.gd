extends Node

@onready var ground = $"../Ground"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	print("[ChankManager] ready")
	var source_count: int = ground.tile_set.get_source_count()
	print("Source Count:", source_count)
	for i in range(source_count):
		print("SourceID:", ground.tile_set.get_source_id(i))
	ground.set_cell(Vector2i(0, 0), 0, Vector2i(0, 0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
