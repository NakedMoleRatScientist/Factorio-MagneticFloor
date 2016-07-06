UI = {}


function UI.initialize(index)
  local gui = game.players[index].gui
  if gui.top.hoverboard ~= nil then
    gui.top.hoverboard.destroy()
  end
  gui.top.add{type="frame", name="hoverboard"}
  gui.top.hoverboard.add{type="button",name="mode", caption = "Hoverboard Status: Inactive"}
  gui.top.hoverboard.add{type="label",name="charge"}
end

function UI.destroy(index)
  local gui = game.players[index].gui
  if gui.top.hoverboard ~= nil then
    gui.top.hoverboard.destroy()
  else
    print("WARNING: DESTROY UI element when non-existent!")
  end
end

function UI.updateStatus()
  game.player.gui.top.hoverboard.charge.caption = "Charge: "..global.charge
end

function UI.switchMode(status)
  if status == true then
    game.player.gui.top.hoverboard.mode.caption = "Hoverboard Status: Active"
  elseif status == false then
    game.player.gui.top.hoverboard.mode.caption = "Hoverboard Status: Inactive"
  end
end
