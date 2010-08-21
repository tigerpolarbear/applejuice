
name = "Apple Juice"
version = 0.1
desiredfps = 40

-- images
screenframe = cc.frame_new(0, 0, 640, 480);
images = {}
splashes = {}

-- stuff
world = {}
world.camera = 0

-- the game must define an "initialize" function to be called before the game begins
function initialize()
	images["grass"] = cc.image_new("data/grass.png")
	images["bg"] = cc.image_new("data/bg.png")
	images["hills"] = cc.image_new("data/bg2.png")
	
	splashes[1] = cc.image_new("data/splash.png")
	splashes[2] = cc.image_new("data/splash2.png")
	splashes[3] = cc.image_new("data/arrow keys.png")
	splashes[4] = cc.image_new("data/threethings.png")
	splashes[5] = cc.image_new("data/controls.png")
	cc.blit(splashes[1],screenframe,screenframe)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[2],screenframe,screenframe)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[3],screenframe,screenframe)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[4],screenframe,screenframe)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[5],screenframe,screenframe)
	cc.flip()
	cc.sleep()

	return
end

-- the game must define a "mainloop" function to be called every frame
function mainloop(delta)
	print("MIAN LOOP")
	event = keyevent()
	while event ~= nil do
		-- process each key stroke/release
		event = keyevent()
	end
	cc.blit(images["bg"],screenframe,screenframe)
	return
end
