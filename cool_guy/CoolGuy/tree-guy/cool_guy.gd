extends Node2D

@onready var anim_player = $AnimationPlayer

func _process(delta):
	# If Space is being held down
	if Input.is_action_pressed("Jump"):
		if not anim_player.is_playing() or anim_player.current_animation != "Jump":
			anim_player.play("Jump")

	# If X is being held down
	elif Input.is_action_pressed("Kick"):
		if not anim_player.is_playing() or anim_player.current_animation != "kick":
			anim_player.play("kick")

	# If neither is held, stop the animation (back to rest pose)
	else:
		if anim_player.is_playing():
			anim_player.stop()
