UI = {}

UI.captionOFF = "Hoverboard OFF"
UI.captionON = "Hoverboard ON"

function UI.initialize(index)
  local gui = game.players[index].gui
  if gui.top.hoverboard ~= nil then
    gui.top.hoverboard.destroy()
  end
  gui.top.add{type="frame", name="hoverboard"}
  gui.top.hoverboard.add{type="button",name="mode", caption = UI.captionOFF}
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

function UI.updateStatus(index)
  game.players[index].gui.top.hoverboard.charge.caption = "Charge: "..global.hoverboard[index].charge
end

function UI.switchMode(active,index)
  local gui = game.players[index].gui
  if active == true then
    gui.top.hoverboard.mode.caption = UI.captionON
  elseif active == false then
    gui.top.hoverboard.mode.caption = UI.captionOFF
  end
end

function test()
  print("test")
end

Gui.Event.register (defines.events.on_player_armor_inventory_changed, "top", test)
