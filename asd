-- Meme Tower Defense Hack

local CoreGui = game:GetService("Players").LocalPlayer.PlayerGui
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.Button1Down:Connect(function()
	pcall(function()
		if not game.Workspace:FindFirstChild("CLSFAWDEF") then
			local CLSFAWDEF = Instance.new("Part")
			CLSFAWDEF.Name = "CLSFAWDEF"
			CLSFAWDEF.Parent = game.Workspace
			CLSFAWDEF.Size = Vector3.new(2, 2, 2)
			CLSFAWDEF.Anchored = true
			CLSFAWDEF.CanCollide = false
			CLSFAWDEF.CanQuery = false
			CLSFAWDEF.Color = Color3.fromRGB(255, 0, 0)
			CLSFAWDEF.Material = Enum.Material.ForceField
			CLSFAWDEF.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z) * CFrame.new(0, 1, 0)
		elseif game.Workspace:FindFirstChild("CLSFAWDEF") then
			local CLSFAWDEF = game.Workspace:FindFirstChild("CLSFAWDEF")
			CLSFAWDEF.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z) * CFrame.new(0, 1, 0)
		end
	end)
end)

--[Setting]
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	UIStroke.Enabled = true
	UIStroke.Color = Color3.fromRGB(255,255,255)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UICorner.CornerRadius = UDim.new(0, 8)
	
	local Buttons = Instance.new("TextButton")
	local c1 = UICorner:Clone()
	local s1 = UICorner:Clone()
	c1.Parent = Buttons
	s1.Parent = Buttons
	Buttons.BackgroundColor3 = Color3.new(0, 0, 0)
	Buttons.Text = ""
	Buttons.Size = UDim2.new(0, 120, 0, 35)
	Buttons.BackgroundTransparency = 0.85
	local ImageB = Instance.new("ImageLabel")
	local c1 = UICorner:Clone()
	c1.Parent = ImageB
	ImageB.Parent = Buttons
	ImageB.Position = UDim2.new(0,0,0,0)
	ImageB.Size = UDim2.new(0, 35, 0, 35)
	ImageB.ImageColor3 = Color3.new(0,0,0)
	ImageB.Name = "Image"
	ImageB.BackgroundTransparency = 0.85
	local NameB = Instance.new("TextLabel")
	NameB.Parent = Buttons
	NameB.Name = "NameTower"
	NameB.Position = UDim2.new(0.292, 0, 0, 0)
	NameB.Size = UDim2.new(0, 85, 0, 20)
	NameB.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameB.BackgroundTransparency = 1
	NameB.Font = Enum.Font.PatrickHand
	NameB.TextScaled = true
	NameB.RichText = true
	NameB.TextXAlignment = Enum.TextXAlignment.Left
	local PriceB = Instance.new("TextLabel")
	PriceB.Position = UDim2.new(0.292, 0, 0, 0)
	PriceB.Size = UDim2.new(0, 85, 0, 20)
	PriceB.TextColor3 = Color3.fromRGB(255, 255, 255)
	PriceB.BackgroundTransparency = 1
	PriceB.Font = Enum.Font.PatrickHand
	PriceB.TextScaled = true
	PriceB.RichText = true
	PriceB.TextXAlignment = Enum.TextXAlignment.Left

if not CoreGui:FindFirstChild("DefenseHackTower") then
	local MenuGui = Instance.new("ScreenGui")
	MenuGui.Name = "DefenseHackTower"
	MenuGui.ResetOnSpawn = false
	MenuGui.DisplayOrder = 99999999
	MenuGui.Parent = CoreGui
	local BackGround = Instance.new("Frame")
	BackGround.Draggable = true
	BackGround.Active = true
	local c2 = UICorner:Clone()
	local s2 = UICorner:Clone()
	c2.Parent = BackGround
	s2.Parent = BackGround
	BackGround.Size = UDim2.new(0.136, 0, 0.317, 0)
	BackGround.Position = UDim2.new(0.857, 0, 0.341, 0)
	BackGround.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	BackGround.BackgroundTransparency = 0.75
	BackGround.Visible = true
	BackGround.Parent = MenuGui
	local title = NameB:Clone()
	title.Position = UDim2.new(0,0,0,0)
	title.Size = UDim2.new(1, 0, 0.162, 0)
	title.Text = "Towers"
	title.Parent = BackGround
	title.TextXAlignment = Enum.TextXAlignment.Center
	local ListTowers = Instance.new("ScrollingFrame")
	local list = Instance.new("UIListLayout")
	ListTowers.Size = UDim2.new(1, 0, 0.805, 0)
	ListTowers.Position = UDim2.new(0, 0, 0.195, 0)
	ListTowers.BackgroundTransparency = 1
	ListTowers.AutomaticCanvasSize = Enum.AutomaticSize.Y
	ListTowers.CanvasSize = UDim2.new(0,0,0,0)
	ListTowers.ScrollBarThickness = 0
	ListTowers.Visible = true
	ListTowers.Parent = BackGround
	list.Parent = ListTowers
	list.Padding = UDim.new(0, 7)
	list.HorizontalAlignment = Enum.HorizontalAlignment.Center
	
	local Toggle = Instance.new("ImageButton")
	local c3 = UICorner:Clone()
	local s3 = UIStroke:Clone()
	c3.Parent = Toggle
	s3.Parent = Toggle
	Toggle.Parent = MenuGui
	Toggle.Draggable = true
	Toggle.Active = true
	Toggle.Position = UDim2.new(0.058, 0, 0.177, 0)
	Toggle.Size = UDim2.new(0.04, 0, 0.06, 0)
	Toggle.BackgroundTransparency = 0.75
	Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.Image = "rbxassetid://130160585574912"
	Toggle.ScaleType = Enum.ScaleType.Crop
	Toggle.ImageColor3 = Color3.fromRGB(255, 0,0)
	s3.Color = Toggle.ImageColor3
	
	local Spawns = Instance.new("ImageButton")
	local c4 = UICorner:Clone()
	local s4 = UIStroke:Clone()
	c4.Parent = Toggle
	s4.Parent = Toggle
	Spawns.Parent = MenuGui
	Spawns.Draggable = true
	Spawns.Active = true
	Spawns.Position = UDim2.new(0.151, 0, 0.151, 0)
	Spawns.Size = UDim2.new(0.06, 0, 0.08, 0)
	Spawns.BackgroundTransparency = 0.75
	Spawns.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Spawns.Image = "rbxassetid://131843948312186"
	Spawns.ScaleType = Enum.ScaleType.Crop
	Spawns.ImageColor3 = Color3.fromRGB(0, 255,0)
	s4.Color = Spawns.ImageColor3
	
	local Selected = Instance.new("StringValue")
	Selected.Name = "Selected"
	Selected.Parent = MenuGui
	
	Toggle.MouseButton1Click:Connect(function()
		if BackGround.Visible == false then
			BackGround.Visible = true
			Toggle.ImageColor3 = Color3.fromRGB(0, 255, 0)
			s3.Color = Toggle.ImageColor3
		elseif BackGround.Visible == true then
			BackGround.Visible = false
			Toggle.ImageColor3 = Color3.fromRGB(255, 0,0)
			s3.Color = Toggle.ImageColor3
		end
	end)
	
	local tg = false
	
	Spawns.MouseButton1Click:Connect(function()
		pcall(function()
			if tg == false then
			tg = true
			Spawns.ImageColor3 = Color3.fromRGB(255, 0, 0)
			s4.Color = Spawns.ImageColor3
			
			local place = {
				[1] = ""..Selected.Value,
				[2] = game.Workspace:FindFirstChild("CLSFAWDEF").CFrame,
			}
			game:GetService("ReplicatedStorage").Functions.SpawnTower:InvokeServer(unpack(place))
			
			wait(0.5)
			Spawns.ImageColor3 = Color3.fromRGB(0, 255, 0)
			s4.Color = Spawns.ImageColor3
			tg = false
			end
		end)
	end)
	
	for _, Towers in pairs(game.ReplicatedStorage.Towers:GetDescendants()) do
		if Towers:IsA("Model") then
			pcall(function()
				local Tower = Buttons:Clone()
			Tower.Parent = ListTowers
			Tower.Name = Towers.Name
			Tower.NameTower.Text = Towers.Name
			Tower.Image.Image = Towers.Icon.Image
			end)
			Tower.MouseButton1Click:Connect(function()
				Selected.Value = Tower.NameTower.Text
			end)
		end
	end
	
elseif CoreGui:FindFirstChild("DefenseHackTower") then
	CoreGui:FindFirstChild("DefenseHackTower"):Destroy()
end
