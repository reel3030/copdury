extends Node

@onready var ground: TileMapLayer = $"../Ground"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	print("[ChankManager] ready")
	
	var source_count: int = ground.tile_set.get_source_count()
	print("Source Count:", source_count)
	for i in range(source_count):
		print("SourceID:", ground.tile_set.get_source_id(i))
	generate_test_map()

func _process(delta: float) -> void:
	pass

func generate_test_map() -> void:
	ground.set_cell(
		Vector2i(0,0),
		0,
		Vector2i(0,0)
	)
