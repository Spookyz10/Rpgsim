repeat wait() until game:IsLoaded()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local TextService = game:GetService("TextService")
local library = {flags = {}}

local function tweenObject(object, data, time)
    local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
    local tween = TweenService:Create(object, tweenInfo, data)
    tween:Play()
    return tween
end

local http = game:GetService("HttpService")

if not isfile("epicthing.config") then 
    writefile("epicthing.config", tostring(http:JSONEncode({})))
end

local function GetSetting(name)
    if not isfile("epicthing.config") then 
        writefile("epicthing.config", tostring(http:JSONEncode({})))
    end
    local content = readfile("epicthing.config")
    local parsed = http:JSONDecode(content)
    name = name:gsub("%s+", "")
    if parsed[tostring(game.GameId)] and parsed[tostring(game.GameId)][name] then 
        return parsed[tostring(game.GameId)][name] 
    end
end

local function AddSetting(name, value)
    if not isfile("epicthing.config") then 
        writefile("epicthing.config", tostring(http:JSONEncode({})))
    end
    
    local content = readfile("epicthing.config")
    local parsed = http:JSONDecode(content)
    if not parsed[tostring(game.GameId)] then 
        parsed[tostring(game.GameId)] = {}
    end 
    parsed[tostring(game.GameId)][name:gsub("%s+", "")] = value 
    writefile("epicthing.config", tostring(http:JSONEncode(parsed)))
end

function library:Window(TitleWhite)
    if game.CoreGui:FindFirstChild("BloxburgUi") then
        game.CoreGui:FindFirstChild("BloxburgUi"):Destroy()
    end
    local BloxburgUi = Instance.new("ScreenGui")
    local MainUIFrame = Instance.new("ImageLabel")
    local Cool = Instance.new("ImageLabel")
    local BloxburgCool = Instance.new("Frame")
    local TabsHolder = Instance.new("ImageLabel")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local BloxburgTitle1 = Instance.new("Frame")
    local BloxburgTitle = Instance.new("TextLabel")
    local BloxburgHubTitle = Instance.new("TextLabel")
    BloxburgUi.Name = "BloxburgUi"
    BloxburgUi.Parent = game:GetService("CoreGui")
    BloxburgUi.DisplayOrder = 1
    MainUIFrame.Name = "MainUIFrame"
    MainUIFrame.Parent = BloxburgUi
    MainUIFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainUIFrame.BackgroundTransparency = 1.000
    MainUIFrame.Position = UDim2.new(0.252025217, 0, 0.226720661, 0)
    MainUIFrame.Size = UDim2.new(0, 551, 0, 404)
    MainUIFrame.Image = "rbxassetid://3570695787"
    MainUIFrame.ImageColor3 = Color3.fromRGB(22, 22, 22)
    MainUIFrame.ScaleType = Enum.ScaleType.Slice
    MainUIFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    MainUIFrame.SliceScale = 0.050
    Cool.Name = "Cool"
    Cool.Parent = MainUIFrame
    Cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cool.BackgroundTransparency = 1.000
    Cool.Position = UDim2.new(0.065, 0, 0.025, 0)
    Cool.Size = UDim2.new(0, 55, 0, 55)
    Cool.ZIndex = 2
    Cool.Image = "rbxassetid://166652117"
    BloxburgCool.Name = "BloxburgCool"
    BloxburgCool.Parent = MainUIFrame
    BloxburgCool.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    BloxburgCool.BorderSizePixel = 0
    BloxburgCool.Size = UDim2.new(0, 125, 0, 97)
    TabsHolder.Name = "TabsHolder"
    TabsHolder.Parent = MainUIFrame
    TabsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsHolder.BackgroundTransparency = 1.000
    TabsHolder.Position = UDim2.new(0, 0, 0.25, 0)
    TabsHolder.Size = UDim2.new(0, 125, 0, 307)
    TabsHolder.Image = "rbxassetid://3570695787"
    TabsHolder.ImageColor3 = Color3.fromRGB(24, 24, 24)
    TabsHolder.ScaleType = Enum.ScaleType.Slice
    TabsHolder.SliceCenter = Rect.new(100, 100, 100, 100)
    TabsHolder.SliceScale = 0.050
    BloxburgTitle1.Name = "BloxburgTitle"
    BloxburgTitle1.Parent = MainUIFrame
    BloxburgTitle1.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    BloxburgTitle1.BorderSizePixel = 0
    BloxburgTitle1.Position = UDim2.new(0.226860255, 0, 0, 0)
    BloxburgTitle1.Size = UDim2.new(0, 426, 0, 35)
    BloxburgTitle.Name = "BloxburgTitle"
    BloxburgTitle.Parent = BloxburgTitle1
    BloxburgTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BloxburgTitle.BackgroundTransparency = 1.000
    BloxburgTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
    BloxburgTitle.Position = UDim2.new(0.0148883378, 0, 0, 0)
    BloxburgTitle.Size = UDim2.new(0, 420, 0, 35)
    BloxburgTitle.Font = Enum.Font.GothamBold
    BloxburgTitle.Text = TitleWhite
    BloxburgTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
    BloxburgTitle.TextSize = 15.000
    BloxburgTitle.TextXAlignment = Enum.TextXAlignment.Left
    BloxburgHubTitle.Name = "BloxburgHubTitle"
    BloxburgHubTitle.Parent = MainUIFrame
    BloxburgHubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BloxburgHubTitle.BackgroundTransparency = 1.000
    BloxburgHubTitle.Position = UDim2.new(0.05, 0, 0.16, 0)
    BloxburgHubTitle.Size = UDim2.new(0, 372, 0, 35)
    BloxburgHubTitle.Font = Enum.Font.GothamBold
    BloxburgHubTitle.Text = "Epic Thing"
    BloxburgHubTitle.TextColor3 = Color3.fromRGB(84, 116, 224)
    BloxburgHubTitle.TextSize = 15.000
    BloxburgHubTitle.TextXAlignment = Enum.TextXAlignment.Left
    UIListLayout.Parent = TabsHolder
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPadding.Parent = TabsHolder
    local MainUITabPickedHolder = Instance.new("Frame")
    MainUITabPickedHolder.Name = "MainUITabPickedHolder"
    MainUITabPickedHolder.Parent = MainUIFrame
    MainUITabPickedHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainUITabPickedHolder.BackgroundTransparency = 1.000
    MainUITabPickedHolder.Position = UDim2.new(0.226860255, 0, 0.0866336599, 0)
    MainUITabPickedHolder.Size = UDim2.new(0, 426, 0, 369)
    local connections = {}

    MainUIFrame.InputBegan:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local InitialPos = input.Position
            local InitialFramePos = MainUIFrame.Position
            connections.MouseMoved = UserInputService.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    local delta = input.Position - InitialPos
                    tweenObject(MainUIFrame, {
                        Position = UDim2.new(InitialFramePos.X.Scale, InitialFramePos.X.Offset + delta.X, InitialFramePos.Y.Scale, InitialFramePos.Y.Offset + delta.Y)
                    }, 0.1)
                end
            end)
            MainUIFrame.InputEnded:connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    connections.MouseMoved:Disconnect()
                end
            end)
        end
    end)

    local opened = true

    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then
            opened = not opened 
            MainUIFrame.Visible = opened 
        end
    end)

local window = {}
    function window:Notification(Type, content, callback)
        if Type == "Message" then
            local NotificationMain = Instance.new("ImageLabel")
            local NotificationDropShadow = Instance.new("ImageLabel")
            local NotificationTitleHodler = Instance.new("Frame")
            local NotificationTitle = Instance.new("TextLabel")
            local NotificationCool = Instance.new("ImageLabel")
            local NotificationText = Instance.new("TextLabel")
            local NotificationOkay = Instance.new("TextButton")
            NotificationMain.Name = "NotificationMain"
            NotificationMain.Parent = BloxburgUi
            NotificationMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationMain.BackgroundTransparency = 1.000
            NotificationMain.Position = UDim2.new(-0.3, 0, 0.775, 0)
            tweenObject(NotificationMain, {
                Position = UDim2.new(0.015, 0, 0.775, 0)
            }, 0.5)
            NotificationMain.Size = UDim2.new(0, 268, 0, 124)
            NotificationMain.Image = "rbxassetid://3570695787"
            NotificationMain.ImageColor3 = Color3.fromRGB(22, 22, 22)
            NotificationMain.ScaleType = Enum.ScaleType.Slice
            NotificationMain.SliceCenter = Rect.new(100, 100, 100, 100)
            NotificationMain.SliceScale = 0.050
            NotificationDropShadow.Name = "NotificationDropShadow"
            NotificationDropShadow.Parent = NotificationMain
            NotificationDropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationDropShadow.BackgroundTransparency = 1.000
            NotificationDropShadow.Position = UDim2.new(-0.315028518, 0, -0.540322602, 0)
            NotificationDropShadow.Size = UDim2.new(0, 442, 0, 258)
            NotificationDropShadow.ZIndex = -1
            NotificationDropShadow.Image = "rbxassetid://5089202498"
            NotificationTitleHodler.Name = "NotificationTitleHodler"
            NotificationTitleHodler.Parent = NotificationMain
            NotificationTitleHodler.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            NotificationTitleHodler.BorderSizePixel = 0
            NotificationTitleHodler.Size = UDim2.new(0, 268, 0, 31)
            NotificationTitle.Name = "NotificationTitle"
            NotificationTitle.Parent = NotificationTitleHodler
            NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationTitle.BackgroundTransparency = 1.000
            NotificationTitle.Position = UDim2.new(0.0261194035, 0, 0, 0)
            NotificationTitle.Size = UDim2.new(0, 261, 0, 31)
            NotificationTitle.Font = Enum.Font.GothamSemibold
            NotificationTitle.Text = "Notification"
            NotificationTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
            NotificationTitle.TextSize = 14.000
            NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left
            NotificationCool.Name = "NotificationCool"
            NotificationCool.Parent = NotificationTitleHodler
            NotificationCool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationCool.BackgroundTransparency = 1.000
            NotificationCool.Position = UDim2.new(0.914178967, 0, 0.225806445, 0)
            NotificationCool.Size = UDim2.new(0, 17, 0, 17)
            NotificationCool.Image = "rbxgameasset://Images/w"
            NotificationText.Name = "NotificationText"
            NotificationText.Parent = NotificationMain
            NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationText.BackgroundTransparency = 1.000
            NotificationText.Position = UDim2.new(-0.0037313432, 0, 0.25, 0)
            NotificationText.Size = UDim2.new(0, 268, 0, 66)
            NotificationText.ZIndex = 2
            NotificationText.Font = Enum.Font.GothamSemibold
            NotificationText.Text = content.Text
            NotificationText.TextColor3 = Color3.fromRGB(233, 233, 233)
            NotificationText.TextSize = 14.000
            NotificationOkay.Name = "NotificationOkay"
            NotificationOkay.Parent = NotificationMain
            NotificationOkay.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            NotificationOkay.BorderSizePixel = 0
            NotificationOkay.Position = UDim2.new(0.0223880596, 0, 0.782258093, 0)
            NotificationOkay.Size = UDim2.new(0, 256, 0, 21)
            NotificationOkay.Font = Enum.Font.GothamSemibold
            NotificationOkay.Text = content.ConfirmText
            NotificationOkay.TextColor3 = Color3.fromRGB(233, 233, 233)
            NotificationOkay.TextSize = 13.000
            NotificationOkay.MouseButton1Click:connect(function()
                tweenObject(NotificationMain, {
                    Position = UDim2.new(-0.3, 0, 0.775, 0)
                }, 0.5)
                wait(0.5)
                NotificationMain:Destroy()
            end)
        elseif Type == "Error" then
            local ErrorMain = Instance.new("ImageLabel")
            local ErrorDropShadow = Instance.new("ImageLabel")
            local ErrorTitleHolder = Instance.new("Frame")local ErrorTitle = Instance.new("TextLabel")
            local ErrorBad = Instance.new("ImageLabel")
            local ErrorText = Instance.new("TextLabel")
            local ErrorOkay = Instance.new("TextButton")
            ErrorMain.Name = "ErrorMain"
            ErrorMain.Parent = BloxburgUi
            ErrorMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ErrorMain.BackgroundTransparency = 1.000
            ErrorMain.Position = UDim2.new(-0.3, 0, 0.775, 0)
            tweenObject(ErrorMain, {
                Position = UDim2.new(0.015, 0, 0.775, 0)
            }, 0.5)
            ErrorMain.Size = UDim2.new(0, 268, 0, 124)
            ErrorMain.Image = "rbxassetid://3570695787"
            ErrorMain.ImageColor3 = Color3.fromRGB(22, 22, 22)
            ErrorMain.ScaleType = Enum.ScaleType.Slice
            ErrorMain.SliceCenter = Rect.new(100, 100, 100, 100)
            ErrorMain.SliceScale = 0.050
            ErrorDropShadow.Name = "ErrorDropShadow"
            ErrorDropShadow.Parent = ErrorMain
            ErrorDropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ErrorDropShadow.BackgroundTransparency = 1.000
            ErrorDropShadow.Position = UDim2.new(-0.315028518, 0, -0.540322602, 0)
            ErrorDropShadow.Size = UDim2.new(0, 442, 0, 258)
            ErrorDropShadow.ZIndex = -1
            ErrorDropShadow.Image = "rbxassetid://5089202498"
            ErrorTitleHolder.Name = "ErrorTitleHolder"
            ErrorTitleHolder.Parent = ErrorMain
            ErrorTitleHolder.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            ErrorTitleHolder.BorderSizePixel = 0
            ErrorTitleHolder.Size = UDim2.new(0, 268, 0, 31)
            ErrorTitle.Name = "ErrorTitle"
            ErrorTitle.Parent = ErrorTitleHolder
            ErrorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ErrorTitle.BackgroundTransparency = 1.000
            ErrorTitle.Position = UDim2.new(0.0261194035, 0, 0, 0)
            ErrorTitle.Size = UDim2.new(0, 261, 0, 31)
            ErrorTitle.Font = Enum.Font.GothamSemibold
            ErrorTitle.Text = "ERROR"
            ErrorTitle.TextColor3 = Color3.fromRGB(233, 58, 53)
            ErrorTitle.TextSize = 14.000
            ErrorTitle.TextXAlignment = Enum.TextXAlignment.Left
            ErrorBad.Name = "ErrorBad"
            ErrorBad.Parent = ErrorTitleHolder
            ErrorBad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ErrorBad.BackgroundTransparency = 1.000
            ErrorBad.Position = UDim2.new(0.914178848, 0, 0.225806445, 0)
            ErrorBad.Size = UDim2.new(0, 17, 0, 17)
            ErrorBad.Image = "rbxgameasset://Images/d"
            ErrorBad.ImageColor3 = Color3.fromRGB(233, 58, 53)
            ErrorText.Name = "ErrorText"
            ErrorText.Parent = ErrorMain
            ErrorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ErrorText.BackgroundTransparency = 1.000
            ErrorText.Position = UDim2.new(-0.0037313432, 0, 0.25, 0)
            ErrorText.Size = UDim2.new(0, 268, 0, 66)
            ErrorText.ZIndex = 2
            ErrorText.Font = Enum.Font.GothamSemibold
            ErrorText.Text = content.Text
            ErrorText.TextColor3 = Color3.fromRGB(233, 233, 233)
            ErrorText.TextSize = 14.000
            ErrorOkay.Name = "ErrorOkay"
            ErrorOkay.Parent = ErrorMain
            ErrorOkay.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            ErrorOkay.BorderSizePixel = 0
            ErrorOkay.Position = UDim2.new(0.0223880596, 0, 0.782258093, 0)
            ErrorOkay.Size = UDim2.new(0, 256, 0, 21)
            ErrorOkay.Font = Enum.Font.GothamSemibold
            ErrorOkay.Text = content.ConfirmText
            ErrorOkay.TextColor3 = Color3.fromRGB(233, 233, 233)
            ErrorOkay.TextSize = 13.000
            ErrorOkay.MouseButton1Click:connect(function()
                tweenObject(ErrorMain, {
                    Position = UDim2.new(-0.3, 0, 0.775, 0)}, 0.5)
                wait(0.5)
                ErrorMain:Destroy()
            end)
        elseif Type == "Confirm" then
            local NotificationMain = Instance.new("ImageLabel")
            local NotificationDropShadow = Instance.new("ImageLabel")
            local NotificationTitleHodler = Instance.new("Frame")
            local NotificationTitle = Instance.new("TextLabel")
            local NotificationCool = Instance.new("ImageLabel")
            local NotificationText = Instance.new("TextLabel")
            local NotificationYes = Instance.new("TextButton")
            local NotificationNo = Instance.new("TextButton")
            NotificationMain.Name = "NotificationMain"
            NotificationMain.Parent = BloxburgUi
            NotificationMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationMain.BackgroundTransparency = 1.000
            NotificationMain.Position = UDim2.new(-0.3, 0, 0.775, 0)
            NotificationMain.Size = UDim2.new(0, 268, 0, 124)
            NotificationMain.Image = "rbxassetid://3570695787"
            NotificationMain.ImageColor3 = Color3.fromRGB(22, 22, 22)
            NotificationMain.ScaleType = Enum.ScaleType.Slice
            NotificationMain.SliceCenter = Rect.new(100, 100, 100, 100)
            NotificationMain.SliceScale = 0.050
            tweenObject(NotificationMain, {
                Position = UDim2.new(0.015, 0, 0.775, 0)
            }, 0.5)
            NotificationDropShadow.Name = "NotificationDropShadow"
            NotificationDropShadow.Parent = NotificationMain
            NotificationDropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationDropShadow.BackgroundTransparency = 1.000
            NotificationDropShadow.Position = UDim2.new(-0.315028518, 0, -0.540322602, 0)
            NotificationDropShadow.Size = UDim2.new(0, 442, 0, 258)
            NotificationDropShadow.ZIndex = -1
            NotificationDropShadow.Image = "rbxassetid://5089202498"
            NotificationTitleHodler.Name = "NotificationTitleHodler"
            NotificationTitleHodler.Parent = NotificationMain
            NotificationTitleHodler.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            NotificationTitleHodler.BorderSizePixel = 0
            NotificationTitleHodler.Size = UDim2.new(0, 268, 0, 31)
            NotificationTitle.Name = "NotificationTitle"
            NotificationTitle.Parent = NotificationTitleHodler
            NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationTitle.BackgroundTransparency = 1.000
            NotificationTitle.Position = UDim2.new(0.0261194035, 0, 0, 0)
            NotificationTitle.Size = UDim2.new(0, 261, 0, 31)
            NotificationTitle.Font = Enum.Font.GothamSemibold
            NotificationTitle.Text = "Confirm"
            NotificationTitle.TextColor3 = Color3.fromRGB(88, 170, 205)
            NotificationTitle.TextSize = 14.000
            NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left
            NotificationCool.Name = "NotificationCool"
            NotificationCool.Parent = NotificationTitleHodler
            NotificationCool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationCool.BackgroundTransparency = 1.000
            NotificationCool.Position = UDim2.new(0.914178967, 0, 0.225806445, 0)
            NotificationCool.Size = UDim2.new(0, 17, 0, 17)
            NotificationCool.Image = "rbxgameasset://Images/w"
            NotificationText.Name = "NotificationText"
            NotificationText.Parent = NotificationMain
            NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationText.BackgroundTransparency = 1.000
            NotificationText.Position = UDim2.new(-0.0037313432, 0, 0.25, 0)
            NotificationText.Size = UDim2.new(0, 268, 0, 66)
            NotificationText.ZIndex = 2
            NotificationText.Font = Enum.Font.GothamSemibold
            NotificationText.Text = content.Text
            NotificationText.TextColor3 = Color3.fromRGB(233, 233, 233)
            NotificationText.TextSize = 14.000
            NotificationYes.Name = "NotificationYes"
            NotificationYes.Parent = NotificationMain
            NotificationYes.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            NotificationYes.BorderSizePixel = 0
            NotificationYes.Position = UDim2.new(0.0223880596, 0, 0.782258093, 0)
            NotificationYes.Size = UDim2.new(0, 128, 0, 21)
            NotificationYes.Font = Enum.Font.GothamSemibold
            NotificationYes.Text = "Yes"
            NotificationYes.TextColor3 = Color3.fromRGB(0, 255, 0)
            NotificationYes.TextSize = 13.000
            NotificationNo.Name = "NotificationNo"
            NotificationNo.Parent = NotificationMain
            NotificationNo.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            NotificationNo.BorderSizePixel = 0
            NotificationNo.Position = UDim2.new(0.5, 0, 0.782258093, 0)
            NotificationNo.Size = UDim2.new(0, 128, 0, 21)
            NotificationNo.Font = Enum.Font.GothamSemibold
            NotificationNo.Text = "No"
            NotificationNo.TextColor3 = Color3.fromRGB(233, 0, 0)
            NotificationNo.TextSize = 13.000
            NotificationYes.MouseButton1Click:Connect(function()
                tweenObject(NotificationMain, {
                    Position = UDim2.new(-0.3, 0, 0.775, 0)
                }, 0.5)
                wait(0.5)
                NotificationMain:Destroy()
                NotificationMain = nil
                if callback then
                    callback(true)
                end
            end)
            NotificationNo.MouseButton1Click:Connect(function()
                tweenObject(NotificationMain, {
                    Position = UDim2.new(-0.3, 0, 0.775, 0)
                }, 0.5)
                wait(0.5)
                NotificationMain:Destroy()
                NotificationMain = nil
                if callback then
                    callback(false)
                end
            end)
        end
    end
    local activeTab = nil
    local activeTabFrame = nil
    function window:Tab(name)
        local TabSelected = Instance.new("TextButton")
        local TabTOpFrame = Instance.new("Frame")
        local TabBottomFrame = Instance.new("Frame")
        local MainUITabPicked = Instance.new("ScrollingFrame")
        TabSelected.Name = "TabSelected"
        TabSelected.Parent = TabsHolder
        TabSelected.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        TabSelected.BorderSizePixel = 0
        TabSelected.Size = UDim2.new(0, 125, 0, 30)
        TabSelected.AutoButtonColor = false
        TabSelected.Font = Enum.Font.GothamSemibold
        TabSelected.Text = name
        TabSelected.TextColor3 = Color3.fromRGB(66, 66, 66)
        TabSelected.TextSize = 13.000
        TabTOpFrame.Name = "TabTOpFrame"
        TabTOpFrame.Parent = TabSelected
        TabTOpFrame.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
        TabTOpFrame.BorderColor3 = Color3.fromRGB(84, 116, 224)
        TabTOpFrame.BorderSizePixel = 0
        TabTOpFrame.Size = UDim2.new(0, 125, 0, 1)
        TabTOpFrame.BackgroundTransparency = 1
        TabBottomFrame.Name = "TabBottomFrame"
        TabBottomFrame.Parent = TabSelected
        TabBottomFrame.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
        TabBottomFrame.BorderColor3 = Color3.fromRGB(84, 116, 224)TabBottomFrame.BorderSizePixel = 0
        TabBottomFrame.Position = UDim2.new(0, 0, 0.966666639, 0)
        TabBottomFrame.Size = UDim2.new(0, 125, 0, 1)
        TabBottomFrame.BackgroundTransparency = 1
        local UIListLayout_2 = Instance.new("UIListLayout")
        local UIPadding_2 = Instance.new("UIPadding")
        MainUITabPicked.Name = "MainUITabPicked"
        MainUITabPicked.Parent = MainUITabPickedHolder
        MainUITabPicked.CanvasSize = UDim2.new(0, 0, 0, 0)
        MainUITabPicked.Active = true
        MainUITabPicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainUITabPicked.BackgroundTransparency = 1.000
        MainUITabPicked.Size = UDim2.new(0, 426, 0, 369)
        MainUITabPicked.ScrollBarThickness = 2
        MainUITabPicked.Visible = false
        UIListLayout_2.Parent = MainUITabPicked
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 8)
        UIPadding_2.Parent = MainUITabPicked
        UIPadding_2.PaddingLeft = UDim.new(0, 8)
        UIPadding_2.PaddingTop = UDim.new(0, 8)
        if activeTab == nil then
            MainUITabPicked.Visible = true
            activeTabFrame = MainUITabPicked
            tweenObject(TabSelected, {
                BackgroundColor3 = Color3.fromRGB(17, 17, 30)
            }, 0.5)
            tweenObject(TabSelected, {
                TextColor3 = Color3.fromRGB(84, 116, 224)
            }, 0.5)
            activeTab = TabSelected
            tweenObject(TabBottomFrame, {
                BackgroundTransparency = 0
            }, 0.5)
            tweenObject(TabTOpFrame, {
                BackgroundTransparency = 0
            }, 0.5)
        end
        TabSelected.MouseButton1Click:Connect(function()
            tweenObject(activeTab.TabBottomFrame, {
                BackgroundTransparency = 1
            }, 0.5)
            tweenObject(activeTab.TabTOpFrame, {
                BackgroundTransparency = 1
            }, 0.5)
            tweenObject(activeTab, {
                BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            }, 0.5)
            tweenObject(activeTab, {
                TextColor3 = Color3.fromRGB(66, 66, 66)
            }, 0.5)
            activeTabFrame.Visible = false
            activeTab = TabSelected
            activeTabFrame = MainUITabPicked
            MainUITabPicked.Visible = true
            tweenObject(TabSelected, {
                BackgroundColor3 = Color3.fromRGB(17, 17, 30)
            }, 0.5)
            tweenObject(TabSelected, {
                TextColor3 = Color3.fromRGB(84, 116, 224)
            }, 0.5)
            tweenObject(TabBottomFrame, {
                BackgroundTransparency = 0
            }, 0.5)
            tweenObject(TabTOpFrame, {
                BackgroundTransparency = 0
            }, 0.5)
        end)
        local tab = {}
        local tabSize = 39
        local function ResizeTab()
            MainUITabPicked.CanvasSize = UDim2.new(0, 0, 0, tabSize)
        end

        function tab:Section(name)
            local SectionBack = Instance.new("ImageLabel")
            local SectionTitleBack = Instance.new("Frame")
            local SectionTitle = Instance.new("TextLabel")
            local SectionFrame = Instance.new("Frame")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local UIPadding_3 = Instance.new("UIPadding")
            local UIListLayout_4 = Instance.new("UIListLayout")
            SectionBack.Name = "Section Back"
            SectionBack.Parent = MainUITabPicked
            SectionBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionBack.BackgroundTransparency = 1.000
            SectionBack.Position = UDim2.new(0.018779343, 0, -0.978319764, 0)
            SectionBack.Size = UDim2.new(0, 403, 0, 31)
            SectionBack.Image = "rbxassetid://3570695787"
            SectionBack.ImageColor3 = Color3.fromRGB(15, 15, 15)
            SectionBack.ScaleType = Enum.ScaleType.Slice
            SectionBack.SliceCenter = Rect.new(100, 100, 100, 100)
            SectionBack.SliceScale = 0.050

            UIListLayout_4.Parent = SectionBack
            UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
            SectionTitleBack.Name = "SectionTitleBack"
            SectionTitleBack.Parent = SectionBack
            SectionTitleBack.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
            SectionTitleBack.BorderSizePixel = 0
            SectionTitleBack.Size = UDim2.new(0, 403, 0, 31)
            SectionTitle.Name = "SectionTitle"
            SectionTitle.Parent = SectionTitleBack
            SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.BackgroundTransparency = 1.000
            SectionTitle.Position = UDim2.new(0.0148883378, 0, 0, 0)
            SectionTitle.Size = UDim2.new(0, 397, 0, 31)
            SectionTitle.Font = Enum.Font.GothamSemibold
            SectionTitle.Text = name
            SectionTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
            SectionTitle.TextSize = 14.000
            SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
            SectionFrame.Name = "SectionFrame"
            SectionFrame.Parent = SectionBack
            SectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionFrame.BackgroundTransparency = 1.000
            SectionFrame.BorderSizePixel = 0
            SectionFrame.Position = UDim2.new(0, 0, 0.0775000006, 0)
            SectionFrame.Size = UDim2.new(0, 403, 0, 0)
            UIListLayout_3.Parent = SectionFrame
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 8)
            UIPadding_3.Parent = SectionFrame
            UIPadding_3.PaddingLeft = UDim.new(0, 8)
            UIPadding_3.PaddingTop = UDim.new(0, 8)

            --tabSize = tabSize +
            tabSize = tabSize + 41
            ResizeTab()
            local sectionSize = 39
            local function ResizeSection()
                SectionBack.Size = UDim2.new(0, 403, 0, sectionSize)
                SectionFrame.Size = UDim2.new(0, 403, 0, sectionSize - 31)
            end

            local section = {}                SliderTitle.Name = "SliderTitle"
                SliderTitle.Parent = Sliderback
                SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderTitle.BackgroundTransparency = 1.000
                SliderTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
                SliderTitle.Size = UDim2.new(0, 400, 0, 31)
                SliderTitle.Font = Enum.Font.GothamSemibold
                SliderTitle.Text = name
                SliderTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
                SliderTitle.TextSize = 13.000
                SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
                SliderBarBack.Name = "SliderBarBack"
                SliderBarBack.Parent = Sliderback
                SliderBarBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderBarBack.BackgroundTransparency = 1.000
                SliderBarBack.Position = UDim2.new(0.0147783253, 0, 0.76363641, 0)
                SliderBarBack.Size = UDim2.new(0, 380, 0, 6)
                SliderBarBack.Image = "rbxassetid://3570695787"
                SliderBarBack.ImageColor3 = Color3.fromRGB(77, 77, 77)
                SliderBarBack.ScaleType = Enum.ScaleType.Slice
                SliderBarBack.SliceCenter = Rect.new(100, 100, 100, 100)
                SliderBarBack.SliceScale = 0.050
                Sliderhandle.Name = "Sliderhandle"Sliderhandle.Parent = SliderBarBack
                Sliderhandle.BackgroundColor3 = Color3.fromRGB(84, 116, 224)
                Sliderhandle.BackgroundTransparency = 1.000
                Sliderhandle.Size = UDim2.new(0, 0, 0, 6)
                Sliderhandle.Image = "rbxassetid://3570695787"
                Sliderhandle.ImageColor3 = Color3.fromRGB(84, 116, 224)
                Sliderhandle.ScaleType = Enum.ScaleType.Slice
                Sliderhandle.SliceCenter = Rect.new(100, 100, 100, 100)
                Sliderhandle.SliceScale = 0.050
                SliderValueBack.Name = "SliderValueBack"
                SliderValueBack.Parent = Sliderback
                SliderValueBack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValueBack.BackgroundTransparency = 1.000
                SliderValueBack.Position = UDim2.new(0.78, 0, 0.109090909, 0)
                SliderValueBack.Size = UDim2.new(0, 50, 0, 25)
                SliderValueBack.Image = "rbxassetid://3570695787"
                SliderValueBack.ImageColor3 = Color3.fromRGB(14, 14, 14)
                SliderValueBack.ScaleType = Enum.ScaleType.Slice
                SliderValueBack.SliceCenter = Rect.new(100, 100, 100, 100)
                SliderValueBack.SliceScale = 0.050
                SliderValue.Name = "SliderValue"
                SliderValue.Parent = SliderValueBack
                SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.BackgroundTransparency = 1.000
                SliderValue.Size = UDim2.new(0, 50, 0, 25)
                SliderValue.Font = Enum.Font.GothamSemibold
                SliderValue.Text = options.default or options.min < 0 and options.max > 0 and "0" or tostring(options.min)
                SliderValue.TextColor3 = Color3.fromRGB(233, 233, 233)
                SliderValue.TextSize = 13.000
                
                local OldCallback = callback or function() end
                callback = function(Value)
                    library.flags[name] = Value
                    AddSetting(name, tostring(Value))
                    return OldCallback(Value)
                end

                if options.default then
                    value = math.clamp(options.default, options.min, options.max)
                    local percent = 1 - ((options.max - value) / (options.max - options.min))
                    tweenObject(Sliderhandle, {
                        Size = UDim2.new(0, percent * 380, 0, 6)
                    }, 0.1)
                    manual = true
                    SliderValue.Text = tostring(value)
                    manual = false
                    callback(value)
                end

                local value = options.default or options.min;
                local connections = {}
                local manual = false
                TextButton.MouseButton1Click:Connect(function()
                    value = math.clamp(value - 1, options.min, options.max)
                    local percent = 1 - ((options.max - value) / (options.max - options.min))
                    tweenObject(Sliderhandle, {
                        Size = UDim2.new(0, percent * 380, 0, 6)
                    }, 0.1)
                    manual = true
                    SliderValue.Text = tostring(value)
                    manual = false
                    if callback then
                        callback(value)
                    end
                end)
                TextButton_2.MouseButton1Click:Connect(function()
                    value = math.clamp(value + 1, options.min, options.max)
                    local percent = 1 - ((options.max - value) / (options.max - options.min))
                    tweenObject(Sliderhandle, {
                        Size = UDim2.new(0, percent * 380, 0, 6)
                    }, 0.1)
                    manual = true
                    SliderValue.Text = tostring(value)
                    manual = false
                    if callback then
                        callback(value)
                    end
                end)
                SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
                    if not manual then
                        if tonumber(SliderValue.Text) ~= nil then
                            value = math.clamp(tonumber(SliderValue.Text), options.min, options.max)
                            local percent = 1 - ((options.max - value) / (options.max - options.min))
                            tweenObject(Sliderhandle, {
                                Size = UDim2.new(0, percent * 380, 0, 6)
                            }, 0.1)
                            local con
                            con = SliderValue.FocusLost:Connect(function()
                                con:Disconnect()
                                if callback then
                                    callback(value)
                                end
                            end)
                        end
                    end
                end)

                SliderBarBack.MouseButton1Down:Connect(function()
                    value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
                    SliderValue.Text = value
                    tweenObject(Sliderhandle, {
                        Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
                    }, 0.1)
                    tweenObject(Sliderhandle, {
                        ImageColor3 = Color3.fromRGB(255, 255, 255)
                    }, 0.2)
                    if callback then
                        callback(value)
                    end
                    connections.MoveConnection = Mouse.Move:Connect(function()
                        value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
                        SliderValue.Text = value
                        tweenObject(Sliderhandle, {
                            Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
                        }, 0.1)
                        tweenObject(Sliderhandle, {
                            ImageColor3 = Color3.fromRGB(255, 255, 255)
                        }, 0.2)
                        if callback then
                            callback(value)
                        end
                    end)
                    connections.ReleaseConnection = UserInputService.InputEnded:Connect(function(mouse)
                        if mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            value = math.floor((((tonumber(options.max) - tonumber(options.min)) / 380) * Sliderhandle.AbsoluteSize.X) + tonumber(options.min) + 0.5) or 0
                            SliderValue.Text = value
                            tweenObject(Sliderhandle, {
                                Size = UDim2.new(0, math.clamp(Mouse.X - Sliderhandle.AbsolutePosition.X, 0, 380), 0, 6)
                            }, 0.1)
                            tweenObject(Sliderhandle, {
                                ImageColor3 = Color3.fromRGB(84, 116, 224)
                            }, 0.2)
                            connections.MoveConnection:Disconnect()
                            connections.ReleaseConnection:Disconnect()
                            if callback then
                                callback(value)
                            end
                        end
                    end)
                end)
                local slider = {}
                function slider:Update(val)
                    value = math.clamp(val, options.min, options.max)
                    local percent = 1 - ((options.max - value) / (options.max - options.min))
                    tweenObject(Sliderhandle, {
                        Size = UDim2.new(0, percent * 380, 0, 6)
                    }, 0.1)
                    if callback then
                        callback(value)
                    end
                end
                return slider
            end

            function section:Box(name, default, callback)
                default = GetSetting(name) or default 

                if not library.flags[name] then 
                    library.flags[name] = default or ""
                end 

                sectionSize = sectionSize + 39
                tabSize = tabSize + 39
                ResizeTab()
                ResizeSection()
                local TextBoxMain = Instance.new("Frame")
                local TextBoxTitle = Instance.new("TextLabel")
                local TextBox = Instance.new("TextBox")
                local TextBox_Roundify_5px = Instance.new("ImageLabel")
                TextBoxMain.Name = "TextBoxMain"
                TextBoxMain.Parent = SectionFrame
                TextBoxMain.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                TextBoxMain.BorderColor3 = Color3.fromRGB(27, 42, 53)
                TextBoxMain.BorderSizePixel = 0
                TextBoxMain.Position = UDim2.new(0.018779343, 0, 0.615176141, 0)
                TextBoxMain.Size = UDim2.new(0, 390, 0, 31)
                TextBoxTitle.Name = "TextBoxTitle"
                TextBoxTitle.Parent = TextBoxMain
                TextBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxTitle.BackgroundTransparency = 1.000
                TextBoxTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
                TextBoxTitle.Size = UDim2.new(0, 400, 0, 31)
                TextBoxTitle.Font = Enum.Font.GothamSemibold
                TextBoxTitle.Text = name
                TextBoxTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
                TextBoxTitle.TextSize = 13.000
                TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
                TextBox.Parent = TextBoxMain
                TextBox.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0.270329684, 0, 0.193548381, 0)
                TextBox.Size = UDim2.new(0, 284, 0, 18)
                TextBox.ZIndex = 2
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.PlaceholderColor3 = Color3.fromRGB(66, 66, 66)
                TextBox.PlaceholderText = name
                TextBox.Text = default or ""
                TextBox.TextColor3 = Color3.fromRGB(233, 233, 233)                default = setting or default 

                if not library.flags[name] then 
                    library.flags[name] = default or false 
                end 

                sectionSize = sectionSize + 39
                tabSize = tabSize + 39
                ResizeTab()
                ResizeSection()

                local ToggleBackButton = Instance.new("TextButton")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleIndicator = Instance.new("ImageLabel")
                ToggleBackButton.Name = "ToggleBackButton"
                ToggleBackButton.Parent = SectionFrame
                ToggleBackButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                ToggleBackButton.BorderSizePixel = 0
                ToggleBackButton.Size = UDim2.new(0, 390, 0, 31)
                ToggleBackButton.AutoButtonColor = false
                ToggleBackButton.Font = Enum.Font.SourceSans
                ToggleBackButton.Text = ""
                ToggleBackButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleBackButton.TextSize = 14.000
                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = ToggleBackButton
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.BackgroundTransparency = 1.000
                ToggleTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
                ToggleTitle.Size = UDim2.new(0, 400, 0, 31)
                ToggleTitle.Font = Enum.Font.GothamSemibold
                ToggleTitle.Text = name
                ToggleTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
                ToggleTitle.TextSize = 13.000
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
                ToggleIndicator.Name = "ToggleIndicator"
                ToggleIndicator.Parent = ToggleBackButton
                ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleIndicator.BackgroundTransparency = 1.000
                ToggleIndicator.Position = UDim2.new(0.933396459, 0, 0.161290318, 0)
                ToggleIndicator.Size = UDim2.new(0, 20, 0, 20)
                ToggleIndicator.Image = "rbxassetid://3570695787"
                ToggleIndicator.ImageColor3 = not default and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(84, 116, 224)
                ToggleIndicator.ScaleType = Enum.ScaleType.Slice
                ToggleIndicator.SliceCenter = Rect.new(100, 100, 100, 100)
                ToggleIndicator.SliceScale = 0.050
                local OldCallback = callback or function() end
                callback = function(Value)
                    library.flags[name] = Value
                    AddSetting(name, tostring(Value))
                    return OldCallback(Value)
                end

                if default and callback then 
                    callback(default)
                end

                ToggleBackButton.MouseButton1Click:Connect(function()--better color pls
                    
                    if ToggleIndicator.ImageColor3 == Color3.fromRGB(84, 116, 224) then                ButtonTitle.Position = UDim2.new(0.0147783253, 0, 0, 0)
                ButtonTitle.Size = UDim2.new(0, 400, 0, 31)
                ButtonTitle.Font = Enum.Font.GothamBold
                ButtonTitle.Text = name
                ButtonTitle.TextColor3 = Color3.fromRGB(233, 233, 233)
                ButtonTitle.TextSize = 13.000
                ButtonTitle.TextXAlignment = Enum.TextXAlignment.Center
                ButtonCool.Name = "ButtonCool"
                ButtonCool.Parent = ButtonTitle
                ButtonCool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonCool.BackgroundTransparency = 1.000
                ButtonCool.Position = UDim2.new(0.899178982, 0, 0.225806445, 0)
                ButtonCool.Size = UDim2.new(0, 17, 0, 17)
                ButtonCool.Image = "rbxgameasset://Images/w"
                Button.MouseEnter:Connect(function()
                    tweenObject(Button, {
                        BackgroundColor3 = Color3.fromRGB(64, 64, 64)
                    }, 0.3)
                end)

                Button.MouseLeave:Connect(function()
                    tweenObject(Button, {
                        BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                    }, 0.3)
                end)
                Button.MouseButton1Click:Connect(function()
                    coroutine.resume(coroutine.create(function()
                        local Circle = Instance.new("ImageLabel")
                        Circle.Name = "Circle"
                        Circle.Parent = Button
                        Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Circle.BackgroundTransparency = 1
                        Circle.ZIndex = 10
                        Circle.Image = "rbxassetid://266543268"
                        Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
                        Circle.ImageTransparency = 0.900
                        Button.ClipsDescendants = true
                        Circle.Position = UDim2.new(0, Mouse.X - Circle.AbsolutePosition.X, 0, Mouse.Y - Circle.AbsolutePosition.Y)
                        Circle:TweenSizeAndPosition(UDim2.new(0, Button.AbsoluteSize.X * 1.5, 0, Button.AbsoluteSize.X * 1.5), UDim2.new(0.5, -Button.AbsoluteSize.X * 1.5 / 2, 0.5, -Button.AbsoluteSize.X * 1.5 / 2), "Out", "Quad", 0.75, false, nil)
                        tweenObject(Circle, {
                            ImageTransparency = 1
                        }, 0.75)
                        wait(0.75)
                        Circle:Destroy()
                    end))
                    if callback then
                        callback()
                    end
                end)
            end
            function section:ColorPicker(name, default, callback)
                local setting = GetSetting(name) 
                if setting then 
                    local NoSpaces = setting:gsub("%s+", "")
                    local Split = NoSpaces:split(",")
                    setting = Color3.fromRGB(tonumber(Split[1]), tonumber(Split[2]), tonumber(Split[3]))
                end 

                default = setting or default 

                if not library.flags[name] then 
                    library.flags[name] = default or Color3.fromRGB(255, 0, 0)
                end 

                sectionSize = sectionSize + 39                R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                R.BackgroundTransparency = 1.000
                R.Size = UDim2.new(0, 44, 1, 0)
                R.Font = Enum.Font.GothamSemibold
                R.Text = "R: 255"
                R.TextColor3 = Color3.fromRGB(255, 255, 255)
                R.TextSize = 10.000

                Back_G.Name = "Back"
                Back_G.Parent = Holder
                Back_G.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                Back_G.BackgroundTransparency = 1.000
                Back_G.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Back_G.Position = UDim2.new(0, 5, 0, 97)
                Back_G.Size = UDim2.new(0, 43, 1, 0)
                Back_G.Image = "rbxassetid://4608020054"
                Back_G.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Back_G.ScaleType = Enum.ScaleType.Slice
                Back_G.SliceCenter = Rect.new(128, 128, 128, 128)
                Back_G.SliceScale = 0.02

                G.Name = "G"
                G.Parent = Back_G
                G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                G.BackgroundTransparency = 1.000
                G.Size = UDim2.new(0, 44, 1, 0)
                G.Font = Enum.Font.GothamSemibold
                G.Text = "G: 255"
                G.TextColor3 = Color3.fromRGB(255, 255, 255)
                G.TextSize = 10.000

                Back_B.Name = "Back"
                Back_B.Parent = Holder
                Back_B.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                Back_B.BackgroundTransparency = 1.000
                Back_B.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Back_B.Position = UDim2.new(0, 5, 0, 97)
                Back_B.Size = UDim2.new(0, 43, 1, 0)
                Back_B.Image = "rbxassetid://4608020054"
                Back_B.ImageColor3 = Color3.fromRGB(22, 22, 22)
                Back_B.ScaleType = Enum.ScaleType.Slice
                Back_B.SliceCenter = Rect.new(128, 128, 128, 128)
                Back_B.SliceScale = 0.02

                B.Name = "B"                    if not tonumber(R.Text) then 
                        R.Text = OldRText 
                        return
                    end 

                    R.Text = "R: "..tostring(math.floor(tonumber(R.Text)))
                    OldRText = R.Text
                    ColorIndicator.ImageColor3 = Color3.fromRGB(math.floor(tonumber(R.Text:sub(4))), math.floor(tonumber(G.Text:sub(4))), math.floor(tonumber(B.Text:sub(4))))
                end)

                G.FocusLost:connect(function()
                    if not tonumber(G.Text) then 
                        G.Text = OldGText 
                        return
                    end 

                    G.Text = "G: "..tostring(math.floor(tonumber(G.Text)))
                    OldRText = G.Text
                    ColorIndicator.ImageColor3 = Color3.fromRGB(math.floor(tonumber(R.Text:sub(4))), math.floor(tonumber(G.Text:sub(4))), math.floor(tonumber(B.Text:sub(4))))
                end)

                B.FocusLost:connect(function()
                    if not tonumber(B.Text) then 
                        B.Text = OldBText 
                        return
                    end 

                    B.Text = "B: "..tostring(math.floor(tonumber(B.Text)))
                    OldRText = B.Text
                    ColorIndicator.ImageColor3 = Color3.fromRGB(math.floor(tonumber(R.Text:sub(4))), math.floor(tonumber(G.Text:sub(4))), math.floor(tonumber(B.Text:sub(4))))
                end)
                
                Submit.MouseButton1Click:Connect(function()                                        Position = UDim2.new(0, 0, 0, 0)
                                    }, 0.4)
                                    tw.Completed:wait()
                                    SearchBoxBack.Visible = false
                                    for i, v in next, buttons do
                                        v:Destroy()
                                        buttons[i] = nil
                                    end
                                    isDone = false
                                end)
                            end
                        end
                        updateVisibles()
                        for i, v in pairs(buttons) do
                            if string.sub(string.lower(v.Text), 1, string.len(TextBox.Text)) == string.lower(TextBox.Text) then
                                if v.Visible == false then
                                    spawn(function()
                                        v.Visible = true
                                        updateVisibles()
                                        tweenObject(v, {
                                            TextTransparency = 0
                                        }, 0.2)
                                        tweenObject(v, {
                                            BackgroundTransparency = 0
                                        }, 0.2)
                                    end)
                                end
                            else
                                if v.Visible == true then
                                    spawn(function()
                                        local tw = tweenObject(v, {
                                            TextTransparency = 1
                                        }, 0.2)
                                        tweenObject(v, {
                                            BackgroundTransparency = 0
                                        }, 0.2)
                                        tw.Completed:wait(0.1)
                                        v.Visible = false
                                        updateVisibles()
                                    end)
                                end
                            end
                        end
                    end
                end

                if default then 
                    for i, v in next, options do 
                        if v == default then 
                            TextBox.Text = v 
                            if callback then 
                                callback(v)
                            end
                        end 
                    end
                end

                TextBox.Focused:Connect(searchboxon)                    end
                end
            end
            
            if IdConstantIndex and #getconstants(Execute) >= IdConstantIndex + 2 then
                local AbilityTag = getconstant(Execute, IdConstantIndex + 2)
                AbilityTags[Value] = AbilityTag
            end
        end
    end
end

local function GetSpellContents()
    local AbilityData = Network:WaitForChild("getCacheValueByNameTag"):Invoke("abilities")
    local PlayerData = Network:WaitForChild("getLocalPlayerDataCache"):Invoke()
    local EntityContainer = Network:WaitForChild("getMyClientCharacterContainer"):Invoke()
    
    local Contents = {}
    local Number = 0 
    
    for Index, AbilitySlotData in next, AbilityData do 
        if AbilitySlotData.rank > 0 then 
            Number = Number + 1 
            Contents[tostring(Number)] = AbilitySlotData
        end
    end
    
    return Contents
end

local function CanAttack(Name)
    if #Settings.Prioritize == 0 then 
        return true 
    end

    if table.find(Settings.Prioritize, Name) then 
        return true 
    end
    
    return false
end

local function inPvp(Enemy) 
    if not Enemy then return end 
    for Index, Value in next, workspace.placeFolders.pvpZoneCollection:GetChildren() do 
        if Value.ClassName == "Model" then 
            for Index2, Value2 in next, Value:GetChildren() do 
                --warn("CRINGE")
                local Region = Region3.new(Value2.Position - (Value2.Size / 2), Value2.Position + (Value2.Size / 2))
                for Index3, Value3 in next, workspace:FindPartsInRegion3(Region, nil, huge) do 
                    --warn("STILL CRINGE",Value3)
                    if Value3.Parent == Enemy then 
                        return true 
                    end
                    
                end
            end
        end
    end
    return false
end


local function GetAttackable(Attacking)
    if not Hitbox then        end
    end
end

local function CountTable(Table)
    local Count = 0 
    
    for Index, Value in next, Table do 
        Count = Count + 1 
    end 
    
    return Count 
end

local function ActivateSpells()
    local Contents = GetSpellContents()
    for Index = 1, CountTable(Contents) do 
        local Ability = Contents[tostring(Index + 1)]
        
        if Ability then
            pcall(function()
                ActivateAbilityRequest:Invoke(Ability.id, Player.PlayerGui.gameUI.bottomRight.hotbarFrame.content:FindFirstChild("hotbarButton" .. Index + 2))
            end)
        end
    end
end

local Teleports = {}
local ActualTeleports = {}

local function chat(text,colour)
    return false
end

--[[
Sections.AutosellSettings:Toggle("Enable", false, function(Value)
    Settings.Autosell = Value
end)
]]
Sections.AutosellSettings:Label("COMING SOON")

Sections.CombatSettings:Toggle("Kill Aura", false, function(Value)
    Settings.KillAura = Value
    if Settings.Announce then 
        if Value then 
            chat("Kill Aura enabled.",Color3.new(0,1,0))
        else 
            chat("Kill Aura disabled.",Color3.new(1,0,0))
        end
    end
end)


Sections.AutofarmSettings:Toggle("Enabled", false, function(Value)
    if not Value then 
        delay(3, function()
            if not Settings.Autofarm and not Settings.Chestfarm then
                Settings.Bypass = false -- ur mom
            end
        end)
    else 
        Settings.Bypass = true -- not ur mom
    end 

    Settings.Autofarm = Value
    
    if not Value then 
        JoltFunction:Fire(-huge, -huge, -huge) -- more like - huge bulge in your pants
    end
    if Settings.Announce then
        if Value then  
            chat("Autofarm enabled.",Color3.new(0, 1, 0))
        else
            chat("Autofarm disabled.",Color3.new(1, 0, 0)) 
        end
    end
end)

Sections.AutofarmSettings:Toggle("Use Abilities", true, function(Value)
    Settings.UseAbilities = Value 

    if Settings.Announce then
        if Value then  
            chat("Use Abilities enabled.",Color3.new(0, 1, 0))
        else
            chat("Use Abilities disabled.",Color3.new(1, 0, 0)) 
        end
    end
end)

Sections.AutofarmSettings:Toggle("Attack Players", Environment.Settings.DefaultName = Player.Name

local HasName = {}
local chests = {}

for Index, Value in next, workspace:GetDescendants() do 
    if Value.ClassName == "TextLabel" and Value.Text == Settings.DefaultName then 
        table.insert(HasName, Value) -- nametags
    elseif Value.ClassName == "Model" and Value.Name:match("%w+Chest") and Value.Name:sub(Value.Name:len() - 4, Value.Name:len()) == "Chest" then 
        table.insert(chests, Value) -- chest 
    end
end


local Mobs = {}
for Index, Value in next, workspace.placeFolders.entityManifestCollection:GetChildren() do
    if not table.find(Mobs,Value.Name) and Value.ClassName ~= "Model" and Value.Name ~= "Hitbox" and not Value:FindFirstChild("pet") then 
        table.insert(Mobs,Value.Name)
    end
end

Environment.Settings.Prioritize = {}
for Index, IValue in next, Mobs do 
    Sections.PrioritizeMenu:Toggle(tostring(IValue), false, function(Value)
        if Value then 
            table.insert(Settings.Prioritize,IValue)
        else 
            if table.find(Settings.Prioritize, IValue) then 
                table.remove(Settings.Prioritize, table.find(Settings.Prioritize, IValue))
            end
        end
    end)
end


local function HideName(oldName)
    Settings.HideName = trueMarketplaceService:GetProductInfo(Value.Value).Name
        table.insert(Teleports, Name)
        ActualTeleports[Name] = Value.Parent
    end
end

local executed = tick()
Sections.LocalCharacter:SearchBox("Teleport", Teleports, nil, function(Value)
    if tick() - executed > 1 then 
        PlayerRequest:InvokeServer("playerRequest_useTeleporter", ActualTeleports[Value])
    end
end, false)



local oldIndex 
oldIndex = hookmetamethod(game, "__index", function(self, idx)
    if tostring(self) == "stamina" and idx == "Value" and Settings.InfiniteStamina then 
        return huge
    end

    return oldIndex(self, idx)
end)

local oldNamecall 
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}

    if Settings.Godmode and getnamecallmethod() == "FireServer" and args[4] == "monster" then 
        return
    end

    return oldNamecall(self, ...)
end)

local function BypassTP(Closest)
    if not Hitbox then
        return 
    end 

    Hitbox.CanCollide = false
    Hitbox.CFrame = Closest.CFrame + Settings.Offset
end


local function GetClosest(AttackkingPlayers) 
    if not Hitbox then
        return 
    end

    local Closest = {huge, nil} 
Player.CharacterAdded:Connect(function(Character)
    Hitbox = Character:WaitForChild("hitbox")
    ActiveAbilityExecutionData = Hitbox:WaitForChild("activeAbilityExecutionData")
    ActiveAbilityExecutionData.Changed:Connect(function(Property)
        if Settings.UseAbilities then
            CastSpell(HttpService:JSONDecode(ActiveAbilityExecutionData.Value))
        end
    end)
end)

RunService.Heartbeat:Connect(function()
    if not Settings.Autofarm and not Settings.Chestfarm then
        Settings.Bypass = false  
    end
    if Settings.Bypass then
        JoltFunction:Fire(huge, huge, huge)
        if Hitbox and Hitbox:FindFirstChild("hitboxVelocity") then   
            Hitbox.hitboxVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            Hitbox.hitboxVelocity.Velocity = Vector3.new(0, 0, 0)
            Hitbox.Velocity = Vector3.new(0, 0, 0)
        end
    end
end)

chat("Vesteria Epic Thing loaded.\nMade by Introvert#1337 and ProtonDev-Sys#4419.", Color3.new(1, 0.341176, 1))

local keys = {}
UserInputService.InputBegan:Connect(function(key)
    keys[key.KeyCode] = true 
end)

UserInputService.InputEnded:Connect(function(key)
    keys[key.KeyCode] = false 
end)

local function fly()
    local FowardBack = (keys[Enum.KeyCode.W] and 1 or 0) + (keys[Enum.KeyCode.S] and -1 or 0)
    local LeftRight = (keys[Enum.KeyCode.A] and -1 or 0) + (keys[Enum.KeyCode.D] and 1 or 0)

    local CurrentCameraCFrame = workspace.CurrentCamera.CFrame
    local velocity = (CurrentCameraCFrame.rightVector * LeftRight + CurrentCameraCFrame.lookVector * FowardBack) * Settings.FlightSpeed
    
    removeVelocity = Hitbox.hitboxVelocity.Velocity * -1
    JoltFunction:Fire(removeVelocity)
    JoltFunction:Fire(velocity)
    Hitbox.Velocity = velocity
end

local CollectedAllChests = false 
local function Chestfarm() 
    for Index, Value in next, chests do 
        while not Value:FindFirstChild("chestBillboard") do 
            RunService.Heartbeat:wait()
            Hitbox.CFrame = Value.PrimaryPart.CFrame * CFrame.new(math.random(1, 4), math.random(1, 4), math.random(1, 4)) --  this could work? 
            wait(0.2)
            PlayerRequest:InvokeServer("openTreasureChest", Value.Parent)
        end
    end
    if not CollectedAllChests then 
        CollectedAllChests = true 
        chat("Collected all chests!",Color3.new(0,1,0))
    end
end

while RunService.Heartbeat:Wait() do
    if Settings.Autofarm or Settings.KillAura then 
        local Closest = GetClosest(Settings.AttackPlayers)

        if Closest then 
            Attack(Closest,Settings.AttackPlayers)   
        end 
        if Settings.UseSmallestServer then 
            UseSmallestServer()
        end
    end 

    if not Settings.Autofarm and Settings.Chestfarm then 
        Chestfarm()
    end

    if Settings.AutoPickup then 
        coroutine.wrap(AutoPickup)()
    end

    if Settings.Autofish then 
        AutoFish()
    end

    if Settings.Flight and not Settings.Bypass then 
        fly()
    end
end

wait(5)
MainUIFrame:Destroy()
