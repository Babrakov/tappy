extends Control

@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	SignalManager.on_score_update.connect(score_update)

func score_update(value: int) -> void:
	score_label.text = str(value)
