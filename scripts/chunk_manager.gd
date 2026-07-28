extends Node

@onready var ground = $"../Ground"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	print("[ChankManager] ready")
	var sources := int=ground.tile_set.get_source_count()
	print("Source Count:", sources)
	for i in range(sources):
		print("SourceID:", ground.tile_set.get_source_id(i))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
