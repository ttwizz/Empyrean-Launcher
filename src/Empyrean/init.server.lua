-- @ttwiz_z
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local Resources = script:WaitForChild("Resources", math.huge)
local Hooks = Resources:WaitForChild("Hooks", math.huge)
local Empyrean = Resources:WaitForChild("Empyrean", math.huge):Clone()
local Cmdr = require(script:WaitForChild("Cmdr", math.huge))
Cmdr:RegisterDefaultCommands()
Cmdr:RegisterHooksIn(Hooks)
Empyrean.Parent = ReplicatedFirst
Empyrean.Enabled = true