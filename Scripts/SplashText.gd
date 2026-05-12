extends Label

var Texts = [
	"Hello, Logic!",
	"Why do i even do this",
	"Its 4050-8050 meters tall\nIts 7200-14000 meters long\nIts 4030-7850 meters wide\n\nITS AN ITERATOR!",
	"You done did it this time....",
	"Go play Logic World instead!",
	"251 lines of code!",
	"I like ranch",
	"I like cats",
	":3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c\n:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c\n:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c"
]

func _ready():
	RandomText()
	StartBounce()
	print(ProjectStatistics.Category.SCRIPT)	

func StartBounce():
	var tween = create_tween().set_loops()
	tween.tween_property(self, "scale", Vector2(1.02, 1.02), 0.5)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.5)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_IN_OUT)

func RandomText():
	text = Texts[randi() % Texts.size()]
