
name = "Apple Juice"
version = 0.1
desiredfps = 40

-- images
screenframe = cc.frame_new(0, 0, 640, 480);
images = {}
splashes = {}

-- stuff
world = {}
world.camera = -5000
world.frame = 1
world.things = {}
player = {}

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

	world.player = player
	world.player.tileset = cc.image_new("data/player.png")
	world.player.rframes = {}
	world.player.lframes = {}

	world.player.rframes["stand1"] = cc.frame_new(0, 0, 48, 128)
	world.player.rframes["stand2"] = cc.frame_new(48, 0, 48, 128)
	world.player.rframes["stand3"] = cc.frame_new(96, 0, 48, 128)
	world.player.rframes["walk1"] = cc.frame_new(144, 0, 48, 128)
	world.player.rframes["walk2"] = cc.frame_new(192, 0, 48, 128)
	world.player.rframes["walk3"] = cc.frame_new(240, 0, 48, 128)
	world.player.rframes["walk4"] = cc.frame_new(288, 0, 48, 128)
	world.player.rframes["5"] = cc.frame_new(336, 0, 48, 128)
	world.player.rframes["6"] = cc.frame_new(384, 0, 48, 128)
	world.player.rframes["7"] = cc.frame_new(432, 0, 48, 128)
	world.player.rframes["8"] = cc.frame_new(480, 0, 48, 128)
	world.player.rframes["9"] = cc.frame_new(528, 0, 48, 128)
	world.player.rframes["10"] = cc.frame_new(576, 0, 48, 128)
	world.player.rframes["11"] = cc.frame_new(624, 0, 48, 128)
	world.player.rframes["12"] = cc.frame_new(672, 0, 48, 128)
	world.player.rframes["13"] = cc.frame_new(720, 0, 48, 128)
	world.player.rframes["14"] = cc.frame_new(768, 0, 48, 128)
	world.player.rframes["15"] = cc.frame_new(816, 0, 48, 128)
	world.player.rframes["16"] = cc.frame_new(864, 0, 48, 128)
	world.player.rframes["17"] = cc.frame_new(912, 0, 48, 128)

	world.player.lframes["stand1"] = cc.frame_new(0, 128, 48, 128)
	world.player.lframes["stand2"] = cc.frame_new(48, 128, 48, 128)
	world.player.lframes["stand3"] = cc.frame_new(96, 128, 48, 128)
	world.player.lframes["walk1"] = cc.frame_new(144, 128, 48, 128)
	world.player.lframes["walk2"] = cc.frame_new(192, 128, 48, 128)
	world.player.lframes["walk3"] = cc.frame_new(240, 128, 48, 128)
	world.player.lframes["walk4"] = cc.frame_new(288, 128, 48, 128)
	world.player.lframes["5"] = cc.frame_new(336, 128, 48, 128)
	world.player.lframes["6"] = cc.frame_new(384, 128, 48, 128)
	world.player.lframes["7"] = cc.frame_new(432, 128, 48, 128)
	world.player.lframes["8"] = cc.frame_new(480, 128, 48, 128)
	world.player.lframes["9"] = cc.frame_new(528, 128, 48, 128)
	world.player.lframes["10"] = cc.frame_new(576, 128, 48, 128)
	world.player.lframes["11"] = cc.frame_new(624, 128, 48, 128)
	world.player.lframes["12"] = cc.frame_new(672, 128, 48, 128)
	world.player.lframes["13"] = cc.frame_new(720, 128, 48, 128)
	world.player.lframes["14"] = cc.frame_new(768, 128, 48, 128)
	world.player.lframes["15"] = cc.frame_new(816, 128, 48, 128)
	world.player.lframes["16"] = cc.frame_new(864, 128, 48, 128)
	world.player.lframes["17"] = cc.frame_new(912, 128, 48, 128)

	world.player.state = "chill"
	world.player.movestate = " "
	world.player.rect = cc.frame_new(128,205,48,128)
	world.player.x = 12800
	world.player.vx = 0
	world.player.facing = 1
	return
end

function player:update(delta)
	if player.movestate == "+" then
		player.vx =  player.vx + 1000;
	elseif player.movestate == "-" then
		player.vx = player.vx - 1000
	elseif player.vx > 0 then
		player.vx = player.vx -1000
	elseif player.vx < 0 then
		player.vx = player.vx + 1000
	end

	if player.vx > 30000 then
		player.vx = 30000
	elseif player.vx < -30000 then
		player.vx = -30000
	end

	player.x = player.x + player.vx/100

	if player.state == "chill" then
		x = world.frame % 36
		if player.facing == 1 then
			if x >= 24 then
				player.currentframe = player.rframes["stand1"]
			elseif x >= 12 then
				player.currentframe = player.rframes["stand2"]
			else
				player.currentframe = player.rframes["stand3"]
			end
		else
			if x >= 24 then
				player.currentframe = player.lframes["stand1"]
			elseif x >= 12 then
				player.currentframe = player.lframes["stand2"]
			else
				player.currentframe = player.lframes["stand3"]
			end
		end
	elseif player.state == "walk" then
		x = world.frame % 32
		if player.facing == 1 then
			if x >= 24 then
				player.currentframe = player.rframes["walk1"]
			elseif x >= 16 then
				player.currentframe = player.rframes["walk2"]
			elseif x >= 8 then
				player.currentframe = player.rframes["walk3"]
			else
				player.currentframe = player.rframes["walk4"]
			end
		else
			if x >= 24 then
				player.currentframe = player.lframes["walk1"]
			elseif x >= 16 then
				player.currentframe = player.lframes["walk2"]
			elseif x >= 8 then
				player.currentframe = player.lframes["walk3"]
			else
				player.currentframe = player.lframes["walk4"]
			end
		end
	end
	cc.frame_setx(player.rect, (player.x/100)-world.camera)

end

function player:draw()
	cc.blit(player.tileset, player.currentframe, player.rect)
end

-- the game must define a "mainloop" function to be called every frame
function mainloop(delta)
	event = keyevent()
	while event ~= nil do
		if event[2] == 1 then 
			if event[1] == "SDLK_LEFT" then
				player.facing = 0
				player.movestate = "-"
				player.state = "walk"
			elseif event[1] == "SDLK_RIGHT" then
				player.facing = 1
				player.movestate = "+"
				player.state = "walk"
			end
		elseif event[2] == 0 then
			if event[1] == "SDLK_LEFT" then
				if player.movestate == "-" then
					player.movestate = " "
					player.state = "chill"
				end
			elseif event[1] == "SDLK_RIGHT" then
				if player.movestate == "+" then
					player.movestate = " "
					player.state = "chill"
				end
			end
		end

		event = keyevent()
	end

	player.update(delta)

	-- mountains
	cc.blitwholeto(images["bg"], -(world.camera/5 % 1280),0)
	if (world.camera/5 % 1280) > (1280-640) then
		cc.blitwholeto(images["bg"], -(world.camera/5 % 1280) +1280, 0)
	end
	
	-- hills
	cc.blitwholeto(images["hills"], -(world.camera/2 % 1280),0)
	if (world.camera/2 % 1280) > (1280-640) then
		cc.blitwholeto(images["hills"], -(world.camera/2 % 1280) +1280, 0)
	end

	-- grass
	cc.blitwholeto(images["grass"], -(world.camera % 640),300)
	if (world.camera % 640) > 0 then
		cc.blitwholeto(images["grass"], -(world.camera % 640) +640, 300)
	end

	player.draw()

	world.frame = world.frame + 1

	pp = player.x/100
	world.camera = world.camera + (pp - 128 - world.camera)/25

	return
end
