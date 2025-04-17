local screen = Instance.new("ScreenGui", game.CoreGui)
screen.Name = "NebulaStrikeToggleGui"
screen.ResetOnSpawn = false

-- Create the toggle box
local toggleBox = Instance.new("TextButton")
toggleBox.Name = "ToggleBox"
toggleBox.Size = UDim2.new(0, 250, 0, 80)  -- Larger box for easy clicking
toggleBox.Position = UDim2.new(0, 20, 0, 20)
toggleBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black background
toggleBox.BorderSizePixel = 0
toggleBox.Text = "NebulaStrike"  -- Text on the button
toggleBox.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
toggleBox.Font = Enum.Font.GothamBold
toggleBox.TextSize = 24  -- Slightly larger text for visibility
toggleBox.TextWrapped = true  -- Wrap text to fit in the box
toggleBox.Active = true
toggleBox.Draggable = true  -- Makes the box draggable
toggleBox.Parent = screen

-- When the button is clicked, minimize the Fluent window
toggleBox.MouseButton1Click:Connect(function()
    if getgenv().FluentRef and getgenv().FluentRef.Minimize then
        getgenv().FluentRef.Minimize()
    end
end)
