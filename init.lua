print("This file will be run at load time!")

core.register_node("my_block:node", {
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        if clicker:is_player() then
            core.chat_send_player(clicker:get_player_name(), "Hello world!")
            tnt.boom(pos, {radius=3, damage_radius=6, ignore_protection=false})
        end
    end,
    description = "This is my block",
    tiles = {"my_block.png"},
    groups = {cracky = 1}
})

core.register_craft({
    type = "shapeless",
    output = "my_block:node 3",
    recipe = { "default:dirt", "default:stone" },
})

core.register_tool("my_block:pathfinder", {
    description = "Finds path from player to selected block",
    stack_max = 1,
    inventory_image = "pathfinder.png",
    on_place = function(itemstack, placer, pointed_thing),
    on_secondary_use = function(itemstack, user, pointed_thing),
})

core.register_craft({
    type = "shapeless",
    output = "my_block:pathfinder 1",
    recipe = { "default:dirt", "default:dirt" },
})