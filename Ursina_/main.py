from ursina import *
from direct.actor.Actor import Actor

app = Ursina()

entity = Entity()
#animations are stored within the file
actor = Actor("Asset/bad_room.glb")
actor.reparent_to(entity)

actor.play("test_")
actor.loop("test_")


EditorCamera()

app.run()