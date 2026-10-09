extends CollisionShape2D

@onready var line: Line2D = get_parent().get_parent()

func _ready() -> void:
	var collision = ConcavePolygonShape2D.new()
	
	var segments = PackedVector2Array()
	
	for i in range(line.points.size() - 1):
		segments.append(line.points[i])
		segments.append(line.points[i + 1])
	
	collision.segments = segments
	shape = collision
