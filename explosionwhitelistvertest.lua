-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local executer = Instance.new("TextButton")
local attach = Instance.new("TextButton")
local logo = Instance.new("ImageLabel")
local clear = Instance.new("TextButton")
local attachnotice = Instance.new("TextLabel")
local luascroll = Instance.new("ScrollingFrame")
local lua = Instance.new("TextBox")
local hub = Instance.new("TextButton")
local rejoin = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local whitelistbox = Instance.new("TextBox")
local question = Instance.new("TextLabel")
local wlsubmit = Instance.new("TextButton")
local questionmark = Instance.new("ImageLabel")

--Properties:

main.Parent = game.CoreGui

mainframe.Name = "mainframe"
mainframe.Parent = main
mainframe.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0, 22, 0, 189)
mainframe.Size = UDim2.new(0, 351, 0, 268)
mainframe.Visible = false
mainframe.Active = false
mainframe.Draggable = true

executer.Name = "executer"
executer.Parent = mainframe
executer.Active = false
executer.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
executer.BorderSizePixel = 0
executer.Position = UDim2.new(0, 184, 0, 199)
executer.Size = UDim2.new(0, 159, 0, 14)
executer.Visible = false
executer.Font = Enum.Font.Arial
executer.Text = "Execute"
executer.TextColor3 = Color3.fromRGB(157, 67, 67)
executer.TextScaled = true
executer.TextSize = 14.000
executer.TextWrapped = true
executer.MouseButton1Down:connect(function()
	loadstring(lua.Text)()
	
end)

attach.Name = "attach"
attach.Parent = mainframe
attach.Active = false
attach.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
attach.BorderSizePixel = 0
attach.Position = UDim2.new(0, 184, 0, 244)
attach.Size = UDim2.new(0, 159, 0, 14)
attach.Visible = false
attach.Font = Enum.Font.Arial
attach.Text = "Attach"
attach.TextColor3 = Color3.fromRGB(157, 67, 67)
attach.TextScaled = true
attach.TextSize = 14.000
attach.TextWrapped = true
attach.MouseButton1Down:connect(function()
	wait(0.4)
	attachnotice.Text = "Attaching..."
	local audio = Instance.new("Sound",game.Workspace)
	audio.SoundId = "rbxassetid://142916958"
	audio:Play()
	wait(2)
	attachnotice.Text = "Please wait..."
	local audio2 = Instance.new("Sound",game.Workspace)
	audio2.SoundId = "rbxassetid://489390072"
	audio2:Play()
	wait(4)
	attachnotice.Text = "Attached! Have fun!"
	local audio3 = Instance.new("Sound",game.Workspace)
	audio3.SoundId = "rbxassetid://142601170"
	audio3:Play()
	attach:Destroy()
	wait(2)
	executer.Active = true
	attachnotice.Text = "Feel free to execute a script now."
	wait(1)
	attachnotice.Text = "your swag if you actually bought this 😎"
	print("have fun with explosion!!")
	
	
end)

logo.Name = "logo"
logo.Parent = mainframe
logo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
logo.BackgroundTransparency = 1.000
logo.Size = UDim2.new(0, 24, 0, 28)
logo.Visible = false
logo.Image = "rbxassetid://5585332357"

clear.Name = "clear"
clear.Parent = mainframe
clear.Active = false
clear.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0, 184, 0, 221)
clear.Size = UDim2.new(0, 159, 0, 13)
clear.Visible = false
clear.Font = Enum.Font.Arial
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(157, 67, 67)
clear.TextScaled = true
clear.TextSize = 14.000
clear.TextWrapped = true
clear.MouseButton1Down:connect(function()
	lua.Text = ""	
end)

attachnotice.Name = "attachnotice"
attachnotice.Parent = mainframe
attachnotice.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
attachnotice.BorderSizePixel = 0
attachnotice.Position = UDim2.new(0.031339027, 0, 0.74253732, 0)
attachnotice.Size = UDim2.new(0, 161, 0, 59)
attachnotice.Visible = false
attachnotice.Font = Enum.Font.Garamond
attachnotice.Text = "--not attached"
attachnotice.TextColor3 = Color3.fromRGB(157, 67, 67)
attachnotice.TextScaled = true
attachnotice.TextSize = 14.000
attachnotice.TextWrapped = true
attachnotice.TextXAlignment = Enum.TextXAlignment.Left
attachnotice.TextYAlignment = Enum.TextYAlignment.Top

luascroll.Name = "luascroll"
luascroll.Parent = mainframe
luascroll.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
luascroll.BorderSizePixel = 0
luascroll.Position = UDim2.new(0, 24, 0, 28)
luascroll.Size = UDim2.new(0, 258, 0, 164)
luascroll.Visible = false
luascroll.CanvasSize = UDim2.new(0, 0, 400, 0)

lua.Name = "lua"
lua.Parent = luascroll
lua.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lua.BackgroundTransparency = 1.000
lua.Size = UDim2.new(0, 258, 0, 793912960)
lua.Font = Enum.Font.SourceSans
lua.Text = ""
lua.TextColor3 = Color3.fromRGB(168, 87, 87)
lua.TextSize = 14.000
lua.TextXAlignment = Enum.TextXAlignment.Left
lua.TextYAlignment = Enum.TextYAlignment.Top

hub.Name = "hub"
hub.Parent = mainframe
hub.Active = false
hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hub.BackgroundTransparency = 1.000
hub.Position = UDim2.new(0.82027179, 0, 0.451508105, 0)
hub.Size = UDim2.new(0, 55, 0, 70)
hub.Visible = false
hub.Font = Enum.Font.Arial
hub.Text = "Hub"
hub.TextColor3 = Color3.fromRGB(157, 67, 67)
hub.TextScaled = true
hub.TextSize = 14.000
hub.TextWrapped = true

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.140083224, 0, 0.565761983, 0)
Frame.Size = UDim2.new(0, 189, 0, 101)

whitelistbox.Name = "whitelistbox"
whitelistbox.Parent = Frame
whitelistbox.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
whitelistbox.BackgroundTransparency = 0.750
whitelistbox.BorderSizePixel = 0
whitelistbox.Position = UDim2.new(0.100529097, 0, 0.405904025, 0)
whitelistbox.Size = UDim2.new(0, 151, 0, 27)
whitelistbox.Font = Enum.Font.SourceSans
whitelistbox.PlaceholderColor3 = Color3.fromRGB(157, 67, 67)
whitelistbox.Text = "enter here"
whitelistbox.TextColor3 = Color3.fromRGB(157, 67, 67)
whitelistbox.TextScaled = true
whitelistbox.TextSize = 14.000
whitelistbox.TextWrapped = true

question.Name = "question"
question.Parent = Frame
question.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
question.BackgroundTransparency = 1.000
question.Position = UDim2.new(0.100529097, 0, 0, 0)
question.Size = UDim2.new(0, 151, 0, 40)
question.Font = Enum.Font.Arial
question.Text = "got the whitelist?"
question.TextColor3 = Color3.fromRGB(157, 67, 67)
question.TextScaled = true
question.TextSize = 14.000
question.TextWrapped = true

wlsubmit.Name = "wlsubmit"
wlsubmit.Parent = Frame
wlsubmit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wlsubmit.BackgroundTransparency = 1.000
wlsubmit.Position = UDim2.new(0.100529097, 0, 0.742537677, 0)
wlsubmit.Size = UDim2.new(0, 151, 0, 17)
wlsubmit.Font = Enum.Font.Arial
wlsubmit.Text = "Submit"
wlsubmit.TextColor3 = Color3.fromRGB(157, 67, 67)
wlsubmit.TextScaled = true
wlsubmit.TextSize = 14.000
wlsubmit.TextWrapped = true
wlsubmit.MouseButton1Down:connect(function()
	if whitelistbox.Text == "KfcAndwaTermeloN" then
		wait(0.5)
		whitelistbox.Text = "correct!"
		local correct = Instance.new("Sound", game.Workspace)
		correct.SoundId = "rbxassetid://2911810095"
		correct:Play()
		wait(0.7)
		whitelistbox.Text = "Have a nice day!"
		wait(0.6)
		Frame:Destroy()
		wait(0.4)
		mainframe.Visible = true
		mainframe.Active = true
		hub.Active = true
		hub.Visible = true
		clear.Active = true
		clear.Visible = true
		executer.Active = true
		executer.Visible = true
		attach.Active = true
		attach.Visible = true
		logo.Active = true
		logo.Visible = true
		attachnotice.Active = true
		attachnotice.Visible = true
		luascroll.Active = true
		luascroll.Visible = true
		lua.Active = true
		lua.Visible = true
	end
end)

questionmark.Name = "questionmark"
questionmark.Parent = Frame
questionmark.Active = true
questionmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
questionmark.BackgroundTransparency = 1.000
questionmark.BorderColor3 = Color3.fromRGB(27, 42, 53)
questionmark.Position = UDim2.new(0.232804239, 0, -0.712871313, 0)
questionmark.Size = UDim2.new(0, 100, 0, 100)
questionmark.Image = "http://www.roblox.com/asset/?id=152285505"