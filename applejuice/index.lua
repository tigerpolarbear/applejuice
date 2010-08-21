
name = "Apple Juice"
version = 0.1
desiredfps = 40

images = {}
splashes = {}

-- the game must define an "initialize" function to be called before the game begins
function initialize()
	images["grass"] = cc.image_new("data/grass.png")
	
	scr = cc.frame_new(0, 0, 640, 480);
	splashes[1] = cc.image_new("data/splash.png")
	splashes[2] = cc.image_new("data/splash2.png")
	splashes[3] = cc.image_new("data/arrow keys.png")
	splashes[4] = cc.image_new("data/threethings.png")
	splashes[5] = cc.image_new("data/controls.png")
	cc.blit(splashes[1],scr,scr)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[2],scr,scr)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[3],scr,scr)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[4],scr,scr)
	cc.flip()
	cc.sleep()
	cc.blit(splashes[5],scr,scr)
	cc.flip()
	cc.sleep()

	return
end

-- the game must define a "mainloop" function to be called every frame
function mainloop(delta)
	event = keyevent()
	while event ~= nil do
		-- process each key stroke/release
		event = keyevent()
	end
	return
end
