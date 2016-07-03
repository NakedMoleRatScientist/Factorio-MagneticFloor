remote.add_interface("mag",
{
  getItems = function()
    game.players[1].insert_item{name = "hoverboard", count = 1}
    game.players[1].insert_item{name = "copper-floor3", count = 200}
    game.players[1].insert_item{name = "accelerator", count = 20}
    game.players[1].insert_item{name = "left", count = 5}
    game.players[1].insert_item{name = "right", count = 5}
    game.players[1].insert_item{name = "down", count = 5}
    game.players[1].insert_item{name = "up", count = 5}
  end
})
