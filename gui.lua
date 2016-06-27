UI = {}


function UI.initializeGUI()
  if game.player.gui.top.hoverboard ~= nil then
    game.player.gui.top.hoverboard.destroy()
  end
  game.player.gui.top.add{type="frame", name="hoverboard"}
  game.player.gui.top.hoverboard.add{type="button",name="mode", caption = "Hoverboard Status: Inactive"}
  game.player.gui.top.hoverboard.add{type="label",name="charge"}
  global.hoverboard.status = false
end

function UI.updateStatusGUI()
  game.player.gui.top.hoverboard.charge.caption = "Charge: "..global.charge
end
