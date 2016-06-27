UI = {}


function UI.initialize()
  if game.player.gui.top.hoverboard ~= nil then
    game.player.gui.top.hoverboard.destroy()
  end
  game.player.gui.top.add{type="frame", name="hoverboard"}
  game.player.gui.top.hoverboard.add{type="button",name="mode", caption = "Hoverboard Status: Inactive"}
  game.player.gui.top.hoverboard.add{type="label",name="charge"}
  global.hoverboard.status = false
end

function UI.updateStatus()
  game.player.gui.top.hoverboard.charge.caption = "Charge: "..global.charge
end

function updateGUI()
  if global.hoverboard.status == true then
    game.player.gui.top.hoverboard.mode.caption = "Hoverboard Status: Active"
  elseif global.hoverboard.status == false then
    game.player.gui.top.hoverboard.mode.caption = "Hoverboard Status: Inactive"
  end
end
