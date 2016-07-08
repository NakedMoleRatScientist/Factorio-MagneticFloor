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
    print("WARNING: DESTROYING non-existent MagneticFloor UI")
  end
end

function UI.updateStatus()
  game.player.gui.top.hoverboard.charge.caption = "Charge: "..global.charge
end

function UI.switchMode(active,index)
  local gui = game.players[index].gui
  if active == true then
    gui.top.hoverboard.mode.caption = "Hoverboard ON"
  elseif active == false then
    gui.top.hoverboard.mode.caption = "Hoverboard OFF"
  end
end
