local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Izen Hub",
    LoadingTitle = "Izen Hub",
    LoadingSubtitle = "By Izen",
    ConfigurationSaving = {
        Enabled = false
    }
})

----------------------------------------------------
-- TABS
----------------------------------------------------
local BoostTab = Window:CreateTab("Boost", 4483362458)
local PlayerTab = Window:CreateTab("Player", 4483362458)

----------------------------------------------------
-- BOOST TAB
----------------------------------------------------

-- Jump Velocity (real velocity, not JumpPower)
local JumpVelocity = BoostTab:CreateSlider({
    Name = "Jump Velocity",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "JumpVelocity",
    Callback = function(v)
        _G.JumpVelocity = v
    end,
})

-- Head Jump Boost
local HeadBoost = BoostTab:CreateSlider({
    Name = "Head Jump Boost",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "HeadBoost",
    Callback = function(v)
        _G.HeadBoost = v
    end,
})

-- Fling Power (Up + Backwards)
local FlingPower = BoostTab:CreateSlider({
    Name = "Fling Power",
    Range = {0, 300},
    Increment = 10,
    CurrentValue = 100,
    Flag = "FlingPower",
    Callback = function(v)
        _G.FlingPower = v
    end,
})

----------------------------------------------------
-- PLAYER TAB
----------------------------------------------------

-- WalkSpeed
local WalkSpeed = PlayerTab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 50},
    Increment = 1,
    CurrentValue = 16,
    Flag = "WalkSpeed",
    Callback = function(v)
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = v end
    end,
})

-- Legit Fly Speed
local FlySpeed = PlayerTab:CreateSlider({
    Name = "Fly Speed",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "FlySpeed",
    Callback = function(v)
        _G.FlySpeed = v
    end,
})

-- Head Size (Other Players)
local HeadSize = PlayerTab:CreateSlider({
    Name = "Other Player Head Size",
    Range = {1.0, 5.0},
    Increment = 0.1,
    CurrentValue = 1.0,
    Flag = "HeadSize",
    Callback = function(v)
        _G.HeadSize = v
    end,
})
