--BYW SCRIPT
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FarmMenu"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local mainBtn = Instance.new("TextButton")
mainBtn.Name = "MainBtn"
mainBtn.Size = UDim2.new(0, 40, 0, 40)
mainBtn.Position = UDim2.new(0, 10, 0, 10)
mainBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
mainBtn.Text = "B"
mainBtn.TextSize = 28
mainBtn.Font = Enum.Font.GothamBold
mainBtn.BorderSizePixel = 0
mainBtn.Active = true
mainBtn.Parent = screenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = mainBtn

local mainMenu = Instance.new("Frame")
mainMenu.Name = "MainMenu"
mainMenu.Size = UDim2.new(0, 250, 0, 280)
mainMenu.Position = UDim2.new(0.5, -125, 0.5, -140)
mainMenu.AnchorPoint = Vector2.new(0, 0)
mainMenu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainMenu.BackgroundTransparency = 0.2
mainMenu.Visible = false
mainMenu.Active = true
mainMenu.Parent = screenGui

local menuCorner = Instance.new("UICorner")
menuCorner.CornerRadius = UDim.new(0, 12)
menuCorner.Parent = mainMenu

local dragHandle = Instance.new("TextLabel")
dragHandle.Name = "DragHandle"
dragHandle.Size = UDim2.new(1, 0, 0, 35)
dragHandle.Position = UDim2.new(0, 0, 0, 5)
dragHandle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
dragHandle.BackgroundTransparency = 0.3
dragHandle.TextColor3 = Color3.fromRGB(255, 255, 255)
dragHandle.Text = "BYW SCRIPT - AUTO FARM"
dragHandle.TextSize = 14
dragHandle.Font = Enum.Font.GothamBold
dragHandle.Parent = mainMenu

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = dragHandle

local blockCountLabel = Instance.new("TextLabel")
blockCountLabel.Name = "BlockCount"
blockCountLabel.Size = UDim2.new(1, -20, 0, 25)
blockCountLabel.Position = UDim2.new(0, 10, 0, 45)
blockCountLabel.BackgroundTransparency = 1
blockCountLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
blockCountLabel.Text = "Blocks: 0"
blockCountLabel.TextSize = 16
blockCountLabel.Font = Enum.Font.GothamBold
blockCountLabel.Parent = mainMenu

local controlSection = Instance.new("Frame")
controlSection.Name = "ControlSection"
controlSection.Size = UDim2.new(1, -20, 0, 70)
controlSection.Position = UDim2.new(0, 10, 0, 75)
controlSection.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
controlSection.BackgroundTransparency = 0.3
controlSection.Parent = mainMenu

local controlCorner = Instance.new("UICorner")
controlCorner.CornerRadius = UDim.new(0, 8)
controlCorner.Parent = controlSection

local addBlockBtn = Instance.new("TextButton")
addBlockBtn.Name = "AddBlock"
addBlockBtn.Size = UDim2.new(0, 70, 0, 35)
addBlockBtn.Position = UDim2.new(0.3, -35, 0.5, -17.5)
addBlockBtn.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
addBlockBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
addBlockBtn.Text = "+ ADD"
addBlockBtn.TextSize = 14
addBlockBtn.Font = Enum.Font.GothamBold
addBlockBtn.Parent = controlSection

local removeBlockBtn = Instance.new("TextButton")
removeBlockBtn.Name = "RemoveBlock"
removeBlockBtn.Size = UDim2.new(0, 70, 0, 35)
removeBlockBtn.Position = UDim2.new(0.7, -35, 0.5, -17.5)
removeBlockBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
removeBlockBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
removeBlockBtn.Text = "- REM"
removeBlockBtn.TextSize = 14
removeBlockBtn.Font = Enum.Font.GothamBold
removeBlockBtn.Parent = controlSection

local speedSection = Instance.new("Frame")
speedSection.Name = "SpeedSection"
speedSection.Size = UDim2.new(1, -20, 0, 50)
speedSection.Position = UDim2.new(0, 10, 0, 155)
speedSection.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
speedSection.BackgroundTransparency = 0.3
speedSection.Parent = mainMenu

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0, 8)
speedCorner.Parent = speedSection

local speedLabel = Instance.new("TextLabel")
speedLabel.Name = "SpeedLabel"
speedLabel.Size = UDim2.new(0.4, 0, 1, 0)
speedLabel.Position = UDim2.new(0, 10, 0, 0)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
speedLabel.Text = "Speed:"
speedLabel.TextSize = 14
speedLabel.Font = Enum.Font.Gotham
speedLabel.TextXAlignment = Enum.TextXAlignment.Left
speedLabel.Parent = speedSection

local speedTextBox = Instance.new("TextBox")
speedTextBox.Name = "SpeedTextBox"
speedTextBox.Size = UDim2.new(0.4, 0, 0, 25)
speedTextBox.Position = UDim2.new(0.5, 0, 0.25, 0)
speedTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speedTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
speedTextBox.Text = "20"
speedTextBox.TextSize = 14
speedTextBox.Font = Enum.Font.Gotham
speedTextBox.PlaceholderText = "Speed"
speedTextBox.Parent = speedSection

local speedTextCorner = Instance.new("UICorner")
speedTextCorner.CornerRadius = UDim.new(0, 6)
speedTextCorner.Parent = speedTextBox

local startBtn = Instance.new("TextButton")
startBtn.Name = "StartFarm"
startBtn.Size = UDim2.new(0, 80, 0, 35)
startBtn.Position = UDim2.new(0.25, -40, 1, -45)
startBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
startBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
startBtn.Text = "START"
startBtn.TextSize = 14
startBtn.Font = Enum.Font.GothamBold
startBtn.Parent = mainMenu

local deleteAllBtn = Instance.new("TextButton")
deleteAllBtn.Name = "DeleteAll"
deleteAllBtn.Size = UDim2.new(0, 80, 0, 35)
deleteAllBtn.Position = UDim2.new(0.75, -40, 1, -45)
deleteAllBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
deleteAllBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
deleteAllBtn.Text = "DELETE"
deleteAllBtn.TextSize = 12
deleteAllBtn.Font = Enum.Font.GothamBold
deleteAllBtn.Parent = mainMenu

local buttonCorners = {addBlockBtn, removeBlockBtn, startBtn, deleteAllBtn, speedTextBox}
for _, button in pairs(buttonCorners) do
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = button
end

local draggingMenu = false
local dragStart
local startPos

local function updateMenu(input)
    local delta = input.Position - dragStart
    mainMenu.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

dragHandle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingMenu = true
        dragStart = input.Position
        startPos = mainMenu.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingMenu = false
            end
        end)
    end
end)

local draggingButton = false
local buttonDragStart
local buttonStartPos

local function updateButton(input)
    local delta = input.Position - buttonDragStart
    mainBtn.Position = UDim2.new(buttonStartPos.X.Scale, buttonStartPos.X.Offset + delta.X, buttonStartPos.Y.Scale, buttonStartPos.Y.Offset + delta.Y)
end

mainBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingButton = true
        buttonDragStart = input.Position
        buttonStartPos = mainBtn.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingButton = false
            end
        end)
    end
end)

mainBtn.MouseButton1Click:Connect(function()
    if not draggingButton then
        mainMenu.Visible = not mainMenu.Visible
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if draggingMenu and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateMenu(input)
    end
    
    if draggingButton and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateButton(input)
    end
end)

local blocks = {}
local isFarming = false
local currentBlockIndex = 1
local farmConnection
local moveSpeed = 20
local isWaiting = false

local function createBlock()
    local character = game.Players.LocalPlayer.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local block = Instance.new("Part")
    block.Name = "FarmBlock_" .. #blocks + 1
    block.Size = Vector3.new(2, 2, 2)
    block.Position = humanoidRootPart.Position
    block.Anchored = true
    block.CanCollide = false
    block.Material = Enum.Material.Neon
    block.BrickColor = BrickColor.new("Bright red")
    block.Transparency = 0.3
    block.Parent = workspace
    
    table.insert(blocks, block)
    blockCountLabel.Text = "Blocks: " .. #blocks
    
    return block
end

local function removeLastBlock()
    if #blocks > 0 then
        local lastBlock = table.remove(blocks)
        lastBlock:Destroy()
        blockCountLabel.Text = "Blocks: " .. #blocks
        
        if currentBlockIndex > #blocks then
            currentBlockIndex = math.max(1, #blocks)
        end
    end
end

local function deleteAllBlocks()
    for i = #blocks, 1, -1 do
        blocks[i]:Destroy()
        table.remove(blocks, i)
    end
    blockCountLabel.Text = "Blocks: 0"
    currentBlockIndex = 1
end

local function updateSpeed()
    local speedText = speedTextBox.Text
    local newSpeed = tonumber(speedText)
    
    if newSpeed and newSpeed >= 1 and newSpeed <= 200 then
        moveSpeed = newSpeed
        speedTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    else
        speedTextBox.BackgroundColor3 = Color3.fromRGB(255, 150, 150)
        speedTextBox.Text = tostring(moveSpeed)
    end
end

local function disableCollisions(character)
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end

local function enableCollisions(character)
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

local function startAutoFarm()
    if #blocks == 0 or isFarming then return end
    
    isFarming = true
    startBtn.Text = "STOP"
    startBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
    
    local character = game.Players.LocalPlayer.Character
    if character then
        disableCollisions(character)
    end
    
    farmConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if not isFarming or #blocks == 0 or isWaiting then
            return
        end
        
        local character = game.Players.LocalPlayer.Character
        if not character then return end
        
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChild("Humanoid")
        if not humanoidRootPart or not humanoid then return end
        
        local currentBlock = blocks[currentBlockIndex]
        if not currentBlock or not currentBlock.Parent then
            currentBlockIndex = currentBlockIndex + 1
            if currentBlockIndex > #blocks then
                currentBlockIndex = 1
            end
            return
        end
        
        local targetPosition = currentBlock.Position
        local distance = (humanoidRootPart.Position - targetPosition).Magnitude
        
        if distance > 1 then
            local startPosition = humanoidRootPart.Position
            local direction = (targetPosition - startPosition).Unit
            local moveDistance = math.min(distance, moveSpeed * 0.02)
            local newPosition = startPosition + direction * moveDistance
            
            humanoidRootPart.CFrame = CFrame.new(newPosition)
        else
            isWaiting = true
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
            wait(0.1)
            currentBlockIndex = currentBlockIndex + 1
            if currentBlockIndex > #blocks then
                currentBlockIndex = 1
            end
            isWaiting = false
        end
    end)
end

local function stopAutoFarm()
    isFarming = false
    isWaiting = false
    startBtn.Text = "START"
    startBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
    
    local character = game.Players.LocalPlayer.Character
    if character then
        enableCollisions(character)
    end
    
    if farmConnection then
        farmConnection:Disconnect()
        farmConnection = nil
    end
    currentBlockIndex = 1
end

addBlockBtn.MouseButton1Click:Connect(function()
    createBlock()
end)

removeBlockBtn.MouseButton1Click:Connect(function()
    removeLastBlock()
end)

speedTextBox.FocusLost:Connect(function(enterPressed)
    updateSpeed()
end)

startBtn.MouseButton1Click:Connect(function()
    if not isFarming then
        if #blocks > 0 then
            startAutoFarm()
        else
            local originalText = startBtn.Text
            startBtn.Text = "NO BLOCKS"
            wait(1)
            startBtn.Text = originalText
        end
    else
        stopAutoFarm()
    end
end)

deleteAllBtn.MouseButton1Click:Connect(function()
    stopAutoFarm()
    deleteAllBlocks()
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    stopAutoFarm()
    character:WaitForChild("HumanoidRootPart")
    if isFarming then
        disableCollisions(character)
    end
end)

game.Players.LocalPlayer.CharacterRemoving:Connect(function()
    stopAutoFarm()
end)

print("BYW SCRIPT loaded!")
