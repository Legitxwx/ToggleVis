local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NebulaStrikeToggleGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui")

local ToggleFrame = Instance.new("TextButton")
ToggleFrame.Name = "ToggleBox"
ToggleFrame.Size = UDim2.new(0, 180, 0, 50)
ToggleFrame.Position = UDim2.new(0, 10, 0, 10)
ToggleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Text = "NebulaStrike"
ToggleFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleFrame.Font = Enum.Font.GothamBold
ToggleFrame.TextSize = 20
ToggleFrame.Parent = ScreenGui
ToggleFrame.Active = true
ToggleFrame.Draggable = true

-- Visibility flag & Fluent window reference placeholder
local isVisible = true
local Window -- we'll assign this after Fluent is loaded

-- Toggle Fluent UI visibility when the box is clicked
ToggleFrame.MouseButton1Click:Connect(function()
    if Window then
        isVisible = not isVisible
        Window.Enabled = isVisible
    end
end)
