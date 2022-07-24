extends Area

export(bool) var FirstButton
export(NodePath) var VisualizeObject
export(NodePath) var NextButton

var debounce = false

func _ready():
	self.visible = false
	if VisualizeObject != null:
		VisualizeObject = get_node(VisualizeObject)
	if NextButton != null:
		NextButton = get_node(NextButton)
	if FirstButton == true:
		self.visible = true
	debounce = false

func GoundButton_Entered(body):
	if debounce == false:
		if body.name == "PlatformerPlayer":
			self.visible = false
			debounce = true
			if VisualizeObject != null:
				VisualizeObject.visible = true
			if NextButton != null:
				NextButton.visible = true
