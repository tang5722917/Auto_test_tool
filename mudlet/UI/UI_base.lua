--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 16:56:45
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 19:30:50
FilePath: \Auto_test_tool\mudlet\UI\UI_base.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]


GUI = GUI or {}

local w,h = getMainWindowSize()
setBorderLeft(w/4)
setBorderTop(h/10)
setBorderBottom(h/10)
setBorderRight(w/4)

GUI.BackgroundCSS = CSSMan.new([[
  background-color: rgb(20,0,20);
]])

GUI.Left = Geyser.Label:new({
  name = "GUI.Left",
  x = 0, y = 0,
  width = "25%",
  height = "100%",
})
GUI.Left:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Right = Geyser.Label:new({
  name = "GUI.Right",
  x = "-25%", y = 0,
  width = "25%",
  height = "100%",
})
GUI.Right:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Top = Geyser.Label:new({
  name = "GUI.Top",
  x = "25%", y = 0,
  width = "50%",
  height = "10%",
})
GUI.Top:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Bottom = Geyser.Label:new({
  name = "GUI.Bottom",
  x = "25%", y = "90%",
  width = "50%",
  height = "10%",
})
GUI.Bottom:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Header = Geyser.HBox:new({
    name = "GUI.Header",
    x = 0, y = 0,
    width = "100%",
    height = "100%",
  },GUI.Top)

  GUI.IconCSS = CSSMan.new([[
    background-color: rgba(0,0,0,100);
    border-style: solid;
    border-width: 1px;
    border-color: white;
    border-radius: 5px;
    margin: 5px;
    qproperty-wordWrap: true;
  ]])

  for i=1,12 do
    GUI["Icon"..i] = Geyser.Label:new({
      name = "GUI.Icon"..i,
    },GUI.Header)
    GUI["Icon"..i]:setStyleSheet(GUI.IconCSS:getCSS())
    GUI["Icon"..i]:echo("<center>GUI. Icon"..i)
end

GUI.Footer = Geyser.HBox:new({
    name = "GUI.Footer",
    x = 0, y = 0,
    width = "100%",
    height = "100%",
  },GUI.Bottom)

  GUI.LeftColumn = Geyser.VBox:new({
    name = "GUI.LeftColumn",
  },GUI.Footer)

  GUI.RightColumn = Geyser.VBox:new({
    name = "GUI.RightColumn",
  },GUI.Footer)

  GUI.GaugeBackCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])

  GUI.GaugeFrontCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])

  GUI.Jingshen = Geyser.Gauge:new({
    name = "GUI.Jingshen",
  },GUI.LeftColumn)
  GUI.Jingshen.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","red")
  GUI.Jingshen.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Jingshen:setValue(100,100)
  --GUI.Jingshen.front:echo("精神 -- / -- ")

  GUI.Xueqi = Geyser.Gauge:new({
    name = "Xueqi",
  },GUI.LeftColumn)
  GUI.Xueqi.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","red")
  GUI.Xueqi.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Xueqi:setValue(100,100)
  --GUI.Xueqi.front:echo("血气  -- / -- / -- ")

  GUI.Jingli = Geyser.Gauge:new({
    name = "GUI.Jingli",
  },GUI.RightColumn)
  GUI.Jingli.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","orange")
  GUI.Jingli.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Jingli:setValue(100,100)
  --GUI.Jingli.front:echo("精力 -- / -- / -- ")
  --GUI.Jingli.front:echo([[<span style = "color: black">GUI.Endurance</span>]])

  GUI.Neili = Geyser.Gauge:new({
    name = "GUI.Neili",
  },GUI.RightColumn)
  GUI.Neili.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","orange")
  GUI.Neili.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Neili:setValue(100,100)
--GUI.Neili.front:echo("内力 -- / -- ")

GUI.Shiwu = Geyser.Gauge:new({
  name = "GUI.Shiwu",
},GUI.LeftColumn)
GUI.Shiwu.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
GUI.GaugeFrontCSS:set("background-color","blue")
GUI.Shiwu.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
GUI.Shiwu:setValue(100,100)
--GUI.Shiwu.front:echo("食物 -- ")

GUI.Yinshui = Geyser.Gauge:new({
  name = "GUI.Yinshui",
},GUI.RightColumn)
GUI.Yinshui.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
GUI.GaugeFrontCSS:set("background-color","blue")
GUI.Yinshui.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
GUI.Yinshui:setValue(100,100)
--GUI.Yinshui.front:echo("饮水 -- ")
--GUI.Yinshui.front:echo([[<span style = "color: black">饮水]])

GUI.BoxCSS = CSSMan.new([[
  background-color: rgba(0,0,0,100);
  border-style: solid;
  border-width: 1px;
  border-radius: 10px;
  border-color: white;
  margin: 10px;
]])

-- Map Box 
GUI.Box1 = Geyser.Label:new({
  name = "Map.Box1",
  x = 0, y = 0,
  width = "100%",
  height = "50%",
},GUI.Right)
GUI.Box1:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box1:echo("<center>GUI.Box1")

GUI.Box2 = Geyser.Label:new({
  name = "GUI.Box2",
  x = 0, y = "50%",
  width = "50%",
  height = "50%",
},GUI.Right)
GUI.Box2:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box2:echo("<center>GUI.Box2")

GUI.Box3 = Geyser.Label:new({
  name = "GUI.Box3",
  x = "50%", y = "50%",
  width = "50%",
  height = "50%",
},GUI.Right)
GUI.Box3:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box3:echo("<center>GUI.Box3")

GUI.Box4 = Geyser.Label:new({
  name = "GUI.Box4",
  x = "0%", y = "0%",
  width = "100%",
  height = "25%",
},GUI.Left)
GUI.Box4:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box4:echo("<center>GUI.Box4")

GUI.Box5 = Geyser.Label:new({
  name = "GUI.Box5",
  x = "0%", y = "25%",
  width = "50%",
  height = "50%",
},GUI.Left)
GUI.Box5:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box5:echo("<center>GUI.Box5")

GUI.Box6 = Geyser.Label:new({
  name = "GUI.Box6",
  x = "50%", y = "25%",
  width = "50%",
  height = "50%",
},GUI.Left)
GUI.Box6:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box6:echo("<center>GUI.Box6")

GUI.Box7 = Geyser.Label:new({
  name = "GUI.Box7",
  x = "0%", y = "75%",
  width = "100%",
  height = "25%",
},GUI.Left)
GUI.Box7:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box7:echo("<center>GUI.Box7")
