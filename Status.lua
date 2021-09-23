if state then
	local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right

menus.Diamonds2.Visible = true
menus['Tech Coins2'].Visible = true
menus['Fantasy Coins2'].Visible = true
menus.Coins2.Visible = true
else
local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right

menus.Diamonds2.Visible = false
menus['Tech Coins2'].Visible = false
menus['Fantasy Coins2'].Visible = false
menus.Coins2.Visible = false
end

local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
local Save = gamelibrary.Save.Get
local Commas = gamelibrary.Functions.Commas
local types = {}
local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
for i, v in pairs(menus:GetChildren()) do
    if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
        table.insert(types, v.Name)
    end
end

function get(thistype)
    return Save()[thistype]
end
end)

local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
local Save = gamelibrary.Save.Get
local Commas = gamelibrary.Functions.Commas
local types = {}
local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
for i, v in pairs(menus:GetChildren()) do
    if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
        table.insert(types, v.Name)
    end
end

function get(thistype)
    return Save()[thistype]
end

menus.Diamonds.LayoutOrder = 99990
menus['Tech Coins'].LayoutOrder = 99992
menus['Fantasy Coins'].LayoutOrder = 99994
menus.Coins.LayoutOrder = 99996
menus.UIListLayout.HorizontalAlignment = 2

_G.MyTypes = {}
for i,v in pairs(types) do
    if not menus:FindFirstChild(v.."2") then
        local tempmaker = menus:FindFirstChild(v):Clone()
        tempmaker.Name = tostring(tempmaker.Name .. "2")
        tempmaker.Parent = menus
        tempmaker.Size = UDim2.new(0, 200, 0, 35)
        tempmaker.LayoutOrder = tempmaker.LayoutOrder + 1
        _G.MyTypes[v] = tempmaker
    end
end
menus.Diamonds2.Add.Visible = false

for i,v in pairs(types) do
    spawn(function()
        local megatable = {}
        local imaginaryi = 1
        while wait(0.5) do
            local currentbal = get(v)
            megatable[imaginaryi] = currentbal
            local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
            imaginaryi = imaginaryi + 1
            _G.MyTypes[v].Amount.Text = tostring(Commas(diffy).." in 60s")
            _G.MyTypes[v]["Amount_odometerGUIFX"].Text = tostring(Commas(diffy).." in 60s")
        end
    end)
