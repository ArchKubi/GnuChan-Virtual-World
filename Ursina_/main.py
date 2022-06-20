from ursina import *
from direct.actor.Actor import Actor
import time

app = Ursina()

entity = Entity()
#animations are stored within the file
actor = Actor("Asset/bad_room.glb")
actor.reparent_to(entity)

actor.play("sit_idl")
time.sleep(5)
actor.play("stend_idl")


#actor.loop("test_")


EditorCamera()

app.run()