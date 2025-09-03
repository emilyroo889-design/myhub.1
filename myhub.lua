
-- myhub.lua
-- ตัวอย่าง Hub GUI ง่าย ๆ

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- กล่อง GUI
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 250, 0, 120)
frame.Position = UDim2.new(0.5, -125, 0.5, -60)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0

-- หัวข้อ
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.Text = "⚡ MyHub GUI ⚡"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20

-- ปุ่ม
local button = Instance.new("TextButton")
button.Parent = frame
button.Size = UDim2.new(1, -20, 0.5, -10)
button.Position = UDim2.new(0, 10, 0.4, 0)
button.Text = "Click Me!"
button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSans
button.TextSize = 18

-- Action เมื่อกดปุ่ม
button.MouseButton1Click:Connect(function()
    button.Text = "✅ Clicked!"
end)
