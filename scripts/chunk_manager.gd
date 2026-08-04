extends Node

@onready var ground: TileMapLayer = $"../Ground"
@onready var ship_floor: TileMapLayer = $"../ShipFloor"
@onready var ship_wall: TileMapLayer = $"../ShipWall"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("[ChunkManager] ready")
	
	var source_count: int = ground.tile_set.get_source_count()
	print("Source Count:", source_count)
	for i in range(source_count):
		print("SourceID:", ground.tile_set.get_source_id(i))
	generate_world()

func _process(delta: float) -> void:
	pass

func generate_world() -> void:
	generate_ground()
	print("place_spaceship")
	place_ship_floor()
	place_ship_wall()

func generate_ground() -> void:
	var ship_area := Rect2i(-1, -1, 3, 3)

	for x in range(50):
		for y in range(50):
			if ship_area.has_point(Vector2i(x -25, y -25)):
				continue
			ground.set_cell(
				Vector2i(x - 25,y - 25),
				0,
				Vector2i(
				randi_range(0,1),
				randi_range(0,1)
				)
			)

func place_ship_floor() -> void:
	for x in range(-1, 2):
		for y in range(-1, 2):
			ship_floor.set_cell(
				Vector2i(x, y),
				0,
				Vector2i(x + 1, y + 1)
				
			)

func place_ship_wall() -> void:
	for x in range(-1, 2):
		ship_wall.set_cell(
			Vector2i(x, -2),
			0,
			Vector2i(0, 0)
				
			)
	for y in range(-1, 2):
		ship_wall.set_cell(
			Vector2i(-2, y),
			0,
			Vector2i(0, 0)
		)
		ship_wall.set_cell(
			Vector2i(2, y),
			0,
			Vector2i(0, 0)
		)
	for x in range(-1, 2):
		ship_wall.set_cell(
			Vector2i(x, 2,),
			0,
			Vector2i(0, 0)
			)
	
