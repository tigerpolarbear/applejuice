
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
world.twrexs = {}
world.zips = {}
world.goldgolems = {}
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

	world.goldgolem = {}
	world.goldgolem.tileset = cc.image_new("data/goldgolem.png")
	world.goldgolem.rframes = {}
	world.goldgolem.lframes = {}

	world.goldgolem.rframes["stand1"] = cc.frame_new(0, 0, 48, 128)
	world.goldgolem.rframes["stand2"] = cc.frame_new(48, 0, 48, 128)
	world.goldgolem.rframes["stand3"] = cc.frame_new(96, 0, 48, 128)
	world.goldgolem.rframes["walk1"] = cc.frame_new(144, 0, 48, 128)
	world.goldgolem.rframes["walk2"] = cc.frame_new(192, 0, 48, 128)
	world.goldgolem.rframes["walk3"] = cc.frame_new(240, 0, 48, 128)
	world.goldgolem.rframes["walk4"] = cc.frame_new(288, 0, 48, 128)
	world.goldgolem.rframes["5"] = cc.frame_new(336, 0, 48, 128)
	world.goldgolem.rframes["6"] = cc.frame_new(384, 0, 48, 128)
	world.goldgolem.rframes["7"] = cc.frame_new(432, 0, 48, 128)
	world.goldgolem.rframes["8"] = cc.frame_new(480, 0, 48, 128)
	world.goldgolem.rframes["9"] = cc.frame_new(528, 0, 48, 128)
	world.goldgolem.rframes["10"] = cc.frame_new(576, 0, 48, 128)
	world.goldgolem.rframes["11"] = cc.frame_new(624, 0, 48, 128)
	world.goldgolem.rframes["12"] = cc.frame_new(672, 0, 48, 128)
	world.goldgolem.rframes["13"] = cc.frame_new(720, 0, 48, 128)
	world.goldgolem.rframes["14"] = cc.frame_new(768, 0, 48, 128)
	world.goldgolem.rframes["15"] = cc.frame_new(816, 0, 48, 128)
	world.goldgolem.rframes["16"] = cc.frame_new(864, 0, 48, 128)
	world.goldgolem.rframes["17"] = cc.frame_new(912, 0, 48, 128)

	world.goldgolem.lframes["stand1"] = cc.frame_new(0, 128, 48, 128)
	world.goldgolem.lframes["stand2"] = cc.frame_new(48, 128, 48, 128)
	world.goldgolem.lframes["stand3"] = cc.frame_new(96, 128, 48, 128)
	world.goldgolem.lframes["walk1"] = cc.frame_new(144, 128, 48, 128)
	world.goldgolem.lframes["walk2"] = cc.frame_new(192, 128, 48, 128)
	world.goldgolem.lframes["walk3"] = cc.frame_new(240, 128, 48, 128)
	world.goldgolem.lframes["walk4"] = cc.frame_new(288, 128, 48, 128)
	world.goldgolem.lframes["5"] = cc.frame_new(336, 128, 48, 128)
	world.goldgolem.lframes["6"] = cc.frame_new(384, 128, 48, 128)
	world.goldgolem.lframes["7"] = cc.frame_new(432, 128, 48, 128)
	world.goldgolem.lframes["8"] = cc.frame_new(480, 128, 48, 128)
	world.goldgolem.lframes["9"] = cc.frame_new(528, 128, 48, 128)
	world.goldgolem.lframes["10"] = cc.frame_new(576, 128, 48, 128)
	world.goldgolem.lframes["11"] = cc.frame_new(624, 128, 48, 128)
	world.goldgolem.lframes["12"] = cc.frame_new(672, 128, 48, 128)
	world.goldgolem.lframes["13"] = cc.frame_new(720, 128, 48, 128)
	world.goldgolem.lframes["14"] = cc.frame_new(768, 128, 48, 128)
	world.goldgolem.lframes["15"] = cc.frame_new(816, 128, 48, 128)
	world.goldgolem.lframes["16"] = cc.frame_new(864, 128, 48, 128)
	world.goldgolem.lframes["17"] = cc.frame_new(912, 128, 48, 128)

	world.zip = {}
	world.zip.tileset = cc.image_new("data/zip.png")
	world.zip.rframes = {}
	world.zip.lframes = {}

	world.zip.rframes["stand1"] = cc.frame_new(0, 0, 48, 128)
	world.zip.rframes["stand2"] = cc.frame_new(48, 0, 48, 128)
	world.zip.rframes["stand3"] = cc.frame_new(96, 0, 48, 128)
	world.zip.rframes["walk1"] = cc.frame_new(144, 0, 48, 128)
	world.zip.rframes["walk2"] = cc.frame_new(192, 0, 48, 128)
	world.zip.rframes["walk3"] = cc.frame_new(240, 0, 48, 128)
	world.zip.rframes["walk4"] = cc.frame_new(288, 0, 48, 128)
	world.zip.rframes["5"] = cc.frame_new(336, 0, 48, 128)
	world.zip.rframes["6"] = cc.frame_new(384, 0, 48, 128)
	world.zip.rframes["7"] = cc.frame_new(432, 0, 48, 128)
	world.zip.rframes["8"] = cc.frame_new(480, 0, 48, 128)
	world.zip.rframes["9"] = cc.frame_new(528, 0, 48, 128)
	world.zip.rframes["10"] = cc.frame_new(576, 0, 48, 128)
	world.zip.rframes["11"] = cc.frame_new(624, 0, 48, 128)
	world.zip.rframes["12"] = cc.frame_new(672, 0, 48, 128)
	world.zip.rframes["13"] = cc.frame_new(720, 0, 48, 128)
	world.zip.rframes["14"] = cc.frame_new(768, 0, 48, 128)
	world.zip.rframes["15"] = cc.frame_new(816, 0, 48, 128)
	world.zip.rframes["16"] = cc.frame_new(864, 0, 48, 128)
	world.zip.rframes["17"] = cc.frame_new(912, 0, 48, 128)

	world.zip.lframes["stand1"] = cc.frame_new(0, 128, 48, 128)
	world.zip.lframes["stand2"] = cc.frame_new(48, 128, 48, 128)
	world.zip.lframes["stand3"] = cc.frame_new(96, 128, 48, 128)
	world.zip.lframes["walk1"] = cc.frame_new(144, 128, 48, 128)
	world.zip.lframes["walk2"] = cc.frame_new(192, 128, 48, 128)
	world.zip.lframes["walk3"] = cc.frame_new(240, 128, 48, 128)
	world.zip.lframes["walk4"] = cc.frame_new(288, 128, 48, 128)
	world.zip.lframes["5"] = cc.frame_new(336, 128, 48, 128)
	world.zip.lframes["6"] = cc.frame_new(384, 128, 48, 128)
	world.zip.lframes["7"] = cc.frame_new(432, 128, 48, 128)
	world.zip.lframes["8"] = cc.frame_new(480, 128, 48, 128)
	world.zip.lframes["9"] = cc.frame_new(528, 128, 48, 128)
	world.zip.lframes["10"] = cc.frame_new(576, 128, 48, 128)
	world.zip.lframes["11"] = cc.frame_new(624, 128, 48, 128)
	world.zip.lframes["12"] = cc.frame_new(672, 128, 48, 128)
	world.zip.lframes["13"] = cc.frame_new(720, 128, 48, 128)
	world.zip.lframes["14"] = cc.frame_new(768, 128, 48, 128)
	world.zip.lframes["15"] = cc.frame_new(816, 128, 48, 128)
	world.zip.lframes["16"] = cc.frame_new(864, 128, 48, 128)
	world.zip.lframes["17"] = cc.frame_new(912, 128, 48, 128)

	world.twrex = {}
	world.twrex.tileset = cc.image_new("data/twrex.png")
	world.twrex.rframes = {}
	world.twrex.lframes = {}

	world.twrex.rframes["stand1"] = cc.frame_new(0, 0, 48, 128)
	world.twrex.rframes["stand2"] = cc.frame_new(48, 0, 48, 128)
	world.twrex.rframes["stand3"] = cc.frame_new(96, 0, 48, 128)
	world.twrex.rframes["walk1"] = cc.frame_new(144, 0, 48, 128)
	world.twrex.rframes["walk2"] = cc.frame_new(192, 0, 48, 128)
	world.twrex.rframes["walk3"] = cc.frame_new(240, 0, 48, 128)
	world.twrex.rframes["walk4"] = cc.frame_new(288, 0, 48, 128)
	world.twrex.rframes["5"] = cc.frame_new(336, 0, 48, 128)
	world.twrex.rframes["6"] = cc.frame_new(384, 0, 48, 128)
	world.twrex.rframes["7"] = cc.frame_new(432, 0, 48, 128)
	world.twrex.rframes["8"] = cc.frame_new(480, 0, 48, 128)
	world.twrex.rframes["9"] = cc.frame_new(528, 0, 48, 128)
	world.twrex.rframes["10"] = cc.frame_new(576, 0, 48, 128)
	world.twrex.rframes["11"] = cc.frame_new(624, 0, 48, 128)
	world.twrex.rframes["12"] = cc.frame_new(672, 0, 48, 128)
	world.twrex.rframes["13"] = cc.frame_new(720, 0, 48, 128)
	world.twrex.rframes["14"] = cc.frame_new(768, 0, 48, 128)
	world.twrex.rframes["15"] = cc.frame_new(816, 0, 48, 128)
	world.twrex.rframes["16"] = cc.frame_new(864, 0, 48, 128)
	world.twrex.rframes["17"] = cc.frame_new(912, 0, 48, 128)

	world.twrex.lframes["stand1"] = cc.frame_new(0, 128, 48, 128)
	world.twrex.lframes["stand2"] = cc.frame_new(48, 128, 48, 128)
	world.twrex.lframes["stand3"] = cc.frame_new(96, 128, 48, 128)
	world.twrex.lframes["walk1"] = cc.frame_new(144, 128, 48, 128)
	world.twrex.lframes["walk2"] = cc.frame_new(192, 128, 48, 128)
	world.twrex.lframes["walk3"] = cc.frame_new(240, 128, 48, 128)
	world.twrex.lframes["walk4"] = cc.frame_new(288, 128, 48, 128)
	world.twrex.lframes["5"] = cc.frame_new(336, 128, 48, 128)
	world.twrex.lframes["6"] = cc.frame_new(384, 128, 48, 128)
	world.twrex.lframes["7"] = cc.frame_new(432, 128, 48, 128)
	world.twrex.lframes["8"] = cc.frame_new(480, 128, 48, 128)
	world.twrex.lframes["9"] = cc.frame_new(528, 128, 48, 128)
	world.twrex.lframes["10"] = cc.frame_new(576, 128, 48, 128)
	world.twrex.lframes["11"] = cc.frame_new(624, 128, 48, 128)
	world.twrex.lframes["12"] = cc.frame_new(672, 128, 48, 128)
	world.twrex.lframes["13"] = cc.frame_new(720, 128, 48, 128)
	world.twrex.lframes["14"] = cc.frame_new(768, 128, 48, 128)
	world.twrex.lframes["15"] = cc.frame_new(816, 128, 48, 128)
	world.twrex.lframes["16"] = cc.frame_new(864, 128, 48, 128)
	world.twrex.lframes["17"] = cc.frame_new(912, 128, 48, 128)

	world.player = player
	world.player.life = 5
	world.player.twrecks = 0
	world.player.zip = 0
	world.player.goldgolem = 0
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
	world.player.rframes["shit"] = cc.frame_new(336, 0, 48, 128)
	world.player.rframes["shitty"] = cc.frame_new(384, 0, 48, 128)
	world.player.rframes["shoot"] = cc.frame_new(432, 0, 48, 128)
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

	newtwrex(300)
	newzip(-300)
	newgoldgolem(-900)
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

function newgoldgolem(x)
	t = {}
	t.life = 4
	t.state = "chill"
	t.facing = 0
	t.x = x*100
	t.vx = 0
	t.rect = cc.frame_new(x, 205, 48, 128)
	table.insert(world.goldgolems, t)
end

function newzip(x)
	t = {}
	t.life = 4
	t.state = "chill"
	t.facing = 0
	t.x = x*100
	t.vx = 0
	t.rect = cc.frame_new(x, 205, 48, 128)
	table.insert(world.zips, t)
end

function newtwrex(x)
	t = {}
	t.life = 4
	t.state = "chill"
	t.facing = 0
	t.x = x*100
	t.vx = 0
	t.rect = cc.frame_new(x, 205, 48, 128)
	table.insert(world.twrexs, t)
end

function updategoldgolem(t)

	if t.x > (player.x + 48*100) then
		t.movestate = "-"
		t.state = "walk"
		t.facing = 0
	elseif t.x < (player.x - 48*100) then
		t.movestate = "+"
		t.state = "walk"
		t.facing = 1
	else
		t.movestate = " "
		t.state = "chill"
	end

	if t.movestate == "+" then
		t.vx =  t.vx + 800;
	elseif t.movestate == "-" then
		t.vx = t.vx - 800
	elseif t.vx > 0 then
		t.vx = t.vx -800
	elseif t.vx < 0 then
		t.vx = t.vx + 800
	end

	if t.vx > 24000 then
		t.vx = 24000
	elseif t.vx < -24000 then
		t.vx = -24000
	end

	t.x = t.x + t.vx/100

	if t.state == "chill" then
		x = world.frame % 36
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.goldgolem.rframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.goldgolem.rframes["stand2"]
			else
				t.currentframe = world.goldgolem.rframes["stand3"]
			end
		else
			if x >= 24 then
				t.currentframe = world.goldgolem.lframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.goldgolem.lframes["stand2"]
			else
				t.currentframe = world.goldgolem.lframes["stand3"]
			end
		end
	elseif t.state == "walk" then
		x = world.frame % 32
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.goldgolem.rframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.goldgolem.rframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.goldgolem.rframes["walk3"]
			else
				t.currentframe = world.goldgolem.rframes["walk4"]
			end
		else
			if x >= 24 then
				t.currentframe = world.goldgolem.lframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.goldgolem.lframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.goldgolem.lframes["walk3"]
			else
				t.currentframe = world.goldgolem.lframes["walk4"]
			end
		end
	end
	cc.frame_setx(t.rect, (t.x/100)-world.camera)
end

function drawgoldgolem(t)
	cc.blit(world.goldgolem.tileset, t.currentframe, t.rect)
end

function updatezip(t)

	if t.x > (player.x + 48*100) then
		t.movestate = "-"
		t.state = "walk"
		t.facing = 0
	elseif t.x < (player.x - 48*100) then
		t.movestate = "+"
		t.state = "walk"
		t.facing = 1
	else
		t.movestate = " "
		t.state = "chill"
	end

	if t.movestate == "+" then
		t.vx =  t.vx + 800;
	elseif t.movestate == "-" then
		t.vx = t.vx - 800
	elseif t.vx > 0 then
		t.vx = t.vx -800
	elseif t.vx < 0 then
		t.vx = t.vx + 800
	end

	if t.vx > 24000 then
		t.vx = 24000
	elseif t.vx < -24000 then
		t.vx = -24000
	end

	t.x = t.x + t.vx/100

	if t.state == "chill" then
		x = world.frame % 36
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.zip.rframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.zip.rframes["stand2"]
			else
				t.currentframe = world.zip.rframes["stand3"]
			end
		else
			if x >= 24 then
				t.currentframe = world.zip.lframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.zip.lframes["stand2"]
			else
				t.currentframe = world.zip.lframes["stand3"]
			end
		end
	elseif t.state == "walk" then
		x = world.frame % 32
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.zip.rframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.zip.rframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.zip.rframes["walk3"]
			else
				t.currentframe = world.zip.rframes["walk4"]
			end
		else
			if x >= 24 then
				t.currentframe = world.zip.lframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.zip.lframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.zip.lframes["walk3"]
			else
				t.currentframe = world.zip.lframes["walk4"]
			end
		end
	end
	cc.frame_setx(t.rect, (t.x/100)-world.camera)
end

function drawzip(t)
	cc.blit(world.zip.tileset, t.currentframe, t.rect)
end

function updatetwrex(t)

	if t.x > (player.x + 48*100) then
		t.movestate = "-"
		t.state = "walk"
		t.facing = 0
	elseif t.x < (player.x - 48*100) then
		t.movestate = "+"
		t.state = "walk"
		t.facing = 1
	else
		t.movestate = " "
		t.state = "chill"
	end

	if t.movestate == "+" then
		t.vx =  t.vx + 800;
	elseif t.movestate == "-" then
		t.vx = t.vx - 800
	elseif t.vx > 0 then
		t.vx = t.vx -800
	elseif t.vx < 0 then
		t.vx = t.vx + 800
	end

	if t.vx > 24000 then
		t.vx = 24000
	elseif t.vx < -24000 then
		t.vx = -24000
	end

	t.x = t.x + t.vx/100

	if t.state == "chill" then
		x = world.frame % 36
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.twrex.rframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.twrex.rframes["stand2"]
			else
				t.currentframe = world.twrex.rframes["stand3"]
			end
		else
			if x >= 24 then
				t.currentframe = world.twrex.lframes["stand1"]
			elseif x >= 12 then
				t.currentframe = world.twrex.lframes["stand2"]
			else
				t.currentframe = world.twrex.lframes["stand3"]
			end
		end
	elseif t.state == "walk" then
		x = world.frame % 32
		if t.facing == 1 then
			if x >= 24 then
				t.currentframe = world.twrex.rframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.twrex.rframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.twrex.rframes["walk3"]
			else
				t.currentframe = world.twrex.rframes["walk4"]
			end
		else
			if x >= 24 then
				t.currentframe = world.twrex.lframes["walk1"]
			elseif x >= 16 then
				t.currentframe = world.twrex.lframes["walk2"]
			elseif x >= 8 then
				t.currentframe = world.twrex.lframes["walk3"]
			else
				t.currentframe = world.twrex.lframes["walk4"]
			end
		end
	end
	cc.frame_setx(t.rect, (t.x/100)-world.camera)
end

function drawtwrex(t)
	cc.blit(world.twrex.tileset, t.currentframe, t.rect)
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
			elseif event[1] == "SDLK_q" then
			elseif event[1] == "SDLK_w" then
			elseif event[1] == "SDLK_a" then
			elseif event[1] == "SDLK_s" then
			elseif event[1] == "SDLK_z" then
			elseif event[1] == "SDLK_x" then
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

	for k in pairs(world.goldgolems) do
		updategoldgolem(world.goldgolems[k])
		drawgoldgolem(world.goldgolems[k])
	end
	for k in pairs(world.zips) do
		updatezip(world.zips[k])
		drawzip(world.zips[k])
	end
	for k in pairs(world.twrexs) do
		updatetwrex(world.twrexs[k])
		drawtwrex(world.twrexs[k])
	end

	player.update(delta)
	player.draw()

	world.frame = world.frame + 1

	pp = player.x/100
	world.camera = world.camera + (pp - 128 - world.camera)/25

	return
end
