extends Area

export(NodePath) var VisualizeObject

var debounce = false

func _ready():
	if VisualizeObject != null:
		VisualizeObject = get_node(VisualizeObject)
	self.visible = false
	debounce = false

func GoundButton_Entered(body):
	if debounce == false:
		if body.name == "PlatformerPlayer":
			debounce = true
			self.visible = false
			if VisualizeObject != null:
				VisualizeObject.visible = true
