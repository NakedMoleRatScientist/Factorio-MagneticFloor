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
  end,
  getArmor = function()
    local p = game.players[1]
    p.insert{name = "power-armor-mk2", count = 1}
    p.insert{name = "fusion-reactor-equipment", count = 1}
  end,
  getPower = function()
    local p = game.players[1]
    p.insert{name = "steam-engine", count = 10}
    p.insert{name = "boiler", count = 14}
    p.insert{name = "coal", count = 200}
    p.insert{name = "burner-inserter", count = 14}
    p.insert{name = "substation", count = 3}
    p.insert{name = "offshore-pump", count = 1}
    p.insert{name = "transport-belt", count = 100}
  end
})
