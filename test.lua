remote.add_interface("mag",
{
  getItems = function()
    game.players[1].insert{name = "hoverboard", count = 1}
    game.players[1].insert{name = "copper-floor3", count = 200}
    game.players[1].insert{name = "accelerator", count = 20}
    game.players[1].insert{name = "left", count = 5}
    game.players[1].insert{name = "right", count = 5}
    game.players[1].insert{name = "down", count = 5}
    game.players[1].insert{name = "up", count = 5}
  end
})
