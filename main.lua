-- Simple Roblox GUI Library
local Library = {}

-- Create the main GUI
function Library:Init()
    -- Create ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "MyCustomGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Main Frame
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 500, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -200)
    MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui
    
    -- Add rounded corners
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainFrame
    
    -- Title Bar
    local TitleBar = Instance.new("Frame")
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame
    
    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 10)
    TitleCorner.Parent = TitleBar
    
    -- Title Text
    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Size = UDim2.new(1, -100, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = "My Custom GUI"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TitleBar
    
    -- Close Button
    local CloseButton = Instance.new("TextButton")
    CloseButton.Name = "CloseButton"
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -35, 0, 5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.TextSize = 16
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Parent = TitleBar
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 6)
    CloseCorner.Parent = CloseButton
    
    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
    
    -- Content Area
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "ContentFrame"
    ContentFrame.Size = UDim2.new(1, -20, 1, -60)
    ContentFrame.Position = UDim2.new(0, 10, 0, 50)
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Parent = MainFrame
    
    -- Example Button
    local ExampleButton = Instance.new("TextButton")
    ExampleButton.Name = "ExampleButton"
    ExampleButton.Size = UDim2.new(0, 200, 0, 40)
    ExampleButton.Position = UDim2.new(0, 10, 0, 10)
    ExampleButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    ExampleButton.Text = "Click Me!"
    ExampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExampleButton.TextSize = 16
    ExampleButton.Font = Enum.Font.Gotham
    ExampleButton.Parent = ContentFrame
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)
    ButtonCorner.Parent = ExampleButton
    
    ExampleButton.MouseButton1Click:Connect(function()
        print("Button clicked!")
    end)
    
    -- Example Label
    local ExampleLabel = Instance.new("TextLabel")
    ExampleLabel.Name = "ExampleLabel"
    ExampleLabel.Size = UDim2.new(1, -20, 0, 30)
    ExampleLabel.Position = UDim2.new(0, 10, 0, 60)
    ExampleLabel.BackgroundTransparency = 1
    ExampleLabel.Text = "This is a custom GUI loaded from GitHub!"
    ExampleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    ExampleLabel.TextSize = 14
    ExampleLabel.Font = Enum.Font.Gotham
    ExampleLabel.TextXAlignment = Enum.TextXAlignment.Left
    ExampleLabel.TextWrapped = true
    ExampleLabel.Parent = ContentFrame
    
    print("GUI Loaded Successfully!")
    return ScreenGui
end

-- Auto-initialize when loaded
Library:Init()

return Library
