-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0, 100, 0, 100)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.Position = UDim2.new(0, 0, 3.3499999, 0)
Frame_2.Size = UDim2.new(0, 184, 0, 151)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame_2

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(167, 167, 167)
TextBox.Position = UDim2.new(0.0745652243, 0, 0.0993377492, 0)
TextBox.Size = UDim2.new(0, 155, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
TextBox.PlaceholderText = "Badge ID"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 18.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TextBox

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0745652243, 0, 0.576158941, 0)
TextButton.Size = UDim2.new(0, 155, 0, 50)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Get Badge"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 18.000

-- Scripts:

local function HOTHITH_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		local text = script.Parent.Parent.TextBox.Text
		local args = {
			[1] = "AwardBadge",
			[2] = text
		}
	
		game:GetService("ReplicatedStorage").Remotes.Events.MainRemote:FireServer(unpack(args))
	
	end)
end
coroutine.wrap(HOTHITH_fake_script)()
local function OYUPH_fake_script() -- Frame_2.Drag 
	local script = Instance.new('LocalScript', Frame_2)

	frame = script.Parent
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(OYUPH_fake_script)()
