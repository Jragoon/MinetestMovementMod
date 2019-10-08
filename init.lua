print("Will run at load time!")

playerSpeed = 1
playerGravity = 1

minetest.register_chatcommand("run", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
			speed = 2,
			gravity = playerGravity
		})
		playerSpeed = 2
    end,
})

minetest.register_chatcommand("antigravity", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
			speed = playerSpeed,
			gravity = 0.1
		})
		playerGravity = 0.1
    end,
})

minetest.register_chatcommand("revert", {
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
        player:set_physics_override({
			speed = 1,
			gravity = 1
		})
		playerGravity = 1
		playerSpeed = 1
    end,
})
