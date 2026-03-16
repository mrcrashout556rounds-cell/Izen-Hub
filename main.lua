local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Izen Hub",
    LoadingTitle = "Izen Hub",
    LoadingSubtitle = "By Izen",
    ConfigurationSaving = {
        Enabled = false
    }
})

local BoostTab = Window:CreateTab("Boost", 4483362458)
local PlayerTab = Window:CreateTab("Player", 4483362458)

----------------------------------------------------
-- BOOST TAB
----------------------------------------------------

BoostTab:CreateToggle({
    Name = "Enable Jump Velocity",
    CurrentValue = false,
    Flag = "JumpToggle",
    Callback = function(v)
        _G.JumpEnabled = v
    end,
})

BoostTab:CreateSlider({
    Name = "Jump Velocity",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "JumpVelocity",
    Callback = function(v)
        _G.JumpVelocity = v
    end,
})

BoostTab:CreateToggle({
    Name = "Enable Head Boost",
    CurrentValue = false,
    Flag = "BoostToggle",
    Callback = function(v)
        _G.BoostEnabled = v
    end,
})

BoostTab:CreateSlider({
    Name = "Head Jump Boost",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "HeadBoost",
    Callback = function(v)
        _G.HeadBoost = v
    end,
})

BoostTab:CreateToggle({
    Name = "Enable Fling",
    CurrentValue = false,
    Flag = "FlingToggle",
    Callback = function(v)
        _G.FlingEnabled = v
    end,
})

BoostTab:CreateSlider({
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

PlayerTab:CreateToggle({
    Name = "Enable WalkSpeed",
    CurrentValue = false,
    Flag = "WalkToggle",
    Callback = function(v)
        _G.WalkEnabled = v
    end,
})

PlayerTab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 50},
    Increment = 1,
    CurrentValue = 16,
    Flag = "WalkSpeed",
    Callback = function(v)
        _G.WalkSpeed = v
    end,
})

PlayerTab:CreateToggle({
    Name = "Enable Fly",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(v)
        _G.FlyEnabled = v
    end,
})

PlayerTab:CreateSlider({
    Name = "Fly Speed",
    Range = {0, 200},
    Increment = 5,
    CurrentValue = 50,
    Flag = "FlySpeed",
    Callback = function(v)
        _G.FlySpeed = v
    end,
})

PlayerTab:CreateToggle({
    Name = "Enable Head Size",
    CurrentValue = false,
    Flag = "HeadToggle",
    Callback = function(v)
        _G.HeadSizeEnabled = v
    end,
})

PlayerTab:CreateSlider({
    Name = "Other Player Head Size",
    Range = {1.0, 5.0},
    Increment = 0.1,
    CurrentValue = 1.0,
    Flag = "HeadSize",
    Callback = function(v)
        _G.HeadSize = v
    end,
})
