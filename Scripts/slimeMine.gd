extends PathFollow2D


# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()
func _ready():
	progress_ratio = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed: float = rng.randf_range(0.1, 3.0)
	progress_ratio += delta * speed
	if(progress_ratio > 1.0):
		progress_ratio = 0.0
