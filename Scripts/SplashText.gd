extends Label

var Texts = [
	"Hello, Logic!",
	"Why do i even do this",
	"Its 4050-8050 meters tall\nIts 7200-14000 meters long\nIts 4030-7850 meters wide\n\nITS AN ITERATOR!",
	"You done did it this time....",
	"Go play Logic World instead!",
	"2080 lines of code!",
	"I like ranch",
	"I like cats",
	":3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c\n:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c\n:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c:3c",
	"MORE COMMITS MORE COMMITS MORE COMMITS",
	"Hello there!",
	"Who are you?",
	"HOLY SPAGHETTI",
	"var texts = uwu",
	"#GottaLoveDoxing",
	"Do you even itorate, bro?",
	"NEVA GOOOOOOON",
	"Ohhh I like this guy -Potatos",
	"Give a man a fih and you feed him for a day,\ngive a man a poisoned fih and you feed him for a lifetime"
]

func _ready():
	RandomText()
	StartBounce()

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
