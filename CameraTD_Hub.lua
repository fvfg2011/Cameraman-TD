do
    local text = ""
    local callback = identifyexecutor or getexecutorname
    if type(callback) == "function" then
        local ok3, result3 = pcall(callback)
        if ok3 and type(result3) == "string" then
            text = result3:lower()
        end
    end
    local match = text:match("%f[%a]xeno%f[%A]") or text:match("%f[%a]solara%f[%A]")
    if match then
        print("[NICK HUB] Stop Using Xeno And Solara")
        pcall(function ()
            local players = game:GetService("Players")
            local tweenService = game:GetService("TweenService")
            local localPlayer2 = players.LocalPlayer
            local playerGui = localPlayer2:WaitForChild("PlayerGui")
            local text2 = "NickExecutorNoticePreview"
            local child = playerGui:FindFirstChild(text2)
            if child then
                child:Destroy()
            end
            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = text2
            screenGui.ResetOnSpawn = false
            screenGui.IgnoreGuiInset = true
            screenGui.DisplayOrder = 10000
            screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            screenGui.Parent = playerGui
            local function createInstance(className, properties, parent)
                local instance = Instance.new(className)
                for property, propertyValue in pairs(properties) do
                    instance[property] = propertyValue
                end
                instance.Parent = parent
                return instance
            end
            local frame = createInstance("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(5, 6, 12), BackgroundTransparency = 0.3, BorderSizePixel = 0}, screenGui)
            local currentCamera = workspace.CurrentCamera
            local currentCamera2 = currentCamera and currentCamera.ViewportSize or Vector2.new(800, 600)
            local frame2 = createInstance("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(440, 360), BackgroundColor3 = Color3.fromRGB(21, 20, 32), BorderSizePixel = 0}, frame)
            createInstance("UICorner", { CornerRadius = UDim.new(0, 22)}, frame2)
            createInstance("UIGradient", { Color = ColorSequence.new(Color3.fromRGB(31, 27, 48), Color3.fromRGB(15, 16, 25)), Rotation = 65}, frame2)
            createInstance("UIStroke", { Color = Color3.fromRGB(150, 128, 208), Thickness = 1, Transparency = 0.65}, frame2)
            local uIScale = createInstance("UIScale", { Scale = 1}, frame2)
            local function getUiScale()
                local currentCamera3 = currentCamera and currentCamera.ViewportSize or currentCamera2
                return math.min(1, (currentCamera3.X - 32) / 440, (currentCamera3.Y - 32) / 360)
            end
            local function createLabel(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
                return createInstance("TextLabel", { BackgroundTransparency = 1, Position = UDim2.fromOffset(arg3, arg4), Size = UDim2.fromOffset(arg5, arg6), Text = arg2, TextColor3 = arg8, TextSize = arg7, Font = arg9 or Enum.Font.Gotham, TextWrapped = true, TextXAlignment = arg10 or Enum.TextXAlignment.Center}, arg)
            end
            createLabel(frame2, "K E R O   H U B", 28, 21, 220, 22, 12, Color3.fromRGB(198, 178, 246), Enum.Font.GothamBold, Enum.TextXAlignment.Left)
            local frame3 = createInstance("Frame", { Position = UDim2.fromOffset(319, 23), Size = UDim2.fromOffset(93, 21), BackgroundColor3 = Color3.fromRGB(54, 36, 46), BorderSizePixel = 0}, frame2)
            createInstance("UICorner", { CornerRadius = UDim.new(1, 0)}, frame3)
            createLabel(frame3, "UNSUPPORTED", 0, 0, 93, 21, 9, Color3.fromRGB(249, 166, 179), Enum.Font.GothamBold)
            local frame4 = createInstance("Frame", { Position = UDim2.fromOffset(28, 58), Size = UDim2.fromOffset(384, 1), BackgroundColor3 = Color3.fromRGB(127, 112, 157), BackgroundTransparency = 0.8, BorderSizePixel = 0}, frame2)
            local frame5 = createInstance("Frame", { AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 81), Size = UDim2.fromOffset(68, 68), BackgroundColor3 = Color3.fromRGB(147, 96, 236), BackgroundTransparency = 0.92, BorderSizePixel = 0}, frame2)
            createInstance("UICorner", { CornerRadius = UDim.new(1, 0)}, frame5)
            local frame6 = createInstance("Frame", { Position = UDim2.fromOffset(8, 8), Size = UDim2.fromOffset(52, 52), BackgroundColor3 = Color3.fromRGB(53, 38, 78), BorderSizePixel = 0}, frame5)
            createInstance("UICorner", { CornerRadius = UDim.new(0, 17)}, frame6)
            createInstance("UIStroke", { Color = Color3.fromRGB(168, 121, 249), Transparency = 0.55, Thickness = 1}, frame6)
            createLabel(frame6, "!", 0, 0, 52, 52, 32, Color3.fromRGB(212, 186, 255), Enum.Font.GothamBold)
            createLabel(frame2, "Stop Using Xeno And Solara", 24, 169, 392, 32, 23, Color3.fromRGB(248, 245, 255), Enum.Font.GothamBold)
            createLabel(frame2, "Baka!", 24, 202, 392, 31, 26, Color3.fromRGB(188, 149, 255), Enum.Font.GothamBold)
            createLabel(frame2, "Please use a supported executor.", 24, 246, 392, 22, 14, Color3.fromRGB(159, 156, 177))
            local textButton = createInstance("TextButton", { Position = UDim2.fromOffset(28, 291), Size = UDim2.fromOffset(384, 43), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, Text = "", TextSize = 14, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.GothamBold, AutoButtonColor = true}, frame2)
            createInstance("UICorner", { CornerRadius = UDim.new(0, 12)}, textButton)
            createInstance("UIGradient", { Color = ColorSequence.new(Color3.fromRGB(144, 96, 232), Color3.fromRGB(103, 72, 185)), Rotation = 15}, textButton)
            local label = createLabel(textButton, "Okay, Baka!", 0, 0, 384, 43, 14, Color3.fromRGB(255, 255, 255), Enum.Font.GothamBold)
            label.ZIndex = textButton.ZIndex + 1
            label.Active = false
            local flag = false
            textButton.Activated:Connect(function ()
                if flag then
                    return
                end
                flag = true
                tweenService:Create(uIScale, TweenInfo.new(0.13), { Scale = getUiScale() * 0.94}):Play()
                tweenService:Create(frame, TweenInfo.new(0.13), { BackgroundTransparency = 1}):Play()
                task.delay(0.14, function ()
                    screenGui:Destroy()
                end)
            end)
            local connection
            if currentCamera then
                connection = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function ()
                    uIScale.Scale = getUiScale()
                end)
                screenGui.Destroying:Connect(function ()
                    connection:Disconnect()
                end)
            end
            uIScale.Scale = getUiScale() * 0.94
            tweenService:Create(uIScale, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = getUiScale()}):Play()
        end)
        return
    end
end
if not game:IsLoaded() then
    game.Loaded:Wait()
end
if game.GameId ~= 10762636904 then
    return
end
local LoggerWebhook = ""
local Brand = { Author = "Nick", OpenButton = "Nick | Camera TD Hub", ToggleHint = "Nick | RightShift to toggle", Enforce = true}
local function brandHash(arg, arg2, arg3)
    local function hashString(text)
        if type(text) ~= "string" then
            return nil
        end
        local number = 0
        for index = 1, #text do
            number = (number * 131 + string.byte(text, index)) % 10000019
        end
        return number
    end
    return hashString(arg) == 7165756 and hashString(arg2) == 1944578 and hashString(arg3) == 528693
end
if Brand.Enforce then
    assert(brandHash(Brand.Author, Brand.OpenButton, Brand.ToggleHint), "Camera TD Hub attribution check failed")
end
local genv = getgenv()
local StartupMarks = { CoreEntered = os.clock()}
genv.__CameraTDStartupMarks = StartupMarks
if genv.__CameraTDBoot and genv.__CameraTDBoot.Loading and os.clock() - genv.__CameraTDBoot.At < 30 then
    return
end
genv.__CameraTDBoot = { Loading = true, At = os.clock()}
if genv.CameraTDHub and genv.CameraTDHub.Destroy then
    pcall(genv.CameraTDHub.Destroy)
end
local HubCore = { Running = true, Connections = {}, Towers = {}, Units = {}, Pending = {}, Removed = {}, Serial = 0, Status = {}, Widgets = {}, Folder = "CameraTD_Macros", Next = {}, Bound = {}, FPSOriginal = {}, LobbyId = 132929771812494, TradingId = 85725785704440, MatchId = 114068177100380, Version = 1}
genv.CameraTDHub = HubCore
if type(genv.CameraTDHubFile) ~= "string" or genv.CameraTDHubFile == "" then
    local hubFile = "CameraTDHub/assets/HubLocal.lua"
    pcall(function ()
        if type(isfolder) == "function" and type(makefolder) == "function" then
            if not isfolder("CameraTDHub") then
                makefolder("CameraTDHub")
            end
            if not isfolder("CameraTDHub/assets") then
                makefolder("CameraTDHub/assets")
            end
        end
        if type(writefile) == "function" then
            local ok, source = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/fvfg2011/Cameraman-TD/refs/heads/main/CameraTD_Hub.release.lua")
            if ok and type(source) == "string" and #source > 0 then
                writefile(hubFile, source)
            end
        end
    end)
    genv.CameraTDHubFile = hubFile
end
function HubCore.AssertBrand(obj)
    if not Brand.Enforce then
        return true
    end
    local value2 = brandHash(Brand.Author, Brand.OpenButton, Brand.ToggleHint)
    if obj then
        value2 = value2 and type(obj.OpenButton) == "table" and brandHash(obj.Author, obj.OpenButton.Title, Brand.ToggleHint)
    end
    if value2 then
        return true
    end
    if HubCore.Destroy then
        pcall(HubCore.Destroy)
    end
    HubCore.Running, HubCore.Playing = false, false
    genv.__CameraTDBoot = nil
    error("Camera TD Hub attribution check failed", 0)
end
HubCore.HubActiveLogger = LoggerWebhook
HubCore.KnownCosts = {}
HubCore.FPSOriginal = setmetatable({}, { __mode = "k"})
local PlayersSvc = game:GetService("Players")
local ReplicatedStorageSvc = game:GetService("ReplicatedStorage")
local WorkspaceSvc = game:GetService("Workspace")
local HttpServiceSvc = game:GetService("HttpService")
local LightingSvc = game:GetService("Lighting")
local localPlayer = PlayersSvc.LocalPlayer or PlayersSvc.PlayerAdded:Wait()
local HubConfig = { Map = "Toilet City", LastJoinedMap = "", LastJoinedMapAt = 0, Players = 1, AutoLobby = false, JoinMethod = "TP", StartNow = true, SummonAmount = 1, SummonCrate = "Basic Crate", SummonDelay = 1, AutoSummon = false, Difficulty = "Easy", AutoDifficulty = true, AutoSkip = false, StopAutoSkipAt = "", AutoSellFarm = false, SellFarmWave = 30, SellFarmDelay = 0.1, AutoSpeed = false, SpeedScale = 1, Modifiers = {}, ModifierNames = {}, EndAction = "None", Profile = "", NewProfileName = "", AutoPlayback = false, PlaybackMode = "Hybrid", MacroOwners = {}, ActionTimeout = 120, AutoExecute = true, AutoPlace = false, AutoUpgrade = false, AutoDelay = 0.1, PlacementRange = 0, ShowRange = false, AntiAFK = true, AutoClaimQuest = false, AutoClaimPassQuest = false, AutoClaimBattlepass = false, AutoClaimPremium = false, AutoBuyCrate = false, BuyCrateAmount = 1, AutoOpenCrate = false, OpenCrateName = "Exclusive Halloween Crate", OpenCrateAmount = 1, CrateDelay = 2, ClosePlacement = false, FPSBoost = false, BlackScreen = false, RemoveVisuals = false, VisualMethod = "Normal", HideGameNotifications = false, HideName = false, HideUser = false, WebhookURL = "", WebhookEnabled = false, WebhookMatchEnd = true, WebhookSummon = true, WebhookUserID = "", TelegramToken = "", TelegramChatID = "", ThemeName = "Dark", AccentColor = "", BackgroundColor = ""}
HubCore.Settings = HubConfig
HubCore.SettingsFolder = HubCore.Folder .. "/Settings"
HubCore.SettingsFile = HubCore.SettingsFolder .. "/" .. localPlayer.Name .. ".json"
HubCore.HubFolder = "CameraTDHub"
HubCore.DataFolder = HubCore.HubFolder .. "/Data"
HubCore.FS = type(readfile) == "function" and type(writefile) == "function" and type(isfile) == "function" and type(makefolder) == "function" and type(isfolder) == "function" and type(listfiles) == "function"
if HubCore.FS then
    pcall(function ()
        if not isfolder(HubCore.Folder) then
            makefolder(HubCore.Folder)
        end
        if not isfolder(HubCore.SettingsFolder) then
            makefolder(HubCore.SettingsFolder)
        end
        if not isfolder(HubCore.HubFolder) then
            makefolder(HubCore.HubFolder)
        end
        if not isfolder(HubCore.DataFolder) then
            makefolder(HubCore.DataFolder)
        end
    end)
end
function HubCore.Connect(connection, callback)
    local connection2 = connection:Connect(function (...)
        if HubCore.Running then
            callback(...)
        end
    end)
    table.insert(HubCore.Connections, connection2)
    return connection2
end
function HubCore.Path(arg, text)
    local arg2 = arg
    for gmatch in text:gmatch("[^/]+") do
        arg2 = arg2 and arg2:FindFirstChild(gmatch)
    end
    return arg2
end
function HubCore.Notify(arg)
    warn("[Camera TD Hub] " .. tostring(arg))
    if HubCore.UI then
        pcall(function ()
            HubCore.UI:Notify({ Title = "Camera TD", Content = tostring(arg), Duration = 5})
        end)
    end
end
function HubCore.SetStatus(arg, arg2)
    if HubCore.Status[arg] == arg2 then
        return
    end
    HubCore.Status[arg] = arg2
    local widgets = HubCore.Widgets[arg]
    if widgets then
        pcall(function ()
            widgets:SetDesc(arg2)
        end)
    end
end
function HubCore.SafeName(arg)
    return tostring(arg or ""):gsub("[%c<>:\"/\\|?*]", ""):sub(1, 64):match("^%s*(.-)%s*$"):gsub("[%. ]+$", "")
end
function HubCore.File(arg)
    return HubCore.Folder .. "/" .. HubCore.SafeName(arg) .. ".json"
end
function HubCore.Read(arg)
    if not HubCore.FS or not isfile(arg) then
        return nil
    end
    local ok3, result3 = pcall(function ()
        return HttpServiceSvc:JSONDecode(readfile(arg))
    end)
    return ok3 and type(result3) == "table" and result3 or nil
end
function HubCore.Write(text, arg)
    if not HubCore.FS then
        return false, "Executor filesystem unavailable"
    end
    local ok3, result3 = pcall(function ()
        local jSONEncode = HttpServiceSvc:JSONEncode(arg)
        writefile(text .. ".pending", jSONEncode)
        assert(readfile(text .. ".pending") == jSONEncode, "Pending verification failed")
        assert(type(HttpServiceSvc:JSONDecode(jSONEncode)) == "table", "JSON verification failed")
        if isfile(text) then
            writefile(text .. ".bak", readfile(text))
        end
        writefile(text, jSONEncode)
        assert(readfile(text) == jSONEncode, "Final verification failed; backup preserved")
        if type(delfile) == "function" then
            delfile(text .. ".pending")
        end
    end)
    return ok3, result3
end
function HubCore.ProfileOwner(arg, obj, arg2)
    HubConfig.MacroOwners = type(HubConfig.MacroOwners) == "table" and HubConfig.MacroOwners or {}
    local safeName = HubCore.SafeName(arg)
    local value2 = type(obj) == "table" and tonumber(obj.OwnerUserId) or nil
    local value3 = value2 or tonumber(HubConfig.MacroOwners[safeName])
    if value2 then
        HubConfig.MacroOwners[safeName] = value2
        if arg2 and HubCore.FS then
            obj.OwnerUserId = nil
            local write = HubCore.Write(HubCore.File(safeName), obj)
            if not write then
                obj.OwnerUserId = value2
            end
            if write then
                HubCore.SaveSettings()
            end
        end
    end
    return value3
end
function HubCore.SetProfileOwner(arg, number)
    HubConfig.MacroOwners = type(HubConfig.MacroOwners) == "table" and HubConfig.MacroOwners or {}
    HubConfig.MacroOwners[HubCore.SafeName(arg)] = tonumber(number) or localPlayer.UserId
    HubCore.SaveSettings()
end
function HubCore.LoadAccountSettings()
    local read = HubCore.Read(HubCore.SettingsFile)
    if read then
        return read
    end
    local read2 = HubCore.Read(HubCore.Folder .. "/Settings.json")
    if not read2 then
        return nil
    end
    local settingsFolder = HubCore.SettingsFolder .. "/.legacy-owner.json"
    local read3 = HubCore.Read(settingsFolder)
    if read3 and tonumber(read3.UserId) ~= localPlayer.UserId then
        return nil
    end
    if not read3 then
        local write = HubCore.Write(settingsFolder, { UserId = localPlayer.UserId, Username = localPlayer.Name})
        if not write then
            return nil
        end
    end
    local write2 = HubCore.Write(HubCore.SettingsFile, read2)
    return write2 and read2 or nil
end
do
    local loadAccountSettings = HubCore.LoadAccountSettings()
    if loadAccountSettings then
        for key, hubConfig in pairs(HubConfig) do
            if type(loadAccountSettings[key]) == type(hubConfig) then
                HubConfig[key] = loadAccountSettings[key]
            end
        end
    end
    HubConfig.SummonAmount = HubConfig.SummonAmount == 10 and 10 or 1
    if not table.find({ "Basic Crate", "Mythic Crate"}, HubConfig.SummonCrate) then
        HubConfig.SummonCrate = "Basic Crate"
    end
    if not table.find({ 1, 3, 10}, HubConfig.BuyCrateAmount) then
        HubConfig.BuyCrateAmount = 1
    end
    HubConfig.OpenCrateAmount = HubConfig.OpenCrateAmount == 10 and 10 or 1
    HubConfig.CrateDelay = math.clamp(tonumber(HubConfig.CrateDelay) or 2, 1, 10)
    HubConfig.SummonDelay = math.clamp(HubConfig.SummonDelay, 0.1, 10)
    HubConfig.AutoDelay = math.clamp(HubConfig.AutoDelay, 0.1, 10)
    HubConfig.SellFarmWave = math.max(1, math.floor(tonumber(HubConfig.SellFarmWave) or 30))
    HubConfig.SellFarmDelay = math.clamp(tonumber(HubConfig.SellFarmDelay) or 0.1, 0.1, 10)
    HubConfig.JoinMethod = HubConfig.JoinMethod == "Walk" and "Walk" or "TP"
    HubConfig.Players = math.clamp(math.floor(HubConfig.Players), 1, 5)
    HubConfig.PlacementRange = math.clamp(HubConfig.PlacementRange, 0, 100)
    HubConfig.ActionTimeout = math.clamp(HubConfig.ActionTimeout, 10, 600)
    if not table.find({ "None", "Replay", "Return"}, HubConfig.EndAction) then
        HubConfig.EndAction = "None"
    end
    if HubConfig.Difficulty == "HalloweenEasy" then
        HubConfig.Difficulty = "Halloween Easy"
    end
    if HubConfig.Difficulty == "HalloweenHard" then
        HubConfig.Difficulty = "Halloween Hard"
    end
    if not table.find({ "Easy", "Normal", "Hard", "Insane", "Nightmare", "Halloween Easy", "Halloween Hard"}, HubConfig.Difficulty) then
        HubConfig.Difficulty = "Easy"
    end
    if HubConfig.PlaybackMode == "Wave + Time" or HubConfig.PlaybackMode == "Wave" then
        HubConfig.PlaybackMode = "Hybrid"
    end
    if not table.find({ "Hybrid", "Time", "Money"}, HubConfig.PlaybackMode) then
        HubConfig.PlaybackMode = "Hybrid"
    end
    if not table.find({ 1, 1.5, 2}, HubConfig.SpeedScale) then
        HubConfig.SpeedScale = 1
    end
    HubConfig.WebhookURL = HubConfig.WebhookURL:match("^%s*(.-)%s*$")
    HubConfig.Profile = HubCore.SafeName(HubConfig.Profile)
    if HubConfig.Profile:lower() == "settings" then
        HubConfig.Profile = ""
    end
end
function HubCore.SaveSettings()
    if HubCore.SaveQueued then
        return
    end
    HubCore.SaveQueued = true
    task.delay(0.3, function ()
        HubCore.SaveQueued = false
        if HubCore.Running and HubCore.FS then
            local flag, value2 = HubCore.Write(HubCore.SettingsFile, HubConfig)
            if not flag then
                HubCore.SetStatus("Macro", "Settings save failed: " .. tostring(value2))
            end
        end
    end)
end
HubCore.BlackScreenPersistence = { Get = function ()
    return HubConfig.BlackScreen == true
end, Set = function (arg)
    HubConfig.BlackScreen = arg == true
    HubCore.SaveSettings()
end}
function HubCore.Remote(text, arg)
    return HubCore.Path(ReplicatedStorageSvc, "ModuleLoader/Shared/Network/" .. (arg or "RemoteEvent") .. "/" .. text)
end
function HubCore.Fire(text, arg)
    local remote = HubCore.Remote(text)
    if not remote or not remote:IsA("RemoteEvent") then
        return false, "Missing remote " .. text
    end
    return pcall(function ()
        if arg == nil then
            remote:FireServer()
        else
            remote:FireServer(arg)
        end
    end)
end
function HubCore.Invoke(text, ...)
    local remote = HubCore.Remote(text, "RemoteFunction")
    if not remote or not remote:IsA("RemoteFunction") then
        return false, "Missing remote " .. text
    end
    return pcall(remote.InvokeServer, remote, ...)
end
HubCore.Speed = { Value = 1, Clock = 0, At = os.clock(), Revision = 0}
do
    local obj = genv.__CameraTDConfirmedSpeed
    if obj and obj.Server == tostring(game.PlaceId) .. "/" .. tostring(game.JobId) then
        HubCore.Speed.Value = obj.Value
    end
end
function HubCore.GameClock()
    local speed = HubCore.Speed
    local now = os.clock()
    speed.Clock = speed.Clock + math.max(0, now - speed.At) * speed.Value
    speed.At = now
    return speed.Clock
end
function HubCore.ConfirmSpeed(number)
    number = tonumber(number)
    if not table.find({ 1, 1.5, 2}, number) then
        return false
    end
    HubCore.GameClock()
    HubCore.Speed.Value = number
    genv.__CameraTDConfirmedSpeed = { Server = tostring(game.PlaceId) .. "/" .. tostring(game.JobId), Value = number}
    HubCore.Speed.Revision = HubCore.Speed.Revision + 1
    return true
end
function HubCore.RecordTime(obj)
    if obj.Profile and obj.Profile.TimeOrigin == "Wave1" then
        local waveStartTimes = HubCore.WaveStartTimes and HubCore.WaveStartTimes[1]
        return waveStartTimes and math.max(0, HubCore.GameClock() - waveStartTimes) or 0
    end
    if obj.GameAt then
        return HubCore.GameClock() - obj.GameAt
    end
    return os.clock() - obj.At
end
function HubCore.SpeedNotice(text)
    local pendingMacroPlacement = HubCore.PendingMacroPlacement
    if type(text) == "string" and pendingMacroPlacement and HubCore.Playing then
        pendingMacroPlacement.Notices = pendingMacroPlacement.Notices or {}
        pendingMacroPlacement.Notices[#pendingMacroPlacement.Notices + 1] = text
        if #pendingMacroPlacement.Notices > 12 then
            table.remove(pendingMacroPlacement.Notices, 1)
        end
        local text2 = text:lower()
        for index, item in ipairs({ "cannot", "can't", "not enough", "too close", "limit", "invalid", "failed", "unable", "already", "maximum"}) do
            if text2:find(item, 1, true) then
                pendingMacroPlacement.RejectionNotice = text
                break
            end
        end
        for index2, item2 in ipairs({ "too close", "overlap", "hitbox", "can't place", "cannot place", "can't be placed", "cannot be placed"}) do
            if text2:find(item2, 1, true) then
                pendingMacroPlacement.PlacementRejected = true
                pendingMacroPlacement.RejectionNotice = text
                break
            end
        end
    end
    local text3 = type(text) == "string" and text:match("just changed the game speed to ([%d%.]+)")
    text3 = text3 and tonumber(text3:match("%d+%.?%d*"))
    if text3 then
        HubCore.ConfirmSpeed(text3)
    end
end
function HubCore.SetGameNotificationsHidden(arg)
    local gameNotificationFilter = HubCore.GameNotificationFilter
    if gameNotificationFilter then
        gameNotificationFilter.Enabled = false
        for index, connection in ipairs(gameNotificationFilter.Connections) do
            pcall(connection.Disconnect, connection)
        end
        for key, root in pairs(gameNotificationFilter.Roots) do
            for index2, connection2 in ipairs(root.Connections) do
                pcall(connection2.Disconnect, connection2)
            end
            pcall(function ()
                key.Visible = root.Visible
            end)
        end
        HubCore.GameNotificationFilter = nil
    end
    if arg ~= true then
        return
    end
    local tbl = { Enabled = true, Connections = {}, Roots = {}}
    HubCore.GameNotificationFilter = tbl
    local function hideNotificationGui(instance)
        if not instance or not instance:IsA("GuiObject") or tbl.Roots[instance] then
            return
        end
        local tbl2 = { Visible = instance.Visible, Connections = {}}
        tbl.Roots[instance] = tbl2
        local flag = false
        local function keepGuiHidden()
            if not tbl.Enabled or not HubCore.Running or flag or not instance.Parent then
                return
            end
            if instance.Visible then
                flag = true
                instance.Visible = false
                flag = false
            end
        end
        tbl2.Connections[#tbl2.Connections + 1] = instance:GetPropertyChangedSignal("Visible"):Connect(keepGuiHidden)
        if instance.Destroying then
            tbl2.Connections[#tbl2.Connections + 1] = instance.Destroying:Connect(function ()
                for index3, connection3 in ipairs(tbl2.Connections) do
                    pcall(connection3.Disconnect, connection3)
                end
                tbl.Roots[instance] = nil
            end)
        end
        keepGuiHidden()
    end
    local tbl3 = {}
    local function hookPlayerGui(obj)
        if tbl3[obj] then
            return
        end
        tbl3[obj] = true
        local function hideNotificationGuis()
            if not tbl.Enabled or not HubCore.Running then
                return
            end
            hideNotificationGui(HubCore.Path(obj, "GameUI/Notifications"))
            hideNotificationGui(HubCore.Path(obj, "Main/NotificationFrame"))
        end
        tbl.Connections[#tbl.Connections + 1] = obj.DescendantAdded:Connect(function (obj2)
            local name = obj2.Name
            if name == "Notifications" or name == "NotificationFrame" or name == "GameUI" or name == "Main" then
                hideNotificationGuis()
            end
        end)
        hideNotificationGuis()
    end
    local playerGui = localPlayer:FindFirstChild("PlayerGui")
    if playerGui then
        hookPlayerGui(playerGui)
    end
    tbl.Connections[#tbl.Connections + 1] = localPlayer.ChildAdded:Connect(function (instance2)
        if tbl.Enabled and HubCore.Running and instance2:IsA("PlayerGui") then
            hookPlayerGui(instance2)
        end
    end)
end
function HubCore.SpeedStep()
    if not HubConfig.AutoSpeed or not HubCore.Active() or HubCore.Speed.Busy then
        return
    end
    local speedScale = HubConfig.SpeedScale
    if HubCore.Speed.Applied == speedScale and HubCore.Speed.Value == speedScale then
        return
    end
    if HubCore.Speed.Rejected == speedScale or os.clock() < (HubCore.Next.Speed or 0) then
        return
    end
    HubCore.Speed.Busy = true
    HubCore.Next.Speed = os.clock() + 5
    local revision = HubCore.Speed.Revision
    local value2, value3 = HubCore.Invoke("ChangeSpeed", speedScale)
    HubCore.Speed.Busy = false
    if not HubCore.Running then
        return
    end
    if value2 and value3 == true then
        if revision == HubCore.Speed.Revision then
            HubCore.ConfirmSpeed(speedScale)
        end
        HubCore.Speed.Applied = speedScale
        HubCore.SetStatus("Speed", "Confirmed speed: " .. HubCore.Speed.Value .. "x")
    elseif value2 and value3 == false then
        HubCore.Speed.Rejected = speedScale
        HubCore.SetStatus("Speed", "Speed " .. speedScale .. "x rejected; current " .. HubCore.Speed.Value .. "x")
        HubCore.Notify("Speed " .. speedScale .. "x rejected by game (2x requires 200 wins or X2 Speed gamepass)")
    else
        HubCore.SetStatus("Speed", "Speed request unconfirmed; keeping current timing")
    end
end
function HubCore.AutoInterval()
    return HubConfig.AutoDelay / HubCore.Speed.Value
end
function HubCore.RoundStep(arg)
    if arg then
        HubCore.FinalSeen = true
        return false
    end
    if not HubCore.FinalSeen then
        return false
    end
    local waveGui = HubCore.GUI("Stats/Wave")
    local waveGui2 = waveGui and waveGui.Text:lower() or ""
    if not (waveGui2:match("^intermission") or waveGui2:find("voting", 1, true) or waveGui2:match("^wave%s+1%s*$")) then
        return false
    end
    if HubCore.Playing then
        HubCore.StopPlayback("New round")
    end
    if HubCore.Recording then
        HubCore.StopRecord()
    end
    HubCore.FinalSeen = nil
    local text = tostring(game.PlaceId) .. "/" .. tostring(game.JobId)
    genv.__CameraTDRoundCounters = genv.__CameraTDRoundCounters or {}
    genv.__CameraTDRoundCounters[text] = (genv.__CameraTDRoundCounters[text] or 0) + 1
    HubCore.RoundId = genv.__CameraTDRoundCounters[text]
    HubCore.ObservedWave, HubCore.LastWave = 0, 0
    HubCore.WaveStartedGame = nil
    HubCore.WaveStartTimes = {}
    HubCore.WaveSessionKey = text
    HubCore.AutoPlayed, HubCore.ReturnSent, HubCore.EndSent = nil, nil, nil
    HubCore.Replay = nil
    HubCore.PlaybackCompleted = nil
    HubCore.PlaybackFailure, HubCore.PlaybackIndex, HubCore.PlaybackTotal = nil, 0, 0
    HubCore.SkipSubmittedWave = nil
    HubCore.FarmSell = nil
    HubCore.Skip.NextAt, HubCore.Skip.LastWave, HubCore.Skip.LastIntermission = 0, nil, nil
    HubCore.Next.Vote, HubCore.Next.AutoPlayback, HubCore.Next.Speed = nil, nil, nil
    HubCore.Speed.Applied, HubCore.Speed.Rejected = nil, nil
    HubCore.Towers, HubCore.Pending, HubCore.Removed = {}, {}, {}
    local auto = HubCore.Auto
    auto.PlacePending, auto.UpgradePending = {}, {}
    auto.SlotCooldowns, auto.TowerCooldowns, auto.Failures = {}, {}, {}
    auto.NextAt, auto.PlaceTurn, auto.GeometryDirty = 0, true, true
    auto.NodeLayout, auto.PathNodes = nil, nil
    auto.GridSerial = (auto.GridSerial or 0) + 1
    HubCore.ClearAutoVisual()
    auto.HydrateAt, auto.HydrateAttempts = nil, nil
    HubCore.ReportRuntime, HubCore.ReportStartedAt, HubCore.ReportEndedAt = {}, nil, nil
    if HubCore.Close then
        HubCore.Close.ClickSerial = HubCore.Close.ClickSerial + 1
        HubCore.Close.LastSend = nil
    end
    HubCore.SetStatus("Macro", "New replay round: ready")
    return true
end

HubCore.ReplayRetryDelay = 10
HubCore.ReplayCancelGap = 1.5
HubCore.ReplayMaxAttempts = 3
function HubCore.ReplayLog(text)
    HubCore.Notify("Replay: " .. text)
end
function HubCore.ReplayToLobby(replay, number)
    replay.Returning = true
    replay.Deadline = number + 15
    HubCore.QueueTeleport()
    local teleported, teleportError = pcall(function ()
        game:GetService("TeleportService"):Teleport(HubCore.LobbyId, localPlayer)
    end)
    HubCore.ReplayLog(teleported and "failed " .. HubCore.ReplayMaxAttempts .. " times; returning to lobby" or "lobby teleport failed (" .. tostring(teleportError) .. "); retrying")
end
function HubCore.ReplayStep(number)
    local replay = HubCore.Replay
    if not replay then
        replay = { Attempts = 0, Voted = false, ResumeAt = number, LastFireAt = -100, PressedAt = number}
        HubCore.Replay = replay
    end
    if number < (replay.TeleportUntil or 0) then
        return
    end
    if replay.Returning then
        if number >= replay.Deadline then
            HubCore.ReplayToLobby(replay, number)
        end
        return
    end
    local playAgainGui = HubCore.GUI("FinalUI/Content/PlayAgain")
    local label = HubCore.Visible(playAgainGui) and playAgainGui:FindFirstChild("TextLabel")
    local buttonText = label and label.Text or nil
    local isCancel = buttonText == "Cancel" or buttonText == "Hủy" or buttonText == "Huỳ"
    local isPlay = buttonText == "Play Again" or buttonText == "Chơi lại"
    if number - replay.LastFireAt > 1.5 then
        if isCancel and not replay.Voted then
            replay.Voted, replay.PressedAt = true, number
        elseif isPlay and replay.Voted then
            replay.Voted = false
        end
    end
    if number < replay.ResumeAt then
        return
    end
    if not replay.Voted then
        if replay.Attempts >= HubCore.ReplayMaxAttempts then
            HubCore.ReplayToLobby(replay, number)
            return
        end
        local fired, fireError = HubCore.Fire("PlayAgain")
        if not fired then
            HubCore.ReplayLog("could not press Play Again: " .. tostring(fireError))
            replay.ResumeAt = number + 2
            return
        end
        replay.Attempts = replay.Attempts + 1
        replay.Voted, replay.PressedAt, replay.LastFireAt = true, number, number
        HubCore.ReplayLog("Play Again pressed (" .. replay.Attempts .. "/" .. HubCore.ReplayMaxAttempts .. ") | button: " .. tostring(buttonText))
        return
    end
    if number - replay.PressedAt >= HubCore.ReplayRetryDelay then
        local fired, fireError = HubCore.Fire("PlayAgain")
        if not fired then
            HubCore.ReplayLog("could not press Cancel: " .. tostring(fireError))
            replay.PressedAt = number
            return
        end
        replay.Voted, replay.LastFireAt = false, number
        replay.ResumeAt = number + HubCore.ReplayCancelGap
        HubCore.ReplayLog("no teleport after " .. HubCore.ReplayRetryDelay .. "s; Cancel pressed | button: " .. tostring(buttonText))
    end
end
function HubCore.EndMatchStep(flag)
    if not flag or HubCore.EndSent or HubConfig.EndAction == "None" or HubCore.SoloReturning then
        return
    end
    if HubConfig.EndAction == "Replay" then
        HubCore.ReplayStep(os.clock())
    elseif HubConfig.EndAction == "Return" then
        HubCore.EndSent, HubCore.ReturnSent = true, true
        HubCore.QueueTeleport()
        HubCore.Fire("OnLeave")
    end
end
function HubCore.SubTab(parent, window, title, icon)
    local ok, sub = pcall(function ()
        return parent:Tab({ Title = title, Icon = icon})
    end)
    if ok and type(sub) == "table" and sub.Paragraph then
        HubCore.SubTabMode = "nested"
        return sub
    end
    HubCore.SubTabMode = "plain"
    return window:Tab({ Title = title, Icon = icon})
end
HubCore.QuestClaims = {}
HubCore.RewardClaims = {}
function HubCore.RewardLobby()
    return HubCore.Running and game.PlaceId == HubCore.LobbyId and not HubCore.Teleporting
end
function HubCore.QuestCompleted(obj)
    if type(obj) ~= "table" or obj.RewardClaimed == true then
        return false
    end
    local number, number2 = tonumber(obj.CurrentProgress), tonumber(obj.Progress)
    return obj.Completed == true or obj.State == "Completed" or number ~= nil and number2 ~= nil and number2 > 0 and number >= number2
end
function HubCore.SendRewardClaim(text, arg, ...)
    if not HubCore.RewardLobby() or HubCore.RewardClaims[text] or os.clock() < (HubCore.Next.RewardAction or 0) then
        return false
    end
    HubCore.RewardClaims[text] = "Pending"
    HubCore.Next.RewardAction = os.clock() + 2
    local value2, value3 = HubCore.Invoke(arg, ...)
    HubCore.RewardClaims[text] = value2 and value3 == true and "Accepted" or "Unconfirmed"
    HubCore.Next.RewardAction = os.clock() + 2
    HubCore.SetStatus("Rewards", HubCore.RewardClaims[text] .. ": " .. text)
    return true
end
function HubCore.ClaimableQuests()
    local tbl = {}
    local obj = HubCore.InventoryData and HubCore.InventoryData.ActiveQuests and HubCore.InventoryData.ActiveQuests.Daily
    if type(obj) == "table" and type(obj.Quests) == "table" then
        local text = tostring(obj.LastUpdate or 0)
        for key, quest in pairs(obj.Quests) do
            if type(quest) == "table" and type(quest.Id) == "string" then
                local text2 = text .. "/Daily/" .. quest.Id
                local number, number2 = tonumber(quest.CurrentProgress), tonumber(quest.Progress)
                local completed = quest.Completed == true or quest.State == "Completed" or number and number2 and number2 > 0 and number >= number2
                if completed and quest.RewardClaimed ~= true then
                    table.insert(tbl, { Id = quest.Id, Key = text2, Type = "Daily"})
                end
            end
        end
    else
        local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Quests/QuestsFrame/AllQuests/List")
        if path then
            for index, child in ipairs(path:GetChildren()) do
                if child.Name ~= "Template" then
                    local amountDoneGui = HubCore.Path(child, "Progress/AmountDone")
                    local claimButtonGui = HubCore.Path(child, "Progress/ClaimButton")
                    local claimedTextGui = HubCore.Path(child, "Progress/ClaimedText")
                    local number3, number4
                    if amountDoneGui then
                        number3, number4 = amountDoneGui.Text:match("(%d+)%s*/%s*(%d+)")
                    end
                    if number3 and tonumber(number4) > 0 and tonumber(number3) >= tonumber(number4) and claimButtonGui and claimButtonGui.Visible and not (claimedTextGui and claimedTextGui.Visible) then
                        table.insert(tbl, { Id = child.Name, Key = "GUI/Daily/" .. child.Name, Type = "Daily"})
                    end
                end
            end
        end
    end
    table.sort(tbl, function (obj2, obj3)
        return obj2.Id < obj3.Id
    end)
    return tbl
end
function HubCore.QuestStep()
    if not HubConfig.AutoClaimQuest or not HubCore.RewardLobby() then
        return
    end
    if os.clock() < (HubCore.Next.Quest or 0) then
        return
    end
    HubCore.Next.Quest = os.clock() + 2
    local claimableQuests = HubCore.ClaimableQuests()
    for index, claimableQuest in ipairs(claimableQuests) do
        if HubCore.SendRewardClaim(claimableQuest.Key, "CollectQuest", claimableQuest.Id, claimableQuest.Type) then
            return
        end
    end
    HubCore.SetStatus("Quest", #claimableQuests == 0 and "Waiting for completed Daily quests" or "Waiting for quest update")
end
function HubCore.PassQuestStep()
    if not HubConfig.AutoClaimPassQuest or not HubCore.RewardLobby() then
        return
    end
    local obj = HubCore.InventoryData and HubCore.InventoryData.Battlepass
    local obj2 = type(obj) == "table" and obj.PassQuests
    if type(obj2) ~= "table" or type(obj2.Quests) ~= "table" then
        return
    end
    local tbl = {}
    for key, quest in pairs(obj2.Quests) do
        if HubCore.QuestCompleted(quest) and type(quest.Id) == "string" and quest.RewardClaimed == false then
            tbl[#tbl + 1] = quest.Id
        end
    end
    table.sort(tbl)
    for index, tbl2 in ipairs(tbl) do
        local text = tostring(obj2.LastUpdate or 0) .. "/Pass/" .. tbl2
        if HubCore.SendRewardClaim(text, "CollectPassQuest", tbl2) then
            return
        end
    end
end
function HubCore.TierClaimed(obj, text, arg)
    local claimedTiers = obj.ClaimedTiers and obj.ClaimedTiers[arg and "Premium" or "Default"]
    if type(claimedTiers) ~= "table" then
        return nil
    end
    if claimedTiers[text] == true or claimedTiers[tostring(text)] == true then
        return true
    end
    for key, claimedTier in pairs(claimedTiers) do
        if type(claimedTier) ~= "boolean" and tonumber(claimedTier) == text then
            return true
        end
    end
    local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Battlepass/BattlepassFrame/EventPass/List/ScrollingFrame/Tier_" .. text .. "/Holder/" .. (arg and "Premium" or "Free") .. "/TroopFrame/TroopsFrame/Price")
    if path and tostring(path.Text):lower() == "claimed" then
        return true
    end
    return false
end
function HubCore.TierAvailable(obj, text, arg)
    if arg then
        return obj.Premium == true and text <= (tonumber(obj.CurrentTier) or 0)
    end
    local number = tonumber(obj.CurrentTier) or 0
    if text <= number then
        return true
    end
    if text ~= (tonumber(obj.NextTier) or number + 1) then
        return false
    end
    local playerGui = localPlayer:FindFirstChild("PlayerGui")
    local path = HubCore.Path(playerGui, "Main/Main/Battlepass/BattlepassFrame/EventPass/List/ScrollingFrame/Tier_" .. text .. "/Holder/Free/TroopFrame/TroopsFrame")
    local path2 = path and path:FindFirstChild("ClaimButton")
    local path3 = path and path:FindFirstChild("Price")
    local path4 = path3 and tostring(path3.Text):lower() or ""
    if path4:find("claimed", 1, true) or path4:find("away", 1, true) then
        return false
    end
    if path2 and path2.Visible then
        return true
    end
    local currentTierGui = HubCore.Path(playerGui, "Main/Main/Battlepass/BattlepassFrame/EventPass/Info/CurrentTier")
    local currentTierGui2 = currentTierGui and currentTierGui:FindFirstChild("NextTier")
    local currentTierGui3 = currentTierGui and currentTierGui:FindFirstChild("XP")
    local currentTierGui4 = currentTierGui2 and tonumber(tostring(currentTierGui2.Text):match("%d+"))
    local currentTierGui5 = currentTierGui3 and tonumber(tostring(currentTierGui3.Text):gsub(",", ""):match("/%s*(%d+)%s*XP"))
    return currentTierGui4 == text and currentTierGui5 ~= nil and currentTierGui5 > 0 and (tonumber(obj.EXP) or 0) >= currentTierGui5
end
function HubCore.BattlepassStep()
    if not HubCore.RewardLobby() or not (HubConfig.AutoClaimBattlepass or HubConfig.AutoClaimPremium) then
        return
    end
    local obj = HubCore.InventoryData and HubCore.InventoryData.Battlepass
    if type(obj) ~= "table" then
        HubCore.SetStatus("Rewards", "Waiting for your battlepass data")
        return
    end
    local number = tonumber(obj.CurrentTier)
    if not number or number < 0 or number > 500 or number ~= math.floor(number) then
        return
    end
    local number2 = math.min(500, math.max(number, tonumber(obj.NextTier) or number + 1))
    local text = tostring(obj.PassQuests and obj.PassQuests.LastUpdate or 0)
    local flag = false
    for index = 1, number2 do
        for index2 = 1, 2 do
            local index3 = index2 == 2
            local index4 = index3 and HubConfig.AutoClaimPremium or not index3 and HubConfig.AutoClaimBattlepass
            if index4 and HubCore.TierAvailable(obj, index, index3) and HubCore.TierClaimed(obj, index, index3) == false then
                local text2 = text .. "/Tier/" .. index .. "/" .. tostring(index3)
                if HubCore.SendRewardClaim(text2, "ClaimTier", index, index3) then
                    return
                end
                flag = true
            end
        end
    end
    HubCore.SetStatus("Rewards", flag and "Waiting for claim confirmation; no repeated requests" or "No claimable battlepass rewards | Normal completed: " .. number)
end
function HubCore.CrateHUD()
    local playerGui = localPlayer:FindFirstChild("PlayerGui")
    local amountLabelGui = HubCore.Path(playerGui, "HUD/Currencies/Candy/CurrencyFrame/AmountLabel")
    local inventoryFrameGui = HubCore.Path(playerGui, "Main/Main/Inventory/InventoryFrame")
    local unitAmountGui = HubCore.Path(inventoryFrameGui, "TopButtons/UnitLimit/UnitAmount")
    local number, number2
    if unitAmountGui then
        number, number2 = tostring(unitAmountGui.Text):gsub(",", ""):match("(%d+)%s*/%s*(%d+)")
    end
    local inventoryFrameGui2 = inventoryFrameGui and inventoryFrameGui:FindFirstChild("Amounts")
    if not number and HubCore.Visible(inventoryFrameGui2) then
        number = tostring(inventoryFrameGui2.Text):gsub(",", ""):match("^%s*(%d+)%s+Units?%s*$")
    end
    local amountLabelGui2 = amountLabelGui and tonumber(tostring(amountLabelGui.Text):gsub(",", ""):match("^%s*(%d+)%s*$"))
    return amountLabelGui2, tonumber(number), tonumber(number2)
end
function HubCore.CrateInventory(arg)
    local obj = HubCore.InventoryData
    if type(obj) ~= "table" or type(obj.Items) ~= "table" then
        return nil
    end
    local tbl, number = {}, 0
    for key, item in pairs(obj.Items) do
        if type(key) == "string" and type(item) == "table" and item.Type == "Crate" and item.Name == arg then
            tbl[#tbl + 1] = key
        end
    end
    for towersor in pairs(obj.Towers or {}) do
        number = number + 1
    end
    table.sort(tbl)
    local value2, value3, value4 = HubCore.CrateHUD()
    local value5 = value4 or tonumber(obj.InventorySpace)
    if not value5 or value5 < 1 or value5 % 1 ~= 0 then
        value5 = nil
    end
    return { Ids = tbl, Count = #tbl, Towers = math.max(value3 or 0, number), Space = value5, Candy = value2 or tonumber(obj.Candy)}
end
function HubCore.CrateOptions()
    local tbl = { ["Exclusive Halloween Crate"] = true, ["Woman Crate"] = true}
    local obj = HubCore.InventoryData
    for key, obj2 in pairs(obj and obj.Items or {}) do
        if type(obj2) == "table" and obj2.Type == "Crate" and type(obj2.Name) == "string" then
            tbl[obj2.Name] = true
        end
    end
    if type(HubConfig.OpenCrateName) == "string" and HubConfig.OpenCrateName ~= "" then
        tbl[HubConfig.OpenCrateName] = true
    end
    local tbl2 = {}
    for tbl3 in pairs(tbl) do
        tbl2[#tbl2 + 1] = tbl3
    end
    table.sort(tbl2)
    return tbl2
end
function HubCore.CratePrice(text)
    local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Battlepass/BattlepassFrame/Shop/List/ScrollingFrame/Exclusive Halloween Crate/CrateInfo/BuyCrates/" .. text .. "/Price")
    local path2 = path and tostring(path.Text) or ""
    if path2:match("^%s*$") then
        return ({ [1] = 500, [3] = 1500, [10] = 5000})[text]
    end
    if not path2:lower():find("cand", 1, true) then
        return nil
    end
    local number = tonumber(path2:gsub(",", ""):match("%d+"))
    return number and number > 0 and number or nil
end
function HubCore.InventorySellOptions()
    local text, tbl, tbl2, tbl3 = {}, { "(select a unit)"}, {}, {}
    for key, towersor in pairs(HubCore.InventoryData and HubCore.InventoryData.Towers or {}) do
        if type(towersor) == "table" and type(towersor.Name) == "string" then
            text[towersor.Name] = (text[towersor.Name] or 0) + 1
        end
    end
    local tbl4 = {}
    for text2 in pairs(text) do
        tbl4[#tbl4 + 1] = text2
    end
    table.sort(tbl4)
    for index, tbl5 in ipairs(tbl4) do
        local text3 = "(x" .. text[tbl5] .. ") " .. tbl5
        tbl[#tbl + 1] = text3
        tbl2[text3] = tbl5
        tbl3[tbl5] = text3
    end
    return tbl, tbl2, tbl3
end
function HubCore.RefreshInventorySell()
    local widgets = HubCore.Widgets and HubCore.Widgets.InventorySellSelect
    if not widgets then
        return
    end
    local value2, value3, tbl = HubCore.InventorySellOptions()
    HubCore.InventorySellLabels = value3
    if HubCore.InventorySellName and not tbl[HubCore.InventorySellName] then
        HubCore.InventorySellName = nil
    end
    local value4 = HubCore.InventorySellName or "None"
    if HubCore.Widgets.InventorySellSelected and HubCore.InventorySellSelectedText ~= value4 then
        HubCore.Widgets.InventorySellSelected:SetDesc(value4)
        HubCore.InventorySellSelectedText = value4
    end
    local text = table.concat(value2, "\0")
    if text == HubCore.InventorySellSignature then
        return
    end
    HubCore.InventorySellSignature = text
    HubCore.InventorySellRefreshing = true
    pcall(function ()
        widgets:Refresh(value2)
        widgets:Select(tbl[HubCore.InventorySellName] or "(select a unit)")
    end)
    HubCore.InventorySellRefreshing = false
end
function HubCore.InventorySellPlan(text, arg)
    local obj = HubCore.InventoryData
    if type(obj) ~= "table" or type(obj.Towers) ~= "table" then
        return nil, "Waiting for your inventory"
    end
    if type(text) ~= "string" or text == "" then
        return nil, "Select a unit first"
    end
    local tbl, number = {}, 0
    for key, tower in pairs(obj.Towers) do
        if type(key) == "string" and type(tower) == "table" and tower.Name == text then
            number = number + 1
            if tower.Equipped ~= true and (tonumber(tower.Equipped) or 0) < 1 and tower.Locked ~= true then
                tbl[#tbl + 1] = key
            end
        end
    end
    table.sort(tbl)
    local number2
    if arg == "All" then
        number2 = #tbl
    elseif arg == "Half" then
        number2 = math.min(#tbl, math.floor(number / 2))
    elseif arg == "KeepOne" then
        number2 = math.min(#tbl, math.max(0, number - 1))
    else
        return nil, "Unknown inventory sell mode"
    end
    while #tbl > number2 do
        tbl[#tbl] = nil
    end
    return tbl
end
function HubCore.CheckInventorySale()
    local obj = HubCore.InventorySellPending
    if not obj or not HubCore.InventoryData or type(HubCore.InventoryData.Towers) ~= "table" then
        return
    end
    for index, ids in ipairs(obj.Ids) do
        if HubCore.InventoryData.Towers[ids] ~= nil then
            return
        end
    end
    HubCore.InventorySellPending = nil
    HubCore.SetStatus("InventorySell", "Sold " .. #obj.Ids .. " " .. obj.Name .. " | Inventory confirmed")
end
function HubCore.SellInventoryUnits(arg)
    if not HubCore.Running or game.PlaceId ~= HubCore.LobbyId or HubCore.Teleporting then
        return
    end
    HubCore.CheckInventorySale()
    if HubCore.InventorySellPending then
        HubCore.SetStatus("InventorySell", "Waiting for the previous sale to confirm; no repeat request")
        return
    end
    local text = HubCore.InventorySellName
    local text2, value2 = HubCore.InventorySellPlan(text, arg)
    if not text2 or #text2 == 0 then
        HubCore.SetStatus("InventorySell", value2 or "No sellable copies for this action")
        return
    end
    local tbl = { Ids = text2, Name = text}
    HubCore.InventorySellPending = tbl
    HubCore.SetStatus("InventorySell", "Selling " .. #text2 .. " " .. text .. " | Waiting for inventory confirmation")
    local flag, value3 = HubCore.Fire("SellPart", text2)
    if not flag then
        HubCore.SetStatus("InventorySell", "Sale unconfirmed: " .. tostring(value3) .. " | No automatic retry")
    end
    HubCore.CheckInventorySale()
end
function HubCore.CrateRequest(arg, arg2, arg3)
    if arg == "Open" then
        return HubCore.Invoke("OpenCrate", arg2, arg3)
    end
    if arg ~= "Buy" then
        return false, "Unknown crate action"
    end
    local buyCrateRemote = HubCore.Remote("BuyCrate", "RemoteEvent")
    if not buyCrateRemote or not buyCrateRemote:IsA("RemoteEvent") then
        return false, "Missing BuyCrate RemoteEvent"
    end
    return pcall(buyCrateRemote.FireServer, buyCrateRemote, arg2, arg3)
end
function HubCore.CrateStep()
    if not HubCore.RewardLobby() then
        return
    end
    local cratePending = HubCore.CratePending
    if cratePending then
        local crateInventory = HubCore.CrateInventory(cratePending.Name)
        if not crateInventory then
            HubCore.SetStatus("Crates", "Waiting for your crate inventory")
            return
        end
        local kind = cratePending.Kind == "Buy" and crateInventory.Count >= cratePending.Count + cratePending.Amount and crateInventory.Candy ~= nil and crateInventory.Candy <= cratePending.Candy - cratePending.Price or cratePending.Kind == "Open" and crateInventory.Count <= cratePending.Count - cratePending.Amount
        if kind then
            HubCore.CratePending = nil
            HubCore.Next.Crate = os.clock() + HubConfig.CrateDelay
            HubCore.SetStatus("Crates", cratePending.Kind .. " confirmed: " .. cratePending.Amount .. " " .. cratePending.Name)
        elseif os.clock() - cratePending.At >= 15 and not cratePending.Warned then
            cratePending.Warned = true
            HubCore.SetStatus("Crates", "Waiting for inventory confirmation; no request will be repeated")
        end
        return
    end
    if not (HubConfig.AutoBuyCrate or HubConfig.AutoOpenCrate) or os.clock() < (HubCore.Next.Crate or 0) then
        return
    end
    local text, value2, value3, obj, value4, value5
    if HubConfig.AutoOpenCrate then
        value2 = HubConfig.OpenCrateName
        obj = HubCore.CrateInventory(value2)
        if obj and obj.Count > 0 and obj.Space and obj.Towers < obj.Space then
            value3 = HubConfig.OpenCrateAmount == 10 and obj.Count >= 10 and obj.Space - obj.Towers >= 10 and 10 or 1
            text = "Open"
        elseif not obj then
            value5 = "Waiting for your crate inventory"
        elseif obj.Count == 0 then
            value5 = "No owned " .. tostring(value2)
        elseif not obj.Space then
            value5 = "Waiting for inventory capacity from game data"
        else
            value5 = "Tower inventory full: " .. obj.Towers .. "/" .. obj.Space
        end
    end
    if not text and HubConfig.AutoBuyCrate then
        value2, value3 = "Exclusive Halloween Crate", HubConfig.BuyCrateAmount
        obj = HubCore.CrateInventory(value2)
        local cratePrice = HubCore.CratePrice(value3)
        if obj and cratePrice and obj.Candy and obj.Candy >= cratePrice then
            text, value4 = "Buy", cratePrice
        elseif not obj then
            value5 = "Waiting for your crate inventory"
        elseif not cratePrice then
            value5 = "Waiting for Halloween shop price; open Event Shop once"
        elseif not obj.Candy then
            value5 = "Waiting for your Candy balance"
        else
            value5 = "Need " .. cratePrice .. " Candy | Available: " .. obj.Candy
        end
    end
    if not text then
        HubCore.SetStatus("Crates", value5 or "Waiting for an available crate")
        return
    end
    cratePending = { Kind = text, Name = value2, Amount = value3, Count = obj.Count, Candy = obj.Candy, Price = value4, At = os.clock()}
    HubCore.CratePending = cratePending
    HubCore.Next.Crate = os.clock() + math.max(2, HubConfig.CrateDelay)
    local flag, value6 = HubCore.CrateRequest(text, text == "Buy" and value2 or obj.Ids[1], value3)
    HubCore.Next.Crate = os.clock() + math.max(2, HubConfig.CrateDelay)
    cratePending.Warned = not flag or value6 == false
    HubCore.SetStatus("Crates", cratePending.Warned and text .. " request unconfirmed: " .. tostring(value6):sub(1, 180) .. " | Waiting for inventory" or text .. " sent; waiting for inventory confirmation")
end
function HubCore.GUI(text)
    return HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "GameUI/" .. text)
end
function HubCore.Visible(instance)
    if not instance then
        return false
    end
    while instance do
        if instance:IsA("GuiObject") and not instance.Visible then
            return false
        end
        if instance:IsA("ScreenGui") and not instance.Enabled then
            return false
        end
        instance = instance.Parent
    end
    return true
end
function HubCore.Final()
    return HubCore.Visible(HubCore.GUI("FinalUI/Content/Lobby")) or HubCore.Visible(HubCore.GUI("FinalUI/Content/PlayAgain")) or HubCore.Visible(HubCore.GUI("FinalUI/Content/Vote/Time"))
end
function HubCore.Wave()
    local text = tostring(game.PlaceId) .. "/" .. tostring(game.JobId)
    if HubCore.WaveSessionKey ~= text then
        HubCore.WaveSessionKey = text
        HubCore.ObservedWave = 0
        HubCore.WaveStartedGame = nil
        HubCore.WaveStartTimes = {}
    end
    local waveGui = HubCore.GUI("Stats/Wave")
    local waveGui2 = waveGui and tonumber(waveGui.Text:match("[Ww]ave%s+(%d+)"))
    if waveGui2 then
        if waveGui2 > (HubCore.ObservedWave or 0) then
            HubCore.WaveStartedGame = HubCore.GameClock()
            HubCore.WaveStartTimes = HubCore.WaveStartTimes or {}
            HubCore.WaveStartTimes[waveGui2] = HubCore.WaveStartedGame
        end
        HubCore.ObservedWave = math.max(HubCore.ObservedWave or 0, waveGui2)
    end
    return HubCore.ObservedWave or 0
end
function HubCore.Active()
    local waveGui = HubCore.GUI("Stats/Wave")
    return game.PlaceId == HubCore.MatchId and not HubCore.SoloReturning and not HubCore.FinalSeen and waveGui and HubCore.Visible(waveGui) and not HubCore.Final() and not waveGui.Text:lower():find("voting", 1, true)
end
function HubCore.Cash()
    local moneyGui = HubCore.Path(localPlayer, "leaderstats/Money")
    if moneyGui and moneyGui:IsA("ValueBase") then
        return tonumber(moneyGui.Value) or 0
    end
    local titleGui = HubCore.GUI("Stats/OtherUI/Money/Title")
    if titleGui then
        local text = titleGui.Text:gsub(",", "")
        return tonumber(text:match("[%d%.]+")) or 0
    end
    return 0
end
function HubCore.CurrentMap()
    local game2 = WorkspaceSvc:FindFirstChild("Game")
    for index, item in ipairs({ "Map", "MapName"}) do
        local game3 = game2 and game2:GetAttribute(item)
        if type(game3) == "string" then
            return game3
        end
    end
    local game4 = game2 and game2:FindFirstChild("Waypoints")
    if game4 then
        local children = game4:GetChildren()
        table.sort(children, function (obj, obj2)
            return obj.Name < obj2.Name
        end)
        local tbl = {}
        for index2, children2 in ipairs(children) do
            if children2:IsA("BasePart") then
                local position = children2.Position
                table.insert(tbl, string.format("%s:%.1f,%.1f,%.1f", children2.Name, position.X, position.Y, position.Z))
            end
        end
        if #tbl > 0 then
            return table.concat(tbl, ";")
        end
    end
    return nil
end
function HubCore.AdaptMacroMap(arg, arg2)
    return arg
end
function HubCore.CaptureLobbyMap()
    if game.PlaceId ~= HubCore.LobbyId then
        return
    end
    local elevators = WorkspaceSvc:FindFirstChild("Elevators")
    local elevator = HubCore.Elevator and elevators and elevators:FindFirstChild(HubCore.Elevator)
    local elevator2 = elevator and elevator:GetAttribute("Map")
    if type(elevator2) ~= "string" or elevator2 == "" then
        local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "ElevatorGui/QueueFrame/MapName")
        if path and HubCore.Visible(path) then
            elevator2 = path.Text
        end
    end
    if type(elevator2) == "string" and elevator2 ~= "" and not elevator2:find("?", 1, true) then
        HubConfig.LastJoinedMap, HubConfig.LastJoinedMapAt = elevator2, os.time()
        if HubCore.FS then
            HubCore.Write(HubCore.SettingsFile, HubConfig)
        else
            HubCore.SaveSettings()
        end
    end
end
function HubCore.CurrentMapName()
    local game2 = WorkspaceSvc:FindFirstChild("Game")
    for index, item in ipairs({ "MapName", "Map"}) do
        local game3 = game2 and game2:GetAttribute(item)
        local game4 = game2 and game2:FindFirstChild(item)
        if type(game3) ~= "string" and game4 and game4:IsA("StringValue") then
            game3 = game4.Value
        end
        if type(game3) == "string" and game3 ~= "" and not game3:find("?", 1, true) then
            return game3, "Match"
        end
    end
    local mapGui = HubCore.GUI("FinalUI/Content/Map")
    local mapGui2 = mapGui and mapGui.Text and mapGui.Text:gsub("^%s*Map:%s*", "")
    if type(mapGui2) == "string" and mapGui2 ~= "" and not mapGui2:find("?", 1, true) then
        return mapGui2, "MatchUI"
    end
    if type(HubConfig.LastJoinedMap) == "string" and HubConfig.LastJoinedMap ~= "" and os.time() - (tonumber(HubConfig.LastJoinedMapAt) or 0) >= 0 and os.time() - (tonumber(HubConfig.LastJoinedMapAt) or 0) < 600 then
        HubCore.MatchMapNameCache = HubConfig.LastJoinedMap
    end
    if HubCore.MatchMapNameCache then
        return HubCore.MatchMapNameCache, "Elevator"
    end
end
function HubCore.DifficultyId()
    if HubConfig.Difficulty == "Halloween Easy" then
        return "HalloweenEasy"
    end
    if HubConfig.Difficulty == "Halloween Hard" then
        return "HalloweenHard"
    end
    return HubConfig.Difficulty
end
function HubCore.DifficultyVoteButton()
    local difficultyId = HubCore.DifficultyId()
    local difficultyId2 = (difficultyId == "HalloweenEasy" or difficultyId == "HalloweenHard") and "HalloweenMode/" or "MainFrame/"
    return HubCore.GUI("GamemodeVoting/" .. difficultyId2 .. difficultyId .. "/Vote/Vote")
end
function HubCore.Own(obj)
    return type(obj) == "table" and tonumber(obj.OwnerUserId) == localPlayer.UserId
end
function HubCore.Position(instance)
    if typeof(instance.PlacementPos) == "Vector3" then
        return instance.PlacementPos
    end
    if typeof(instance.HomePos) == "Vector3" then
        return instance.HomePos
    end
    if typeof(instance.HomeCFrame) == "CFrame" then
        return instance.HomeCFrame.Position
    end
    if typeof(instance.Pos) == "Vector3" then
        return instance.Pos
    end
    if typeof(instance.CFrame) == "CFrame" then
        return instance.CFrame.Position
    end
    local path = HubCore.Path(WorkspaceSvc, "Game/Towers/" .. tostring(instance.Id))
    return path and path:IsA("Model") and path:GetPivot().Position or nil
end
function HubCore.Owned()
    local tbl = {}
    for key, tower in pairs(HubCore.Towers) do
        if HubCore.Own(tower) then
            table.insert(tbl, tower)
        end
    end
    table.sort(tbl, function (obj, obj2)
        return tostring(obj.Id) < tostring(obj2.Id)
    end)
    return tbl
end
function HubCore.IsFarm(obj)
    return HubCore.Own(obj) and type(obj.Stats) == "table" and (tonumber(obj.Stats.CashPerWave) or 0) > 0
end
function HubCore.SellFarmStep()
    if not HubConfig.AutoSellFarm then
        HubCore.FarmSell = nil
        return
    end
    if not HubCore.Active() or HubCore.FinalSeen or HubCore.SoloReturning or HubCore.Wave() < HubConfig.SellFarmWave then
        return
    end
    local now = os.clock()
    local farmSell = HubCore.FarmSell
    if not farmSell then
        farmSell = { Queue = {}, Index = 1, Pending = {}, Attempted = {}, Retries = {}, NextAt = now, Sold = 0}
        HubCore.FarmSell = farmSell
    end
    local function queueOwnedFarms()
        local flag = false
        for index, owned in ipairs(HubCore.Owned()) do
            if HubCore.IsFarm(owned) and not farmSell.Attempted[owned.Id] then
                farmSell.Attempted[owned.Id] = true
                table.insert(farmSell.Queue, owned.Id)
                flag = true
            end
        end
        return flag
    end
    if queueOwnedFarms() then
        farmSell.Done = nil
    end
    if farmSell.Done then
        return
    end
    if farmSell.Index > #farmSell.Queue and not next(farmSell.Pending) then
        HubCore.FarmSell = nil
        return
    end
    local flag2 = false
    for key, pending in pairs(farmSell.Pending) do
        if not HubCore.Towers[key] then
            farmSell.Pending[key] = nil
            farmSell.Sold = farmSell.Sold + 1
        elseif now >= pending then
            farmSell.Pending[key] = nil
            farmSell.Retries = farmSell.Retries or {}
            local retries = (farmSell.Retries[key] or 0) + 1
            farmSell.Retries[key] = retries
            if retries <= 3 and HubCore.IsFarm(HubCore.Towers[key]) then
                farmSell.Done = nil
                table.insert(farmSell.Queue, key)
            else
                farmSell.Unconfirmed = (farmSell.Unconfirmed or 0) + 1
            end
        else
            flag2 = true
        end
    end
    if now < farmSell.NextAt or HubCore.NextMacroUpgradeAt and now < HubCore.NextMacroUpgradeAt then
        return
    end
    local queue = farmSell.Queue[farmSell.Index]
    if queue then
        farmSell.Index = farmSell.Index + 1
        local towers = HubCore.Towers[queue]
        if HubCore.IsFarm(towers) then
            local number = math.max(tonumber(HubConfig.SellFarmDelay) or 0.1, 0.35)
            farmSell.NextAt = now + number
            HubCore.NextMacroUpgradeAt = now + 0.35
            farmSell.Pending[queue] = now + 2.5
            HubCore.FarmSellThreads = HubCore.FarmSellThreads or setmetatable({}, { __mode = "k"})
            local running = coroutine.running()
            local farmSellThreads = HubCore.FarmSellThreads[running]
            HubCore.FarmSellThreads[running] = true
            local ok3, result3 = pcall(HubCore.Fire, "TowerSell", { Id = queue})
            HubCore.FarmSellThreads[running] = farmSellThreads
            if not ok3 or not result3 then
                farmSell.Pending[queue] = nil
                farmSell.Unconfirmed = (farmSell.Unconfirmed or 0) + 1
            end
        end
    elseif not flag2 then
        if queueOwnedFarms() then
            farmSell.Done = nil
        else
            farmSell.Done = true
            HubCore.SetStatus("FarmSell", string.format("Farm sale: %d confirmed, %d unconfirmed", farmSell.Sold, farmSell.Unconfirmed or 0))
        end
    end
end
function HubCore.Learn(obj)
    if HubCore.Own(obj) and type(obj.UnitId) == "string" and type(obj.Name) == "string" then
        local units = HubCore.Units[obj.UnitId] or {}
        units.Name, units.Id = obj.Name, obj.UnitId
        HubCore.Units[obj.UnitId] = units
        local number = tonumber(obj.Stats and obj.Stats.Price)
        if number and number > 0 and tonumber(obj.Level) then
            HubCore.KnownCosts[obj.Name] = HubCore.KnownCosts[obj.Name] or {}
            HubCore.KnownCosts[obj.Name][tonumber(obj.Level)] = number
        end
    end
end
function HubCore.Inventory(obj)
    if type(obj) ~= "table" or type(obj.Towers) ~= "table" then
        return
    end
    HubCore.InventoryData = obj
    if HubCore.CheckInventorySale then
        HubCore.CheckInventorySale()
    end
    if HubCore.RefreshInventorySell then
        HubCore.RefreshInventorySell()
    end
    for key, unit in pairs(HubCore.Units) do
        unit.Equipped = 0
    end
    for key2, tower in pairs(obj.Towers) do
        if type(tower) == "table" and type(tower.Name) == "string" then
            HubCore.Units[tostring(key2)] = { Id = tostring(key2), Name = tower.Name, Equipped = tonumber(tower.Equipped) or 0}
        end
    end
end
function HubCore.ReadLocalReplica(tbl, arg, number)
    if type(tbl) ~= "table" then
        return false
    end
    local tbl2, tbl3 = rawget(tbl, "Tags"), rawget(tbl, "Data")
    local value2 = rawget(tbl, "Id")
    if type(tbl2) ~= "table" or type(tbl3) ~= "table" then
        tbl2, tbl3 = rawget(tbl, 2), rawget(tbl, 3)
        value2 = tonumber(number) and number or nil
    end
    local number2 = type(tbl2) == "table" and rawget(tbl2, "UserId")
    if number2 == nil and type(tbl2) == "table" then
        number2 = rawget(tbl2, 1)
    end
    if type(tbl2) ~= "table" or tonumber(number2) ~= localPlayer.UserId or type(tbl3) ~= "table" or type(rawget(tbl3, "Towers")) ~= "table" then
        return false
    end
    HubCore.Inventory(tbl3)
    if value2 ~= nil then
        HubCore.ReplicaId = value2
    end
    HubCore.LoadoutSource = arg
    return true
end
function HubCore.RecoverLoadout(tbl, arg)
    local tbl2, number, number2, number3 = {}, 0, 0, os.clock()
    local function scanForReplica(arg2, number4, arg3, arg4)
        local value2 = type(arg2)
        if value2 ~= "table" and value2 ~= "function" or tbl2[arg2] or number4 > 6 or number >= 4096 or number2 >= 20000 or not HubCore.Running then
            return false
        end
        tbl2[arg2] = true
        number = number + 1
        if arg and os.clock() - number3 >= .002 then
            task.wait()
            number3 = os.clock()
        end
        if value2 == "table" then
            if HubCore.ReadLocalReplica(arg2, arg3, arg4) then
                return true
            end
            for key, next2 in next, arg2 do
                number2 = number2 + 1
                if number2 >= 20000 then
                    break
                end
                if scanForReplica(next2, number4 + 1, arg3, key) then
                    return true
                end
            end
        else
            local callback = getupvalues or debug and debug.getupvalues
            if type(callback) == "function" then
                local ok3, result3 = pcall(callback, arg2)
                if ok3 and type(result3) == "table" and scanForReplica(result3, number4 + 1, arg3) then
                    return true
                end
            else
                local callback2 = getupvalue or debug and debug.getupvalue
                if type(callback2) == "function" then
                    for index = 1, 64 do
                        local ok4, result4, extra = pcall(callback2, arg2, index)
                        if not ok4 or result4 == nil then
                            break
                        end
                        local extra2 = extra ~= nil and extra or result4
                        if scanForReplica(extra2, number4 + 1, arg3) then
                            return true
                        end
                    end
                end
            end
        end
        return false
    end
    if type(getloadedmodules) == "function" then
        local ok5, result5 = pcall(getloadedmodules)
        if ok5 and type(result5) == "table" then
            for key2, result6 in pairs(result5) do
                pcall(function ()
                    local text = result6.Name:lower()
                    if text:find("replica", 1, true) or text:find("playerdata", 1, true) or text:find("inventory", 1, true) or text == "ui" or text == "replication" then
                        local ok6, result7 = pcall(require, result6)
                        if ok6 then
                            scanForReplica(result7, 0, "loaded client module")
                        end
                    end
                end)
                if HubCore.InventoryData then
                    return true
                end
            end
        end
    end
    local replicationRemote = HubCore.Remote("Replication")
    if replicationRemote and type(getconnections) == "function" then
        local ok7, result8 = pcall(getconnections, replicationRemote.OnClientEvent)
        if ok7 and type(result8) == "table" then
            tbl2, number, number2 = {}, 0, 0
            for key3, result9 in pairs(result8) do
                pcall(function ()
                    scanForReplica(result9.Function, 0, "network replication callback")
                end)
                if HubCore.InventoryData then
                    return true
                end
            end
        end
    end
    tbl2, number, number2 = {}, 0, 0
    if type(tbl) == "table" then
        for key4, tbl3 in pairs(tbl) do
            if type(tbl3) == "function" and scanForReplica(tbl3, 0, "GC function replica") then
                return true
            end
            if number >= 4096 or number2 >= 20000 then
                break
            end
        end
    end
    tbl2, number, number2 = {}, 0, 0
    local remoteEvents = ReplicatedStorageSvc:FindFirstChild("RemoteEvents")
    if remoteEvents and type(getconnections) == "function" then
        for index2, item in ipairs({ "ReplicaCreate", "ReplicaSet"}) do
            local child = remoteEvents:FindFirstChild(item)
            if child then
                local ok8, result10 = pcall(getconnections, child.OnClientEvent)
                if ok8 and type(result10) == "table" then
                    for key5, result11 in pairs(result10) do
                        pcall(function ()
                            scanForReplica(result11.Function, 0, "replica callback")
                        end)
                        if HubCore.InventoryData then
                            return true
                        end
                    end
                end
            end
        end
    end
    tbl2, number, number2 = {}, 0, 0
    if type(tbl) == "table" then
        for key6, tbl4 in pairs(tbl) do
            if type(tbl4) == "table" and scanForReplica(tbl4, 0, "nested GC replica") then
                return true
            end
            if number >= 4096 or number2 >= 20000 then
                break
            end
        end
    end
    return HubCore.InventoryData ~= nil
end
function HubCore.Hydrate(arg)
    local value2, tbl = false, nil
    if type(getgc) == "function" then
        value2, tbl = pcall(getgc, true)
    end
    HubCore.LoadoutGC = value2 and type(tbl) == "table" and "available" or "unavailable"
    if type(tbl) ~= "table" then
        tbl = {}
    end
    local now = os.clock()
    for key, tbl2 in pairs(tbl) do
        if arg then
            if not HubCore.Running then
                return
            end
            if os.clock() - now >= 0.002 then
                task.wait()
                now = os.clock()
            end
        end
        if type(tbl2) == "table" then
            HubCore.ReadLocalReplica(tbl2, "GC replica")
            if rawget(tbl2, "OwnerUserId") == localPlayer.UserId and type(rawget(tbl2, "Id")) == "string" and type(rawget(tbl2, "Name")) == "string" and rawget(tbl2, "CFrame") then
                local text = rawget(tbl2, "Id")
                if HubCore.Path(WorkspaceSvc, "Game/Towers/" .. text) then
                    local towers = HubCore.Towers[text] or {}
                    for key2, tbl3 in pairs(tbl2) do
                        towers[key2] = tbl3
                    end
                    HubCore.Towers[text] = towers
                    HubCore.Learn(towers)
                end
            end
        end
    end
    if not HubCore.InventoryData then
        HubCore.RecoverLoadout(tbl, arg)
    end
    return value2 and type(tbl) == "table"
end
function HubCore.Equipped()
    if HubCore.InventoryData then
        HubCore.Inventory(HubCore.InventoryData)
    end
    local tbl = {}
    for key, unit in pairs(HubCore.Units) do
        if (tonumber(unit.Equipped) or 0) > 0 then
            table.insert(tbl, unit)
        end
    end
    table.sort(tbl, function (obj, obj2)
        return obj.Equipped < obj2.Equipped
    end)
    return tbl
end
function HubCore.ResolveUnit(obj, number)
    local equipped = HubCore.Equipped()
    for index, equipped2 in ipairs(equipped) do
        if equipped2.Id == obj.UnitId and equipped2.Name == obj.Name then
            return equipped2.Id
        end
    end
    local value2, number2 = nil, 0
    for index2, equipped3 in ipairs(equipped) do
        if equipped3.Name == obj.Name then
            value2 = equipped3.Id
            number2 = number2 + 1
        end
    end
    if number2 == 1 then
        return value2
    end
    if number2 > 1 then
        return nil, "Multiple equipped copies match " .. obj.Name
    end
    if not HubCore.InventoryData and #equipped == 0 and HubCore.Units[obj.UnitId] and HubCore.Units[obj.UnitId].Name == obj.Name then
        return obj.UnitId
    end
    if not HubCore.InventoryData and #equipped == 0 then
        if number ~= nil and tonumber(number) ~= localPlayer.UserId then
            return nil, "Macro belongs to another account; local equipped loadout is required"
        end
        local unitId = obj.UnitId
        if type(unitId) == "string" and #unitId == 36 and unitId:match("^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$") then
            return unitId, "Recorded UUID; awaiting server placement confirmation"
        end
    end
    return nil
end
function HubCore.CheckMacroLoadout(obj)
    if not HubCore.InventoryData then
        return true
    end
    local tbl, tbl2, tbl3 = {}, {}, {}
    for index, equipped in ipairs(HubCore.Equipped()) do
        tbl[equipped.Name] = true
    end
    for index2, action in ipairs(obj.Actions) do
        if action.Kind == "Place" and not tbl[action.Name] and not tbl3[action.Name] then
            tbl3[action.Name] = true
            tbl2[#tbl2 + 1] = action.Name
        end
    end
    if #tbl2 > 0 then
        table.sort(tbl2)
        return false, "Equip required towers before playback: " .. table.concat(tbl2, ", ")
    end
    return true
end
function HubCore.WaitForUnit(obj, arg, arg2)
    local value2, value3 = HubCore.ResolveUnit(obj, arg2)
    if value2 then
        return value2
    end
    local number = 0
    local value4, value5 = HubCore.WaitUntil(function ()
        if os.clock() >= number then
            number = os.clock() + 2
            HubCore.Hydrate(true)
        end
        value2, value3 = HubCore.ResolveUnit(obj, arg2)
        return value2 ~= nil
    end, 15, arg)
    if value4 and HubCore.Running and HubCore.Playing and HubCore.Serial == arg and HubCore.Active() then
        return value2
    end
    if value4 then
        return nil, "Cancelled / match ended"
    end
    if value5 == "Cancelled / match ended" then
        return nil, value5
    end
    return nil, value3 or (HubCore.InventoryData and "Recorded unit is not equipped: " .. tostring(obj.Name) or "Cannot read local equipped loadout on this executor (GC " .. tostring(HubCore.LoadoutGC) .. "); no placement sent. Re-equip a unit to refresh the local replica.")
end
function HubCore.Profiles()
    local tbl = {}
    if HubCore.FS then
        local ok3, result3 = pcall(listfiles, HubCore.Folder)
        if ok3 then
            for index, result4 in ipairs(result3) do
                local match = result4:match("([^/\\]+)%.json$")
                if match and match ~= "Settings" then
                    table.insert(tbl, match)
                end
            end
        end
    end
    table.sort(tbl)
    return #tbl > 0 and tbl or { "(none)"}
end
function HubCore.RefreshProfiles()
    local profiles = HubCore.Widgets.Profiles
    if profiles then
        HubCore.Refreshing = true
        pcall(function ()
            profiles:Refresh(HubCore.Profiles())
            if HubConfig.Profile ~= "" then
                profiles:Select(HubConfig.Profile)
            end
        end)
        HubCore.Refreshing = false
    end
end
function HubCore.ValidProfile(obj)
    if type(obj) ~= "table" or obj.Game ~= "CameraTD" or obj.Version ~= 1 or type(obj.Actions) ~= "table" then
        return false
    end
    if obj.ActionCount ~= #obj.Actions then
        return false
    end
    local tbl = {}
    for index, action in ipairs(obj.Actions) do
        if type(action) ~= "table" or not table.find({ "Place", "Upgrade", "Target", "Sell", "Skip", "Relocate"}, action.Kind) or action.Kind ~= "Skip" and type(action.Key) ~= "string" or type(action.Time) ~= "number" or action.Time < 0 or type(action.Wave) ~= "number" or action.Wave < 0 then
            return false
        end
        if action.Kind == "Place" then
            if tbl[action.Key] or type(action.Name) ~= "string" or type(action.UnitId) ~= "string" or type(action.CFrame) ~= "table" or #action.CFrame ~= 12 then
                return false
            end
            for index2, cFrame in ipairs(action.CFrame) do
                if type(cFrame) ~= "number" or cFrame ~= cFrame or math.abs(cFrame) == math.huge then
                    return false
                end
            end
            if action.Pos ~= nil then
                if type(action.Pos) ~= "table" or #action.Pos ~= 3 then
                    return false
                end
                for index3 = 1, 3 do
                    local pos = action.Pos[index3]
                    if type(pos) ~= "number" or pos ~= pos or math.abs(pos) == math.huge then
                        return false
                    end
                end
            end
            tbl[action.Key] = true
        elseif action.Kind == "Skip" then
            if action.WaveTime ~= nil and (type(action.WaveTime) ~= "number" or action.WaveTime ~= action.WaveTime or action.WaveTime < 0 or action.WaveTime == math.huge) then
                return false
            end
            if action.Wave < 1 then
                return false
            end
        elseif not tbl[action.Key] then
            return false
        end
        if action.Kind == "Upgrade" and (type(action.Level) ~= "number" or action.Level < 2) then
            return false
        end
        if action.WaveTime ~= nil and (type(action.WaveTime) ~= "number" or action.WaveTime ~= action.WaveTime or action.WaveTime < 0 or action.WaveTime == math.huge) then
            return false
        end
        if action.Kind == "Relocate" then
            if type(action.CFrame) ~= "table" or #action.CFrame ~= 12 or type(action.Cost) ~= "number" or action.Cost <= 0 or action.Cost ~= action.Cost or action.Cost == math.huge then
                return false
            end
            for index4, cFrame2 in ipairs(action.CFrame) do
                if type(cFrame2) ~= "number" or cFrame2 ~= cFrame2 or math.abs(cFrame2) == math.huge then
                    return false
                end
            end
            if action.Pos ~= nil then
                if type(action.Pos) ~= "table" or #action.Pos ~= 3 then
                    return false
                end
                for index5, pos2 in ipairs(action.Pos) do
                    if type(pos2) ~= "number" or pos2 ~= pos2 or math.abs(pos2) == math.huge then
                        return false
                    end
                end
                for index6 = 1, 3 do
                    if math.abs(action.Pos[index6] - action.CFrame[index6]) > .01 then
                        return false
                    end
                end
            end
        end
        if action.Kind == "Target" and type(action.Target) ~= "string" then
            return false
        end
    end
    return true
end
function HubCore.LearnProfileCosts(obj)
    local tbl = {}
    for index, action in ipairs(obj.Actions) do
        if action.Kind == "Place" then
            tbl[action.Key] = action.Name
        end
        local tbl2 = tbl[action.Key]
        local kind = action.Kind == "Place" and 1 or action.Kind == "Upgrade" and action.Level
        if tbl2 and kind and (tonumber(action.Cost) or 0) > 0 then
            HubCore.KnownCosts[tbl2] = HubCore.KnownCosts[tbl2] or {}
            HubCore.KnownCosts[tbl2][kind] = action.Cost
        end
    end
end
function HubCore.RecordAction(arg, instance, obj)
    local recording = HubCore.Recording
    if not recording or not HubCore.Own(instance) then
        return
    end
    if HubCore.HookOK and (not obj or obj.Record ~= recording) then
        return
    end
    local keys = recording.Keys[instance.Id]
    if arg == "Place" then
        if keys then
            return
        end
        if typeof(instance.CFrame) ~= "CFrame" then
            return
        end
        recording.Counter = recording.Counter + 1
        keys = "T" .. recording.Counter
        recording.Keys[instance.Id] = keys
    elseif not keys then
        HubCore.SetStatus("Macro", "Unknown tower skipped; start recording before placing units")
        return
    end
    local tbl = { Kind = arg, Key = keys, Time = obj and obj.Time or HubCore.RecordTime(recording), Wave = obj and obj.Wave or HubCore.Wave(), WaveTime = obj and obj.WaveTime}
    if arg == "Place" then
        local obj2 = obj and obj.Payload
        local obj3 = obj2 and obj2.CFrame
        local instance2 = typeof(obj3) == "CFrame" and obj3 or instance.PlacementCFrame or instance.HomeCFrame or instance.CFrame
        tbl.Name, tbl.UnitId = instance.Name, instance.UnitId
        tbl.CFrame = { instance2:GetComponents()}
        local obj4 = obj2 and obj2.Pos
        if typeof(obj4) ~= "Vector3" then
            obj4 = instance2.Position
        end
        if typeof(obj4) == "Vector3" then
            tbl.Pos = { obj4.X, obj4.Y, obj4.Z}
        end
        tbl.Cost = obj and tonumber(obj.Cost) or 0
        if not tbl.Cost or tbl.Cost <= 0 then
            tbl.Cost = tonumber(instance.Stats and instance.Stats.Price) or 0
        end
    elseif arg == "Upgrade" then
        tbl.Level = instance.Level
        tbl.Cost = obj and tonumber(obj.Cost) or 0
        if not tbl.Cost or tbl.Cost <= 0 then
            tbl.Cost = tonumber(instance.Stats and instance.Stats.Price) or 0
        end
    elseif arg == "Relocate" then
        local obj5 = obj and obj.Payload
        if not obj5 or typeof(obj5.TargetCFrame) ~= "CFrame" then
            return
        end
        tbl.CFrame = { obj5.TargetCFrame:GetComponents()}
        local position = obj5.TargetCFrame.Position
        tbl.Pos = { position.X, position.Y, position.Z}
        tbl.Cost = obj.Cost
        tbl.Name = instance.Name
    elseif arg == "Target" then
        tbl.Target = instance.TargetMode
    end
    table.insert(recording.Profile.Actions, tbl)
    HubCore.SetStatus("Macro", "Recording: " .. #recording.Profile.Actions .. " confirmed actions")
end
function HubCore.SortMacroActions(obj)
    if type(obj) ~= "table" or type(obj.Actions) ~= "table" then
        return obj
    end
    local tbl = {}
    for index, action in ipairs(obj.Actions) do
        tbl[index] = { Action = action, Index = index, Time = tonumber(action.Time) or math.huge}
    end
    table.sort(tbl, function (obj2, obj3)
        if obj2.Time == obj3.Time then
            return obj2.Index < obj3.Index
        end
        return obj2.Time < obj3.Time
    end)
    for index2, tbl2 in ipairs(tbl) do
        obj.Actions[index2] = tbl2.Action
    end
    obj.ActionCount = #obj.Actions
    return obj
end
function HubCore.RecordManualSkip(obj)
    local recording = HubCore.Recording
    if not obj or not HubCore.Running or not recording or recording ~= obj.Record or obj.Wave < 1 then
        return
    end
    HubCore.SkipSubmittedWave = obj.Wave
    recording.SkipWaves = recording.SkipWaves or {}
    if recording.SkipWaves[obj.Wave] then
        return
    end
    recording.SkipWaves[obj.Wave] = true
    table.insert(recording.Profile.Actions, { Kind = "Skip", Wave = obj.Wave, Time = obj.Time, WaveTime = obj.WaveTime, Cost = 0})
    HubCore.SetStatus("Macro", "Recording: " .. #recording.Profile.Actions .. " actions | manual Skip W" .. obj.Wave)
end
function HubCore.Stamp(arg, instance)
    if not HubCore.Recording or type(instance) ~= "table" then
        return
    end
    local tbl = { Id = instance.Id, Name = instance.Name, UnitId = instance.UnitId, Pos = instance.Pos, CFrame = instance.CFrame}
    if arg == "TowerAbility" then
        local args = instance.Args
        if type(args) ~= "table" or typeof(args.TargetCFrame) ~= "CFrame" then
            return
        end
        tbl.TargetCFrame, tbl.TargetPosition = args.TargetCFrame, args.TargetPosition
    end
    local now = os.clock()
    local tbl2 = { At = now, Record = HubCore.Recording, Time = HubCore.RecordTime(HubCore.Recording), Wave = HubCore.RecordWave or HubCore.LastWave or 0, Payload = tbl}
    if HubCore.WaveStartedGame and tbl2.Wave > 0 then
        tbl2.WaveTime = math.max(0, HubCore.GameClock() - HubCore.WaveStartedGame)
    end
    local towers = HubCore.Towers[instance.Id]
    if arg == "TowerAbility" then
        if not towers or towers.Name ~= "Upgraded Titan Cameraman" then
            return
        end
        tbl2.Source = towers
        tbl2.Cost = 20000
    end
    if arg == "TowerUpgrade" then
        local towers2 = towers and HubCore.KnownCosts[towers.Name]
        tbl2.Cost = towers2 and towers2[(tonumber(towers.Level) or 1) + 1] or 0
        tbl2.BeforeLevel = towers and tonumber(towers.Level)
    end
    if arg == "TowerAdd" then
        local knownCosts = HubCore.KnownCosts[instance.Name]
        tbl2.Cost = knownCosts and knownCosts[1] or 0
    end
    HubCore.Pending[arg] = HubCore.Pending[arg] or {}
    local pending = HubCore.Pending[arg]
    if #pending >= 64 then
        table.remove(pending, 1)
    end
    table.insert(pending, tbl2)
end
function HubCore.TakeStamp(arg, obj)
    local pending = HubCore.Pending[arg] or {}
    for index = #pending, 1, - 1 do
        if os.clock() - pending[index].At > 15 then
            table.remove(pending, index)
        end
    end
    if arg == "TowerAdd" then
        local position = HubCore.Position(obj)
        local value2, number = nil, 1
        for index2 = #pending, 1, - 1 do
            local pending2 = pending[index2].Payload
            if pending2.UnitId == obj.UnitId and typeof(pending2.Pos) == "Vector3" and position then
                local pos = (pending2.Pos - position).Magnitude
                if pos < number - 1e-4 then
                    value2, number = index2, pos
                    if pos < 1e-3 then
                        break
                    end
                end
            end
        end
        if value2 then
            local pending3 = pending[value2]
            for index3 = value2, 1, - 1 do
                if pending[index3].Payload.UnitId == obj.UnitId then
                    table.remove(pending, index3)
                end
            end
            return pending3
        end
        return
    end
    for index4 = #pending, 1, - 1 do
        local pending4 = pending[index4]
        local payload = pending4.Payload
        local arg2 = arg ~= "TowerUpgrade" or not pending4.BeforeLevel or pending4.BeforeLevel < (tonumber(obj.Level) or 1)
        if payload.Id == obj.Id and arg2 then
            for index5 = index4, 1, - 1 do
                if pending[index5].Payload.Id == obj.Id then
                    table.remove(pending, index5)
                end
            end
            return pending4
        end
    end
end
function HubCore.InstallRecorderHook()
    local obj = genv.__CameraTDRecorderRouter
    if obj and obj.Version ~= 5 then
        obj.Hub = nil
        obj = nil
        genv.__CameraTDRecorderRouter = nil
    end
    if not obj then
        obj = { Version = 5}
        genv.__CameraTDRecorderRouter = obj
        if type(hookmetamethod) ~= "function" or type(getnamecallmethod) ~= "function" then
            genv.__CameraTDRecorderRouter = nil
            return false
        end
        local callback
        local callback2 = function (self, ...)
            local hub = obj.Hub
            local hub2 = hub and hub.Recording and hub.Running and hub.RecordRemotes[self]
            if hub2 and getnamecallmethod() == "FireServer" then
                if hub2 == "WaveSkip" then
                    if not (hub.SkipAutomationThreads and hub.SkipAutomationThreads[coroutine.running()]) then
                        local recording = hub.Recording
                        local tbl = { Record = recording, Wave = hub.RecordWave or hub.LastWave or 0, Time = hub.RecordTime(recording), WaveTime = hub.WaveStartedGame and math.max(0, hub.GameClock() - hub.WaveStartedGame)}
                        local pack = table.pack(callback(self, ...))
                        pcall(hub.RecordManualSkip, tbl)
                        return table.unpack(pack, 1, pack.n)
                    end
                elseif hub2 and not (hub2 == "TowerSell" and hub.FarmSellThreads and hub.FarmSellThreads[coroutine.running()]) then
                    pcall(hub.Stamp, hub2, ...)
                end
            end
            return callback(self, ...)
        end
        if type(newcclosure) == "function" then
            callback2 = newcclosure(callback2)
        end
        local ok3, result3 = pcall(hookmetamethod, game, "__namecall", callback2)
        if not ok3 then
            genv.__CameraTDRecorderRouter = nil
            return false
        end
        callback = result3
        obj.Installed = true
    end
    obj.Hub = HubCore
    HubCore.RecordRemotes = {}
    for index, item in ipairs({ "TowerAdd", "TowerUpgrade", "TowerTarget", "TowerSell", "WaveSkip", "TowerAbility"}) do
        local remote = HubCore.Remote(item)
        if remote then
            HubCore.RecordRemotes[remote] = item
        end
    end
    return obj.Installed == true
end
function HubCore.StartRecord()
    if HubCore.Playing or HubCore.Recording then
        HubCore.Notify("Stop the active macro first")
        return
    end
    local placeId = game.PlaceId == HubCore.MatchId and not HubCore.SoloReturning and not HubCore.FinalSeen and not HubCore.Final() and (HubCore.Visible(HubCore.GUI("GamemodeVoting/MainFrame")) or HubCore.Visible(HubCore.GUI("GamemodeVoting/HalloweenMode")))
    if not HubCore.Active() and not placeId then
        HubCore.Notify("Start recording during mode voting or in a match")
        return
    end
    if HubConfig.Profile == "" then
        HubCore.Notify("Create / select a macro first")
        return
    end
    if not HubCore.FS then
        HubCore.Notify("Recording needs executor filesystem support")
        return
    end
    if HubCore.Auto and HubCore.Auto.Busy() then
        HubCore.Notify("Wait for outstanding Auto Play requests before recording")
        return
    end
    HubConfig.AutoPlayback = false
    HubCore.SaveSettings()
    HubCore.SetToggle("Playback", false)
    HubCore.Hydrate()
    if #HubCore.Owned() > 0 then
        HubCore.Notify("Start with no owned towers so the macro has a complete placement history")
        return
    end
    HubCore.HookOK = HubCore.InstallRecorderHook()
    if not HubCore.HookOK then
        HubCore.Notify("Recorder hook unavailable; manual Skip and sells cannot be recorded; upgrade/target use incoming confirmations")
    end
    HubCore.Pending = {}
    HubCore.LastWave = HubCore.Wave()
    local value2, value3 = HubCore.CurrentMapName()
    HubCore.Recording = { MapRoot = not placeId and WorkspaceSvc:FindFirstChild("Game") or nil, ArmedDuringVote = placeId, At = os.clock(), GameAt = HubCore.GameClock(), Counter = 0, Keys = {}, Profile = { Game = "CameraTD", Version = 1, Map = HubCore.CurrentMap() or value2 or "Unknown", MapName = value2, MapSource = value3 or "Unknown", LobbyMap = value2, Difficulty = HubConfig.Difficulty, Created = os.time(), TimeBasis = "GameSeconds", TimeOrigin = (HubCore.Wave() <= 1 or HubCore.WaveStartTimes and HubCore.WaveStartTimes[1]) and "Wave1" or "RecordStart", RecordedSpeed = HubCore.Speed.Value, Actions = {}}}
    HubCore.RecordWave = HubCore.Wave()
    local recording = HubCore.Recording
    local waveGui = HubCore.GUI("Stats/Wave")
    if waveGui then
        recording.WaveConnection = HubCore.Connect(waveGui:GetPropertyChangedSignal("Text"), function ()
            if HubCore.Recording == recording then
                HubCore.RecordWave = HubCore.Wave()
            end
        end)
    end
    HubCore.SetStatus("Macro", "Recording: 0 confirmed actions")
    HubCore.SetToggle("Record", true)
end
function HubCore.StopRecord()
    local recording = HubCore.Recording
    if not recording then
        return
    end
    if recording.WaveConnection then
        recording.WaveConnection:Disconnect()
    end
    HubCore.RecordWave = nil
    HubCore.Recording = nil
    HubCore.Pending = {}
    if recording.ArmedDuringVote and #recording.Profile.Actions == 0 then
        HubCore.SetToggle("Record", false)
        HubCore.SetStatus("Macro", "Recording cancelled: no confirmed actions")
        return
    end
    if not recording.MapRoot or recording.MapRoot == WorkspaceSvc:FindFirstChild("Game") then
        local value2, value3 = HubCore.CurrentMapName()
        if value2 then
            recording.Profile.MapName, recording.Profile.LobbyMap, recording.Profile.MapSource = value2, value2, value3
        end
        if not recording.MapRoot or recording.Profile.Map == "Unknown" then
            recording.Profile.Map = HubCore.CurrentMap() or value2 or recording.Profile.Map
        end
    end
    HubCore.SortMacroActions(recording.Profile)
    HubCore.SetToggle("Record", false)
    HubCore.Draft = recording.Profile
    HubCore.DraftName = HubConfig.Profile
    if not HubCore.ValidProfile(recording.Profile) then
        HubCore.Notify("Macro validation failed; draft retained")
        return false, "Macro validation failed"
    end
    local value4, value5 = HubCore.Write(HubCore.File(HubConfig.Profile), recording.Profile)
    HubCore.SetStatus("Macro", value4 and "Saved " .. HubConfig.Profile .. ": " .. recording.Profile.ActionCount .. " actions" or "Save failed: " .. tostring(value5))
    if value4 then
        HubCore.RefreshProfiles()
    else
        HubCore.Notify("Save failed; recording draft retained")
    end
    if value4 then
        HubCore.SetProfileOwner(HubConfig.Profile, localPlayer.UserId)
        HubCore.LoadedProfile = recording.Profile
        HubCore.LearnProfileCosts(recording.Profile)
    end
    return value4, value5
end
function HubCore.MergeTower(instance)
    if type(instance) ~= "table" or type(instance.Id) ~= "string" then
        return nil
    end
    local towers = HubCore.Towers[instance.Id] or {}
    local placementPos = towers.PlacementPos or instance.HomePos or towers.HomePos
    local placementCFrame = towers.PlacementCFrame or instance.HomeCFrame or towers.HomeCFrame
    if typeof(placementCFrame) ~= "CFrame" then
        placementCFrame = towers.CFrame or instance.CFrame
    end
    if typeof(placementPos) ~= "Vector3" then
        placementPos = typeof(placementCFrame) == "CFrame" and placementCFrame.Position or instance.Pos
    end
    for key, instance2 in pairs(instance) do
        towers[key] = instance2
    end
    towers.PlacementPos, towers.PlacementCFrame = placementPos, placementCFrame
    towers.ReceivedAt = os.clock()
    HubCore.Towers[instance.Id] = towers
    HubCore.Learn(towers)
    return towers
end
function HubCore.RelocateMatches(obj, obj2, arg, tbl)
    if not HubCore.Own(obj) or obj.Id == obj2.Id or tbl and tbl[obj.Id] or obj.Name ~= obj2.Name or obj.UnitId ~= obj2.UnitId or obj2.Index and obj.Index ~= obj2.Index then
        return false
    end
    local homePos = obj.HomePos or typeof(obj.HomeCFrame) == "CFrame" and obj.HomeCFrame.Position
    return typeof(homePos) == "Vector3" and (homePos - arg).Magnitude < .5
end
function HubCore.ConfirmRelocation(obj)
    local pendingMacroRelocate = HubCore.PendingMacroRelocate
    if pendingMacroRelocate and HubCore.Playing and HubCore.Serial == pendingMacroRelocate.Serial and HubCore.RelocateMatches(obj, pendingMacroRelocate.Source, pendingMacroRelocate.Target, pendingMacroRelocate.Before) then
        if pendingMacroRelocate.NewId and pendingMacroRelocate.NewId ~= obj.Id then
            pendingMacroRelocate.Error = "Ambiguous Relocate receipt"
        else
            pendingMacroRelocate.NewId = obj.Id
        end
        return true
    end
    local towerAbility = HubCore.Pending.TowerAbility or {}
    for index = #towerAbility, 1, - 1 do
        local towerAbility2 = towerAbility[index]
        if os.clock() - towerAbility2.At > 15 or towerAbility2.Record ~= HubCore.Recording then
            table.remove(towerAbility, index)
        elseif towerAbility2.Source and HubCore.RelocateMatches(obj, towerAbility2.Source, towerAbility2.Payload.TargetCFrame.Position) then
            table.remove(towerAbility, index)
            local obj2, obj3 = HubCore.Recording, towerAbility2.Source
            HubCore.RecordAction("Relocate", obj3, towerAbility2)
            if obj2 and obj2.Keys[obj3.Id] then
                obj2.Keys[obj.Id] = obj2.Keys[obj3.Id]
                obj2.Keys[obj3.Id] = nil
            end
            return true
        end
    end
    return false
end
function HubCore.PlayRelocate(instance, arg, arg2, text)
    local towers = HubCore.Towers[arg]
    if not towers or towers.Name ~= "Upgraded Titan Cameraman" then
        return nil, "Relocate tower unavailable"
    end
    local flag, value2 = HubCore.WaitUntil(function ()
        if not HubCore.Towers[arg] then
            error("Relocate source disappeared before sending", 0)
        end
        local abilityCooldowns = HubCore.AbilityCooldowns and HubCore.AbilityCooldowns[arg] or 0
        local abilityCooldowns2 = abilityCooldowns - HubCore.ServerNow()
        if abilityCooldowns2 > 0 then
            HubCore.SetStatus("Macro", text .. " | waiting for Relocate cooldown")
            return false
        end
        local number = 20000
        if HubCore.MacroCash() < number then
            HubCore.SetStatus("Macro", text .. " | waiting for Relocate money: " .. HubCore.MacroCash() .. " / " .. number)
            return false
        end
        return true
    end, nil, arg2)
    if not flag then
        return nil, value2
    end
    local cframe = CFrame.new(table.unpack(instance.CFrame))
    local tbl = {}
    for tower in pairs(HubCore.Towers) do
        tbl[tower] = true
    end
    local tbl2 = { Source = towers, Target = cframe.Position, Before = tbl, Serial = arg2}
    HubCore.PendingMacroRelocate = tbl2
    local cash = HubCore.Cash()
    local flag2, value3 = HubCore.Fire("TowerAbility", { Id = arg, Args = { TargetCFrame = cframe, TargetPosition = cframe.Position}})
    if not flag2 then
        HubCore.PendingMacroRelocate = nil
        return nil, value3
    end
    HubCore.ReserveMacroSpend(cash, 20000)
    flag, value2 = HubCore.WaitUntil(function ()
        if tbl2.Error then
            error(tbl2.Error, 0)
        end
        local newId = tbl2.NewId and HubCore.Towers[tbl2.NewId]
        return newId and (newId.Landed == true or newId.Flying ~= true)
    end, 20, arg2)
    HubCore.PendingMacroRelocate = nil
    if not flag then
        return nil, "Relocate unconfirmed; no duplicate request sent: " .. tostring(value2)
    end
    return tbl2.NewId
end
function HubCore.ServerNow()
    local ok3, result3 = pcall(function ()
        return WorkspaceSvc:GetServerTimeNow()
    end)
    return ok3 and result3 or os.time()
end
function HubCore.BindRemotes()
    local function bindRemoteOnce(obj, arg)
        if not obj or HubCore.Bound[obj] then
            return
        end
        HubCore.Bound[obj] = true
        HubCore.Connect(obj.OnClientEvent, arg)
    end
    bindRemoteOnce(HubCore.Remote("Notificate"), HubCore.SpeedNotice)
    bindRemoteOnce(HubCore.Remote("TowerAdd"), function (obj2)
        local flag = type(obj2) == "table" and HubCore.Towers[obj2.Id] ~= nil
        local mergeTower = HubCore.MergeTower(obj2)
        local pendingMacroPlacement = HubCore.PendingMacroPlacement
        if mergeTower and pendingMacroPlacement and HubCore.Playing and not (pendingMacroPlacement.Before and pendingMacroPlacement.Before[mergeTower.Id]) and HubCore.Own(mergeTower) and mergeTower.Name == pendingMacroPlacement.Name and tostring(mergeTower.UnitId) == tostring(pendingMacroPlacement.UnitId) then
            if pendingMacroPlacement.ReceiptId and pendingMacroPlacement.ReceiptId ~= mergeTower.Id then
                pendingMacroPlacement.IdentityError = "Multiple new matching towers received; pause manual placement during playback"
            else
                pendingMacroPlacement.ReceiptId = mergeTower.Id
            end
        end
        local mergeTower2 = mergeTower and HubCore.ConfirmRelocation and HubCore.ConfirmRelocation(mergeTower)
        if mergeTower and HubCore.Recording and not flag and not mergeTower2 then
            HubCore.RecordAction("Place", mergeTower, HubCore.TakeStamp("TowerAdd", mergeTower))
        end
    end)
    bindRemoteOnce(HubCore.Remote("TowerAbilityUpdate"), function (obj3)
        if type(obj3) ~= "table" or type(obj3.Id) ~= "string" then
            return
        end
        HubCore.AbilityCooldowns = HubCore.AbilityCooldowns or {}
        HubCore.AbilityCooldowns[obj3.Id] = tonumber(obj3.CooldownEndsAt) or 0
    end)
    bindRemoteOnce(HubCore.Remote("TowerMove"), function (obj4)
        local mergeTower3 = HubCore.MergeTower(obj4)
        if mergeTower3 and obj4.Landed == true then
            mergeTower3.Flying = false
        end
    end)
    bindRemoteOnce(HubCore.Remote("TowerUpgrade"), function (obj5)
        local obj6 = type(obj5) == "table" and HubCore.Towers[obj5.Id]
        local obj7 = obj6 and obj6.Level or 0
        local mergeTower4 = HubCore.MergeTower(obj5)
        if mergeTower4 and tonumber(mergeTower4.Level) and mergeTower4.Level > obj7 then
            HubCore.RecordAction("Upgrade", mergeTower4, HubCore.TakeStamp("TowerUpgrade", mergeTower4))
        end
    end)
    bindRemoteOnce(HubCore.Remote("TowerTarget"), function (obj8)
        local obj9 = type(obj8) == "table" and HubCore.Towers[obj8.Id]
        local obj10 = obj9 and obj9.TargetMode
        local mergeTower5 = HubCore.MergeTower(obj8)
        if mergeTower5 and obj10 ~= mergeTower5.TargetMode then
            HubCore.RecordAction("Target", mergeTower5, HubCore.TakeStamp("TowerTarget", mergeTower5))
        end
    end)
    bindRemoteOnce(HubCore.Remote("TowerRemove"), function (obj11)
        if type(obj11) ~= "table" then
            return
        end
        local towers = HubCore.Towers[obj11.Id]
        if towers then
            local takeStamp = HubCore.TakeStamp("TowerSell", towers)
            if takeStamp then
                HubCore.RecordAction("Sell", towers, takeStamp)
            end
            HubCore.Removed[obj11.Id] = os.clock()
            HubCore.Towers[obj11.Id] = nil
        end
        if type(obj11.Towers) == "table" then
            for key, tower in pairs(obj11.Towers) do
                HubCore.MergeTower(tower)
            end
        end
    end)
    bindRemoteOnce(HubCore.Remote("ElevatorEntered"), function (arg2, arg3)
        HubCore.Elevator = arg2
        HubCore.CaptureLobbyMap()
        HubCore.ModifierAppliedKey = nil
        HubCore.Next.Modifiers = nil
        HubCore.IsHost = arg3 == true
        HubCore.StartRequested = nil
    end)
    bindRemoteOnce(HubCore.Remote("ElevatorLeft"), function ()
        HubCore.Elevator = nil
        HubCore.IsHost = false
        HubCore.StartRequested = nil
        HubCore.LobbyAttempt = nil
    end)
    bindRemoteOnce(HubCore.Remote("ElevatorTeleporting"), function ()
        HubCore.Teleporting = true
        HubCore.QueueTeleport()
    end)
    local remoteEvents = ReplicatedStorageSvc:FindFirstChild("RemoteEvents")
    bindRemoteOnce(remoteEvents and remoteEvents:FindFirstChild("ReplicaCreate"), function (tbl)
        if type(tbl) ~= "table" then
            return
        end
        for key2, tbl2 in pairs(tbl) do
            if type(tbl2) == "table" then
                HubCore.ReadLocalReplica(tbl2, "ReplicaCreate", key2)
            end
        end
    end)
    bindRemoteOnce(remoteEvents and remoteEvents:FindFirstChild("ReplicaSet"), function (arg4, tbl3, arg5)
        if tostring(arg4) ~= tostring(HubCore.ReplicaId) or not HubCore.InventoryData or type(tbl3) ~= "table" then
            return
        end
        local tbl4 = HubCore.InventoryData
        for index = 1, #tbl3 - 1 do
            if type(tbl4[tbl3[index]]) ~= "table" then
                tbl4[tbl3[index]] = {}
            end
            tbl4 = tbl4[tbl3[index]]
        end
        if #tbl3 > 0 then
            tbl4[tbl3[#tbl3]] = arg5
            if tbl3[1] == "Towers" then
                HubCore.Inventory(HubCore.InventoryData)
            end
        end
    end)
end
function HubCore.StopPlayback(arg)
    HubCore.Serial = HubCore.Serial + 1
    HubCore.Playing = false
    HubCore.PendingMacroPlacement = nil
    HubCore.PendingMacroRelocate = nil
    if HubCore.ClearPlacementProbe then
        HubCore.ClearPlacementProbe()
    end
    HubCore.SetStatus("Macro", arg or "Playback stopped")
end
function HubCore.WaitUntil(callback, number, arg)
    local number2 = number and os.clock() + number or math.huge
    while true do
        if not HubCore.Running or HubCore.Serial ~= arg or not HubCore.Playing or not HubCore.Active() then
            return false, "Cancelled / match ended"
        end
        if callback() then
            return true
        end
        local number3 = number2 - os.clock()
        if number3 <= 0 then
            return false, "Timed out waiting for confirmation"
        end
        task.wait(math.min(.03, number3))
    end
end
function HubCore.MacroCash()
    local cash = HubCore.Cash()
    local macroSpend = HubCore.MacroSpend
    if macroSpend and cash ~= macroSpend.Before then
        HubCore.MacroSpend = nil
        macroSpend = nil
    end
    return math.max(0, cash - (macroSpend and macroSpend.Amount or 0))
end
function HubCore.ReserveMacroSpend(arg, number)
    number = math.max(0, tonumber(number) or 0)
    if HubCore.Cash() ~= arg then
        HubCore.MacroSpend = nil
        return
    end
    local macroSpend = HubCore.MacroSpend
    HubCore.MacroSpend = { Before = arg, Amount = number + (macroSpend and macroSpend.Before == arg and macroSpend.Amount or 0)}
end
function HubCore.WaitFunds(callback, arg, arg2, arg3)
    return HubCore.WaitUntil(function ()
        local number = tonumber(callback()) or 0
        local macroCash = HubCore.MacroCash()
        if macroCash >= number then
            return true
        end
        HubCore.SetStatus("Macro", string.format("%s | waiting for money: %s / %s", arg3, macroCash, number))
        return false
    end, arg, arg2)
end
function HubCore.WaitUpgradeCadence(arg, text)
    return HubCore.WaitUntil(function ()
        local nextMacroUpgradeAt = (HubCore.NextMacroUpgradeAt or 0) - os.clock()
        if nextMacroUpgradeAt <= 0 then
            return true
        end
        HubCore.SetStatus("Macro", text .. " | synchronizing previous upgrade")
        return false
    end, nil, arg)
end
function HubCore.SendSkip(arg)
    HubCore.SkipAutomationThreads = HubCore.SkipAutomationThreads or setmetatable({}, { __mode = "k"})
    local running = coroutine.running()
    local skipAutomationThreads = HubCore.SkipAutomationThreads[running]
    local wave = HubCore.Wave()
    HubCore.SkipAutomationThreads[running] = arg
    local pack = table.pack(pcall(HubCore.Fire, "WaveSkip"))
    HubCore.SkipAutomationThreads[running] = skipAutomationThreads
    if not pack[1] then
        return false, "WaveSkip call failed"
    end
    if pack[2] then
        HubCore.SkipSubmittedWave = wave
    end
    return table.unpack(pack, 2, pack.n)
end
function HubCore.SkipVoteComplete(arg)
    if HubCore.Wave() ~= arg then
        return false
    end
    local titleGui = HubCore.GUI("Stats/WaveSkipGui/Title")
    local number, number2
    if titleGui then
        number, number2 = titleGui.Text:match("(%d+)%s*/%s*(%d+)")
    end
    return tonumber(number2) and tonumber(number2) > 0 and tonumber(number) >= tonumber(number2) or false
end
function HubCore.PlayRecordedSkip(obj, arg)
    local number = tonumber(obj.Wave) or 0
    local flag, value2 = HubCore.WaitUntil(function ()
        return HubCore.Wave() >= number
    end, nil, arg)
    if not flag then
        return false, value2
    end
    if HubCore.Wave() > number or HubCore.SkipVoteComplete(number) then
        return true
    end
    flag, value2 = HubCore.WaitUntil(function ()
        return HubCore.Wave() > number or HubCore.Visible(HubCore.GUI("Stats/WaveSkipGui"))
    end, 30, arg)
    if not flag then
        return false, "Skip vote did not become available"
    end
    if HubCore.Wave() > number then
        return true
    end
    local titleGui = HubCore.GUI("Stats/WaveSkipGui/Title")
    local number2, number3
    if titleGui then
        number2, number3 = titleGui.Text:match("(%d+)%s*/%s*(%d+)")
    end
    if number2 and tonumber(number3) and tonumber(number3) > 0 and tonumber(number2) >= tonumber(number3) then
        return true
    end
    return HubCore.SendSkip("Playback")
end
function HubCore.FindPlacement(instance, tbl, instance2)
    tbl = tbl or {}
    if instance2 and instance2.IdentityError then
        return nil, instance2.IdentityError
    end
    local instance3 = instance2 and instance2.ReceiptId and HubCore.Towers[instance2.ReceiptId]
    if instance3 and not tbl[instance3.Id] and instance3.Name == instance.Name then
        return instance3
    end
    local pos = instance.Pos or instance.CFrame
    local instance4 = instance2 and instance2.Position or Vector3.new(pos[1], pos[2], pos[3])
    local tbl2 = {}
    for index, owned in ipairs(HubCore.Owned()) do
        local position = HubCore.Position(owned)
        if not tbl[owned.Id] and not (instance2 and instance2.Before and instance2.Before[owned.Id]) and owned.Name == instance.Name and (not instance2 or not instance2.UnitId or owned.UnitId == instance2.UnitId) and position and (position - instance4).Magnitude < 1 then
            table.insert(tbl2, { Tower = owned, Distance = (position - instance4).Magnitude})
        end
    end
    table.sort(tbl2, function (obj, obj2)
        return obj.Distance < obj2.Distance
    end)
    if #tbl2 > 1 and math.abs(tbl2[1].Distance - tbl2[2].Distance) < 0.05 then
        return nil, "Placed tower identity is ambiguous"
    end
    return tbl2[1] and tbl2[1].Tower
end
function HubCore.AdjustMacroPlacement(number, obj, flag, number2)
    if not flag then
        return number, obj, Vector3.new(0, 0, 0)
    end
    local number3 = tonumber(number2) or 3.2
    local vector = Vector3.new(0, 0, 0)
    for index = 1, 12 do
        local flag2 = false
        for index2, owned in ipairs(HubCore.Owned()) do
            local position = HubCore.Position(owned)
            if position then
                local number4, number5 = obj.X - position.X, obj.Z - position.Z
                local number6 = math.sqrt(number4 * number4 + number5 * number5)
                if number6 < number3 then
                    if number6 < .001 then
                        number4, number5, number6 = 1, 0, 1
                    end
                    local number7 = number3 - number6
                    local vector2 = Vector3.new(number4 / number6 * number7, 0, number5 / number6 * number7)
                    obj, number, vector = obj + vector2, number + vector2, vector + vector2
                    flag2 = true
                end
            end
        end
        if not flag2 then
            break
        end
    end
    return number, obj, vector
end
function HubCore.ClearPlacementProbe()
    local placementProbe = HubCore.PlacementProbe
    HubCore.PlacementProbe = nil
    if placementProbe and placementProbe.Part then
        pcall(placementProbe.Part.Destroy, placementProbe.Part)
    end
end
function HubCore.MakePlacementProbe(arg, number, arg2)
    HubCore.ClearPlacementProbe()
    local function findPlacementHitbox(instance)
        if not instance or not instance:IsA("Model") then
            return nil
        end
        for index, item in ipairs({ "SpawningHitbox", "PlacementHitbox"}) do
            local child = instance:FindFirstChild(item, true)
            if child and child:IsA("BasePart") then
                return child, instance
            end
        end
    end
    local function isMatchingPlacingTower(obj)
        local units = HubCore.Units and HubCore.Units[obj.Name]
        local towers = HubCore.Towers and HubCore.Towers[obj.Name]
        return obj.Name == arg or arg2 and obj.Name == arg2 or units and units.Name == arg or towers and towers.Name == arg
    end
    local instance2, value2
    local placingTowersGui = HubCore.Path(WorkspaceSvc, "Game/PlacingTowers")
    if placingTowersGui then
        for index2, child2 in ipairs(placingTowersGui:GetChildren()) do
            if isMatchingPlacingTower(child2) then
                instance2, value2 = findPlacementHitbox(child2)
                if instance2 then
                    break
                end
            end
        end
    end
    HubCore.PlacementTemplates = HubCore.PlacementTemplates or {}
    local placementTemplates = HubCore.PlacementTemplates[arg]
    if not instance2 and placementTemplates and placementTemplates.Parent then
        instance2, value2 = findPlacementHitbox(placementTemplates)
    end
    HubCore.PlacementTemplateReads = HubCore.PlacementTemplateReads or {}
    if not instance2 and (placementTemplates == nil or os.clock() >= (HubCore.PlacementTemplateReads[arg] or 0)) then
        HubCore.PlacementTemplateReads[arg] = os.clock() + 5
        HubCore.PlacementTemplates[arg] = false
        for index3, descendant in ipairs(ReplicatedStorageSvc:GetDescendants()) do
            if descendant:IsA("Model") and isMatchingPlacingTower(descendant) then
                instance2, value2 = findPlacementHitbox(descendant)
                if instance2 then
                    HubCore.PlacementTemplates[arg] = value2
                    break
                end
            end
        end
    end
    if not instance2 then
        local towersGui = HubCore.Path(WorkspaceSvc, "Game/Towers")
        if towersGui then
            for index4, child3 in ipairs(towersGui:GetChildren()) do
                local towers2 = HubCore.Towers[child3.Name]
                if child3.Name == arg or towers2 and towers2.Name == arg then
                    instance2, value2 = findPlacementHitbox(child3)
                    if instance2 then
                        break
                    end
                end
            end
        end
    end
    if not instance2 then
        return nil, "Placement shape unavailable; receipt-only confirmation"
    end
    local tbl = {}
    local ok3, result3 = pcall(function ()
        local pivot = value2:GetPivot():ToObjectSpace(instance2.CFrame)
        tbl.Part = instance2:Clone()
        assert(tbl.Part, "Placement shape cannot be cloned")
        for index5, child4 in ipairs(tbl.Part:GetChildren()) do
            child4:Destroy()
        end
        local part = tbl.Part
        part.Name = "NickMacroPlacementQuery"
        part.Anchored, part.CanCollide, part.CanTouch, part.CanQuery = true, false, false, false
        part.Transparency, part.CastShadow = 1, false
        part.CFrame = number * pivot
        part.Parent = WorkspaceSvc
        tbl.Source, tbl.Offset = instance2, pivot
        tbl.Params = OverlapParams.new()
        tbl.Params.FilterType = Enum.RaycastFilterType.Include
        tbl.Params.RespectCanCollide = false
        tbl.Params.CollisionGroup = instance2.CollisionGroup
    end)
    if not ok3 then
        if tbl.Part then
            pcall(tbl.Part.Destroy, tbl.Part)
        end
        return nil, tostring(result3)
    end
    HubCore.PlacementProbe = tbl
    return tbl
end
function HubCore.PlacementClear(obj)
    if not obj then
        return true
    end
    local towersGui = HubCore.Path(WorkspaceSvc, "Game/Towers")
    if not towersGui then
        return true
    end
    obj.Params.FilterDescendantsInstances = { towersGui}
    local ok3, result3 = pcall(WorkspaceSvc.GetPartsInPart, WorkspaceSvc, obj.Part, obj.Params)
    if not ok3 then
        return nil, "Placement geometry query failed: " .. tostring(result3)
    end
    for index, result4 in ipairs(result3) do
        if result4:IsA("BasePart") and result4:IsDescendantOf(towersGui) then
            return false, result4.Parent and result4.Parent.Name or result4.Name
        end
    end
    return true
end
function HubCore.WaitPlacementResources(obj, arg, arg2, text, arg3)
    local number
    local value2, number2, value3
    local value4, value5 = HubCore.WaitUntil(function ()
        number = HubCore.UnitCost(obj.Name, HubCore.Units[arg]) or obj.Cost or 0
        local macroCash = HubCore.MacroCash()
        local towersGui = HubCore.GUI("Stats/OtherUI/Towers")
        local number3, number4
        if towersGui then
            number3, number4 = towersGui.Text:match("(%d+)%s*/%s*(%d+)")
        end
        number3, number4 = tonumber(number3), tonumber(number4)
        if number3 and number4 and number4 > 0 and number3 >= number4 then
            number2 = nil
            HubCore.SetStatus("Macro", string.format("%s | waiting for a free tower slot: %d/%d", text, number3, number4))
            return false
        end
        if macroCash < number then
            number2 = nil
            HubCore.SetStatus("Macro", string.format("%s | waiting for money: %s / %s", text, macroCash, number))
            return false
        end
        if os.clock() < math.max(HubCore.NextMacroPlacementAt or 0, HubCore.NextMacroUpgradeAt or 0) then
            number2 = nil
            HubCore.SetStatus("Macro", text .. " | synchronizing previous placement")
            return false
        end
        if arg3 then
            local flag, value6 = HubCore.PlacementClear(arg3)
            if flag == nil then
                value3 = value6
                return true
            end
            if not flag then
                number2 = nil
                value2 = value2 or os.clock()
                local now = os.clock() - value2
                HubCore.SetStatus("Macro", string.format("%s | waiting for hitbox to clear: %s (%.1f/20s)", text, tostring(value6), now))
                if now >= 20 then
                    value3 = "Recorded position remained blocked for 20s; move nearby towers or record with more spacing"
                    return true
                end
                return false
            end
            number2 = number2 or os.clock()
            if os.clock() - number2 < .12 then
                HubCore.SetStatus("Macro", text .. " | checking stable clear hitbox")
                return false
            end
        end
        return true
    end, nil, arg2)
    if value3 then
        return false, value3, number
    end
    return value4, value5, number
end
function HubCore.ActionReady(obj, arg, arg2, obj2)
    if arg2 == "Money" then
        return true
    end
    local number, number2 = tonumber(obj.Wave) or 0, HubCore.Wave()
    local arg3 = arg
    if obj2 and obj2.TimeOrigin == "Wave1" then
        arg3 = HubCore.WaveStartTimes and HubCore.WaveStartTimes[1]
        if not arg3 then
            return number == 0
        end
    end
    local gameClock = HubCore.GameClock() - arg3 >= (tonumber(obj.Time) or 0)
    if arg2 == "Time" then
        return gameClock
    end
    if number2 < number then
        return false
    end
    if number2 > number or obj.Kind == "Skip" and HubCore.SkipVoteComplete(number) then
        return true
    end
    if tonumber(obj.WaveTime) and HubCore.WaveStartedGame then
        return HubCore.GameClock() - HubCore.WaveStartedGame >= math.max(0, obj.WaveTime)
    end
    return gameClock
end
function HubCore.SetToggle(arg, arg2)
    local widgets = HubCore.Widgets[arg]
    if not widgets then
        return
    end
    HubCore.ChangingToggle = true
    pcall(function ()
        widgets:Set(arg2)
    end)
    HubCore.ChangingToggle = false
end
function HubCore.StartPlayback()
    if HubCore.Playing or HubCore.Recording then
        HubCore.Notify("Stop the active macro first")
        return false
    end
    if not HubCore.Active() then
        HubCore.SetStatus("Macro", "Waiting for match / intermission")
        return false, "wait"
    end
    if HubCore.Auto and HubCore.Auto.Busy() then
        HubCore.SetStatus("Macro", "Waiting for outstanding Auto Play requests")
        return false, "wait"
    end
    local read = HubCore.Read(HubCore.File(HubConfig.Profile))
    local profileOwner = HubCore.ProfileOwner(HubConfig.Profile, read, true)
    if not HubCore.ValidProfile(read) or #read.Actions == 0 then
        HubCore.Notify("Selected macro is empty or invalid")
        return false
    end
    HubCore.LoadedProfile = read
    HubCore.LearnProfileCosts(read)
    HubCore.SortMacroActions(read)
    HubCore.Hydrate()
    local flag, value2 = HubCore.CheckMacroLoadout(read)
    if not flag then
        HubCore.PlaybackFailure, HubCore.PlaybackCompleted = true, nil
        HubCore.SetStatus("Macro", value2)
        HubCore.Notify(value2)
        return false
    end
    local playbackMode = HubConfig.PlaybackMode
    if playbackMode ~= "Money" and (tonumber(read.Actions[1].Wave) or 0) > 0 and HubCore.Wave() < 1 then
        HubCore.SetStatus("Macro", "Playback armed: waiting for wave 1")
        return false, "wait"
    end
    HubCore.PlaybackFailure = nil
    HubCore.PlaybackCompleted = nil
    HubCore.PendingMacroPlacement = nil
    HubCore.NextMacroUpgradeAt = nil
    HubCore.NextMacroPlacementAt = nil
    HubCore.MacroSpend = nil
    HubCore.Playing = true
    HubCore.Serial = HubCore.Serial + 1
    if HubConfig.AutoPlayback then
        HubCore.AutoPlayed = true
    end
    local serial = HubCore.Serial
    local gameClock = HubCore.GameClock()
    local tbl = { TimeOrigin = read.TimeOrigin}
    local tbl2 = {}
    local tbl3 = {}
    local value3 = nil
    for index, owned in ipairs(HubCore.Owned()) do
        tbl3[owned.Id] = true
    end
    task.spawn(function ()
        local value4, text = "starting", "macro"
        local ok3, result3 = pcall(function ()
            for index2, action in ipairs(read.Actions) do
                text = string.format("Action %d/%d | %s %s", index2, #read.Actions, action.Kind, action.Name or action.Key or "WaveSkip")
                value4 = "waiting for playback condition"
                HubCore.SetStatus("Macro", string.format("Playing %s: %d/%d | %s", HubConfig.Profile, index2, #read.Actions, action.Kind))
                HubCore.PlaybackIndex = index2
                HubCore.PlaybackTotal = #read.Actions
                local flag2, value5 = true, nil
                if playbackMode ~= "Money" then
                    flag2, value5 = HubCore.WaitUntil(function ()
                        local actionReady = HubCore.ActionReady(action, gameClock, playbackMode, tbl)
                        if not actionReady then
                            HubCore.SetStatus("Macro", text .. " | waiting for recorded " .. playbackMode .. " schedule")
                        end
                        return actionReady
                    end, nil, serial)
                    assert(flag2, "Playback condition not reached (wave / time / money)")
                end
                if action.Kind == "Place" then
                    value4 = "waiting for equipped loadout"
                    local value6, value7 = HubCore.WaitForUnit(action, serial, profileOwner)
                    assert(value6, value7 or "Cannot resolve equipped unit: " .. action.Name .. "; refresh loadout / equip the recorded unit")
                    local cframe = CFrame.new(unpack(action.CFrame))
                    local obj = type(action.Pos) == "table" and Vector3.new(unpack(action.Pos)) or cframe.Position
                    local flag3, value8 = HubCore.MakePlacementProbe(action.Name, cframe, value6)
                    local obj2, flag4
                    local tbl4 = {}
                    for index3, owned2 in ipairs(HubCore.Owned()) do
                        tbl4[owned2.Id] = true
                    end
                    local tbl5 = {}
                    local towersGui = HubCore.Path(WorkspaceSvc, "Game/Towers")
                    if towersGui then
                        for index4, child in ipairs(towersGui:GetChildren()) do
                            tbl5[child.Name] = true
                        end
                    end
                    local tbl6 = {}
                    for index5 = 1, 5 do
                        value4 = "waiting for placement money / tower slot / clear hitbox"
                        local value9
                        flag2, value5, value9 = HubCore.WaitPlacementResources(action, value6, serial, text, flag3)
                        assert(flag2, value5)
                        value4 = "sending placement"
                        local obj3
                        cframe, obj, obj3 = HubCore.AdjustMacroPlacement(cframe, obj)
                        local cash = HubCore.Cash()
                        HubCore.LastMacroPlacement = { Name = action.Name, RecordedUnitId = action.UnitId, SentUnitId = value6, LoadoutSource = HubCore.LoadoutSource or (HubCore.InventoryData and "local replica" or "recorded UUID fallback"), Cash = cash, AvailableCash = HubCore.MacroCash(), Cost = value9 or action.Cost, SentAt = os.clock(), Frame = action.CFrame, Pos = { obj.X, obj.Y, obj.Z}, GeometryChecked = flag3 ~= nil, GeometryNote = value8, Adjustment = { obj3.X, obj3.Y, obj3.Z}, Confirmed = false}
                        HubCore.NextMacroPlacementAt = os.clock() + .5
                        HubCore.NextMacroUpgradeAt = os.clock() + .35
                        if index5 > 1 then
                            obj2, flag4 = HubCore.FindPlacement(action, tbl3, HubCore.PendingMacroPlacement)
                            assert(not flag4, flag4)
                            if obj2 then
                                break
                            end
                        end
                        local tbl7 = { Name = action.Name, UnitId = value6, Position = obj, Before = tbl4, SentAt = os.clock()}
                        HubCore.PendingMacroPlacement = tbl7
                        HubCore.LastMacroPlacement.Attempt = index5
                        HubCore.LastMacroPlacement.Attempts = tbl6
                        tbl6[#tbl6 + 1] = { Number = index5, At = os.clock()}
                        local flag5, value10 = HubCore.Fire("TowerAdd", { Name = action.Name, UnitId = value6, Pos = obj, CFrame = cframe})
                        if not flag5 then
                            HubCore.PendingMacroPlacement = nil
                        end
                        assert(flag5, value10)
                        HubCore.ReserveMacroSpend(cash, value9 or action.Cost)
                        value4 = "waiting for TowerAdd confirmation"
                        flag2, value5 = HubCore.WaitUntil(function ()
                            obj2, flag4 = HubCore.FindPlacement(action, tbl3, tbl7)
                            if not obj2 and not flag4 and not tbl7.Refreshed and os.clock() - tbl7.SentAt >= 1.5 then
                                tbl7.Refreshed = true
                                HubCore.Hydrate(true)
                                if HubCore.Serial ~= serial or not HubCore.Playing then
                                    return false
                                end
                                obj2, flag4 = HubCore.FindPlacement(action, tbl3, tbl7)
                            end
                            return obj2 ~= nil or flag4 ~= nil or tbl7.PlacementRejected == true
                        end, 2, serial)
                        assert(not flag4, flag4)
                        if tbl7.PlacementRejected and not obj2 then
                            HubCore.Hydrate(true)
                            assert(HubCore.Playing and HubCore.Serial == serial, "Cancelled / match ended")
                            obj2, flag4 = HubCore.FindPlacement(action, tbl3, tbl7)
                            assert(not flag4, flag4)
                        end
                        flag2 = obj2 ~= nil
                        tbl6[#tbl6].Rejected = tbl7.PlacementRejected == true
                        tbl6[#tbl6].Notice = tbl7.RejectionNotice
                        assert(HubCore.Playing and HubCore.Serial == serial, "Cancelled / match ended")
                        local placementRejected = tbl7.PlacementRejected == true
                        if not obj2 and not placementRejected and index5 < 5 then
                            local hydrate = HubCore.Hydrate(true)
                            assert(HubCore.Playing and HubCore.Serial == serial, "Cancelled / match ended")
                            obj2, flag4 = HubCore.FindPlacement(action, tbl3, tbl7)
                            assert(not flag4, flag4)
                            local towersGui2 = HubCore.Path(WorkspaceSvc, "Game/Towers")
                            local flag6 = false
                            if towersGui2 then
                                for index6, child2 in ipairs(towersGui2:GetChildren()) do
                                    if not tbl5[child2.Name] and not HubCore.Towers[child2.Name] then
                                        flag6 = true
                                        break
                                    end
                                end
                            end
                            placementRejected = hydrate == true and towersGui2 ~= nil and not flag6
                            tbl6[#tbl6].SnapshotOK = hydrate == true
                            tbl6[#tbl6].UnidentifiedModel = flag6
                            tbl6[#tbl6].SilentRetry = placementRejected and not obj2 or false
                        end
                        if not obj2 and placementRejected and index5 < 5 then
                            HubCore.MacroSpend = nil
                            HubCore.SetStatus("Macro", text .. " | waiting to retry placement (" .. index5 + 1 .. "/5)")
                            local waitUntil = HubCore.WaitUntil(function ()
                                return os.clock() - tbl7.SentAt >= .6
                            end, 2, serial)
                            assert(waitUntil, "Cancelled / match ended")
                            if not flag3 then
                                flag3, value8 = HubCore.MakePlacementProbe(action.Name, cframe, value6)
                            end
                        else
                            if not flag2 and type(writefile) == "function" then
                                pcall(function ()
                                    HubCore.LastMacroPlacement.CurrentCash = HubCore.Cash()
                                    HubCore.LastMacroPlacement.LoadoutGC = HubCore.LoadoutGC
                                    HubCore.LastMacroPlacement.Notices = tbl7.Notices
                                    HubCore.LastMacroPlacement.ServerMessage = tbl7.RejectionNotice
                                    HubCore.LastMacroPlacement.Mode = playbackMode
                                    HubCore.LastMacroPlacement.Action = index2
                                    HubCore.LastMacroPlacement.Refreshed = tbl7.Refreshed
                                    HubCore.LastMacroPlacement.Nearby = {}
                                    for index7, owned3 in ipairs(HubCore.Owned()) do
                                        local position = HubCore.Position(owned3)
                                        if position then
                                            local position2 = (position - obj).Magnitude
                                            if position2 < 10 or owned3.Name == action.Name then
                                                table.insert(HubCore.LastMacroPlacement.Nearby, { Id = owned3.Id, Name = owned3.Name, UnitId = owned3.UnitId, Distance = position2, Level = owned3.Level, Before = tbl4[owned3.Id] or false})
                                            end
                                        end
                                    end
                                    writefile(HubCore.DataFolder .. "/CameraTD_Macro_Debug.json", HttpServiceSvc:JSONEncode(HubCore.LastMacroPlacement))
                                end)
                            end
                            assert(flag2, "Placement unconfirmed for " .. action.Name .. (tbl7.RejectionNotice and " | server: " .. tbl7.RejectionNotice or " | no creation receipt after recovery read") .. ". Attempts: " .. index5 .. "/5. Details: " .. HubCore.DataFolder .. "/CameraTD_Macro_Debug.json")
                            HubCore.PendingMacroPlacement = nil
                            HubCore.ClearPlacementProbe()
                            HubCore.LastMacroPlacement.Confirmed = true
                            break
                        end
                    end
                    HubCore.PendingMacroPlacement = nil
                    HubCore.ClearPlacementProbe()
                    HubCore.LastMacroPlacement.Confirmed = obj2 ~= nil
                    tbl2[action.Key] = obj2.Id
                    tbl3[obj2.Id] = true
                elseif action.Kind == "Skip" then
                    value4 = "waiting for recorded skip wave / vote"
                    flag2, value5 = HubCore.PlayRecordedSkip(action, serial)
                    assert(flag2, value5)
                else
                    local tbl8 = tbl2[action.Key]
                    local tbl9 = tbl8 and HubCore.Towers[tbl8]
                    assert(tbl9, "Missing recorded tower " .. action.Key)
                    if action.Kind == "Upgrade" then
                        while (tonumber(tbl9.Level) or 1) < action.Level do
                            local number = tonumber(tbl9.Level) or 1
                            value4 = "waiting for upgrade money"
                            flag2, value5 = HubCore.WaitFunds(function ()
                                tbl9 = HubCore.Towers[tbl8] or tbl9
                                return HubCore.UpgradeCost(tbl9) or action.Cost or 0
                            end, value3, serial, text)
                            assert(flag2, value5)
                            flag2, value5 = HubCore.WaitUpgradeCadence(serial, text)
                            assert(flag2, value5)
                            tbl9 = HubCore.Towers[tbl8] or tbl9
                            if (tonumber(tbl9.Level) or 1) >= action.Level then
                                break
                            end
                            number = tonumber(tbl9.Level) or 1
                            value4 = "sending upgrade"
                            local cash2 = HubCore.Cash()
                            local upgradeCost = HubCore.UpgradeCost(tbl9) or action.Cost or 0
                            local now = os.clock()
                            local flag7 = false
                            HubCore.LastMacroUpgrade = { Action = index2, Name = tbl9.Name, Id = tbl8, From = number, Target = action.Level, SentAt = now, Cash = cash2, Cost = upgradeCost, Mode = playbackMode}
                            local value11, value12 = HubCore.Fire("TowerUpgrade", { Id = tbl8})
                            assert(value11, value12)
                            HubCore.NextMacroUpgradeAt = os.clock() + .35
                            HubCore.ReserveMacroSpend(cash2, upgradeCost)
                            value4 = "waiting for TowerUpgrade confirmation"
                            flag2, value5 = HubCore.WaitUntil(function ()
                                tbl9 = HubCore.Towers[tbl8]
                                if tbl9 and (tonumber(tbl9.Level) or 1) <= number and not flag7 and os.clock() - now >= 2 then
                                    flag7 = true
                                    HubCore.Hydrate(true)
                                    if HubCore.Serial ~= serial or not HubCore.Playing then
                                        return false
                                    end
                                    tbl9 = HubCore.Towers[tbl8]
                                end
                                return tbl9 and (tonumber(tbl9.Level) or 1) > number
                            end, 12, serial)
                            if not flag2 and type(writefile) == "function" then
                                pcall(function ()
                                    HubCore.LastMacroUpgrade.CurrentCash = HubCore.Cash()
                                    HubCore.LastMacroUpgrade.CurrentLevel = tbl9 and tbl9.Level
                                    HubCore.LastMacroUpgrade.Refreshed = flag7
                                    writefile(HubCore.DataFolder .. "/CameraTD_Macro_Upgrade_Debug.json", HttpServiceSvc:JSONEncode(HubCore.LastMacroUpgrade))
                                end)
                            end
                            assert(flag2, "Upgrade unconfirmed for " .. tostring(tbl9 and tbl9.Name or action.Key) .. " | level " .. number .. " -> " .. action.Level .. "; details: " .. HubCore.DataFolder .. "/CameraTD_Macro_Upgrade_Debug.json")
                        end
                    elseif action.Kind == "Target" then
                        for index8 = 1, 12 do
                            if tbl9.TargetMode == action.Target then
                                break
                            end
                            flag2, value5 = HubCore.WaitUpgradeCadence(serial, text)
                            assert(flag2, value5)
                            value4 = "waiting for TowerTarget confirmation"
                            local targetMode = tbl9.TargetMode
                            local value13, value14 = HubCore.Fire("TowerTarget", { Id = tbl8})
                            assert(value13, value14)
                            HubCore.NextMacroUpgradeAt = os.clock() + .35
                            flag2, value5 = HubCore.WaitUntil(function ()
                                tbl9 = HubCore.Towers[tbl8]
                                return tbl9 and tbl9.TargetMode ~= targetMode
                            end, 5, serial)
                            assert(flag2, value5)
                        end
                        assert(tbl9.TargetMode == action.Target, "Target mode could not be reached")
                    elseif action.Kind == "Relocate" then
                        value4 = "waiting for Relocate money / cooldown / landing"
                        local value15, value16 = HubCore.PlayRelocate(action, tbl8, serial, text)
                        assert(value15, value16)
                        tbl2[action.Key] = value15
                        tbl3[value15] = true
                    elseif action.Kind == "Sell" then
                        value4 = "waiting for TowerRemove confirmation"
                        local value17, value18 = HubCore.Fire("TowerSell", { Id = tbl8})
                        assert(value17, value18)
                        flag2, value5 = HubCore.WaitUntil(function ()
                            return HubCore.Removed[tbl8] ~= nil
                        end, 10, serial)
                        assert(flag2, value5)
                    end
                end
                tbl.Previous, tbl.CompletedAt = action, HubCore.GameClock()
            end
        end)
        if HubCore.Serial == serial then
            HubCore.PendingMacroPlacement = nil
            HubCore.PendingMacroRelocate = nil
            HubCore.ClearPlacementProbe()
            HubCore.Playing = false
            HubCore.PlaybackFailure = not ok3 and true or nil
            HubCore.PlaybackCompleted = ok3 and true or nil
            if ok3 then
                HubCore.Auto.NextAt = 0
                HubCore.PlaybackIndex = 0
            end
            local text2 = tostring(result3):gsub("^.-:%d+:%s*", "")
            HubCore.SetStatus("Macro", ok3 and "Playback complete" or string.format("Stopped: %s | %s | cash %s | %s", text, value4, HubCore.Cash(), text2))
        end
    end)
    return true
end
function HubCore.TradingReturnStep(number)
    if game.PlaceId ~= HubCore.TradingId or not HubConfig.AutoPlayback or not HubCore.Running or HubCore.Teleporting or HubCore.TradingReturnBusy or number < (HubCore.Next.TradingReturn or 0) then
        return
    end
    HubCore.Next.TradingReturn = number + 15
    HubCore.TradingReturnBusy = true
    local ok3, result3 = pcall(function ()
        HubCore.QueueTeleport()
        game:GetService("TeleportService"):Teleport(HubCore.LobbyId, localPlayer)
    end)
    HubCore.TradingReturnBusy = false
    HubCore.SetStatus("Lobby", ok3 and "Auto Playback: returning from Trading Plaza" or "Trading Plaza return failed; retrying in 15s")
end
function HubCore.AutoPlaybackStep(arg, number)
    if arg and HubConfig.AutoPlayback and not HubCore.AutoPlayed and not HubCore.Recording and not HubCore.Playing and number >= (HubCore.Next.AutoPlayback or 0) then
        local value2, value3 = HubCore.StartPlayback()
        HubCore.Next.AutoPlayback = number + (value3 == "wait" and 0.3 or 10)
        HubCore.AutoPlayed = value2 or value3 ~= "wait" or nil
    end
end
function HubCore.ConfigUnit(text)
    local configGui = HubCore.Path(ReplicatedStorageSvc, "ModuleLoader/Configs/Config")
    if not configGui then
        return nil
    end
    if configGui:IsA("ModuleScript") then
        if not HubCore.Config then
            local ok3, result3 = pcall(require, configGui)
            if ok3 then
                HubCore.Config = result3
            end
        end
        local config = HubCore.Config
        if type(config) == "table" and type(config.Towers) == "table" then
            return config.Towers[text]
        end
    end
    local path = HubCore.Path(configGui, "Towers/" .. text)
    if path then
        local isA = path:IsA("ModuleScript") and path or path:FindFirstChild("Config")
        if isA and isA:IsA("ModuleScript") then
            HubCore.ConfigUnits = HubCore.ConfigUnits or {}
            if not HubCore.ConfigUnits[text] then
                local ok4, result4 = pcall(require, isA)
                if ok4 then
                    HubCore.ConfigUnits[text] = result4
                end
            end
            return HubCore.ConfigUnits[text]
        end
    end
end
function HubCore.UnitCost(arg, arg2)
    local configUnit = HubCore.ConfigUnit(arg)
    if type(configUnit) == "table" then
        local configUnit2 = configUnit[1] or configUnit.Stats or configUnit
        local number = type(configUnit2) == "table" and tonumber(configUnit2.Price or configUnit2.Cost)
        if number and number > 0 then
            return number
        end
    end
    local function readEquippedSlotPrice(obj)
        local number2 = tonumber(obj.Equipped)
        if not number2 or number2 < 1 or number2 > 5 or number2 % 1 ~= 0 then
            return nil
        end
        local gui = HubCore.GUI("Slots/Slot" .. string.format("%d", number2) .. "/TroopFrame/Price")
        local gui2 = gui and gui.Text:gsub(",", ""):match("[%d%.]+")
        local number3 = tonumber(gui2)
        if number3 and number3 > 0 then
            return number3
        end
    end
    if arg2 then
        local value2 = readEquippedSlotPrice(arg2)
        if value2 then
            return value2
        end
    else
        for index, equipped in ipairs(HubCore.Equipped()) do
            if equipped.Name == arg then
                local value3 = readEquippedSlotPrice(equipped)
                if value3 then
                    return value3
                end
            end
        end
    end
    return HubCore.KnownCosts[arg] and HubCore.KnownCosts[arg][1] or nil
end
function HubCore.UpgradeCost(obj)
    if not obj then
        return nil
    end
    local configUnit = HubCore.ConfigUnit(obj.Name)
    local tbl = type(configUnit) == "table" and (configUnit.Upgrades or configUnit.Levels or configUnit)
    local obj2 = type(tbl) == "table" and tbl[(tonumber(obj.Level) or 1) + 1]
    local value2 = type(obj2) == "table" and tonumber(obj2.Price or obj2.Cost)
    if value2 ~= nil then
        return value2
    end
    local knownCosts = HubCore.KnownCosts[obj.Name]
    return knownCosts and knownCosts[(tonumber(obj.Level) or 1) + 1] or nil
end
function HubCore.Maps()
    local tbl, tbl2 = {}, {}
    local elevators = WorkspaceSvc:FindFirstChild("Elevators")
    for index, child in ipairs(elevators and elevators:GetChildren() or {}) do
        local attribute = child:GetAttribute("Map")
        if type(attribute) == "string" and not tbl2[attribute] then
            tbl2[attribute] = true
            table.insert(tbl, attribute)
        end
    end
    if #tbl == 0 then
        tbl = { "Toilet City", "Desert", "Cameraman HQ", "Halloween Town", "Toilet HQ"}
    end
    table.sort(tbl)
    return tbl
end
function HubCore.CircleOccupied(instance, arg)
    if (tonumber(instance:GetAttribute("Players")) or 0) > (arg and 1 or 0) then
        return true
    end
    local attribute = instance:GetAttribute("Host")
    if attribute and tostring(attribute) ~= "" and tostring(attribute) ~= "0" and tostring(attribute) ~= tostring(localPlayer.UserId) and tostring(attribute) ~= localPlayer.Name then
        return true
    end
    local pad = instance:FindFirstChild("Pad")
    if not pad or not PlayersSvc.GetPlayers then
        return false
    end
    local instance2, obj
    if pad:IsA("Model") then
        instance2, obj = pad:GetBoundingBox()
    elseif pad:IsA("BasePart") then
        instance2, obj = pad.CFrame, pad.Size
    end
    if not instance2 or not obj then
        return false
    end
    local number = math.max(6, math.max(obj.X, obj.Z) / 2)
    for index, player in ipairs(PlayersSvc:GetPlayers()) do
        if player ~= localPlayer then
            local character = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if character then
                local position = character.Position - instance2.Position
                if math.abs(position.Y) <= 10 and Vector3.new(position.X, 0, position.Z).Magnitude <= number then
                    return true
                end
            end
        end
    end
    return false
end
function HubCore.CancelJoinWalk()
    local joinWalk = HubCore.JoinWalk
    HubCore.JoinWalk = nil
    if joinWalk and joinWalk.Root.Parent and joinWalk.Humanoid.Parent then
        pcall(joinWalk.Humanoid.MoveTo, joinWalk.Humanoid, joinWalk.Root.Position)
    end
end
function HubCore.WalkToJoin(arg, arg2)
    if not HubCore.Running or not HubConfig.AutoLobby or HubConfig.JoinMethod ~= "Walk" or game.PlaceId ~= HubCore.LobbyId then
        HubCore.CancelJoinWalk()
        return false
    end
    local character = localPlayer.Character
    local character2 = character and character:FindFirstChild("HumanoidRootPart")
    local character3 = character and character:FindFirstChildOfClass("Humanoid")
    if not character2 or not character3 or character3.Health <= 0 then
        HubCore.CancelJoinWalk()
        HubCore.SetStatus("Lobby", "Waiting for character")
        return false
    end
    local function isNearPosition(number, arg3, number2)
        local number3 = number - arg3
        return Vector3.new(number3.X, 0, number3.Z).Magnitude <= number2 and math.abs(number3.Y) <= 6
    end
    local joinWalk = HubCore.JoinWalk
    if joinWalk and (joinWalk.Character ~= character or joinWalk.Target ~= arg2 or (joinWalk.Position - arg).Magnitude > 2) then
        HubCore.CancelJoinWalk()
        joinWalk = nil
    end
    if isNearPosition(character2.Position, arg, 2.5) then
        HubCore.CancelJoinWalk()
        return true
    end
    local now = os.clock()
    if not joinWalk then
        joinWalk = { Character = character, Root = character2, Humanoid = character3, Position = arg, Target = arg2, ProgressPosition = character2.Position, ProgressAt = now, NextPlanAt = 0}
        HubCore.JoinWalk = joinWalk
        task.spawn(function ()
            local number4 = 0
            local map = HubConfig.Map
            while HubCore.JoinWalk == joinWalk do
                if not HubCore.Running or not HubConfig.AutoLobby or HubConfig.JoinMethod ~= "Walk" or game.PlaceId ~= HubCore.LobbyId or HubCore.Teleporting or HubCore.Elevator or localPlayer.Character ~= character or not character2.Parent or not character3.Parent or character3.Health <= 0 or HubConfig.Map ~= map then
                    HubCore.CancelJoinWalk()
                    return
                end
                if os.clock() >= number4 then
                    number4 = os.clock() + 0.4
                    local elevators = WorkspaceSvc:FindFirstChild("Elevators")
                    local elevators2 = elevators and elevators:FindFirstChild(arg2)
                    if not string.match(arg2, "^Exit:") and (not elevators2 or elevators2:GetAttribute("Map") ~= HubConfig.Map or HubCore.CircleOccupied(elevators2, false)) then
                        HubCore.CancelJoinWalk()
                        return
                    end
                end
                local ok3, result3 = pcall(HubCore.WalkToJoin, arg, arg2)
                if not ok3 then
                    if HubCore.JoinWalk == joinWalk then
                        HubCore.CancelJoinWalk()
                    end
                    HubCore.SetStatus("Lobby", "Walking failed: " .. tostring(result3))
                    return
                end
                if HubCore.JoinWalk ~= joinWalk then
                    return
                end
                task.wait(0.08)
            end
        end)
    end
    if (character2.Position - joinWalk.ProgressPosition).Magnitude >= 0.75 then
        joinWalk.ProgressPosition, joinWalk.ProgressAt = character2.Position, now
    end
    if not HubCore.JoinPathBusy and now >= joinWalk.NextPlanAt and (not joinWalk.Points or now - joinWalk.ProgressAt >= 3) then
        joinWalk.NextPlanAt = now + 4
        HubCore.JoinPathBusy = true
        task.spawn(function ()
            local ok4, result4 = pcall(function ()
                local PathfindingServiceSvc = game:GetService("PathfindingService"):CreatePath({ AgentRadius = 2, AgentHeight = 5, AgentCanJump = true})
                PathfindingServiceSvc:ComputeAsync(character2.Position, arg)
                if PathfindingServiceSvc.Status == Enum.PathStatus.Success then
                    return PathfindingServiceSvc:GetWaypoints()
                end
            end)
            HubCore.JoinPathBusy = false
            if HubCore.JoinWalk ~= joinWalk or not HubCore.Running or not HubConfig.AutoLobby or HubConfig.JoinMethod ~= "Walk" or game.PlaceId ~= HubCore.LobbyId or localPlayer.Character ~= character then
                return
            end
            joinWalk.Points = ok4 and type(result4) == "table" and #result4 > 0 and result4 or { { Position = arg}}
            joinWalk.Index, joinWalk.LastMoveIndex, joinWalk.ProgressAt = 1, nil, os.clock()
        end)
    end
    if not joinWalk.Points then
        return false
    end
    while joinWalk.Index <= #joinWalk.Points and isNearPosition(character2.Position, joinWalk.Points[joinWalk.Index].Position, 2) do
        joinWalk.Index = joinWalk.Index + 1
    end
    local points = joinWalk.Points[joinWalk.Index]
    if not points then
        joinWalk.Points = nil
        return false
    end
    if joinWalk.LastMoveIndex ~= joinWalk.Index or now - (joinWalk.LastMoveAt or - math.huge) >= 6 then
        if points.Action == Enum.PathWaypointAction.Jump then
            character3.Jump = true
        end
        character3:MoveTo(points.Position)
        joinWalk.LastMoveIndex, joinWalk.LastMoveAt = joinWalk.Index, now
    end
    return false
end
function HubCore.SetJoinMethod(arg)
    HubConfig.JoinMethod = arg == "Walk" and "Walk" or "TP"
    HubCore.CancelJoinWalk()
    HubCore.JoinWalkExit, HubCore.LobbyAttempt = nil, nil
    HubCore.SaveSettings()
end
function HubCore.AvoidCircle(instance)
    HubCore.CircleCooldowns = HubCore.CircleCooldowns or {}
    HubCore.CircleCooldowns[instance.Name] = os.clock() + 15
    HubCore.Invoke("ElevatorLeave", instance.Name)
    local pad = instance:FindFirstChild("Pad")
    local pad2 = pad and (pad:IsA("Model") and pad:GetPivot().Position or pad.Position)
    HubCore.CancelJoinWalk()
    if pad2 and localPlayer.Character then
        if HubConfig.JoinMethod == "Walk" then
            HubCore.JoinWalkExit = { Position = pad2 + Vector3.new(24, 0, 0), Id = instance.Name}
        else
            localPlayer.Character:PivotTo(CFrame.new(pad2 + Vector3.new(24, 3, 0)))
        end
    end
    HubCore.Elevator = nil
    HubCore.IsHost = false
    HubCore.StartRequested = nil
    HubCore.LobbyAttempt = nil
    HubCore.SetStatus("Lobby", "Another player in " .. instance.Name .. "; switching to an empty circle")
end
HubCore.ModifierCatalog = { Hp_Mobs = "X2 Hp Toilets", Speed_Mobs = "X2 Speed Toilets"}
for key, modifierName in pairs(HubConfig.ModifierNames) do
    if type(key) == "string" and type(modifierName) == "string" and modifierName ~= "" then
        HubCore.ModifierCatalog[key] = modifierName
    end
end
for index, modifier in ipairs(HubConfig.Modifiers) do
    if type(modifier) == "string" and not HubCore.ModifierCatalog[modifier] then
        HubCore.ModifierCatalog[modifier] = modifier
    end
end
function HubCore.ModifierOptions()
    local playerGui = localPlayer:FindFirstChild("PlayerGui")
    local placeId = game.PlaceId == HubCore.LobbyId and "ElevatorGui/Modifiers/List/ScrollingFrame" or game.PlaceId == HubCore.MatchId and "ModifierVotingUI/Modifiers"
    local placeId2 = placeId and HubCore.Path(playerGui, placeId)
    local flag = false
    if placeId2 then
        for index, child in ipairs(placeId2:GetChildren()) do
            local name = child.Name ~= "Template" and HubCore.Path(child, "Holder/Title")
            if name and name.Text ~= "" then
                HubCore.ModifierCatalog[child.Name] = name.Text
            end
        end
    end
    for key, modifierCatalog in pairs(HubCore.ModifierCatalog) do
        if HubConfig.ModifierNames[key] ~= modifierCatalog then
            HubConfig.ModifierNames[key] = modifierCatalog
            flag = true
        end
    end
    if flag then
        HubCore.SaveSettings()
    end
    local tbl = {}
    for key2, modifierCatalog2 in pairs(HubCore.ModifierCatalog) do
        table.insert(tbl, modifierCatalog2)
    end
    table.sort(tbl)
    return tbl
end
function HubCore.RefreshModifiers()
    if game.PlaceId ~= HubCore.LobbyId or os.clock() < (HubCore.Next.ModifierCatalog or 0) then
        return
    end
    HubCore.Next.ModifierCatalog = os.clock() + 5
    local modifierOptions = HubCore.ModifierOptions()
    local text = table.concat(modifierOptions, "|")
    if HubCore.ModifierCatalogSignature ~= text and HubCore.Widgets.Modifiers then
        HubCore.ModifierCatalogSignature = text
        pcall(function ()
            HubCore.Widgets.Modifiers.Value = HubCore.ModifierLabels()
            HubCore.Widgets.Modifiers:Refresh(modifierOptions)
        end)
    end
end
function HubCore.ModifierSelection(tbl)
    local tbl2 = {}
    for key, type2 in pairs(type(tbl) == "table" and tbl or {}) do
        local text = type(key) == "string" and type2 == true and key or type2
        if text == "X2 Hp Mobs" then
            text = "Hp_Mobs"
        end
        if text == "X2 Speed Mobs" then
            text = "Speed_Mobs"
        end
        if type(text) == "string" then
            for key2, modifierCatalog in pairs(HubCore.ModifierCatalog) do
                if (text == key2 or text == modifierCatalog) and not table.find(tbl2, key2) then
                    table.insert(tbl2, key2)
                end
            end
        end
    end
    table.sort(tbl2)
    return tbl2
end
function HubCore.SetModifierSelection(arg)
    local modifierSelection = HubCore.ModifierSelection(arg)
    if table.concat(modifierSelection, "|") == table.concat(HubConfig.Modifiers, "|") then
        return
    end
    HubConfig.Modifiers = modifierSelection
    HubCore.ModifierAppliedKey = nil
    HubCore.Next.Modifiers = nil
    HubCore.SaveSettings()
end
function HubCore.ModifierLabels()
    HubCore.ModifierOptions()
    local tbl = {}
    for index, modifier in ipairs(HubConfig.Modifiers) do
        table.insert(tbl, HubCore.ModifierCatalog[modifier] or modifier)
    end
    return tbl
end
function HubCore.ApplyModifiers()
    if not HubCore.Elevator or not HubCore.IsHost then
        return false
    end
    HubCore.ModifierOptions()
    local modifierSelection = HubCore.ModifierSelection(HubConfig.Modifiers)
    local elevator = HubCore.Elevator .. "/" .. table.concat(modifierSelection, ",")
    if HubCore.ModifierAppliedKey == elevator then
        return true
    end
    if os.clock() < (HubCore.Next.Modifiers or 0) then
        return false
    end
    HubCore.Next.Modifiers = os.clock() + 5
    local elevator2 = HubCore.Elevator
    local value2, value3 = HubCore.Invoke("ElevatorSetModifiers", elevator2, modifierSelection)
    if value2 and value3 == true and HubCore.Elevator == elevator2 then
        HubCore.ModifierAppliedKey = elevator
        return true
    end
    HubCore.SetStatus("Lobby", "Modifier selection not accepted; waiting before start")
    return false
end
function HubCore.LobbyStep()
    if game.PlaceId ~= HubCore.LobbyId or not HubConfig.AutoLobby or HubCore.Teleporting then
        HubCore.CancelJoinWalk()
        HubCore.JoinWalkExit = nil
        return
    end
    local elevators = WorkspaceSvc:FindFirstChild("Elevators")
    if not elevators then
        return
    end
    if HubCore.Elevator then
        HubCore.CancelJoinWalk()
        HubCore.JoinWalkExit = nil
        local child = elevators:FindFirstChild(HubCore.Elevator)
        if not child then
            HubCore.Elevator = nil
            return
        end
        if HubConfig.Players == 1 and (HubCore.CircleOccupied(child, true) or not HubCore.IsHost) then
            HubCore.AvoidCircle(child)
            return
        end
        HubCore.SetStatus("Lobby", string.format("%s | %s | %s/%s | %ss", HubCore.Elevator, tostring(child:GetAttribute("Map")), tostring(child:GetAttribute("Players")), tostring(child:GetAttribute("MaxPlayers")), tostring(child:GetAttribute("Time"))))
        if HubCore.IsHost and not HubCore.ApplyModifiers() then
            return
        end
        if HubConfig.StartNow and HubCore.IsHost and not HubCore.StartRequested and (tonumber(child:GetAttribute("Players")) or 0) >= HubConfig.Players then
            HubCore.StartRequested = true
            local flag, value2 = HubCore.Invoke("ElevatorStart", HubCore.Elevator)
            if not flag or value2 ~= true then
                HubCore.SetStatus("Lobby", "Start rejected; waiting for the elevator countdown")
            end
        end
        return
    end
    local character = localPlayer.Character
    local character2 = character and character:FindFirstChild("HumanoidRootPart")
    if not character2 then
        HubCore.SetStatus("Lobby", "Waiting for character")
        return
    end
    if HubCore.LobbyAttempt and HubConfig.Players == 1 then
        local child2 = elevators:FindFirstChild(HubCore.LobbyAttempt.Id)
        if child2 and HubCore.CircleOccupied(child2, true) then
            HubCore.AvoidCircle(child2)
            return
        end
    end
    if HubCore.LobbyAttempt and os.clock() - HubCore.LobbyAttempt.At < 15 then
        HubCore.SetStatus("Lobby", "Waiting for ElevatorEntered confirmation")
        return
    end
    HubCore.LobbyAttempt = nil
    if HubCore.JoinWalkExit then
        if HubConfig.JoinMethod == "Walk" and not HubCore.WalkToJoin(HubCore.JoinWalkExit.Position, "Exit:" .. HubCore.JoinWalkExit.Id) then
            HubCore.SetStatus("Lobby", "Walking out of the occupied elevator")
            return
        end
        HubCore.JoinWalkExit = nil
    end
    local instance, number
    if HubConfig.JoinMethod == "Walk" and HubCore.JoinWalk then
        local child3 = elevators:FindFirstChild(HubCore.JoinWalk.Target)
        if child3 and child3:GetAttribute("Map") == HubConfig.Map and not HubCore.CircleOccupied(child3, false) and os.clock() >= ((HubCore.CircleCooldowns or {})[child3.Name] or 0) then
            instance = child3
        else
            HubCore.CancelJoinWalk()
        end
    end
    local instance2 = instance ~= nil
    for index, child4 in ipairs(elevators:GetChildren()) do
        if child4:GetAttribute("Map") == HubConfig.Map and not HubCore.CircleOccupied(child4, false) and os.clock() >= ((HubCore.CircleCooldowns or {})[child4.Name] or 0) then
            local pad = child4:FindFirstChild("Pad")
            local pad2 = pad and (pad:IsA("Model") and pad:GetPivot().Position or pad:IsA("BasePart") and pad.Position)
            if pad2 and not instance2 then
                local pad3 = (pad2 - character2.Position).Magnitude
                if not number or pad3 < number then
                    instance, number = child4, pad3
                end
            end
        end
    end
    if not instance then
        HubCore.CancelJoinWalk()
        HubCore.SetStatus("Lobby", "Waiting for an empty elevator: " .. HubConfig.Map)
        return
    end
    if HubCore.CircleOccupied(instance, false) then
        return
    end
    local pad4 = instance:FindFirstChild("Pad")
    local isA = pad4:IsA("Model") and pad4:GetPivot().Position or pad4.Position
    local joinMethod = HubConfig.JoinMethod
    if joinMethod == "Walk" then
        if not HubCore.WalkToJoin(isA, instance.Name) then
            HubCore.SetStatus("Lobby", "Walking to " .. instance.Name)
            return
        end
    else
        HubCore.CancelJoinWalk()
        character:PivotTo(CFrame.new(isA + Vector3.new(0, 3, 0)))
    end
    HubCore.LobbyAttempt = { At = os.clock(), Id = instance.Name}
    task.wait(0.8)
    if not HubCore.Running or not HubConfig.AutoLobby or HubConfig.JoinMethod ~= joinMethod or instance:GetAttribute("Map") ~= HubConfig.Map or localPlayer.Character ~= character then
        return
    end
    if HubConfig.Players == 1 and (HubCore.CircleOccupied(instance, true) or HubCore.Elevator and HubCore.Elevator ~= instance.Name) then
        HubCore.AvoidCircle(instance)
        return
    end
    if not HubCore.Elevator then
        if HubCore.CircleOccupied(instance, false) then
            HubCore.AvoidCircle(instance)
            return
        end
        local flag2, value3 = HubCore.Invoke("ElevatorEnter", instance.Name)
        if not flag2 or value3 ~= true then
            HubCore.SetStatus("Lobby", "Enter rejected; checking elevator again in 15s")
        end
    end
end
function HubCore.LeaveElevator()
    HubCore.CancelJoinWalk()
    HubCore.JoinWalkExit, HubCore.LobbyAttempt = nil, nil
    if HubCore.Elevator then
        HubCore.Invoke("ElevatorLeave", HubCore.Elevator)
    end
end

function HubCore.ColorFromHex(hex)
    if type(hex) ~= "string" or not hex:match("^#?%x%x%x%x%x%x$") then
        return nil
    end
    local ok, color = pcall(Color3.fromHex, hex)
    return ok and color or nil
end
function HubCore.BaseTheme()
    local windUi = HubCore.UI
    if not windUi then
        return nil
    end
    local ok, themes = pcall(windUi.GetThemes, windUi)
    if not ok or type(themes) ~= "table" then
        return nil
    end
    return themes[HubConfig.ThemeName] or themes.Dark
end
function HubCore.ApplyTheme()

    local windUi = HubCore.UI
    if not windUi then
        return false
    end
    local name = (type(HubConfig.ThemeName) == "string" and HubConfig.ThemeName ~= "") and HubConfig.ThemeName or "Dark"
    return pcall(windUi.SetTheme, windUi, name)
end

function HubCore.AutoExecuteFile()
    local customFile = genv.CameraTDHubFile
    if type(customFile) == "string" and customFile ~= "" then
        return customFile
    end
    return HubCore.Folder .. "/HubLocal.lua"
end
function HubCore.QueueTeleport()
    HubCore.CaptureLobbyMap()
    if not HubConfig.AutoExecute or HubCore.Queued then
        return
    end
    local callback = queue_on_teleport or queueonteleport or syn and syn.queue_on_teleport
    local hubFile = HubCore.AutoExecuteFile()
    if type(callback) ~= "function" or not HubCore.FS or not isfile(hubFile) then
        HubCore.SetStatus("Macro", "Auto Execute unavailable: queue_on_teleport + file " .. hubFile .. " required")
        return
    end
    local value2 = [==[

        if game.GameId ~= 10762636904 then return end

        task.wait(3)

        local players = game:GetService("Players")

        local player = players.LocalPlayer or players.PlayerAdded:Wait()

        local e = getgenv()

        local key = tostring(game.JobId) .. "/" .. tostring(player.UserId)

        if e.__CameraTDQueuedJob ~= key then

            local enabled = true

            local ok, raw = pcall(readfile, "CameraTD_Macros/Settings/" .. player.Name .. ".json")

            if ok then

                local good, config = pcall(function() return game:GetService("HttpService"):JSONDecode(raw) end)

                if good and type(config) == "table" then enabled = config.AutoExecute ~= false end

            end

            if enabled then

                e.CameraTDHubFile = __HUB_FILE__

                local source = readfile(__HUB_FILE__)

                local chunk, reason = loadstring(source)

                assert(chunk, reason)

                e.__CameraTDQueuedJob = key

                chunk()

            end

        end

    ]==]
    value2 = value2:gsub("__HUB_FILE__", function ()
        return string.format("%q", hubFile)
    end)
    local ok3, result3 = pcall(callback, value2)
    HubCore.Queued = ok3
    if not ok3 then
        HubCore.SetStatus("Macro", "Auto Execute queue failed: " .. tostring(result3))
    end
end
function HubCore.PathTarget()
    local game2 = WorkspaceSvc:FindFirstChild("Game")
    if not game2 then
        return nil
    end
    local auto = HubCore.Auto
    if auto.Map ~= game2 then
        for index, mapConnectionsor in ipairs(auto.MapConnections or {}) do
            mapConnectionsor:Disconnect()
        end
        auto.MapConnections = {}
        auto.Map = game2
        auto.SurfaceParts, auto.SurfaceRoot, auto.NodeLayout, auto.PathNodes = nil, nil, nil, nil
        auto.GridSerial = (auto.GridSerial or 0) + 1
        HubCore.ClearAutoVisual()
        auto.GeometryAt = - math.huge
        auto.GeometryDirty = true
        auto.PlacePending = {}
        auto.UpgradePending = {}
        auto.Failures = {}
        auto.SlotCooldowns = {}
        auto.TowerCooldowns = {}
        local function markPathGeometryDirty(arg)
            local arg2 = arg
            while arg2 and arg2 ~= game2 do
                if arg2.Name == "Waypoints" or arg2.Name == "TowerArea" then
                    auto.GeometryDirty = true
                    auto.SurfaceDirty = true
                    auto.GridSerial = (auto.GridSerial or 0) + 1
                    return
                end
                arg2 = arg2.Parent
            end
        end
        table.insert(auto.MapConnections, game2.DescendantAdded:Connect(markPathGeometryDirty))
        table.insert(auto.MapConnections, game2.DescendantRemoving:Connect(markPathGeometryDirty))
    end
    if os.clock() - (auto.GeometryAt or - math.huge) >= 5 or auto.GeometryDirty then
        auto.GeometryAt = os.clock()
        auto.GeometryDirty = false
        local waypoints = game2:FindFirstChild("Waypoints")
        local waypoints2 = waypoints and waypoints:GetChildren() or {}
        table.sort(waypoints2, function (obj, obj2)
            return (tonumber(obj.Name:match("%d+")) or 0) < (tonumber(obj2.Name:match("%d+")) or 0)
        end)
        if waypoints2[1] and not waypoints2[1]:IsA("BasePart") then
            waypoints2 = waypoints2[1]:GetChildren()
        end
        local tbl = {}
        for index2, waypoint in ipairs(waypoints2) do
            if waypoint:IsA("BasePart") then
                table.insert(tbl, waypoint)
            end
        end
        table.sort(tbl, function (obj3, obj4)
            return (tonumber(obj3.Name:match("%d+")) or 0) < (tonumber(obj4.Name:match("%d+")) or 0)
        end)
        auto.Points = tbl
        auto.Area = game2:FindFirstChild("TowerArea")
    end
    local points = auto.Points or {}
    if #points == 0 then
        return nil
    end
    local number = 0
    for index3 = 2, #points do
        number = number + (points[index3].Position - points[index3 - 1].Position).Magnitude
    end
    local number2 = number * HubConfig.PlacementRange / 100
    for index4 = 2, #points do
        local obj5, obj6 = points[index4 - 1].Position, points[index4].Position
        local obj7 = (obj6 - obj5).Magnitude
        if number2 <= obj7 then
            local vector = Vector3.new(obj6.X - obj5.X, 0, obj6.Z - obj5.Z)
            local magnitude = vector.Magnitude > 0 and vector / vector.Magnitude or Vector3.new(1, 0, 0)
            return obj5:Lerp(obj6, obj7 > 0 and number2 / obj7 or 0), magnitude
        end
        number2 = number2 - obj7
    end
    local points2 = points[math.max(1, #points - 1)].Position
    local points3 = points[#points].Position
    local vector2 = Vector3.new(points3.X - points2.X, 0, points3.Z - points2.Z)
    return points3, vector2.Magnitude > 0 and vector2 / vector2.Magnitude or Vector3.new(1, 0, 0)
end
function HubCore.SurfacePoint(instance, obj, flag)
    if not instance.Parent or instance.CFrame.UpVector.Y < 0.8 then
        return nil
    end
    local obj2, obj3 = instance.CFrame, instance.Size * 0.5
    local upVector = obj2.UpVector
    local pointToWorldSpace = obj2:PointToWorldSpace(Vector3.new(0, obj3.Y, 0))
    local y = pointToWorldSpace.Y - (upVector.X * (obj.X - pointToWorldSpace.X) + upVector.Z * (obj.Z - pointToWorldSpace.Z)) / upVector.Y
    local pointToObjectSpace = obj2:PointToObjectSpace(Vector3.new(obj.X, y, obj.Z))
    local number = 1
    if obj3.X <= number or obj3.Z <= number then
        return nil
    end
    if not flag and (math.abs(pointToObjectSpace.X) > obj3.X - number or math.abs(pointToObjectSpace.Z) > obj3.Z - number) then
        return nil
    end
    return obj2:PointToWorldSpace(Vector3.new(math.clamp(pointToObjectSpace.X, - obj3.X + number, obj3.X - number), obj3.Y, math.clamp(pointToObjectSpace.Z, - obj3.Z + number, obj3.Z - number)))
end
function HubCore.SearchTarget()
    local obj, value2 = HubCore.PathTarget()
    if not obj then
        return nil
    end
    local auto = HubCore.Auto
    local map = auto.Map and auto.Map:FindFirstChild("TowerArea")
    if map ~= auto.SurfaceRoot or auto.SurfaceDirty or not auto.SurfaceParts then
        auto.SurfaceRoot, auto.SurfaceDirty, auto.SurfaceParts = map, false, {}
        if map then
            if map:IsA("BasePart") then
                auto.SurfaceParts[#auto.SurfaceParts + 1] = map
            end
            for index, descendant in ipairs(map:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    auto.SurfaceParts[#auto.SurfaceParts + 1] = descendant
                end
            end
        end
    end
    local value3, number
    for index2, surfacePart in ipairs(auto.SurfaceParts) do
        local surfacePoint = HubCore.SurfacePoint(surfacePart, obj, true)
        if surfacePoint then
            local x = (surfacePoint.X - obj.X) ^ 2 + (surfacePoint.Z - obj.Z) ^ 2
            if not number or x < number then
                value3, number = surfacePoint, x
            end
        end
    end
    return value3, value2, auto.Map
end
function HubCore.ClearAutoVisual()
    if HubCore.Ring then
        HubCore.Ring:Destroy()
        HubCore.Ring = nil
    end
    if HubCore.Auto then
        HubCore.Auto.VisualNodes = nil
    end
end
function HubCore.PlacementNodes()
    local auto = HubCore.Auto
    local number, obj, value2 = HubCore.SearchTarget()
    if not number then
        return nil
    end
    local tbl = {}
    for index, pointsor in ipairs(auto.Points or {}) do
        tbl[#tbl + 1] = pointsor.Position
    end
    local gridSerial = auto.GridSerial
    local nodeLayout = auto.NodeLayout
    local nodeLayout2 = nodeLayout and nodeLayout.Map == value2 and nodeLayout.Center == number and nodeLayout.Direction == obj and #nodeLayout.Points == #tbl and #nodeLayout.Floors == #(auto.SurfaceParts or {})
    if nodeLayout2 then
        for index2, tbl2 in ipairs(tbl) do
            if nodeLayout.Points[index2] ~= tbl2 then
                nodeLayout2 = false
                break
            end
        end
    end
    if nodeLayout2 then
        for index3, surfacePartsor in ipairs(auto.SurfaceParts or {}) do
            local floors = nodeLayout.Floors[index3]
            if floors.Part ~= surfacePartsor or floors.CFrame ~= surfacePartsor.CFrame or floors.Size ~= surfacePartsor.Size then
                nodeLayout2 = false
                break
            end
        end
    end
    if nodeLayout2 then
        return auto.PathNodes
    end
    auto.NodeBuildSerial = (auto.NodeBuildSerial or 0) + 1
    local value3, number2, number3 = auto.NodeBuildSerial, os.clock(), 0
    local tbl3 = { Map = value2, Center = number, Direction = obj, Points = {}, Floors = {}}
    for index4, tbl4 in ipairs(tbl) do
        tbl3.Points[index4] = tbl4
    end
    for index5, surfacePartsor2 in ipairs(auto.SurfaceParts or {}) do
        tbl3.Floors[index5] = { Part = surfacePartsor2, CFrame = surfacePartsor2.CFrame, Size = surfacePartsor2.Size}
    end
    local function yieldNodeBuild()
        number3 = number3 + 1
        if number3 % 16 == 0 and os.clock() - number2 >= 0.001 then
            task.wait()
            number2 = os.clock()
            if not HubCore.Running or auto.Map ~= value2 or auto.NodeBuildSerial ~= value3 or not HubCore.Active() or auto.GridSerial ~= gridSerial then
                return false
            end
        end
        return true
    end
    local tbl5, number4 = {}, Vector3.new(- obj.Z, 0, obj.X)
    for index6 = - 4, 4 do
        for index7 = - 4, 4 do
            if index6 * index6 + index7 * index7 <= 16 then
                local value4, obj2 = number + obj * index6 * 4.5 + number4 * index7 * 4.5
                for index8, floor in ipairs(tbl3.Floors) do
                    if not yieldNodeBuild() then
                        return nil
                    end
                    obj2 = HubCore.SurfacePoint(floor.Part, value4, false)
                    if obj2 then
                        break
                    end
                end
                if obj2 then
                    local huge = math.huge
                    for index9 = 2, #tbl3.Points do
                        if not yieldNodeBuild() then
                            return nil
                        end
                        local obj3, obj4 = tbl3.Points[index9 - 1], tbl3.Points[index9]
                        local number5, number6, number7, number8 = obj4.X - obj3.X, obj4.Z - obj3.Z, obj2.X - obj3.X, obj2.Z - obj3.Z
                        local number9 = number5 * number5 + number6 * number6
                        local number10 = number9 > 0 and math.clamp((number7 * number5 + number8 * number6) / number9, 0, 1) or 0
                        huge = math.min(huge, (number7 - number5 * number10) ^ 2 + (number8 - number6 * number10) ^ 2)
                    end
                    if huge >= 3.5 ^ 2 then
                        tbl5[#tbl5 + 1] = { Position = obj2, PathDistance = huge, CenterDistance = index6 * index6 + index7 * index7}
                    end
                end
            end
        end
    end
    table.sort(tbl5, function (obj5, obj6)
        if obj5.PathDistance ~= obj6.PathDistance then
            return obj5.PathDistance < obj6.PathDistance
        end
        return obj5.CenterDistance < obj6.CenterDistance
    end)
    auto.NodeLayout, auto.PathNodes, auto.NodeCursor = tbl3, tbl5, 0
    return tbl5
end
function HubCore.PlaceCandidate()
    local auto = HubCore.Auto
    local placementNodes = HubCore.PlacementNodes()
    if not placementNodes or #placementNodes == 0 then
        return nil
    end
    local value2, value3 = auto.Map, auto.GridSerial
    local tbl = {}
    local number, number2 = 0, os.clock()
    local function yieldAutoPlaceStep()
        number = number + 1
        if number % 16 == 0 and os.clock() - number2 >= 0.001 then
            task.wait()
            number2 = os.clock()
        end
        return HubCore.Running and HubConfig.AutoPlace and not HubCore.Playing and not HubCore.Recording and HubCore.Active() and auto.Map == value2 and auto.PathNodes == placementNodes and auto.GridSerial == value3
    end
    for key, tower in pairs(HubCore.Towers) do
        local position = HubCore.Position(tower)
        if position then
            tbl[#tbl + 1] = position
        end
        if not yieldAutoPlaceStep() then
            return nil
        end
    end
    for key2, placePending in pairs(auto.PlacePending) do
        local cFrame = placePending.Action.CFrame
        tbl[#tbl + 1] = Vector3.new(cFrame[1], cFrame[2], cFrame[3])
    end
    for index, placementNode in ipairs(placementNodes) do
        local flag = true
        for index2, tbl2 in ipairs(tbl) do
            if not yieldAutoPlaceStep() then
                return nil
            end
            if (tbl2.X - placementNode.Position.X) ^ 2 + (tbl2.Z - placementNode.Position.Z) ^ 2 < 4.5 ^ 2 then
                flag = false
                break
            end
        end
        if flag and yieldAutoPlaceStep() then
            return CFrame.new(placementNode.Position)
        end
    end
    return nil
end
HubCore.Auto = { PlacePending = {}, UpgradePending = {}, SlotCooldowns = {}, TowerCooldowns = {}, Failures = {}, NextAt = 0, PlaceTurn = true}
function HubCore.Auto.Busy()
    return next(HubCore.Auto.PlacePending) ~= nil or next(HubCore.Auto.UpgradePending) ~= nil
end
function HubCore.Auto.Budget()
    local number = 0
    for key, placePending in pairs(HubCore.Auto.PlacePending) do
        number = number + (placePending.Cost or HubCore.Cash())
    end
    for key2, upgradePending in pairs(HubCore.Auto.UpgradePending) do
        number = number + (upgradePending.Cost or HubCore.Cash())
    end
    return math.max(0, HubCore.Cash() - number)
end
function HubCore.Auto.Poll()
    local auto = HubCore.Auto
    local now = os.clock()
    for key, placePending in pairs(auto.PlacePending) do
        local obj, value2 = HubCore.FindPlacement(placePending.Action, placePending.Before)
        if obj and obj.UnitId == key then
            auto.PlacePending[key] = nil
            auto.SlotCooldowns[key] = now + HubCore.AutoInterval()
            HubCore.SetStatus("Auto", "Placed " .. obj.Name .. " | confirmed")
        elseif (value2 or now - placePending.At >= 10) and not placePending.Warned then
            placePending.Warned = true
            HubCore.SetStatus("Auto", value2 or "Placement unconfirmed: " .. placePending.Action.Name .. " | this unit is locked pending late confirmation")
        end
    end
    for key2, upgradePending in pairs(auto.UpgradePending) do
        local towers = HubCore.Towers[key2]
        if not towers or (tonumber(towers.Level) or 1) > upgradePending.Level then
            auto.UpgradePending[key2] = nil
            auto.TowerCooldowns[key2] = now + HubCore.AutoInterval()
            auto.Failures[key2] = nil
            if towers then
                HubCore.SetStatus("Auto", "Upgraded " .. towers.Name .. " | level " .. towers.Level)
            end
        elseif now - upgradePending.At >= 10 then
            auto.UpgradePending[key2] = nil
            auto.TowerCooldowns[key2] = now + 15
            auto.Failures[key2] = { Wave = HubCore.Wave(), Cash = HubCore.Cash(), Level = towers.Level}
            HubCore.SetStatus("Auto", "Upgrade unconfirmed: " .. towers.Name .. " | paused until wave/cash/level changes")
        end
    end
end
function HubCore.Auto.UpgradeStep()
    if not HubConfig.AutoUpgrade then
        return false
    end
    local auto = HubCore.Auto
    local budget = auto.Budget()
    local tbl = {}
    for index, owned in ipairs(HubCore.Owned()) do
        local id = owned.Id
        local failures = auto.Failures[id]
        local upgradeCost = HubCore.UpgradeCost(owned)
        local value2 = not failures or owned.Level ~= failures.Level or HubCore.Wave() ~= failures.Wave or HubCore.Cash() > failures.Cash + 100
        if value2 and not auto.UpgradePending[id] and os.clock() >= (auto.TowerCooldowns[id] or 0) and (upgradeCost and upgradeCost > 0 and upgradeCost <= budget or not upgradeCost and budget > 0 and not auto.Busy()) then
            table.insert(tbl, { Tower = owned, Price = upgradeCost})
        end
    end
    table.sort(tbl, function (obj, obj2)
        local number, number2 = obj.Price or math.huge, obj2.Price or math.huge
        if number == number2 then
            return tostring(obj.Tower.Id) < tostring(obj2.Tower.Id)
        end
        return number < number2
    end)
    local tbl2 = tbl[1]
    if not tbl2 then
        return false
    end
    local tower = tbl2.Tower
    local tbl3 = { At = os.clock(), Level = tonumber(tower.Level) or 1, Cost = tbl2.Price}
    auto.UpgradePending[tower.Id] = tbl3
    local flag, value3 = HubCore.Fire("TowerUpgrade", { Id = tower.Id})
    if not flag then
        auto.UpgradePending[tower.Id] = nil
        auto.TowerCooldowns[tower.Id] = os.clock() + 2
        HubCore.SetStatus("Auto", tostring(value3))
    else
        HubCore.SetStatus("Auto", "Upgrading " .. tower.Name .. " | waiting for level confirmation")
    end
    return true
end
function HubCore.Auto.PlaceStep()
    if not HubConfig.AutoPlace then
        return false
    end
    local auto = HubCore.Auto
    local equipped = HubCore.Equipped()
    local budget = auto.Budget()
    if #equipped == 0 then
        HubCore.SetStatus("Auto", "Waiting for equipped loadout from local replica")
        return false
    end
    local towersGui = HubCore.GUI("Stats/OtherUI/Towers")
    if towersGui then
        local number, number2 = towersGui.Text:match("(%d+)%s*/%s*(%d+)")
        local number3 = 0
        for placePending in pairs(auto.PlacePending) do
            number3 = number3 + 1
        end
        if number and tonumber(number) + number3 >= tonumber(number2) then
            HubCore.SetStatus("Auto", "Tower limit reached / reserved")
            return false
        end
    end
    local obj, number4
    local number5, text, text2 = 0, 0, math.huge
    for index = 1, #equipped do
        auto.SlotIndex = (auto.SlotIndex or 0) % #equipped + 1
        local equipped2 = equipped[auto.SlotIndex]
        local unitCost = HubCore.UnitCost(equipped2.Name, equipped2)
        if not unitCost or unitCost <= 0 then
            number5 = number5 + 1
        end
        if auto.PlacePending[equipped2.Id] then
            text = text + 1
        end
        if unitCost and unitCost > 0 then
            text2 = math.min(text2, unitCost)
        end
        if not auto.PlacePending[equipped2.Id] and os.clock() >= (auto.SlotCooldowns[equipped2.Id] or 0) and unitCost and unitCost > 0 and unitCost <= budget then
            obj, number4 = equipped2, unitCost
            break
        end
    end
    if not obj then
        local value2
        if text == #equipped then
            value2 = "Waiting for TowerAdd confirmation | " .. text .. " slot(s) pending"
        elseif number5 == #equipped then
            value2 = "Cannot read equipped slot prices | cash " .. HubCore.Cash()
        elseif text2 > budget then
            value2 = "Waiting for money | available " .. budget .. " / cheapest " .. text2
        else
            value2 = "Waiting for slot cooldown / pending confirmation | available " .. budget
        end
        HubCore.SetStatus("Auto", value2)
        return false
    end
    local placeCandidate = HubCore.PlaceCandidate()
    if not placeCandidate then
        HubCore.SetStatus("Auto", "Searching for clear ground beside the path")
        return false
    end
    if not HubCore.Running or not HubConfig.AutoPlace or HubCore.Playing or HubCore.Recording or not HubCore.Active() or HubConfig.AutoPlayback and not HubCore.PlaybackCompleted or number4 > auto.Budget() then
        return false
    end
    local flag = false
    for index2, equipped3 in ipairs(HubCore.Equipped()) do
        if equipped3.Id == obj.Id and equipped3.Name == obj.Name then
            flag = true
            break
        end
    end
    if not flag then
        return false
    end
    local tbl = {}
    for index3, owned in ipairs(HubCore.Owned()) do
        tbl[owned.Id] = true
    end
    HubCore.Candidate = 0
    local tbl2 = { Name = obj.Name, UnitId = obj.Id, CFrame = { placeCandidate:GetComponents()}}
    auto.PlacePending[obj.Id] = { At = os.clock(), Before = tbl, Action = tbl2, Cost = number4}
    local flag2, value3 = HubCore.Fire("TowerAdd", { Name = obj.Name, UnitId = obj.Id, Pos = placeCandidate.Position, CFrame = placeCandidate})
    if not flag2 then
        auto.PlacePending[obj.Id] = nil
        auto.SlotCooldowns[obj.Id] = os.clock() + 2
        HubCore.SetStatus("Auto", tostring(value3))
    else
        HubCore.SetStatus("Auto", "Placing " .. obj.Name .. " | waiting for tower confirmation")
    end
    return true
end
function HubCore.AutoStep()
    local auto = HubCore.Auto
    auto.Poll()
    if not HubConfig.AutoPlace and not HubConfig.AutoUpgrade then
        HubCore.SetStatus("Auto", auto.Busy() and "Disabled | resolving outstanding requests" or "Disabled")
        return
    end
    if HubCore.Playing or HubCore.Recording then
        HubCore.SetStatus("Auto", "Paused: macro recording / playback")
        return
    end
    if HubConfig.AutoPlayback and not HubCore.PlaybackCompleted then
        HubCore.SetStatus("Auto", HubCore.PlaybackFailure and "Paused: macro playback failed" or "Waiting for macro completion")
        return
    end
    if not HubCore.Active() then
        HubCore.SetStatus("Auto", "Waiting for a match")
        return
    end
    HubCore.PathTarget()
    if HubConfig.AutoPlace and #HubCore.Equipped() == 0 and os.clock() >= (auto.HydrateAt or 0) then
        auto.HydrateAttempts = (auto.HydrateAttempts or 0) + 1
        auto.HydrateAt = os.clock() + (auto.HydrateAttempts <= 3 and 10 or 30)
        HubCore.Hydrate()
    end
    if os.clock() < auto.NextAt then
        return
    end
    local flag = false
    if auto.PlaceTurn then
        flag = auto.PlaceStep()
        if not flag then
            flag = auto.UpgradeStep()
        end
    else
        flag = auto.UpgradeStep()
        if not flag then
            flag = auto.PlaceStep()
        end
    end
    if flag then
        auto.PlaceTurn = not auto.PlaceTurn
    end
    auto.NextAt = os.clock() + HubCore.AutoInterval()
end
HubCore.Skip = { NextAt = 0, LastWave = nil}
function HubCore.IsAutoSkipStopped(arg)
    local stopAutoSkipAt = HubConfig.StopAutoSkipAt
    if HubCore.Skip.StopText ~= stopAutoSkipAt then
        HubCore.Skip.StopText, HubCore.Skip.StopWaves = stopAutoSkipAt, {}
        for tostring2 in tostring(stopAutoSkipAt):gmatch("[^,%s;]+") do
            if tostring2:match("^%d+$") then
                local number = tonumber(tostring2)
                if number and number >= 1 then
                    HubCore.Skip.StopWaves[number] = true
                end
            end
        end
    end
    return HubCore.Skip.StopWaves[arg] == true
end
function HubCore.SkipStep()
    if not HubConfig.AutoSkip then
        return
    end
    if not HubCore.Active() then
        return
    end
    local waveGui = HubCore.GUI("Stats/Wave")
    local waveGui2 = waveGui and waveGui.Text:lower():match("^%s*intermission") ~= nil
    local wave = HubCore.Wave()
    if HubCore.Skip.LastWave ~= wave or HubCore.Skip.LastIntermission ~= waveGui2 then
        HubCore.Skip.LastWave = wave
        HubCore.Skip.LastIntermission = waveGui2
        HubCore.Skip.NextAt = 0
    end
    if not waveGui2 and HubCore.IsAutoSkipStopped(wave) then
        return
    end
    local waveSkipGui = HubCore.GUI("Stats/WaveSkipGui")
    local titleGui = HubCore.GUI("Stats/WaveSkipGui/Title")
    if not HubCore.Visible(waveSkipGui) then
        return
    end
    local titleGui2 = titleGui and titleGui.Text or ""
    local number, number2 = titleGui2:match("(%d+)%s*/%s*(%d+)")
    if number and tonumber(number2) > 0 and tonumber(number) >= tonumber(number2) then
        return
    end
    if os.clock() < HubCore.Skip.NextAt then
        return
    end
    HubCore.Skip.NextAt = os.clock() + 2
    HubCore.SendSkip("AutoSkip")
end
function HubCore.Visual()
    local auto = HubCore.Auto
    if not HubConfig.ShowRange or not HubCore.Active() then
        HubCore.ClearAutoVisual()
        return
    end
    if os.clock() - (auto.LastVisualAt or - math.huge) < 0.5 then
        return
    end
    auto.LastVisualAt = os.clock()
    local placementNodes = HubCore.PlacementNodes()
    if not placementNodes then
        HubCore.ClearAutoVisual()
        return
    end
    if HubCore.Ring and auto.VisualNodes == placementNodes then
        return
    end
    HubCore.ClearAutoVisual()
    local model = Instance.new("Model")
    model.Name = "CameraTDAutoPlayPlacementNodes"
    HubCore.Ring, auto.VisualNodes = model, placementNodes
    model.Parent = WorkspaceSvc
    for index, placementNode in ipairs(placementNodes) do
        if index % 12 == 0 then
            task.wait()
        end
        if not HubCore.Running or not HubConfig.ShowRange or not HubCore.Active() or HubCore.Ring ~= model or auto.PathNodes ~= placementNodes then
            if HubCore.Ring == model then
                HubCore.ClearAutoVisual()
            end
            return
        end
        local part = Instance.new("Part")
        part.Name, part.Shape = "PlacementNode", Enum.PartType.Cylinder
        part.Size = Vector3.new(0.06, 2.4, 2.4)
        part.CFrame = CFrame.new(placementNode.Position + Vector3.new(0, 0.08, 0)) * CFrame.Angles(0, 0, math.pi * 0.5)
        part.Anchored, part.CanCollide, part.CanTouch, part.CanQuery = true, false, false, false
        part.CastShadow = false
        part.Material = Enum.Material.Neon
        part.Color, part.Transparency = Color3.fromRGB(70, 230, 100), 0.35
        part.Parent = model
    end
end
HubCore.VisualOriginal = setmetatable({}, { __mode = "k"})
function HubCore.CombatVisualScope(arg)
    local value2, value3 = false, false
    local arg2 = arg
    while arg2 and arg2 ~= WorkspaceSvc do
        local name = arg2.Name
        if name == "AnimSaves" or name == "PlacingTowers" then
            return false, false
        end
        if name == "Enemies" or name == "Towers" or name == "Units" then
            value2 = true
        end
        if name == "Effects" or name == "VFX" or name == "Projectiles" or name == "SpawnEffects" or name == "RangeCircles" then
            value2, value3 = true, true
        end
        arg2 = arg2.Parent
    end
    return value2 and arg2 == WorkspaceSvc, value3
end
function HubCore.VisualSet(tbl, arg, arg2)
    local visualOriginal = HubCore.VisualOriginal[tbl]
    if not visualOriginal then
        visualOriginal = {}
        HubCore.VisualOriginal[tbl] = visualOriginal
    end
    pcall(function ()
        if visualOriginal[arg] == nil then
            local fPSOriginal = HubCore.FPSOriginal[tbl]
            if fPSOriginal and fPSOriginal[arg] ~= nil then
                visualOriginal[arg] = fPSOriginal[arg]
            else
                visualOriginal[arg] = tbl[arg]
            end
        end
        tbl[arg] = arg2
    end)
end
function HubCore.CombatVisualObject(instance)
    if not HubCore.Running or not HubConfig.RemoveVisuals then
        return
    end
    local flag, value2 = HubCore.CombatVisualScope(instance)
    if not flag then
        return
    end
    local visualMethod = HubConfig.VisualMethod == "Full (For Afk)"
    if instance:IsA("BasePart") then
        if visualMethod or value2 then
            HubCore.VisualSet(instance, "LocalTransparencyModifier", 1)
        end
    elseif instance:IsA("Decal") or instance:IsA("Texture") then
        if visualMethod or value2 then
            HubCore.VisualSet(instance, "Transparency", 1)
        end
    elseif instance:IsA("BillboardGui") or instance:IsA("SurfaceGui") then
        if visualMethod or value2 then
            HubCore.VisualSet(instance, "Enabled", false)
        end
    elseif instance:IsA("ParticleEmitter") or instance:IsA("Trail") or instance:IsA("Beam") or instance:IsA("Smoke") or instance:IsA("Fire") or instance:IsA("Sparkles") or instance:IsA("Light") or instance:IsA("Highlight") then
        HubCore.VisualSet(instance, "Enabled", false)
    elseif instance:IsA("Sound") then
        HubCore.VisualSet(instance, "Volume", 0)
    end
end
function HubCore.RestoreCombatVisuals()
    for key, visualOriginal in pairs(HubCore.VisualOriginal) do
        for key2, visualOriginal2 in pairs(visualOriginal) do
            pcall(function ()
                if HubCore.Running and HubConfig.FPSBoost and HubCore.FPSOriginal[key] and HubCore.FPSOriginal[key][key2] ~= nil then
                    if key2 == "Enabled" then
                        key[key2] = false
                    elseif key2 == "Transparency" then
                        key[key2] = 1
                    else
                        key[key2] = visualOriginal2
                    end
                else
                    key[key2] = visualOriginal2
                end
            end)
        end
    end
    HubCore.VisualOriginal = setmetatable({}, { __mode = "k"})
end
function HubCore.SetRemoveVisuals(flag)
    HubCore.VisualGeneration = (HubCore.VisualGeneration or 0) + 1
    local visualGeneration = HubCore.VisualGeneration
    if HubCore.VisualConnection then
        HubCore.VisualConnection:Disconnect()
        HubCore.VisualConnection = nil
    end
    HubCore.RestoreCombatVisuals()
    if not flag or not HubCore.Running then
        return
    end
    if HubConfig.VisualMethod ~= "Full (For Afk)" then
        HubConfig.VisualMethod = "Normal"
    end
    local tbl, tbl2, value2 = {}, setmetatable({}, { __mode = "k"}), false
    local function trackVisualInstance(instance)
        if not (instance:IsA("BasePart") or instance:IsA("Decal") or instance:IsA("Texture") or instance:IsA("LayerCollector") or instance:IsA("ParticleEmitter") or instance:IsA("Trail") or instance:IsA("Beam") or instance:IsA("Smoke") or instance:IsA("Fire") or instance:IsA("Sparkles") or instance:IsA("Light") or instance:IsA("Highlight") or instance:IsA("Sound")) or tbl2[instance] then
            return
        end
        tbl2[instance] = true
        tbl[#tbl + 1] = instance
        if value2 then
            return
        end
        value2 = true
        task.defer(function ()
            local number, number2 = 1, os.clock()
            while HubCore.Running and HubConfig.RemoveVisuals and visualGeneration == HubCore.VisualGeneration and number <= #tbl do
                local tbl3 = tbl[number]
                tbl[number] = false
                number = number + 1
                tbl2[tbl3] = nil
                if tbl3.Parent then
                    HubCore.CombatVisualObject(tbl3)
                end
                if os.clock() - number2 >= .002 then
                    task.wait()
                    number2 = os.clock()
                end
            end
            tbl = {}
            value2 = false
        end)
    end
    HubCore.VisualConnection = WorkspaceSvc.DescendantAdded:Connect(trackVisualInstance)
    task.spawn(function ()
        local tbl4, number3, number4 = { WorkspaceSvc}, 1, os.clock()
        while HubCore.Running and HubConfig.RemoveVisuals and visualGeneration == HubCore.VisualGeneration and number3 <= #tbl4 do
            local tbl5 = tbl4[number3]
            tbl4[number3] = false
            number3 = number3 + 1
            for index, child in ipairs(tbl5:GetChildren()) do
                if child.Name ~= "AnimSaves" and child.Name ~= "PlacingTowers" then
                    trackVisualInstance(child)
                    tbl4[#tbl4 + 1] = child
                end
                if os.clock() - number4 >= .002 then
                    task.wait()
                    number4 = os.clock()
                end
                if visualGeneration ~= HubCore.VisualGeneration or not HubCore.Running or not HubConfig.RemoveVisuals then
                    return
                end
            end
        end
    end)
end
function HubCore.FPSSet(tbl, arg, arg2)
    HubCore.FPSOriginal[tbl] = HubCore.FPSOriginal[tbl] or {}
    if HubCore.FPSOriginal[tbl][arg] == nil then
        local ok3, result3 = pcall(function ()
            return tbl[arg]
        end)
        if ok3 then
            local visualOriginal = HubCore.VisualOriginal[tbl]
            if visualOriginal and visualOriginal[arg] ~= nil then
                result3 = visualOriginal[arg]
            end
            HubCore.FPSOriginal[tbl][arg] = result3
        end
    end
    pcall(function ()
        tbl[arg] = arg2
    end)
end
function HubCore.FPSObject(instance)
    if instance:IsA("ParticleEmitter") or instance:IsA("Trail") or instance:IsA("Beam") or instance:IsA("Smoke") or instance:IsA("Fire") or instance:IsA("Sparkles") or instance:IsA("PostEffect") then
        HubCore.FPSSet(instance, "Enabled", false)
    elseif instance:IsA("BasePart") then
        HubCore.FPSSet(instance, "CastShadow", false)
        HubCore.FPSSet(instance, "Material", Enum.Material.SmoothPlastic)
    elseif instance:IsA("Decal") or instance:IsA("Texture") then
        HubCore.FPSSet(instance, "Transparency", 1)
    end
end
function HubCore.QueueFPSObject(arg)
    if not HubCore.Running or not HubConfig.FPSBoost then
        return
    end
    local fPSQueue = HubCore.FPSQueue
    if fPSQueue then
        fPSQueue[#fPSQueue + 1] = arg
        return
    end
    fPSQueue = { arg}
    HubCore.FPSQueue = fPSQueue
    task.defer(function ()
        local number, number2 = 1, os.clock()
        while HubCore.Running and HubConfig.FPSBoost and HubCore.FPSQueue == fPSQueue and number <= #fPSQueue do
            local fPSQueue2 = fPSQueue[number]
            if fPSQueue2.Parent then
                pcall(HubCore.FPSObject, fPSQueue2)
            end
            number = number + 1
            if number % 16 == 0 and os.clock() - number2 >= 0.002 then
                task.wait()
                number2 = os.clock()
            end
        end
        if HubCore.FPSQueue == fPSQueue then
            HubCore.FPSQueue = nil
        end
    end)
end
function HubCore.FPS(arg)
    HubCore.SetStatus("Performance", arg and "Disabling effects, shadows and post-processing" or "Original effects and shadows restored")
    if arg then
        HubCore.FPSSet(LightingSvc, "GlobalShadows", false)
        task.spawn(function ()
            local descendants = WorkspaceSvc:GetDescendants()
            local now = os.clock()
            for index, descendant in ipairs(descendants) do
                if not HubCore.Running or not HubConfig.FPSBoost then
                    return
                end
                HubCore.FPSObject(descendant)
                if index % 16 == 0 and os.clock() - now >= 0.002 then
                    task.wait()
                    now = os.clock()
                end
            end
            for index2, descendant2 in ipairs(LightingSvc:GetDescendants()) do
                HubCore.FPSObject(descendant2)
            end
        end)
    else
        HubCore.FPSQueue = nil
        for key, fPSOriginal in pairs(HubCore.FPSOriginal) do
            for key2, fPSOriginal2 in pairs(fPSOriginal) do
                pcall(function ()
                    key[key2] = fPSOriginal2
                end)
            end
        end
        HubCore.FPSOriginal = setmetatable({}, { __mode = "k"})
        if HubCore.Running and HubConfig.RemoveVisuals then
            for visualOriginal in pairs(HubCore.VisualOriginal) do
                HubCore.CombatVisualObject(visualOriginal)
            end
        end
    end
end
function HubCore.ValidWebhook(text)
    if type(text) ~= "string" then
        return false
    end
    return text:match("^https://discord%.com/api/webhooks/%d+/[%w_%-]+$") ~= nil or text:match("^https://discordapp%.com/api/webhooks/%d+/[%w_%-]+$") ~= nil
end
function HubCore.RequestFunction()
    for key, callback in pairs({ http_request, request, syn and syn.request, fluxus and fluxus.request}) do
        if type(callback) == "function" then
            return callback
        end
    end
end
function HubCore.SummonRarities(arg)
    arg = arg or HubConfig.SummonCrate or "Basic Crate"
    local value2, tbl = HubCore.Invoke("GetSummonSet")
    local value3 = value2 and type(tbl) == "table" and tbl[arg]
    if type(value3) == "table" then
        local tbl2, tbl3 = {}, {}
        for key, value4 in pairs(value3) do
            if type(key) == "string" and type(value4) == "string" then
                if tbl2[value4] and tbl2[value4] ~= key then
                    tbl3[value4] = true
                end
                tbl2[value4] = key
            end
        end
        for tbl4 in pairs(tbl3) do
            tbl2[tbl4] = nil
        end
        return tbl2
    end
    local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Summon/SummonFrame/List/Title")
    if path and path.Text ~= arg or not path and arg ~= "Basic Crate" then
        return {}
    end
    local path2 = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Summon/SummonFrame/List/Units")
    local tbl5, tbl6 = {}, {}
    if path2 then
        for index, child in ipairs(path2:GetChildren()) do
            if child.Name ~= "UnitHolder" and child.Name ~= "Template" then
                local unitNameGui = HubCore.Path(child, "UnitFrame/UnitName")
                local unitChanceGui = HubCore.Path(child, "UnitFrame/UnitChance")
                local unitNameGui2 = unitNameGui and tostring(unitNameGui.Text):gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
                if unitNameGui2 and unitNameGui2 ~= "" and unitChanceGui and tostring(unitChanceGui.Text):match("%d") then
                    if tbl5[unitNameGui2] and tbl5[unitNameGui2] ~= child.Name then
                        tbl6[unitNameGui2] = true
                    end
                    tbl5[unitNameGui2] = child.Name
                end
            end
        end
    end
    for tbl7 in pairs(tbl6) do
        tbl5[tbl7] = nil
    end
    return tbl5
end
function HubCore.ResolveSummonRarities(tbl, arg, tbl2)
    local tbl3 = { Basic = true, Uncommon = true, Rare = true, Epic = true, Legendary = true, Mythic = true, Godly = true}
    local tbl4, tbl5 = {}, {}
    local function registerRarity(text, arg2)
        if type(text) ~= "string" or not tbl3[arg2] then
            return
        end
        if tbl4[text] and tbl4[text] ~= arg2 then
            tbl5[text] = true
        end
        tbl4[text] = arg2
    end
    for key, item in pairs(tbl2 or {}) do
        registerRarity(key, item)
    end
    for index, tbl6 in ipairs(tbl) do
        if type(tbl6) == "table" then
            registerRarity(tbl6.Name, tbl6.Rarity)
        end
    end
    local flag = false
    for index2, tbl7 in ipairs(tbl) do
        if not tbl4[tbl7.Name] or tbl5[tbl7.Name] then
            flag = true
        end
    end
    if flag then
        for key2, summonRarity in pairs(HubCore.SummonRarities(arg)) do
            registerRarity(key2, summonRarity)
        end
        for index3 = 1, 8 do
            local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/SummonedFrame")
            local tbl8 = {}
            local path2 = path ~= nil
            for index4, tbl9 in ipairs(tbl) do
                local path3 = path and path:FindFirstChild("Card_" .. index4)
                local path4 = path3 and HubCore.Path(path3, "Holder/UnitName")
                local path5 = path3 and HubCore.Path(path3, "Holder/RarityFrame/Rarity")
                if not path4 or path4.Text ~= tbl9.Name or not path5 or not tbl3[path5.Text] then
                    path2 = false
                    break
                end
                tbl8[#tbl8 + 1] = { Name = path4.Text, Rarity = path5.Text}
            end
            if path2 then
                local tbl10, tbl11 = {}, {}
                for index5, tbl12 in ipairs(tbl8) do
                    if tbl10[tbl12.Name] and tbl10[tbl12.Name] ~= tbl12.Rarity then
                        tbl11[tbl12.Name] = true
                    end
                    tbl10[tbl12.Name] = tbl12.Rarity
                end
                for key3, tbl13 in pairs(tbl10) do
                    if not tbl11[key3] then
                        tbl4[key3] = tbl13
                        tbl5[key3] = nil
                    end
                end
                break
            end
            local flag2 = true
            for index6, tbl14 in ipairs(tbl) do
                if not tbl4[tbl14.Name] or tbl5[tbl14.Name] then
                    flag2 = false
                    break
                end
            end
            if flag2 or not HubCore.Running then
                break
            end
            task.wait(.05)
        end
    end
    for tbl15 in pairs(tbl5) do
        tbl4[tbl15] = nil
    end
    return tbl4
end
function HubCore.SummonText(arg)
    return tostring(arg or ""):gsub("<[^>]+>", ""):gsub("@", "＠"):gsub("([\\`*_~|])", "\\%1"):sub(1, 180)
end
function HubCore.SummonCoinCost(text, text2)
    if text2 ~= 1 and text2 ~= 10 then
        return nil
    end
    local path = HubCore.Path(localPlayer:FindFirstChild("PlayerGui"), "Main/Main/Summon/SummonFrame")
    local function parseCurrencyText(label)
        local label2 = label and tostring(label.Text):gsub("<[^>]+>", ""):gsub(",", ""):gsub("%$", ""):match("^%s*(.-)%s*$") or ""
        if label2:match("^%d+$") then
            return tonumber(label2)
        end
    end
    local titleGui = HubCore.Path(path, "List/Title")
    if titleGui and titleGui.Text == text then
        local value2 = parseCurrencyText(HubCore.Path(path, "Buttons/Summon" .. text2 .. "Button/CurrencyFrame/AmountLabel"))
        if value2 ~= nil then
            return value2
        end
    end
    local number = parseCurrencyText(HubCore.Path(path, "Crates/List/Crates/" .. text .. "/Price/Price"))
    if text2 == 1 then
        return number
    end
    local n10OffGui = HubCore.Path(path, "Buttons/Summon10Button/10%Off")
    local n10OffGui2 = n10OffGui and tonumber(tostring(n10OffGui.Text):match("^(%d+)%% OFF!$"))
    if number and n10OffGui2 and n10OffGui2 >= 0 and n10OffGui2 <= 100 then
        local number2 = number * text2 * (100 - n10OffGui2) / 100
        if number2 % 1 == 0 then
            return number2
        end
    end
end
function HubCore.StartSummonSpend()
    HubCore.SummonSpend = { Total = 0, Unpriced = 0}
    return HubCore.SummonSpend
end
function HubCore.TrackSummonSpend(obj, number, arg, tbl)
    if type(number) == "number" and number == number and number >= 0 and number < math.huge and #tbl == arg then
        obj.Total = obj.Total + number
    else
        obj.Unpriced = obj.Unpriced + 1
    end
    return { Total = obj.Total, Unpriced = obj.Unpriced}
end
function HubCore.SummonSpendText(obj)
    obj = obj or { Total = 0, Unpriced = 1}
    local text = string.format("%.0f", obj.Total):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
    if obj.Unpriced > 0 then
        return text .. "+ (" .. obj.Unpriced .. " unpriced batches)"
    end
    return text
end
function HubCore.SendSummonWebhook(text, arg, tbl, arg2, arg3)
    if not HubConfig.WebhookEnabled or not HubConfig.WebhookSummon then
        return false, "Summon webhook disabled"
    end
    if type(text) ~= "table" or #text == 0 or #text > 100 then
        return false, "No confirmed summon results"
    end
    local tbl2, tbl3, tbl4, tbl5 = {}, {}, {}, {}
    for index, text2 in ipairs(text) do
        if type(text2) ~= "table" or type(text2.Name) ~= "string" or text2.Name == "" then
            return false, "Invalid summon result"
        end
        local tbl6 = tbl[text2.Name] or "Unknown"
        local tbl7 = tbl6 .. "\0" .. text2.Name .. "\0" .. tostring(text2.AutoSell == true)
        if not tbl4[tbl7] then
            tbl4[tbl7] = 0
            tbl5[#tbl5 + 1] = { Key = tbl7, Name = text2.Name, Rarity = tbl6, Sold = text2.AutoSell == true}
        end
        tbl4[tbl7] = tbl4[tbl7] + 1
    end
    for index2, tbl8 in ipairs(tbl5) do
        local summonText = HubCore.SummonText(tbl8.Name)
        local tbl9 = tbl4[tbl8.Key]
        tbl2[#tbl2 + 1] = "**" .. HubCore.SummonText(tbl8.Rarity) .. "** · " .. summonText .. " ×" .. tbl9 .. (tbl8.Sold and " (Auto-sold)" or "")
        if tbl8.Rarity == "Godly" then
            tbl3[#tbl3 + 1] = summonText .. (tbl9 > 1 and " x" .. tbl9 or "")
        end
    end
    local text3, value2
    if #tbl3 > 0 then
        text3 = "DAMN You Lucky Bastard. You Got " .. table.concat(tbl3, ", ") .. "!"
        local text4 = tostring(HubConfig.WebhookUserID or ""):match("^%s*(%d+)%s*$")
        if text4 and #text4 >= 15 and #text4 <= 22 then
            value2 = text4
            text3 = "<@" .. text4 .. "> " .. text3
        end
    end
    return HubCore.SendDiscord(HubConfig.WebhookURL, "Cameraman TD | Summon Results", "**Crate:** " .. HubCore.SummonText(arg2 or "Basic Crate") .. "\n**Summoned:** " .. #text .. " / " .. tostring(arg), #tbl3 > 0 and 16766720 or 5793266, { { name = "Units", value = table.concat(tbl2, "\n"):sub(1, 1024), inline = false}, { name = "Coin Spent", value = HubCore.SummonSpendText(arg3), inline = true}}, "https://i.postimg.cc/1RYRdwrS/Bo-suu-tap.jpg", { Content = text3, UserID = value2})
end
function HubCore.SummonOnce(arg)
    local summonCrate = HubConfig.SummonCrate or "Basic Crate"
    if not table.find({ "Basic Crate", "Mythic Crate"}, summonCrate) then
        return false, "Invalid summon crate"
    end
    local summonSpend = HubCore.SummonSpend or HubCore.StartSummonSpend()
    local summonCoinCost = HubCore.SummonCoinCost(summonCrate, arg)
    local summonRarities = HubCore.SummonRarities(summonCrate)
    local flag, text = HubCore.Invoke("SummonTowers", summonCrate, arg)
    if not HubCore.Running then
        return false, "Hub stopped"
    end
    if not flag then
        return false, "Summon call failed: " .. tostring(text)
    end
    if type(text) ~= "table" or #text == 0 then
        return false, "Summon not confirmed; check coins / inventory space"
    end
    local trackSummonSpend = HubCore.TrackSummonSpend(summonSpend, summonCoinCost, arg, text)
    if HubConfig.WebhookEnabled and HubConfig.WebhookSummon then
        summonRarities = HubCore.ResolveSummonRarities(text, summonCrate, summonRarities)
        local value2, value3 = HubCore.SendSummonWebhook(text, arg, summonRarities, summonCrate, trackSummonSpend)
        HubCore.WebhookStatus(value2, value3)
    end
    return true, "Summon x" .. #text .. " confirmed"
end
function HubCore.SendDiscord(arg, arg2, arg3, arg4, arg5, arg6, obj)
    arg = tostring(arg or ""):match("^%s*(.-)%s*$")
    if not HubCore.ValidWebhook(arg) then
        return false, "Enter a valid Discord webhook URL"
    end
    local requestFunction = HubCore.RequestFunction()
    if not requestFunction then
        return false, "Executor HTTP request unavailable"
    end
    local tbl = { title = arg2, description = arg3, color = arg4 or 5793266, fields = arg5, footer = { text = "Made By Nick", icon_url = "https://i.postimg.cc/HWKcyfKJ/download-(2).jpg"}}
    if DateTime then
        tbl.timestamp = DateTime.now():ToIsoDate()
    end
    if arg6 then
        tbl.image = { url = arg6}
    end
    local tbl2 = { username = "Camera TD Hub", allowed_mentions = { parse = {}}, embeds = { tbl}}
    if type(obj) == "table" then
        tbl2.content = obj.Content and tostring(obj.Content):sub(1, 2000) or nil
        local userID = obj.UserID
        if type(userID) == "string" and userID:match("^%d+$") and #userID >= 15 and #userID <= 22 then
            tbl2.allowed_mentions.users = { userID}
        end
    end
    local ok3, result3 = pcall(HttpServiceSvc.JSONEncode, HttpServiceSvc, tbl2)
    if not ok3 then
        return false, "Could not encode webhook payload"
    end
    for index = 1, 2 do
        local ok4, result4 = pcall(requestFunction, { Url = arg, Method = "POST", Headers = { ["Content-Type"] = "application/json"}, Body = result3})
        if not ok4 then
            return false, "HTTP request failed (executor/network)"
        end
        local text = type(result4) == "table" and tonumber(result4.StatusCode or result4.Status)
        if not text then
            return false, "HTTP response has no status; delivery unconfirmed"
        end
        if text >= 200 and text < 300 and result4.Success ~= false then
            return true, "HTTP " .. text
        end
        if text == 429 and index == 1 then
            local ok5, result5 = pcall(HttpServiceSvc.JSONDecode, HttpServiceSvc, result4.Body or "")
            local ok6 = ok5 and type(result5) == "table" and tonumber(result5.retry_after)
            if not ok6 or ok6 > 5 then
                return false, "Discord rate limited (HTTP 429)"
            end
            task.wait(math.max(0.1, ok6))
            if not HubCore.Running then
                return false, "Hub stopped"
            end
        else
            return false, "Discord returned HTTP " .. text
        end
    end
    return false, "Discord rate limited (HTTP 429)"
end
function HubCore.SendWebhook(arg, arg2, arg3, arg4, arg5)
    if not HubConfig.WebhookEnabled then
        return false, "Webhook is disabled"
    end
    return HubCore.SendDiscord(HubConfig.WebhookURL, arg, arg2, arg3, arg4, arg5)
end

do
    local Telegram = {}
    HubCore.Telegram = Telegram
    local function tgRequest()
        for _, fn in pairs({ http_request, request, syn and syn.request, fluxus and fluxus.request}) do
            if type(fn) == "function" then
                return fn
            end
        end
    end
    local function tgEsc(s)
        s = tostring(s or "")
        s = s:gsub("&", "&amp;")
        s = s:gsub("<", "&lt;")
        s = s:gsub(">", "&gt;")
        return s
    end
    local function tgMd(s)
        s = tostring(s or "")
        s = s:gsub("<@!?%d+>%s*", "")
        s = tgEsc(s)
        s = s:gsub("%*%*(.-)%*%*", "<b>%1</b>")
        s = s:gsub("||(.-)||", "<tg-spoiler>%1</tg-spoiler>")
        return s
    end
    local function tgStrip(s)
        s = s:gsub("<[^>]+>", "")
        s = s:gsub("&lt;", "<")
        s = s:gsub("&gt;", ">")
        s = s:gsub("&amp;", "&")
        return s
    end
    local function tgBuild(title, description, fields, extra)
        local parts = {}
        if extra and extra ~= "" then
            parts[#parts + 1] = tgMd(extra)
        end
        if title and title ~= "" then
            parts[#parts + 1] = "<b>" .. tgEsc(title) .. "</b>"
        end
        if description and description ~= "" then
            parts[#parts + 1] = tgMd(description)
        end
        if type(fields) == "table" then
            for _, f in ipairs(fields) do
                if type(f) == "table" and f.name and f.value then
                    parts[#parts + 1] = "<b>" .. tgEsc(f.name) .. "</b>\n" .. tgMd(f.value)
                end
            end
        end
        local text = table.concat(parts, "\n\n")
        local plain = false
        if #text > 4000 then
            text = tgStrip(text)
            local cut = utf8.offset(text, 4001)
            if cut then
                text = text:sub(1, cut - 1)
            end
            plain = true
        end
        return text, plain
    end
    function Telegram.Parse(url)
        if type(url) ~= "string" then
            return nil
        end
        return url:match("^%s*tg://([^@%s]+)@([^%s]+)%s*$")
    end
    function Telegram.Send(token, chatId, title, description, fields, extra)
        token = tostring(token or ""):match("^%s*(.-)%s*$")
        chatId = tostring(chatId or ""):match("^%s*(.-)%s*$")
        if not token:match("^%d+:[%w_%-]+$") then
            return false, "Invalid Telegram bot token"
        end
        if not (chatId:match("^%-?%d+$") or chatId:match("^@[%w_]+$")) then
            return false, "Invalid Telegram chat id"
        end
        local request = tgRequest()
        if not request then
            return false, "Executor HTTP request unavailable"
        end
        local text, plain = tgBuild(title, description, fields, extra)
        if text == "" then
            return false, "Empty message"
        end
        local payload = { chat_id = chatId, text = text, disable_web_page_preview = true}
        if not plain then
            payload.parse_mode = "HTML"
        end
        local http = game:GetService("HttpService")
        local okEncode, body = pcall(http.JSONEncode, http, payload)
        if not okEncode then
            return false, "Could not encode Telegram payload"
        end
        local url = "https://api.telegram.org/bot" .. token .. "/sendMessage"
        for attempt = 1, 2 do
            local ok, res = pcall(request, { Url = url, Method = "POST", Headers = { ["Content-Type"] = "application/json"}, Body = body})
            if not ok then
                return false, "HTTP request failed (executor/network)"
            end
            local status = type(res) == "table" and tonumber(res.StatusCode or res.Status)
            if not status then
                return false, "HTTP response has no status; delivery unconfirmed"
            end
            if status >= 200 and status < 300 then
                return true, "HTTP " .. status
            end
            local okDecode, data = pcall(http.JSONDecode, http, res.Body or "")
            data = okDecode and type(data) == "table" and data or {}
            if status == 429 and attempt == 1 then
                local wait = type(data.parameters) == "table" and tonumber(data.parameters.retry_after)
                if not wait or wait > 5 then
                    return false, "Telegram rate limited (HTTP 429)"
                end
                task.wait(math.max(0.1, wait))
            else

                return false, "Telegram HTTP " .. status .. (data.description and ": " .. tostring(data.description) or "")
            end
        end
        return false, "Telegram rate limited (HTTP 429)"
    end

    function Telegram.Configured()
        local token = tostring(HubConfig.TelegramToken or ""):match("^%s*(.-)%s*$")
        local chatId = tostring(HubConfig.TelegramChatID or ""):match("^%s*(.-)%s*$")
        return token:match("^%d+:[%w_%-]+$") ~= nil and (chatId:match("^%-?%d+$") ~= nil or chatId:match("^@[%w_]+$") ~= nil)
    end

    local discordSend = HubCore.SendDiscord
    function HubCore.SendDiscord(url, title, description, color, fields, image, mention)
        local token, chatId = Telegram.Parse(url)
        local extra = type(mention) == "table" and mention.Content or nil
        if token then
            return Telegram.Send(token, chatId, title, description, fields, extra)
        end
        if url == HubConfig.WebhookURL and Telegram.Configured() then
            local telegramOk, telegramReason = Telegram.Send(HubConfig.TelegramToken, HubConfig.TelegramChatID, title, description, fields, extra)
            if not HubCore.ValidWebhook(url) then
                return telegramOk, telegramReason and "Telegram: " .. tostring(telegramReason)
            end
            local discordOk, discordReason = discordSend(url, title, description, color, fields, image, mention)
            if discordOk then
                return true, discordReason
            end
            if telegramOk then
                return true, "Telegram sent; Discord failed: " .. tostring(discordReason)
            end
            return false, "Discord: " .. tostring(discordReason) .. " | Telegram: " .. tostring(telegramReason)
        end
        return discordSend(url, title, description, color, fields, image, mention)
    end
end
function HubCore.WebhookStatus(flag, arg)
    HubCore.WebhookLastStatus = { Success = flag, Reason = arg, At = os.clock()}
    HubCore.SetStatus("Webhook", (flag and "Sent: " or "Failed: ") .. tostring(arg))
    if not flag then
        warn("[Camera TD Hub] Webhook: " .. tostring(arg))
    end
end
function HubCore.AccountCoins()
    return HubCore.InventoryData and tonumber(HubCore.InventoryData.Money) or nil
end
function HubCore.AccountCandy()
    local value2 = HubCore.InventoryData and tonumber(HubCore.InventoryData.Candy)
    if value2 ~= nil then
        return value2
    end
    local crateHUD = HubCore.CrateHUD()
    return crateHUD
end
function HubCore.AccountTotalsField()
    local value2, value3 = HubCore.AccountCoins(), HubCore.AccountCandy()
    return { name = "Account Totals", value = string.format("💵 Total Coins: %s\n🍬 Total Candy: %s", value2 ~= nil and tostring(value2) or "Unavailable", value3 ~= nil and tostring(value3) or "Unavailable"), inline = false}
end
function HubCore.ActivityLogger()
    local text = tostring(HubCore.HubActiveLogger or ""):match("^%s*(.-)%s*$")
    if not HubCore.ValidWebhook(text) then
        return
    end
    genv.__CameraTDLoggerSessions = genv.__CameraTDLoggerSessions or {}
    local text2 = tostring(game.JobId) .. "/" .. localPlayer.UserId .. "/" .. text
    local obj = genv.__CameraTDLoggerSessions[text2]
    if obj and (obj.Sent or obj.Pending or os.clock() < obj.NextAt) then
        return
    end
    obj = { Pending = true, NextAt = os.clock() + 60}
    genv.__CameraTDLoggerSessions[text2] = obj
    task.spawn(function ()
        local ok3, result3, extra = pcall(function ()
            return HubCore.SendDiscord(text, "Camera TD Hub Activated", "Hub activated", 5763719)
        end)
        obj.Pending = false
        obj.Sent = ok3 and result3 == true
        HubCore.LoggerStatus = { Success = obj.Sent, Reason = ok3 and extra or "Logger request failed", At = os.clock()}
    end)
end
function HubCore.SoloGuard()
    if not HubConfig.AutoLobby or HubConfig.Players ~= 1 then
        HubCore.SoloReturning = nil
        return
    end
    if game.PlaceId ~= HubCore.MatchId or not HubConfig.AutoLobby or HubConfig.Players ~= 1 or not PlayersSvc.GetPlayers then
        return
    end
    local players = PlayersSvc:GetPlayers()
    if #players <= 1 and not HubCore.SoloReturning then
        return
    end
    if not HubCore.SoloReturning then
        HubCore.SoloReturning = true
        HubCore.SoloReturnStartedAt = os.clock()
        if HubCore.Playing then
            HubCore.StopPlayback("Solo queue violation; returning to lobby")
        end
        if HubCore.Recording then
            HubCore.StopRecord()
        end
        HubCore.Notify("Players = 1 but this match has " .. #players .. " players; returning to lobby")
        local count = #players
        HubCore.SoloWebhookPending = true
        task.spawn(function ()
            local value2, value3 = HubCore.SendWebhook("Camera TD Solo Queue Alert", "Players was set to 1, but another player entered the match. Returning this account to lobby.", 16753920, { { name = "Player", value = "||" .. localPlayer.Name .. "||", inline = true}, { name = "Match Players", value = tostring(count), inline = true}, { name = "Return Lobby", value = tostring(HubCore.LobbyId), inline = false}})
            HubCore.SoloWebhookPending = false
            HubCore.WebhookStatus(value2, value3)
        end)
    end
    if HubCore.SoloWebhookPending and os.clock() - HubCore.SoloReturnStartedAt < 8 then
        return
    end
    if os.clock() < (HubCore.Next.SoloReturn or 0) then
        return
    end
    HubCore.Next.SoloReturn = os.clock() + 15
    HubCore.QueueTeleport()
    local value4 = pcall(function ()
        game:GetService("TeleportService"):Teleport(HubCore.LobbyId, localPlayer)
    end)
    HubCore.SetStatus("Match", value4 and "Solo guard: returning to lobby" or "Solo guard: teleport failed; retrying in 15s")
end
function HubCore.ResultRewards()
    local tbl = { Exp = 0, Crates = 0}
    local statsGui = HubCore.GUI("FinalUI/Content/Stats")
    if not statsGui or not HubCore.Visible(statsGui) then
        return tbl
    end
    local function parseVisibleNumber(label)
        if not label or not HubCore.Visible(label) then
            return nil
        end
        local text = tostring(label.Text or ""):gsub(",", ""):gsub("%s", "")
        return tonumber(text:match("%d+%.?%d*"))
    end
    for index, child in ipairs(statsGui:GetChildren()) do
        if HubCore.Visible(child) then
            local holder = child:FindFirstChild("Holder")
            local number = parseVisibleNumber(HubCore.Path(holder or child, "Template/CoinAmount"))
            if child.Name:match("^FrameMoney") or child.Name:match("^FrameCoins") then
                if number ~= nil then
                    tbl.Coins = (tbl.Coins or 0) + number
                end
            elseif child.Name:match("^FrameCandy") then
                if number ~= nil then
                    tbl.Candy = (tbl.Candy or 0) + number
                end
            end
            local path = HubCore.Path(holder or child, "MainShadow")
            for index2, child2 in ipairs(path and path:GetChildren() or {}) do
                if HubCore.Visible(child2) then
                    local number2 = parseVisibleNumber(child2:FindFirstChild("CoinAmount"))
                    local mode = child2:FindFirstChild("Mode")
                    local mode2 = mode and tostring(mode.Text):lower() or ""
                    if number2 and child2.Name:lower():find("crate", 1, true) then
                        tbl.Crates = tbl.Crates + number2
                    elseif number2 and mode2:find("(exp)", 1, true) then
                        tbl.Exp = tbl.Exp + number2
                    end
                end
            end
        end
    end
    return tbl
end
function HubCore.ResultCoins()
    return HubCore.ResultRewards().Coins
end
function HubCore.MatchReport()
    local function getFinalUiText(text, arg)
        local gui = HubCore.GUI("FinalUI/Content/" .. text)
        return gui and gui.Text ~= "" and gui.Text or arg
    end
    local text2 = getFinalUiText("Content", "Match ended")
    local text3 = text2:lower():find("won", 1, true) and "Victory" or text2:lower():find("lost", 1, true) and "Defeat" or text2
    local text4 = ""
    if HubCore.ReportStartedAt then
        local number = math.floor(math.max(0, (HubCore.ReportEndedAt or os.clock()) - HubCore.ReportStartedAt) + 0.5)
        text4 = string.format("%02d:%02d", math.floor(number / 60), number % 60)
    end
    local baseGui = HubCore.Path(WorkspaceSvc, "Game/Base")
    local baseGui2 = baseGui and (baseGui:GetAttribute("Health") or baseGui:GetAttribute("HP"))
    local resultRewards = HubCore.ResultRewards()
    return { Title = "Camera TD Match Report", Description = string.format([==[
**Stage:** %s
**Mode:** %s
**Result:** %s]==], getFinalUiText("Map", HubConfig.Map):gsub("^Map:%s*", ""), getFinalUiText("Mode", HubConfig.Difficulty):gsub("^Mode:%s*", ""), text3), Color = text3 == "Victory" and 65280 or text3 == "Defeat" and 16711680 or 16776960, Fields = { { name = "Player Info", value = string.format("👤 Name: ||%s||\n❤️ Base HP: %s", localPlayer.Name, tostring(baseGui2 or "Unavailable")), inline = false}, { name = "Clear Time", value = "⏱️ " .. (text4 ~= "" and text4 or "Unavailable"), inline = true}, { name = "Match Rewards", value = string.format([==[
💵 Coins: %s
⭐ EXP: %s
📦 Crates: %s
🍬 Candy: %s]==], tostring(resultRewards.Coins or "Unavailable"), tostring(resultRewards.Exp), tostring(resultRewards.Crates), tostring(resultRewards.Candy or "Unavailable")), inline = false}, HubCore.AccountTotalsField()}}
end
HubCore.ReportRuntime = {}
function HubCore.WebhookStep(flag, arg)
    local reportRuntime = HubCore.ReportRuntime
    if not flag and arg and HubCore.Wave() > 0 and not HubCore.ReportStartedAt then
        HubCore.ReportStartedAt = os.clock()
    end
    if not flag then
        return true
    end
    if not reportRuntime.Final then
        reportRuntime.Final = true
        reportRuntime.At = os.clock()
        HubCore.ReportEndedAt = os.clock()
    end
    if not HubConfig.WebhookEnabled or not HubConfig.WebhookMatchEnd then
        return true
    end
    local text = tostring(game.JobId) .. "/" .. localPlayer.UserId .. "/" .. tostring(HubCore.CurrentMap()) .. "/" .. tostring(HubCore.RoundId or (genv.__CameraTDRoundCounters or {})[tostring(game.PlaceId) .. "/" .. tostring(game.JobId)] or 0) .. "/" .. HubConfig.WebhookURL
    genv.__CameraTDMatchReports = genv.__CameraTDMatchReports or {}
    if genv.__CameraTDMatchReports[text] and not reportRuntime.Pending then
        return true
    end
    if not reportRuntime.Requested then
        if os.clock() - reportRuntime.At < 0.75 then
            return false
        end
        local resultRewards = HubCore.ResultRewards()
        local text2 = table.concat({ tostring(resultRewards.Coins), tostring(resultRewards.Candy), tostring(resultRewards.Exp), tostring(resultRewards.Crates)}, "/")
        if text2 ~= reportRuntime.RewardSignature then
            reportRuntime.RewardSignature, reportRuntime.RewardChangedAt = text2, os.clock()
        end
        if os.clock() - reportRuntime.At < 3 then
            if resultRewards.Coins == nil or os.clock() - reportRuntime.RewardChangedAt < 0.35 then
                return false
            end
        end
        local matchReport = HubCore.MatchReport()
        reportRuntime.Requested = true
        reportRuntime.Pending = true
        reportRuntime.SendAt = os.clock()
        genv.__CameraTDMatchReports[text] = true
        task.spawn(function ()
            local value2, value3 = HubCore.SendWebhook(matchReport.Title, matchReport.Description, matchReport.Color, matchReport.Fields, "https://i.postimg.cc/1RYRdwrS/Bo-suu-tap.jpg")
            reportRuntime.Pending = false
            reportRuntime.Sent = value2
            HubCore.WebhookStatus(value2, value3)
        end)
    end
    return not reportRuntime.Pending or os.clock() - reportRuntime.SendAt >= 8
end
HubCore.Close = { Enabled = false, Hitboxes = {}, SendSerial = 0, ClickSerial = 0, LastClickAt = - 10}
function HubCore.CloseRefresh()
    local close = HubCore.Close
    close.TowerRoot, close.PathRoot = HubCore.Path(WorkspaceSvc, "Game/Towers"), HubCore.Path(WorkspaceSvc, "Game/Paths")
    local placingTowersGui = HubCore.Path(WorkspaceSvc, "Game/PlacingTowers")
    close.Preview, close.Hitboxes = nil, {}
    if placingTowersGui then
        for index, child in ipairs(placingTowersGui:GetChildren()) do
            local spawningHitbox = child:FindFirstChild("SpawningHitbox", true)
            if spawningHitbox then
                close.Hitboxes[spawningHitbox] = true
                close.Preview = child
            end
        end
    end
end
function HubCore.CloseFilter(tbl)
    local obj, value2 = HubCore.Close, {}
    for index, tbl2 in ipairs(tbl) do
        if not (typeof(tbl2) == "Instance" and (obj.TowerRoot and tbl2:IsDescendantOf(obj.TowerRoot) or obj.PathRoot and tbl2:IsDescendantOf(obj.PathRoot))) then
            table.insert(value2, tbl2)
        end
    end
    return value2
end
function HubCore.CloseClick()
    local close = HubCore.Close
    if not HubCore.Running or HubCore.Playing or not close.Enabled or game.PlaceId ~= HubCore.MatchId or HubCore.SoloReturning or HubCore.Final() or os.clock() - close.LastClickAt < .5 then
        return
    end
    HubCore.CloseRefresh()
    local preview = close.Preview
    if not preview or not preview:IsA("Model") then
        return
    end
    close.LastClickAt = os.clock()
    close.ClickSerial = close.ClickSerial + 1
    local value2, value3 = close.ClickSerial, close.SendSerial
    local instance, text = preview:GetPivot(), preview.Name
    local units = HubCore.Units and HubCore.Units[text]
    if units and type(units.Name) == "string" then
        text = units.Name
    end
    local lastSend = close.LastSend
    if lastSend and os.clock() - lastSend.At < .1 and lastSend.Name == text and typeof(lastSend.Pos) == "Vector3" and (lastSend.Pos - instance.Position).Magnitude < .1 then
        return
    end
    task.delay(.15, function ()
        if not HubCore.Running or HubCore.Playing or not close.Enabled or game.PlaceId ~= HubCore.MatchId or HubCore.SoloReturning or HubCore.Final() or close.ClickSerial ~= value2 or close.SendSerial ~= value3 then
            return
        end
        HubCore.CloseRefresh()
        if close.Preview ~= preview then
            return
        end
        local obj
        for index, equipped in ipairs(HubCore.Equipped()) do
            if equipped.Name == text then
                obj = equipped
                break
            end
        end
        if not obj then
            HubCore.Notify("Cannot resolve equipped unit: " .. text)
            return
        end
        close.FallbackThread = coroutine.running()
        HubCore.Fire("TowerAdd", { Name = text, UnitId = obj.Id, Pos = instance.Position, CFrame = instance})
        close.FallbackThread = nil
    end)
end
function HubCore.SetClosePlacement(flag)
    local close = HubCore.Close
    close.Enabled = false
    close.ClickSerial = close.ClickSerial + 1
    if not flag or game.PlaceId ~= HubCore.MatchId then
        return
    end
    if type(hookmetamethod) ~= "function" or type(getnamecallmethod) ~= "function" or type(getcallingscript) ~= "function" then
        HubCore.Notify("Close + Path requires executor hook and caller support")
        return
    end
    if genv.CameraTDCloseTest and genv.CameraTDCloseTest.Stop then
        pcall(genv.CameraTDCloseTest.Stop)
    end
    HubCore.Hydrate()
    HubCore.CloseRefresh()
    close.Add, close.UI = HubCore.Remote("TowerAdd"), HubCore.Path(ReplicatedStorageSvc, "ModuleLoader/Client/UI")
    if not close.Add or not close.UI then
        HubCore.Notify("Close + Path: game placement UI unavailable")
        return
    end
    HubCore.InstallRecorderHook()
    local obj = genv.__CameraTDHubPlacementRouter
    if obj and obj.Version ~= 3 then
        obj.Hub = nil
        obj = nil
    end
    if not obj then
        obj = { Version = 3}
        genv.__CameraTDHubPlacementRouter = obj
        local callback
        local callback2 = function (self, ...)
            local hub = obj.Hub
            if not hub or not hub.Running or not hub.Close.Enabled then
                return callback(self, ...)
            end
            local close2 = hub.Close
            if self ~= close2.Add and self ~= WorkspaceSvc then
                return callback(self, ...)
            end
            local flag2
            do
                local value2 = getnamecallmethod()
                if self == close2.Add and value2 == "FireServer" then
                    local obj2 = ...
                    if type(obj2) == "table" then
                        local fallbackSend = close2.FallbackSend
                        if close2.FallbackThread ~= coroutine.running() and fallbackSend and fallbackSend.Click == close2.ClickSerial and os.clock() - fallbackSend.At < .5 and obj2.Name == fallbackSend.Name and obj2.UnitId == fallbackSend.UnitId and typeof(obj2.Pos) == "Vector3" and typeof(fallbackSend.Pos) == "Vector3" and (obj2.Pos - fallbackSend.Pos).Magnitude < .1 then
                            close2.SuppressedEchoes = (close2.SuppressedEchoes or 0) + 1
                            return
                        end
                        close2.LastSend = { At = os.clock(), Name = obj2.Name, UnitId = obj2.UnitId, Pos = obj2.Pos}
                        if close2.FallbackThread == coroutine.running() then
                            close2.FallbackSend = { At = os.clock(), Click = close2.ClickSerial, Name = obj2.Name, UnitId = obj2.UnitId, Pos = obj2.Pos}
                        end
                    end
                    close2.SendSerial = close2.SendSerial + 1
                elseif self == WorkspaceSvc and value2 == "GetPartsInPart" and close2.Hitboxes[...] then
                    flag2 = getcallingscript() == close2.UI and not (type(checkcaller) == "function" and checkcaller())
                end
            end
            if not flag2 then
                return callback(self, ...)
            end
            local pack = table.pack(callback(self, ...))
            if flag2 and type(pack[1]) == "table" then
                pack[1] = hub.CloseFilter(pack[1])
            end
            return table.unpack(pack, 1, pack.n)
        end
        local ok3, result3 = pcall(hookmetamethod, game, "__namecall", type(newcclosure) == "function" and newcclosure(callback2) or callback2)
        if not ok3 then
            genv.__CameraTDHubPlacementRouter = nil
            HubCore.Notify("Close + Path hook unavailable")
            return
        end
        callback = result3
    end
    obj.Hub = HubCore
    if not close.InputBound then
        close.InputBound = true
        HubCore.Connect(game:GetService("UserInputService").InputBegan, function (obj3, flag3)
            if not flag3 and obj3.UserInputType == Enum.UserInputType.MouseButton1 then
                HubCore.CloseClick()
            end
        end)
    end
    close.Enabled = true
end
HubCore.HiddenNameOriginal = setmetatable({}, { __mode = "k"})
HubCore.NameConnections = {}
function HubCore.RestoreHiddenName()
    for key, hiddenNameOriginal in pairs(HubCore.HiddenNameOriginal) do
        pcall(function ()
            for key2, hiddenNameOriginal2 in pairs(hiddenNameOriginal) do
                key[key2] = hiddenNameOriginal2
            end
        end)
    end
    HubCore.HiddenNameOriginal = setmetatable({}, { __mode = "k"})
end
function HubCore.HideOwnNameObject(instance)
    if not HubCore.Running or not HubConfig.HideName then
        return
    end
    if instance:IsA("Humanoid") then
        if not HubCore.HiddenNameOriginal[instance] then
            HubCore.HiddenNameOriginal[instance] = { DisplayName = instance.DisplayName, NameDisplayDistance = instance.NameDisplayDistance}
        end
        instance.NameDisplayDistance = 0
        instance.DisplayName = ""
    elseif (instance:IsA("TextLabel") or instance:IsA("TextButton")) and instance:FindFirstAncestorWhichIsA("BillboardGui") then
        local text = instance.Text
        if text:find(localPlayer.Name, 1, true) or localPlayer.DisplayName ~= "" and text:find(localPlayer.DisplayName, 1, true) then
            if not HubCore.HiddenNameOriginal[instance] then
                HubCore.HiddenNameOriginal[instance] = { Visible = instance.Visible, TextTransparency = instance.TextTransparency, TextStrokeTransparency = instance.TextStrokeTransparency}
            end
            instance.Visible = false
            instance.TextTransparency, instance.TextStrokeTransparency = 1, 1
        end
    end
end
function HubCore.IsOwnNameText(arg)
    local text = tostring(arg or ""):match("^%s*(.-)%s*$")
    return text == localPlayer.Name or type(localPlayer.DisplayName) == "string" and localPlayer.DisplayName ~= "" and text == localPlayer.DisplayName or text == "@" .. localPlayer.Name
end
function HubCore.WatchOwnNameLabel(instance)
    if not (instance:IsA("TextLabel") or instance:IsA("TextButton")) or HubCore.NameWatched[instance] then
        return
    end
    local text = instance.Name:lower()
    if text ~= "ownername" and not text:find("playername", 1, true) and not text:find("displayname", 1, true) and not HubCore.IsOwnNameText(instance.Text) then
        return
    end
    HubCore.NameWatched[instance] = true
    local function hideOwnNameLabel()
        if not HubCore.Running or not HubConfig.HideName then
            return
        end
        local hiddenNameOriginal = HubCore.HiddenNameOriginal[instance]
        if HubCore.IsOwnNameText(instance.Text) then
            if not hiddenNameOriginal then
                hiddenNameOriginal = { Visible = instance.Visible, TextTransparency = instance.TextTransparency, TextStrokeTransparency = instance.TextStrokeTransparency}
                HubCore.HiddenNameOriginal[instance] = hiddenNameOriginal
            end
            instance.Visible = false
            instance.TextTransparency, instance.TextStrokeTransparency = 1, 1
        elseif hiddenNameOriginal then
            instance.Visible = hiddenNameOriginal.Visible
            instance.TextTransparency, instance.TextStrokeTransparency = hiddenNameOriginal.TextTransparency, hiddenNameOriginal.TextStrokeTransparency
            HubCore.HiddenNameOriginal[instance] = nil
        end
    end
    table.insert(HubCore.NameConnections, instance:GetPropertyChangedSignal("Text"):Connect(hideOwnNameLabel))
    hideOwnNameLabel()
end
function HubCore.BindHiddenNameCharacter(instance)
    for index, nameConnection in ipairs(HubCore.NameConnections) do
        nameConnection:Disconnect()
    end
    HubCore.NameConnections = {}
    HubCore.NameWatched = setmetatable({}, { __mode = "k"})
    HubCore.RestoreHiddenName()
    if not HubConfig.HideName then
        return
    end
    if instance then
        for index2, descendant in ipairs(instance:GetDescendants()) do
            HubCore.HideOwnNameObject(descendant)
        end
        table.insert(HubCore.NameConnections, instance.DescendantAdded:Connect(function (arg)
            if HubCore.Running and HubConfig.HideName and localPlayer.Character == instance then
                HubCore.HideOwnNameObject(arg)
            end
        end))
    end
    local function watchPlayerGuiNames(instance2)
        if not instance2 then
            return
        end
        for index3, descendant2 in ipairs(instance2:GetDescendants()) do
            HubCore.WatchOwnNameLabel(descendant2)
        end
        table.insert(HubCore.NameConnections, instance2.DescendantAdded:Connect(function (arg2)
            if HubCore.Running and HubConfig.HideName then
                HubCore.WatchOwnNameLabel(arg2)
            end
        end))
    end
    watchPlayerGuiNames(localPlayer:FindFirstChild("PlayerGui"))
    pcall(function ()
        watchPlayerGuiNames(game:GetService("CoreGui"))
    end)
end
function HubCore.SetHideName(arg)
    HubConfig.HideName = arg == true
    HubCore.BindHiddenNameCharacter(HubConfig.HideName and localPlayer.Character or nil)
end
function HubCore.StartRejoin()
    if HubCore.Rejoin then
        return
    end
    if genv.CameraTDRejoinTest and genv.CameraTDRejoinTest.Stop then
        pcall(genv.CameraTDRejoinTest.Stop)
    end
    local tbl = { Active = true, Armed = true, Attempts = 0, Connections = {}, At = os.clock(), Sequence = 0}
    HubCore.Rejoin = tbl
    local players = game:GetService("Players")
    local localPlayer2 = players.LocalPlayer
    local TeleportServiceSvc = game:GetService("TeleportService")
    local HttpServiceSvc2 = game:GetService("HttpService")
    local CoreGuiSvc = game:GetService("CoreGui")
    local number = 132929771812494
    local tbl2 = { 3, 10, 20}
    function tbl.Log(arg, arg2)
        tbl.LastEvent = { Type = arg, Data = arg2, At = os.clock()}
    end
    function tbl.Status(arg3)
        tbl.Message = arg3
    end
    function tbl.Connect(connection, callback)
        table.insert(tbl.Connections, connection:Connect(function (...)
            if tbl.Active then
                callback(...)
            end
        end))
    end
    local function isGuiChainVisible(instance)
        while instance do
            if instance:IsA("GuiObject") and not instance.Visible then
                return false
            end
            if instance:IsA("ScreenGui") and not instance.Enabled then
                return false
            end
            instance = instance.Parent
        end
        return true
    end
    function tbl.ReadPrompt()
        local robloxPromptGui = CoreGuiSvc:FindFirstChild("RobloxPromptGui")
        local robloxPromptGui2 = robloxPromptGui and robloxPromptGui:FindFirstChild("promptOverlay")
        local robloxPromptGui3 = robloxPromptGui2 and robloxPromptGui2:FindFirstChild("ErrorPrompt")
        robloxPromptGui3 = robloxPromptGui3 or robloxPromptGui and robloxPromptGui:FindFirstChild("ErrorPrompt", true)
        robloxPromptGui3 = robloxPromptGui3 or robloxPromptGui2 or robloxPromptGui
        if not robloxPromptGui3 or not isGuiChainVisible(robloxPromptGui3) then
            return nil
        end
        local tbl3 = {}
        for index, descendant in ipairs(robloxPromptGui3:GetDescendants()) do
            if descendant:IsA("TextLabel") and isGuiChainVisible(descendant) and descendant.Text ~= "" then
                table.insert(tbl3, descendant.Text)
            end
        end
        return #tbl3 > 0 and table.concat(tbl3, " | ") or nil
    end
    function tbl.ConnectionError(text)
        if type(text) ~= "string" then
            return false
        end
        local text2 = text:lower()
        if text2:match("error%s*code%s*:%s*%d+") then
            return true
        end
        return text2:find("disconnect", 1, true) ~= nil or text2:find("reconnect", 1, true) ~= nil or text2:find("lost connection", 1, true) ~= nil or text2:find("connection lost", 1, true) ~= nil or text2:find("internet connection", 1, true) ~= nil or text2:find("connection timed out", 1, true) ~= nil
    end
    function tbl.Reset()
        tbl.Prompt, tbl.Attempts, tbl.NextAt, tbl.InFlight = nil, 0, nil, nil
    end
    function tbl.Step(flag)
        if not tbl.Active or not tbl.Armed then
            return
        end
        local now = os.clock()
        if tbl.InFlight then
            if now - tbl.InFlight < 45 then
                return
            end
            tbl.InFlight = nil
            tbl.Log("teleport_unconfirmed", { attempt = tbl.Attempts})
        end
        if not flag then
            if tbl.Prompt then
                tbl.Reset()
                tbl.Log("prompt_closed", {})
            end
            tbl.Status("Monitoring connection")
            return
        end
        if not tbl.ConnectionError(flag) then
            if tbl.Prompt then
                tbl.Reset()
            end
            tbl.Status("Prompt detected; no reconnect required")
            return
        end
        if not tbl.Prompt then
            tbl.Prompt = flag
            tbl.Attempts = 0
            tbl.NextAt = now + tbl2[1]
            tbl.Log("disconnect_detected", { prompt = flag})
        end
        if tbl.Attempts >= #tbl2 then
            tbl.Status("Retry limit reached. See test log.")
            return
        end
        if now < tbl.NextAt then
            tbl.Status("Lobby retry " .. tbl.Attempts + 1 .. "/3 in " .. math.ceil(tbl.NextAt - now) .. "s")
            return
        end
        tbl.Attempts = tbl.Attempts + 1
        tbl.NextAt = now + (tbl2[tbl.Attempts + 1] or 30)
        tbl.Log("rejoin_attempt", { attempt = tbl.Attempts, placeId = number})
        local cameraTDHub = genv.CameraTDHub
        if cameraTDHub and cameraTDHub.Running and cameraTDHub.QueueTeleport then
            pcall(cameraTDHub.QueueTeleport)
        end
        local ok3, result3 = pcall(function ()
            TeleportServiceSvc:Teleport(number, localPlayer2)
        end)
        if not ok3 then
            tbl.Log("teleport_call_error", { attempt = tbl.Attempts, error = tostring(result3)})
            tbl.Status("Teleport call failed; waiting for next retry")
        else
            tbl.Status("Lobby request sent; awaiting teleport")
        end
    end
    function tbl.Stop()
        if not tbl.Active then
            return
        end
        tbl.Active, tbl.Armed = false, false
        for index2, connection2 in ipairs(tbl.Connections) do
            connection2:Disconnect()
        end
        tbl.Log("stopped", { attempts = tbl.Attempts})
    end
    tbl.Connect(TeleportServiceSvc.TeleportInitFailed, function (arg4, arg5, arg6, arg7)
        if arg4 ~= localPlayer2 or arg7 ~= number or tbl.Attempts == 0 then
            return
        end
        tbl.InFlight = nil
        tbl.Log("teleport_init_failed", { result = tostring(arg5), message = tostring(arg6), attempt = tbl.Attempts})
    end)
    tbl.Connect(localPlayer2.OnTeleport, function (arg8)
        if tbl.Attempts == 0 then
            return
        end
        tbl.Log("teleport_state", { state = tostring(arg8)})
        if arg8 == Enum.TeleportState.Started or arg8 == Enum.TeleportState.InProgress then
            tbl.InFlight = tbl.InFlight or os.clock()
            tbl.Status("Teleporting to lobby")
        elseif arg8 == Enum.TeleportState.Failed then
            tbl.InFlight = nil
        end
    end)
    task.spawn(function ()
        while HubCore.Running and tbl.Active do
            local ok4, result4 = pcall(tbl.ReadPrompt)
            if ok4 then
                local ok5, result5 = pcall(tbl.Step, result4)
                if not ok5 then
                    tbl.Log("monitor_error", { error = tostring(result5)})
                end
            else
                tbl.Log("prompt_read_error", { error = tostring(result4)})
            end
            task.wait(1)
        end
    end)
end
function HubCore.Destroy()
    HubCore.SetGameNotificationsHidden(false)
    if HubCore.BlackScreenController then
        HubCore.BlackScreenController.Destroy()
    end
    if HubCore.HideUserController then
        HubCore.HideUserController.Destroy()
    end
    if not HubCore.Running then
        return
    end
    if HubCore.Recording then
        HubCore.StopRecord()
    end
    HubCore.CancelJoinWalk()
    HubCore.JoinWalkExit = nil
    HubCore.SetHideName(false)
    if HubCore.Rejoin then
        HubCore.Rejoin.Stop()
    end
    HubCore.SetRemoveVisuals(false)
    HubCore.Running = false
    if HubCore.Close then
        HubCore.Close.Enabled = false
        HubCore.Close.ClickSerial = HubCore.Close.ClickSerial + 1
    end
    HubCore.Serial = HubCore.Serial + 1
    HubCore.Playing = false
    for index, connection in ipairs(HubCore.Connections) do
        connection:Disconnect()
    end
    if HubCore.Auto then
        for index2, mapConnectionsor in ipairs(HubCore.Auto.MapConnections or {}) do
            mapConnectionsor:Disconnect()
        end
    end
    HubCore.FPS(false)
    HubCore.ClearAutoVisual()
    local obj = genv.__CameraTDRecorderRouter
    if obj and obj.Hub == HubCore then
        obj.Hub = nil
    end
    if HubCore.Window then
        pcall(function ()
            HubCore.Window:Destroy()
        end)
    end
end
StartupMarks.SetupReady = os.clock()
HubCore.BindRemotes()
do
    local read = HubCore.Read(HubCore.File(HubConfig.Profile))
    if HubCore.ValidProfile(read) then
        HubCore.LoadedProfile = read
        HubCore.LearnProfileCosts(read)
    end
end
HubCore.LoadTimes = { StartedAt = os.clock()}
StartupMarks.ProfileReady = os.clock()
HubCore.LumenURL = "https://raw.githubusercontent.com/fvfg2011/Lumen/main/"
-- Russian texts of the hub. A tab / card whose English Title or Desc is listed here follows the language chosen in Lumen's settings.
-- To add a language: HubCore.Ru2 = { ["Lobby"] = "..." } in the same way and register it with UI:AddLanguage.
HubCore.Ru = {
    ["Lobby"] = "Лобби",
    ["Macros"] = "Макросы",
    ["Match"] = "Матч",
    ["Auto Play"] = "Автоигра",
    ["Webhook"] = "Вебхук",
    ["Misc"] = "Разное",
    ["Black Screen"] = "Чёрный экран",
    ["Display"] = "Экран",
    ["Black overlay with a visible Disable button. Turns off 3D rendering when supported."] = "Чёрное покрытие с видимой кнопкой отключения. Отключает 3D-отрисовку, если это поддерживается.",
    ["Play"] = "Игра",
    ["Players"] = "Игроки",
    ["Minimum number of players required to start the match."] = "Минимум игроков, нужных для начала матча.",
    ["Map"] = "Карта",
    ["Modifier"] = "Модификатор",
    ["Method"] = "Способ",
    ["Movement used to reach the elevator."] = "Как добираться до лифта.",
    ["Auto Join & Start"] = "Автовход и старт",
    ["Auto Summon"] = "Автопризыв",
    ["Crate"] = "Ящик",
    ["Amount"] = "Количество",
    ["Summon Delay"] = "Задержка призыва",
    ["Auto Sell Unit In Inventory"] = "Автопродажа юнитов из инвентаря",
    ["Inventory Sell State"] = "Состояние продажи",
    ["Select a unit, then choose an action. Equipped/locked copies are skipped."] = "Выбери юнита, затем действие. Надетые и заблокированные копии пропускаются.",
    ["Select Inventory Unit"] = "Выбрать юнита из инвентаря",
    ["Selected Unit"] = "Выбранный юнит",
    ["None"] = "Нет",
    ["Crates"] = "Ящики",
    ["Crate State"] = "Состояние ящиков",
    ["Auto Buy / Open is off."] = "Автопокупка и открытие выключены.",
    ["Buy Amount"] = "Сколько покупать",
    ["Auto Buy Halloween Crate"] = "Автопокупка ящика Хэллоуина",
    ["Buy with Candy when affordable."] = "Покупать за конфеты, когда хватает.",
    ["Open Crate"] = "Открыть ящик",
    ["Refresh Crate List"] = "Обновить список ящиков",
    ["Open Amount"] = "Сколько открывать",
    ["Crate Delay"] = "Задержка ящиков",
    ["Auto Open Crate"] = "Автооткрытие ящиков",
    ["Open owned crates. Needs inventory space."] = "Открывать имеющиеся ящики. Нужно место в инвентаре.",
    ["Pre-match Vote"] = "Голосование перед матчем",
    ["Difficulty"] = "Сложность",
    ["Auto Vote Difficulty"] = "Автоголосование за сложность",
    ["Wave"] = "Волна",
    ["Auto Skip Waves"] = "Автопропуск волн",
    ["Stop Auto Skip At"] = "Остановить пропуск на",
    ["Pause on listed waves until Intermission. Separate waves with commas."] = "Пауза на указанных волнах до антракта. Волны через запятую.",
    ["Auto Speed Scale"] = "Авто-скорость",
    ["Speed Scale"] = "Скорость",
    ["Auto Sell"] = "Автопродажа",
    ["Auto Sell All Farm On Wave"] = "Продать всю ферму на волне",
    ["Sell At Wave"] = "Продать на волне",
    ["Sell Delay"] = "Задержка продажи",
    ["Match End"] = "Конец матча",
    ["After Match"] = "После матча",
    ["Macro State"] = "Состояние макроса",
    ["State: Idle"] = "Состояние: ожидание",
    ["Ready to record or play back a macro."] = "Готов записывать или воспроизводить макрос.",
    ["Live match"] = "Текущий матч",
    ["Waiting for match data."] = "Ждём данные матча.",
    ["Recorded actions: 0"] = "Записано действий: 0",
    ["No macro actions loaded."] = "Действия макроса не загружены.",
    ["Create Macro"] = "Название макроса",
    ["Create New Macro"] = "Создать новый макрос",
    ["Select Macro"] = "Выбрать макрос",
    ["Delete Selected Macro"] = "Удалить выбранный макрос",
    ["Playback Mode"] = "Режим воспроизведения",
    ["Time: recorded timeline. Hybrid: wave + recorded timing. Money: current funds. All wait for server confirmation."] = "Время: по записанной шкале. Гибрид: волна и записанное время. Деньги: по текущим средствам. Везде ждём подтверждения сервера.",
    ["Record"] = "Запись",
    ["Auto Playback Every Match"] = "Автовоспроизведение в каждом матче",
    ["Import Macro"] = "Импорт макроса",
    ["Macro Name"] = "Название макроса",
    ["Enter Any Names You Want"] = "Впиши любое название",
    ["Macro JSON"] = "JSON макроса",
    ["Paste JSON or a Discord file link."] = "Вставь JSON или ссылку на файл из Discord.",
    ["Auto Play State"] = "Состояние автоигры",
    ["Auto Play is disabled."] = "Автоигра выключена.",
    ["Auto Place"] = "Автоставить",
    ["Auto Upgrade"] = "Автоулучшение",
    ["Automatically place towers. Waits for macro completion when Auto Playback is enabled."] = "Автоматически ставит башни. Ждёт конца макроса, если включено автовоспроизведение.",
    ["Automatically upgrade towers. Waits for macro completion when Auto Playback is enabled."] = "Автоматически улучшает башни. Ждёт конца макроса, если включено автовоспроизведение.",
    ["Auto Play Delay"] = "Задержка автоигры",
    ["Placement Range"] = "Диапазон установки",
    ["Position along the path: 0% at the entrance, 100% at the base."] = "Место вдоль пути: 0% у входа, 100% у базы.",
    ["Show Placement Range"] = "Показывать диапазон установки",
    ["Discord Webhook"] = "Вебхук Discord",
    ["Webhook URL"] = "Ссылка вебхука",
    ["Enable Webhook"] = "Включить вебхук",
    ["Notify On Match End"] = "Сообщать о конце матча",
    ["Notify On Summon"] = "Сообщать о призыве",
    ["Discord User ID"] = "ID пользователя Discord",
    ["Ping this user for Godly summons."] = "Упоминать этого пользователя при призыве Godly.",
    ["Telegram"] = "Telegram",
    ["Telegram Bot Token"] = "Токен Telegram-бота",
    ["Create a bot with @BotFather. Filled together with Chat ID, reports are also sent to Telegram."] = "Создай бота через @BotFather. Если заполнен вместе с ID чата, отчёты приходят и в Telegram.",
    ["Telegram Chat ID"] = "ID чата Telegram",
    ["Your user, group or channel ID (123456789, -1001234567890 or @channelname). Start the bot first."] = "ID твоего профиля, группы или канала (123456789, -1001234567890 или @channelname). Сначала запусти бота.",
    ["Test"] = "Проверка",
    ["Send Test Webhook"] = "Отправить тестовый вебхук",
    ["Interface Theme"] = "Тема интерфейса",
    ["Theme"] = "Тема",
    ["Base color theme of the hub window."] = "Основная цветовая тема окна хаба.",
    ["Reset Theme"] = "Сбросить тему",
    ["Automation"] = "Автоматизация",
    ["Auto Execute"] = "Автозапуск",
    ["Automatically reload the hub after teleporting."] = "Автоматически перезапускать хаб после телепорта.",
    ["PlaceAnywhere (ONLY ON PATH NOT STACK)"] = "Ставить где угодно (ТОЛЬКО НА ПУТИ, НЕ В СТОПКУ)",
    ["Enable additional tower placement locations where supported by the game."] = "Включает дополнительные места для башен, если игра это поддерживает.",
    ["Auto Claim"] = "Автосбор наград",
    ["Battlepass State"] = "Состояние боевого пропуска",
    ["Claims available rewards only."] = "Забирает только доступные награды.",
    ["Auto Claim Battlepass"] = "Автосбор боевого пропуска",
    ["Claim normal rewards when ready."] = "Забирать обычные награды, когда готовы.",
    ["Auto Claim Premium"] = "Автосбор премиума",
    ["Requires Premium Pass."] = "Нужен премиум-пропуск.",
    ["Auto Claim Halloween Quests"] = "Автосбор заданий Хэллоуина",
    ["Claim completed Halloween missions."] = "Забирать выполненные задания Хэллоуина.",
    ["Auto Claim Daily Quests"] = "Автосбор ежедневных заданий",
    ["Privacy"] = "Приватность",
    ["Hide Name"] = "Скрыть имя",
    ["Hide your name in character tags, tower details, and the player list."] = "Скрывает твоё имя в табличках персонажей, описании башен и списке игроков.",
    ["Hide User"] = "Скрыть игрока",
    ["Red body, face only. Local view."] = "Красное тело, только лицо. Видно только тебе.",
    ["Performance"] = "Производительность",
    ["Turn Off Game Notification"] = "Отключить уведомления игры",
    ["Hide game notifications, including waves, speed, skip and farm donations."] = "Скрывает уведомления игры: волны, скорость, пропуск и пожертвования на ферму.",
    ["FPS Boost"] = "Повышение FPS",
    ["Reduce visual effects to improve performance."] = "Уменьшает визуальные эффекты для лучшей производительности.",
    ["Remove Visual Method"] = "Способ удаления эффектов",
    ["Remove Visual"] = "Удалять эффекты",
    ["Normal keeps units and HP. Full hides combat visuals."] = "Обычный оставляет юнитов и HP. Полный скрывает боевые эффекты.",
    ["Anti-AFK"] = "Анти-AFK",
    ["Session Stats"] = "Статистика сессии",
    ["Counted from the first match until you press Reset. Kept between teleports."] = "Считается с первого матча, пока не нажмёшь «Сбросить». Сохраняется между телепортами.",
    ["Working time: 00:00:00"] = "Время работы: 00:00:00",
    ["Time since the stats were started"] = "Время с начала подсчёта",
    ["Matches: 0 | Wins: 0 | Losses: 0"] = "Матчей: 0 | Побед: 0 | Поражений: 0",
    ["Result is read from the end screen"] = "Результат берётся с экрана конца матча",
    ["Win rate: - | Matches/hour: -"] = "Процент побед: - | Матчей в час: -",
    ["Calculated from the working time"] = "Считается по времени работы",
    ["Coins: +0 | Candy: +0 | Exp: +0 | Crates: +0"] = "Монеты: +0 | Конфеты: +0 | Опыт: +0 | Ящики: +0",
    ["Rewards shown on the end screen"] = "Награды с экрана конца матча",
    ["Coins/hour: - | Candy/hour: - | Exp/hour: -"] = "Монеты/час: - | Конфеты/час: - | Опыт/час: -",
    ["Settles like Matches/hour: total divided by working time"] = "Как и «Матчей в час»: сумма делится на время работы",
    ["Reset Stats"] = "Сбросить статистику",
    ["Start counting from zero"] = "Начать подсчёт с нуля",
    ["Replay Status"] = "Состояние повтора",
    ["What After Match = Replay is doing right now (Match tab, Match End)."] = "Что сейчас делает «После матча = Replay» (вкладка Матч, Конец матча).",
    ["State: idle"] = "Состояние: ожидание",
    ["Current step"] = "Текущий шаг",
    ["Next action: -"] = "Следующее действие: -",
    ["Time until Cancel / lobby return"] = "Время до отмены или возврата в лобби",
    ["Retry: -"] = "Повтор: -",
    ["Delay before Cancel, attempts before lobby"] = "Задержка перед отменой, попыток до возврата в лобби",
    ["Startup Checks"] = "Проверки при запуске",
    ["Checking"] = "Проверяем",
    ["Run Checks Again"] = "Проверить снова",
    ["Refresh the list"] = "Обновить список"
}
function HubCore.DefaultLanguage()
    local ok, locale = pcall(function ()
        return game:GetService("LocalizationService").RobloxLocaleId
    end)
    locale = ok and tostring(locale):lower() or "en"
    if locale:sub(1, 2) == "ru" or locale:sub(1, 2) == "uk" or locale:sub(1, 2) == "be" then
        return "ru"
    end
    return "en"
end
function HubCore.InstallRu(UI)
    if type(UI) ~= "table" or UI.HubRuInstalled or not UI.TabClass or not UI.ElementClass or not UI.Tr then
        return
    end
    UI.HubRuInstalled = true
    local Ru = HubCore.Ru
    local function pair(text)
        if type(text) == "string" and Ru[text] then
            return { en = text, ru = Ru[text] }
        end
        return text
    end
    local function localize(config)
        if type(config) == "table" then
            config.Title = pair(config.Title)
            config.Desc = pair(config.Desc)
        end
        return config
    end
    for _, name in ipairs({ "Tab", "Section", "Paragraph", "Button", "Toggle", "Slider", "Input", "Dropdown", "Colorpicker", "Keybind" }) do
        local original = UI.TabClass[name]
        if type(original) == "function" then
            UI.TabClass[name] = function (self, config, ...)
                return original(self, localize(config), ...)
            end
        end
    end
    for _, name in ipairs({ "SetTitle", "SetDesc" }) do
        local original = UI.ElementClass[name]
        if type(original) == "function" then
            UI.ElementClass[name] = function (self, text, ...)
                return original(self, pair(text), ...)
            end
        end
    end
    local createWindow = UI.CreateWindow
    UI.CreateWindow = function (self, config)
        local window = createWindow(self, config)
        local originalTab = window.Tab
        window.Tab = function (selfWindow, tabConfig, ...)
            return originalTab(selfWindow, localize(tabConfig), ...)
        end
        return window
    end
end
function HubCore.LoadWindUI()
    local libraryPath = HubCore.DataFolder .. "/Lumen.lua"
    local iconsPath = HubCore.DataFolder .. "/Lumen_Icons.lua"
    local baseUrl = HubCore.LumenURL
    local function compile(text)
        if type(text) ~= "string" or text == "" then
            return nil
        end
        local chunk = loadstring(text)
        if not chunk then
            return nil
        end
        local ok, result = pcall(chunk)
        if ok and type(result) == "table" and type(result.CreateWindow) == "function" then
            return result
        end
        return nil
    end
    local function exists(path)
        return type(isfile) == "function" and isfile(path)
    end
    local function readText(path)
        if type(readfile) == "function" and exists(path) then
            local ok, text = pcall(readfile, path)
            if ok and type(text) == "string" then
                return text
            end
        end
        return nil
    end
    local function download(name)
        if baseUrl == "" then
            return nil
        end
        local ok, text = pcall(game.HttpGet, game, baseUrl .. name)
        if ok and type(text) == "string" and text ~= "" then
            return text
        end
        return nil
    end
    local library
    local text = download("Lumen.lua")
    library = compile(text)
    if library then
        HubCore.LoadTimes.WindUI = "Network"
        if type(writefile) == "function" then
            pcall(writefile, libraryPath, text)
        end
    end
    if not library then
        library = compile(readText(libraryPath))
        if library then
            HubCore.LoadTimes.WindUI = "Cache"
        end
    end
    if not library then
        library = compile(readText("Lumen.lua"))
        if library then
            HubCore.LoadTimes.WindUI = "File"
        end
    end
    if not library then
        error("Lumen library could not be loaded", 0)
    end
    if type(library.Icons) == "table" and type(library.Icons.SetBundle) == "function" then
        if not exists(iconsPath) then
            local text = download("Lumen_Icons.lua")
            if text and type(writefile) == "function" then
                pcall(writefile, iconsPath, text)
            end
        end
        for _, path in ipairs({ iconsPath, "Lumen_Icons.lua" }) do
            if exists(path) then
                pcall(library.Icons.SetBundle, library.Icons, path)
                break
            end
        end
    end
    return library
end

local ok, result = pcall(function ()
    StartupMarks.WindUIStart = os.clock()
    local loadWindUI = HubCore.LoadWindUI()
    HubCore.InstallRu(loadWindUI)
    StartupMarks.WindUIReady = os.clock()
    HubCore.UI = loadWindUI
    local tbl = { Title = "Camera TD Hub", Author = Brand.Author, Folder = "CameraTDHub", Language = HubCore.DefaultLanguage(), Icon = "camera", Theme = "Dark", Size = UDim2.fromOffset(620, 480), Transparent = true, HideSearchBar = true, NewElements = true, ToggleKey = Enum.KeyCode.RightShift, OpenButton = { Title = Brand.OpenButton, Enabled = true, Draggable = true, OnlyMobile = false}}
    HubCore.AssertBrand(tbl)
    local createWindow = loadWindUI:CreateWindow(tbl)
    HubCore.Window = createWindow
    HubCore.ApplyTheme()
    StartupMarks.WindowCreated = os.clock()
    local tab  = createWindow:Tab({ Title = "Lobby", Icon = "door-open"})
local tab4 = createWindow:Tab({ Title = "Macros", Icon = "clapperboard"})
HubCore.StatsTab = HubCore.SubTab(tab4, createWindow, "Stats", "bar-chart-3")
local tab2 = createWindow:Tab({ Title = "Match", Icon = "map"})
HubCore.ReplayTab = HubCore.SubTab(tab2, createWindow, "Replay", "repeat")
local tab3 = createWindow:Tab({ Title = "Auto Play", Icon = "play"})
local tab5 = createWindow:Tab({ Title = "Webhook", Icon = "webhook"})
local tab6 = createWindow:Tab({ Title = "Misc", Icon = "settings"})
HubCore.ChecksTab = HubCore.SubTab(tab6, createWindow, "Checks", "shield-check")
    do
        local obj = type(getgenv) == "function" and getgenv() or _G
        local obj2
        local blackScreenPersistence = HubCore.BlackScreenPersistence
        local blackScreenPersistence2 = blackScreenPersistence and blackScreenPersistence.Get() == true or false
        local function setBlackScreenPersistence(arg)
            if blackScreenPersistence and not obj2.Cleaning and blackScreenPersistence.Get() ~= arg then
                blackScreenPersistence.Set(arg)
            end
        end
        local obj3 = obj.__NickBlackScreen
        if obj3 and type(obj3.Destroy) == "function" and obj3.Destroy() == false then
            return
        end
        obj2 = { Alive = true, Enabled = false, Connections = {}}
        obj.__NickBlackScreen = obj2
        HubCore.BlackScreenController = obj2
        local flag2, flag3
        local obj4
        local function notifyBlackScreen(arg2)
            pcall(function ()
                loadWindUI:Notify({ Title = "Black Screen", Content = arg2, Duration = 5})
            end)
        end
        local function setBlackScreenToggle(arg3)
            if not flag2 or flag3 then
                return
            end
            flag3 = true
            pcall(function ()
                flag2:Set(arg3)
            end)
            flag3 = false
        end
        local function destroyBlackScreen()
            for index2, connection in ipairs(obj2.Connections) do
                pcall(connection.Disconnect, connection)
            end
            obj2.Connections = {}
            local gui = obj2.Gui
            obj2.Gui = nil
            if gui then
                pcall(gui.Destroy, gui)
            end
        end
        function obj2.Set(flag4)
            flag4 = flag4 == true
            if flag4 and not obj2.Alive then
                return false
            end
            if not flag4 then
                if obj2.RenderDisabled then
                    local flag5 = pcall(obj4.Set3dRenderingEnabled, obj4, true)
                    if not flag5 then
                        notifyBlackScreen("Could not restore 3D rendering. Press Disable Black Screen to retry.")
                        return false
                    end
                    obj2.RenderDisabled = nil
                end
                obj2.Enabled = false
                setBlackScreenPersistence(false)
                destroyBlackScreen()
                setBlackScreenToggle(false)
                return true
            end
            if obj2.Enabled and obj2.Gui and obj2.Gui.Parent then
                return true
            end
            local instance
            local ok5, result5 = pcall(function ()
                instance = Instance.new("ScreenGui")
                instance.Name = "NickBlackScreen_cameraman"
                instance.Enabled = false
                instance.IgnoreGuiInset = true
                instance.ResetOnSpawn = false
                instance.DisplayOrder = 2147483647
                instance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                local frame = Instance.new("Frame")
                frame.Name = "Background"
                frame.Size = UDim2.fromScale(1, 1)
                frame.BackgroundColor3 = Color3.new(0, 0, 0)
                frame.BorderSizePixel = 0
                frame.Active = true
                frame.ZIndex = 1
                frame.Parent = instance
                local textButton = Instance.new("TextButton")
                textButton.Name = "DisableBlackScreen"
                textButton.AnchorPoint = Vector2.new(.5, .5)
                textButton.Position = UDim2.fromScale(.5, .5)
                textButton.Size = UDim2.fromOffset(230, 52)
                textButton.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
                textButton.BorderSizePixel = 0
                textButton.Text = "Disable Black Screen"
                textButton.TextColor3 = Color3.fromRGB(245, 245, 245)
                textButton.TextSize = 17
                textButton.Font = Enum.Font.GothamSemibold
                textButton.ZIndex = 2
                textButton.Parent = frame
                local uICorner = Instance.new("UICorner")
                uICorner.CornerRadius = UDim.new(0, 10)
                uICorner.Parent = textButton
                local tbl4 = {}
                if type(gethui) == "function" then
                    local ok6, result6 = pcall(gethui)
                    if ok6 and result6 then
                        tbl4[#tbl4 + 1] = result6
                    end
                end
                local ok7, result7 = pcall(game.GetService, game, "CoreGui")
                if ok7 and result7 then
                    tbl4[#tbl4 + 1] = result7
                end
                local players = game:GetService("Players").LocalPlayer
                local players2 = players and players:FindFirstChildOfClass("PlayerGui")
                if players2 then
                    tbl4[#tbl4 + 1] = players2
                end
                local flag6 = false
                for index3, tbl5 in ipairs(tbl4) do
                    if pcall(function ()
                            instance.Parent = tbl5
                        end) and instance.Parent == tbl5 then
                        flag6 = true
                        break
                    end
                end
                assert(flag6, "Overlay unavailable on this executor")
                obj2.Gui = instance
                obj2.Connections[#obj2.Connections + 1] = textButton.Activated:Connect(function ()
                    obj2.Set(false)
                end)
                if instance.Destroying then
                    obj2.Connections[#obj2.Connections + 1] = instance.Destroying:Connect(function ()
                        obj2.Gui = nil
                        obj2.Set(false)
                    end)
                end
                instance.Enabled = true
            end)
            if not ok5 then
                if instance then
                    pcall(instance.Destroy, instance)
                end
                destroyBlackScreen()
                obj2.Enabled = false
                setBlackScreenToggle(false)
                notifyBlackScreen(tostring(result5))
                return false
            end
            local flag7 = pcall(function ()
                obj4 = game:GetService("RunService")
                obj4:Set3dRenderingEnabled(false)
            end)
            obj2.RenderDisabled = flag7 or nil
            obj2.Enabled = true
            setBlackScreenPersistence(true)
            if not flag7 then
                notifyBlackScreen("Black overlay enabled; this executor cannot disable 3D rendering.")
            end
            return true
        end
        function obj2.Destroy()
            obj2.Cleaning = true
            if not obj2.Set(false) then
                obj2.Cleaning = false
                return false
            end
            obj2.Alive = false
            if obj.__NickBlackScreen == obj2 then
                obj.__NickBlackScreen = nil
            end
            return true
        end
        tab6:Section({ Title = "Display"})
        flag2 = tab6:Toggle({ Title = "Black Screen", Desc = "Black overlay with a visible Disable button. Turns off 3D rendering when supported.", Value = blackScreenPersistence2, Callback = function (arg4)
            if not flag3 then
                obj2.Set(arg4)
            end
        end})
        if blackScreenPersistence2 then
            obj2.Set(true)
        end
    end
    tab:Section({ Title = "Play"})
    tab:Dropdown({ Title = "Players", Desc = "Minimum number of players required to start the match.", Values = { "1 Player", "2 Players", "3 Players", "4 Players", "5 Players"}, Value = tostring(HubConfig.Players) .. (HubConfig.Players == 1 and " Player" or " Players"), Multi = false, Callback = function (arg5)
        HubConfig.Players = math.clamp(tonumber(tostring(arg5):match("%d+")) or 1, 1, 5)
        HubCore.SaveSettings()
    end})
    HubCore.Widgets.Maps = tab:Dropdown({ Title = "Map", Values = HubCore.Maps(), Value = HubConfig.Map, Multi = false, SearchBarEnabled = true, Callback = function (arg6)
        HubConfig.Map = tostring(arg6)
        HubCore.CancelJoinWalk()
        HubCore.JoinWalkExit = nil
        if HubCore.Elevator then
            HubCore.LeaveElevator()
        end
        HubCore.LobbyAttempt = nil
        HubCore.SaveSettings()
    end})
    HubCore.Widgets.Modifiers = tab:Dropdown({ Title = "Modifier", Values = HubCore.ModifierOptions(), Value = HubCore.ModifierLabels(), Multi = true, AllowNone = true, Callback = HubCore.SetModifierSelection})
    tab:Dropdown({ Title = "Method", Desc = "Movement used to reach the elevator.", Values = { "Walk", "TP"}, Value = HubConfig.JoinMethod, Multi = false, Callback = HubCore.SetJoinMethod})
    tab:Toggle({ Title = "Auto Join & Start", Value = HubConfig.AutoLobby, Callback = function (arg7)
        HubConfig.AutoLobby = arg7 == true
        HubConfig.StartNow = true
        if not HubConfig.AutoLobby then
            HubCore.LeaveElevator()
        end
        HubCore.SaveSettings()
    end})
    tab:Section({ Title = "Auto Summon"})
    tab:Dropdown({ Title = "Crate", Values = { "Basic Crate", "Mythic Crate"}, Value = HubConfig.SummonCrate, Callback = function (arg8)
        if arg8 == "Basic Crate" or arg8 == "Mythic Crate" then
            HubConfig.SummonCrate = arg8
            HubCore.SaveSettings()
        end
    end})
    tab:Dropdown({ Title = "Amount", Values = { "x1", "x10"}, Value = "x" .. HubConfig.SummonAmount, Multi = false, Callback = function (arg9)
        HubConfig.SummonAmount = arg9 == "x10" and 10 or 1
        HubCore.SaveSettings()
    end})
    tab:Slider({ Title = "Summon Delay", Step = 0.1, Value = { Min = 0.1, Max = 10, Default = HubConfig.SummonDelay}, Callback = function (number)
        HubConfig.SummonDelay = math.clamp(tonumber(number) or 1, 0.1, 10)
        HubCore.SaveSettings()
    end})
    tab:Toggle({ Title = "Auto Summon", Value = HubConfig.AutoSummon, Callback = function (arg10)
        local arg11 = arg10 == true
        if arg11 and not HubConfig.AutoSummon then
            HubCore.StartSummonSpend()
        end
        HubConfig.AutoSummon = arg11
        HubCore.SaveSettings()
    end})
    tab:Section({ Title = "Auto Sell Unit In Inventory"})
    HubCore.Widgets.InventorySell = tab:Paragraph({ Title = "Inventory Sell State", Desc = "Select a unit, then choose an action. Equipped/locked copies are skipped."})
    local value2, value3 = HubCore.InventorySellOptions()
    HubCore.InventorySellLabels = value3
    HubCore.Widgets.InventorySellSelect = tab:Dropdown({ Title = "Select Inventory Unit", Values = value2, Value = "(select a unit)", Multi = false, Callback = function (arg12)
        if HubCore.InventorySellRefreshing then
            return
        end
        HubCore.InventorySellName = HubCore.InventorySellLabels[arg12]
        if HubCore.Widgets.InventorySellSelected then
            HubCore.Widgets.InventorySellSelected:SetDesc(HubCore.InventorySellName or "None")
        end
    end})
    HubCore.Widgets.InventorySellSelected = tab:Paragraph({ Title = "Selected Unit", Desc = "None"})
    for index4, tbl6 in ipairs({ { "Sell All", "All"}, { "Sell Half", "Half"}, { "Keep One", "KeepOne"}}) do
        local tbl7 = tbl6[2]
        tab:Button({ Title = tbl6[1], Callback = function ()
            HubCore.SellInventoryUnits(tbl7)
        end})
    end
    HubCore.RefreshInventorySell()
    tab:Section({ Title = "Crates"})
    HubCore.Widgets.Crates = tab:Paragraph({ Title = "Crate State", Desc = "Auto Buy / Open is off."})
    tab:Dropdown({ Title = "Buy Amount", Values = { "x1", "x3", "x10"}, Value = "x" .. HubConfig.BuyCrateAmount, Multi = false, Callback = function (arg13)
        local number2 = tonumber(tostring(arg13):match("%d+"))
        HubConfig.BuyCrateAmount = (number2 == 3 or number2 == 10) and number2 or 1
        HubCore.SaveSettings()
    end})
    tab:Toggle({ Title = "Auto Buy Halloween Crate", Desc = "Buy with Candy when affordable.", Value = HubConfig.AutoBuyCrate, Callback = function (arg14)
        HubConfig.AutoBuyCrate = arg14 == true
        HubCore.SaveSettings()
    end})
    HubCore.Widgets.CrateSelect = tab:Dropdown({ Title = "Open Crate", Values = HubCore.CrateOptions(), Value = HubConfig.OpenCrateName, Multi = false, Callback = function (arg15)
        HubConfig.OpenCrateName = tostring(arg15)
        HubCore.SaveSettings()
    end})
    tab:Button({ Title = "Refresh Crate List", Icon = "refresh-cw", Callback = function ()
        HubCore.Widgets.CrateSelect:Refresh(HubCore.CrateOptions())
    end})
    tab:Dropdown({ Title = "Open Amount", Values = { "x1", "x10"}, Value = "x" .. HubConfig.OpenCrateAmount, Multi = false, Callback = function (arg16)
        HubConfig.OpenCrateAmount = arg16 == "x10" and 10 or 1
        HubCore.SaveSettings()
    end})
    tab:Slider({ Title = "Crate Delay", Step = 0.1, Value = { Min = 1, Max = 10, Default = HubConfig.CrateDelay}, Callback = function (number3)
        HubConfig.CrateDelay = math.clamp(tonumber(number3) or 2, 1, 10)
        HubCore.SaveSettings()
    end})
    tab:Toggle({ Title = "Auto Open Crate", Desc = "Open owned crates. Needs inventory space.", Value = HubConfig.AutoOpenCrate, Callback = function (arg17)
        HubConfig.AutoOpenCrate = arg17 == true
        HubCore.SaveSettings()
    end})
    tab2:Section({ Title = "Pre-match Vote"})
    tab2:Dropdown({ Title = "Difficulty", Values = { "Easy", "Normal", "Hard", "Insane", "Nightmare", "Halloween Easy", "Halloween Hard"}, Value = HubConfig.Difficulty, Multi = false, Callback = function (arg18)
        HubConfig.Difficulty = tostring(arg18)
        HubCore.SaveSettings()
    end})
    tab2:Toggle({ Title = "Auto Vote Difficulty", Value = HubConfig.AutoDifficulty, Callback = function (arg19)
        HubConfig.AutoDifficulty = arg19 == true
        HubCore.SaveSettings()
    end})
    tab2:Section({ Title = "Wave"})
    tab2:Toggle({ Title = "Auto Skip Waves", Value = HubConfig.AutoSkip, Callback = function (arg20)
        HubConfig.AutoSkip = arg20 == true
        HubCore.Skip.NextAt = 0
        HubCore.SaveSettings()
    end})
    tab2:Input({ Title = "Stop Auto Skip At", Desc = "Pause on listed waves until Intermission. Separate waves with commas.", Placeholder = "1, 4, 5, 6, 13, 15, 18", Value = HubConfig.StopAutoSkipAt, Callback = function (arg21)
        HubConfig.StopAutoSkipAt = tostring(arg21 or "")
        HubCore.Skip.NextAt = 0
        HubCore.SaveSettings()
    end})
    tab2:Toggle({ Title = "Auto Speed Scale", Value = HubConfig.AutoSpeed, Callback = function (arg22)
        HubConfig.AutoSpeed = arg22 == true
        HubCore.Speed.Applied, HubCore.Speed.Rejected = nil, nil
        HubCore.Next.Speed = nil
        HubCore.SaveSettings()
    end})
    tab2:Dropdown({ Title = "Speed Scale", Values = { "1x", "1.5x", "2x"}, Value = tostring(HubConfig.SpeedScale) .. "x", Multi = false, Callback = function (arg23)
        HubConfig.SpeedScale = tonumber(tostring(arg23):match("[%d%.]+")) or 1
        HubCore.Speed.Applied, HubCore.Speed.Rejected = nil, nil
        HubCore.Next.Speed = nil
        HubCore.SaveSettings()
    end})
    tab2:Section({ Title = "Auto Sell"})
    tab2:Toggle({ Title = "Auto Sell All Farm On Wave", Value = HubConfig.AutoSellFarm, Callback = function (arg24)
        HubConfig.AutoSellFarm = arg24 == true
        HubCore.FarmSell = nil
        HubCore.SaveSettings()
    end})
    tab2:Input({ Title = "Sell At Wave", Value = tostring(HubConfig.SellFarmWave), Placeholder = "30", Callback = function (number4)
        local number5 = tonumber(number4)
        if number5 and number5 >= 1 and number5 < math.huge then
            HubConfig.SellFarmWave = math.floor(number5)
            HubCore.FarmSell = nil
            HubCore.SaveSettings()
        end
    end})
    tab2:Slider({ Title = "Sell Delay", Step = 0.1, Value = { Min = 0.1, Max = 10, Default = HubConfig.SellFarmDelay}, Callback = function (number6)
        HubConfig.SellFarmDelay = math.clamp(tonumber(number6) or 0.1, 0.1, 10)
        HubCore.SaveSettings()
    end})
    tab2:Section({ Title = "Match End"})
    tab2:Dropdown({ Title = "After Match", Values = { "None", "Replay", "Return"}, Value = HubConfig.EndAction, Multi = false, Callback = function (arg25)
        HubConfig.EndAction = table.find({ "None", "Replay", "Return"}, arg25) and arg25 or "None"
        if HubConfig.EndAction ~= "Replay" then
            HubCore.Replay = nil
        end
        HubCore.SaveSettings()
    end})
    tab4:Section({ Title = "Macro State"})
    HubCore.Widgets.Macro = tab4:Paragraph({ Title = "State: Idle", Desc = "Ready to record or play back a macro."})
    HubCore.Widgets.MacroRuntime = tab4:Paragraph({ Title = "Live match", Desc = "Waiting for match data."})
    HubCore.Widgets.MacroActions = tab4:Paragraph({ Title = "Recorded actions: 0", Desc = "No macro actions loaded."})
    local text2 = tostring(HubConfig.NewProfileName or "")
    tab4:Input({ Title = "Create Macro", Placeholder = "Macro name", Value = text2, Callback = function (arg26)
        text2 = HubCore.SafeName(arg26)
        HubConfig.NewProfileName = text2
        HubCore.SaveSettings()
    end})
    tab4:Button({ Title = "Create New Macro", Icon = "file-plus", Callback = function ()
        if HubCore.Playing or HubCore.Recording then
            HubCore.Notify("Stop the active macro first")
            return
        end
        local safeName = HubCore.SafeName(text2)
        if safeName == "" or safeName:lower() == "settings" then
            HubCore.Notify("Enter a valid macro name first")
            return
        end
        if HubCore.FS and isfile(HubCore.File(safeName)) then
            HubCore.Notify("That macro already exists")
            return
        end
        local tbl8 = { Game = "CameraTD", Version = 1, Actions = {}, ActionCount = 0}
        local flag8, value4 = HubCore.Write(HubCore.File(safeName), tbl8)
        if not flag8 then
            HubCore.Notify("Create failed: " .. tostring(value4))
            return
        end
        HubConfig.Profile = safeName
        HubCore.SetProfileOwner(safeName, localPlayer.UserId)
        HubCore.LoadedProfile = tbl8
        HubCore.RefreshProfiles()
        HubCore.SaveSettings()
        HubCore.SetStatus("Macro", safeName .. " is ready to record")
    end})
    local profiles = HubCore.Profiles()
    HubCore.Widgets.Profiles = tab4:Dropdown({ Title = "Select Macro", Values = profiles, Value = HubConfig.Profile ~= "" and HubConfig.Profile or profiles[1], Multi = false, Callback = function (arg27)
        if HubCore.Refreshing or arg27 == "(none)" then
            return
        end
        if HubCore.Playing or HubCore.Recording then
            HubCore.Notify("Stop the active macro before changing profiles")
            return
        end
        local safeName2 = HubCore.SafeName(arg27)
        local read = HubCore.Read(HubCore.File(safeName2))
        if not HubCore.ValidProfile(read) then
            HubCore.SetStatus("Macro", "Load failed: invalid macro")
            HubCore.RefreshProfiles()
            return
        end
        HubConfig.Profile = safeName2
        HubCore.LoadedProfile = read
        HubCore.LearnProfileCosts(read)
        HubCore.AutoPlayed = nil
        HubCore.PlaybackCompleted = nil
        HubCore.SaveSettings()
        HubCore.SetStatus("Macro", "Loaded " .. safeName2 .. " | " .. #read.Actions .. " actions")
    end})
    tab4:Button({ Title = "Delete Selected Macro", Icon = "trash-2", Callback = function ()
        local safeName3 = HubCore.SafeName(HubConfig.Profile)
        if safeName3 == "" then
            HubCore.Notify("Select a macro first")
            return
        end
        if HubCore.Playing or HubCore.Recording or HubConfig.AutoPlayback then
            HubCore.Notify("Stop recording and Auto Playback before deleting a macro")
            return
        end
        local now = os.clock()
        if HubCore.DeleteProfile ~= safeName3 or now > (HubCore.DeleteUntil or 0) then
            HubCore.DeleteProfile = safeName3
            HubCore.DeleteUntil = now + 5
            HubCore.Notify("Click Delete Selected Macro again within 5 seconds to delete " .. safeName3)
            return
        end
        HubCore.DeleteProfile = nil
        HubCore.DeleteUntil = nil
        if not HubCore.FS or type(delfile) ~= "function" then
            HubCore.Notify("Executor filesystem deletion unavailable")
            return
        end
        local ok8, result8 = pcall(function ()
            local file = HubCore.File(safeName3)
            if isfile(file) then
                writefile(file .. ".bak", readfile(file))
                delfile(file)
            end
        end)
        if not ok8 then
            HubCore.Notify("Delete failed: " .. tostring(result8))
            return
        end
        HubConfig.Profile = ""
        HubCore.LoadedProfile = nil
        for index5, profile in ipairs(HubCore.Profiles()) do
            if profile ~= "(none)" then
                local read2 = HubCore.Read(HubCore.File(profile))
                if HubCore.ValidProfile(read2) then
                    HubConfig.Profile = profile
                    HubCore.LoadedProfile = read2
                    HubCore.LearnProfileCosts(read2)
                    break
                end
            end
        end
        HubCore.RefreshProfiles()
        HubCore.SaveSettings()
        HubCore.SetStatus("Macro", safeName3 .. " deleted")
    end})
    tab4:Dropdown({ Title = "Playback Mode", Desc = "Time: recorded timeline. Hybrid: wave + recorded timing. Money: current funds. All wait for server confirmation.", Values = { "Hybrid", "Time", "Money"}, Value = HubConfig.PlaybackMode, Multi = false, Callback = function (arg28)
        HubConfig.PlaybackMode = tostring(arg28)
        HubCore.SaveSettings()
    end})
    HubCore.Widgets.Record = tab4:Toggle({ Title = "Record", Value = false, Callback = function (arg29)
        if HubCore.ChangingToggle then
            return
        end
        if arg29 then
            if HubCore.Playing then
                HubCore.StopPlayback("Stopped to begin recording")
            end
            HubCore.StartRecord()
            HubCore.SetToggle("Record", HubCore.Recording ~= nil)
        else
            HubCore.StopRecord()
        end
        HubCore.SaveSettings()
    end})
    HubCore.Widgets.Playback = tab4:Toggle({ Title = "Auto Playback Every Match", Value = HubConfig.AutoPlayback, Callback = function (arg30)
        if HubCore.ChangingToggle then
            return
        end
        HubConfig.AutoPlayback = arg30 == true
        if HubConfig.AutoPlayback then
            if HubCore.Recording and not HubCore.StopRecord() then
                HubConfig.AutoPlayback = false
                HubCore.SetToggle("Playback", false)
                HubCore.SaveSettings()
                return
            end
            HubCore.AutoPlayed = nil
            HubCore.PlaybackCompleted = nil
            HubCore.Next.AutoPlayback = 0
            local flag9, value5 = HubCore.StartPlayback()
            HubCore.AutoPlayed = flag9 or value5 ~= "wait" or nil
            if not flag9 and value5 == "wait" then
                HubCore.SetStatus("Macro", "Playback armed: waiting for match")
            end
        elseif HubCore.Playing then
            HubCore.StopPlayback("Stopped by user")
        end
        HubCore.SaveSettings()
    end})
    do
        local tbl9 = { Tab = tab4, Owner = HubCore, HTTP = HttpServiceSvc, StateTables = { HubCore, HubConfig}, Games = { "CameraTD"}, KindKey = "Kind", Kinds = { "Place", "Upgrade", "Sell", "Target", "Skip", "Speed", "Start", "AutoUpgrade", "Ability", "Relocate"}, FS = function ()
            return type(isfile) == "function" and type(readfile) == "function" and type(writefile) == "function"
        end, Busy = function ()
            return HubCore.Recording or HubCore.Playing or HubCore.RecordClosing or HubCore.RecordStopping and HubCore.Jobs and HubCore.Head and HubCore.Head <= #HubCore.Jobs or HubConfig.AutoPlayback
        end, Clean = HubCore.SafeName, Path = HubCore.File, Load = function (text3)
            local read3 = HubCore.Read(HubCore.File(text3))
            if not HubCore.ValidProfile(read3) then
                return false, "Invalid Camera TD macro"
            end
            HubConfig.Profile = text3
            HubCore.LoadedProfile = read3
            HubCore.LearnProfileCosts(read3)
            HubCore.AutoPlayed = nil
            HubCore.PlaybackCompleted = nil
            HubCore.SaveSettings()
            HubCore.SetStatus("Macro", "Loaded " .. text3)
            return true
        end, Notify = HubCore.Notify, Refresh = function ()
            HubCore.RefreshProfiles()
        end, Validate = function (arg31)
            return HubCore.ValidProfile(arg31), "Invalid Camera TD macro"
        end}
        assert(type(tbl9.Load) == "function" and type(tbl9.Path) == "function" and type(tbl9.Clean) == "function", "Macro import adapter unavailable")
        local tbl10 = {}
        local function normalizeMacroInput(text4)
            if type(text4) ~= "string" then
                return nil, "Paste macro JSON or a Discord file link"
            end
            text4 = text4:match("^%s*(.-)%s*$")
            if text4:sub(1, 3) == "```" then
                text4 = text4:sub(4):gsub("%s*```$", ""):gsub("^[jJ][sS][oO][nN]%s+", ""):match("^%s*(.-)%s*$")
            end
            if text4 == "" then
                return nil, "Paste macro JSON or a Discord file link"
            end
            local match = text4:match("^https?://") ~= nil
            if match then
                if #text4 > 4096 or text4:find("[%s%c<>\\]") then
                    return nil, "Paste one complete Discord file link"
                end
                local text5, text6 = text4:match("^https://([^/%?#]+)(/[^#]*)$")
                if not text5 or not (text5:lower() == "cdn.discordapp.com" or text5:lower() == "media.discordapp.net") or not text6:match("^/attachments/%d+/%d+/[^%?#]+") then
                    return nil, "Use the Discord file link, not a message or Copy Link page URL"
                end
                local callback = type(request) == "function" and request or type(http_request) == "function" and http_request or type(syn) == "table" and type(syn.request) == "function" and syn.request or type(http) == "table" and type(http.request) == "function" and http.request
                local ok9, result9, extra = pcall(function ()
                    if callback then
                        local callback2 = callback({ Url = text4, Method = "GET", Headers = { Accept = "application/json"}, Redirect = false})
                        assert(type(callback2) == "table", "Invalid HTTP response")
                        local number7 = tonumber(callback2.StatusCode or callback2.Status)
                        if number7 == 403 or number7 == 404 then
                            return nil, "Link expired or unavailable; copy a fresh file link from Discord"
                        end
                        if number7 and (number7 < 200 or number7 >= 300) then
                            return nil, "Download failed (HTTP " .. number7 .. ")"
                        end
                        return callback2.Body or callback2.body
                    end
                    return game:HttpGet(text4)
                end)
                if not ok9 then
                    return nil, "Cannot download macro; check the link, network and executor HTTP support"
                end
                if type(result9) ~= "string" or result9 == "" then
                    return nil, extra or "Link expired or unavailable; copy a fresh file link from Discord"
                end
                text4 = result9
            end
            if #text4 > 200 * 1024 then
                return nil, "Macro exceeds 200 KB"
            end
            text4 = text4:gsub("^﻿", "")
            return text4, match
        end
        local function snapshotStateTables()
            local tbl11 = {}
            for index6, stateTable in ipairs(tbl9.StateTables) do
                local tbl12 = {}
                for key, stateTable2 in pairs(stateTable) do
                    tbl12[key] = stateTable2
                end
                tbl11[#tbl11 + 1] = { State = stateTable, Copy = tbl12}
            end
            return function ()
                for index7, tbl13 in ipairs(tbl11) do
                    for state in pairs(tbl13.State) do
                        tbl13.State[state] = nil
                    end
                    for key2, copy in pairs(tbl13.Copy) do
                        tbl13.State[key2] = copy
                    end
                end
            end
        end
        local function sanitizeMacroValue(tbl14, number8)
            assert(number8 < 40, "Macro nesting is too deep")
            if type(tbl14) == "number" then
                assert(tbl14 == tbl14 and math.abs(tbl14) < math.huge, "Invalid macro number")
            end
            if type(tbl14) ~= "table" then
                return tbl14
            end
            local tbl15 = {}
            for key3, tbl16 in pairs(tbl14) do
                local flag10 = type(key3) == "string" and (key3:lower() == "owneruserid" or key3:lower() == "ownerid")
                if not flag10 then
                    tbl15[key3] = sanitizeMacroValue(tbl16, number8 + 1)
                end
            end
            return tbl15
        end
        function tbl10.Import(arg32, text7)
            if tbl10.Busy or tbl10.Fetching or tbl9.Busy() then
                return false, "Stop recording and Auto Playback before importing"
            end
            if not tbl9.FS() or type(delfile) ~= "function" then
                return false, "File read/write/delete APIs required"
            end
            tbl10.Fetching = true
            local flag11, value6 = normalizeMacroInput(arg32)
            tbl10.Fetching = false
            if not flag11 then
                return false, value6
            end
            if tbl10.Busy or tbl9.Busy() then
                return false, "Stop recording and Auto Playback before importing"
            end
            arg32 = flag11
            local ok10, result10 = pcall(tbl9.HTTP.JSONDecode, tbl9.HTTP, arg32)
            if not ok10 or type(result10) ~= "table" then
                return false, value6 and "Link did not return macro JSON; copy a fresh Discord file link" or "Invalid JSON; paste the complete macro file"
            end
            if not table.find(tbl9.Games, result10.Game) and not (tbl9.Legacy and tbl9.Legacy(result10)) then
                return false, "This macro belongs to another game"
            end
            if type(result10.Actions) ~= "table" or #result10.Actions == 0 or #result10.Actions > 50000 then
                return false, "Invalid macro actions"
            end
            local number9 = 0
            for key4, action in pairs(result10.Actions) do
                number9 = number9 + 1
                if type(key4) ~= "number" or key4 % 1 ~= 0 or key4 < 1 or key4 > #result10.Actions or type(action) ~= "table" or not table.find(tbl9.Kinds, action[tbl9.KindKey]) then
                    return false, "Invalid macro action"
                end
                for index8, text8 in ipairs({ "Time", "At", "Wave", "WaveAt", "WaveTime"}) do
                    local action2 = action[text8]
                    if action2 ~= nil and (type(action2) ~= "number" or action2 ~= action2 or action2 < 0 or action2 == math.huge) then
                        return false, "Invalid action " .. text8
                    end
                end
            end
            if number9 ~= #result10.Actions then
                return false, "Macro actions must be a list"
            end
            ok10, result10 = pcall(sanitizeMacroValue, result10, 0)
            if not ok10 then
                return false, tostring(result10)
            end
            if tbl9.Validate then
                local ok11, result11, extra2 = pcall(tbl9.Validate, result10)
                if not ok11 or not result11 then
                    return false, ok11 and (extra2 or "Invalid macro data") or "Invalid macro data"
                end
            end
            text7 = tostring(text7 or ""):match("^%s*(.-)%s*$")
            if text7 == "" then
                text7 = type(result10.Name) == "string" and result10.Name or type(result10.Profile) == "string" and result10.Profile or "Imported Macro"
            end
            text7 = tbl9.Clean(text7)
            local text9 = text7:lower()
            if text7 == "" or text9 == "settings" or text9 == "hubconfig" or text9 == "playback_debug" or text9:match("_config$") then
                return false, "Enter another macro name"
            end
            local path = tbl9.Path(text7)
            if not path then
                return false, "Invalid macro name"
            end
            local ok12, result12 = pcall(isfile, path)
            if not ok12 then
                return false, "Cannot check existing macro files"
            end
            if result12 then
                return false, "Macro name already exists; choose another name"
            end
            local callback3 = snapshotStateTables()
            tbl10.Busy = true
            local ok13, result13 = pcall(function ()
                local jSONEncode = tbl9.HTTP:JSONEncode(result10)
                writefile(path .. ".pending", jSONEncode)
                assert(readfile(path .. ".pending") == jSONEncode, "Pending verification failed")
                assert(not isfile(path), "Macro name already exists")
                tbl10.Created = path
                writefile(path, jSONEncode)
                assert(readfile(path) == jSONEncode, "Save verification failed")
                local value7, value8 = tbl9.Load(text7)
                assert(value7, value8 or "Macro failed its game-specific validation")
            end)
            if not ok13 then
                callback3()
                if tbl10.Created then
                    pcall(delfile, tbl10.Created)
                end
                tbl10.Created = nil
                tbl10.Busy = false
                pcall(delfile, path .. ".pending")
                return false, "Import failed: " .. tostring(result13)
            end
            tbl10.Created = nil
            tbl10.Busy = false
            pcall(delfile, path .. ".pending")
            return true, text7, #result10.Actions
        end
        tbl9.Owner.MacroImport = tbl10
        tbl9.Tab:Section({ Title = "Import Macro"})
        local value9, value10 = "", ""
        local input = tbl9.Tab:Input({ Title = "Macro Name", Desc = "Enter Any Names You Want", Placeholder = "Imported Macro", Value = "", Callback = function (arg33)
            value9 = tostring(arg33 or "")
        end})
        local input2 = tbl9.Tab:Input({ Title = "Macro JSON", Desc = "Paste JSON or a Discord file link.", Type = "Textarea", ClearTextOnFocus = false, Placeholder = "Paste JSON or Discord file link...", Value = "", Callback = function (arg34)
            value10 = tostring(arg34 or "")
        end})
        tbl9.Tab:Button({ Title = "Import Macro", Icon = "download", Callback = function ()
            local flag12, text10, value11 = tbl10.Import(value10, value9)
            if not flag12 then
                tbl9.Notify(text10)
                return
            end
            value9 = text10
            value10 = ""
            input:Set(text10)
            input2:Set("")
            local ok14, result14 = pcall(tbl9.Refresh, text10)
            tbl9.Notify("Imported " .. text10 .. " (" .. tostring(value11) .. " actions)" .. (not ok14 and "; reopen Select Macro to refresh" or ""))
        end})
    end
    tab3:Section({ Title = "Auto Play"})
    HubCore.Widgets.Auto = tab3:Paragraph({ Title = "Auto Play State", Desc = "Auto Play is disabled."})
    tab3:Toggle({ Title = "Auto Place", Desc = "Automatically place towers. Waits for macro completion when Auto Playback is enabled.", Value = HubConfig.AutoPlace, Callback = function (arg35)
        HubConfig.AutoPlace = arg35 == true
        HubCore.SaveSettings()
    end})
    tab3:Toggle({ Title = "Auto Upgrade", Desc = "Automatically upgrade towers. Waits for macro completion when Auto Playback is enabled.", Value = HubConfig.AutoUpgrade, Callback = function (arg36)
        HubConfig.AutoUpgrade = arg36 == true
        HubCore.SaveSettings()
    end})
    tab3:Slider({ Title = "Auto Play Delay", Step = 0.1, Value = { Min = 0.1, Max = 10, Default = HubConfig.AutoDelay}, Callback = function (number10)
        HubConfig.AutoDelay = math.clamp(tonumber(number10) or 0.1, 0.1, 10)
        HubCore.SaveSettings()
    end})
    tab3:Slider({ Title = "Placement Range", Desc = "Position along the path: 0% at the entrance, 100% at the base.", Step = 1, Value = { Min = 0, Max = 100, Default = HubConfig.PlacementRange}, Callback = function (number11)
        HubConfig.PlacementRange = math.clamp(tonumber(number11) or 0, 0, 100)
        HubCore.Candidate = 0
        HubCore.Auto.GridSerial = (HubCore.Auto.GridSerial or 0) + 1
        HubCore.Auto.NodeLayout = nil
        HubCore.Auto.LastVisualAt = nil
        HubCore.ClearAutoVisual()
        HubCore.SaveSettings()
    end})
    tab3:Toggle({ Title = "Show Placement Range", Value = HubConfig.ShowRange, Callback = function (arg37)
        HubConfig.ShowRange = arg37 == true
        HubCore.Auto.LastVisualAt = nil
        if not HubConfig.ShowRange then
            HubCore.ClearAutoVisual()
        end
        HubCore.SaveSettings()
    end})
    tab5:Section({ Title = "Discord Webhook"})
    tab5:Input({ Title = "Webhook URL", Placeholder = "https://discord.com/api/webhooks/...", Value = HubConfig.WebhookURL, Callback = function (arg38)
        HubConfig.WebhookURL = tostring(arg38 or ""):match("^%s*(.-)%s*$")
        HubCore.SaveSettings()
    end})
    tab5:Toggle({ Title = "Enable Webhook", Value = HubConfig.WebhookEnabled, Callback = function (arg39)
        HubConfig.WebhookEnabled = arg39 == true
        HubCore.SaveSettings()
    end})
    tab5:Toggle({ Title = "Notify On Match End", Value = HubConfig.WebhookMatchEnd, Callback = function (arg40)
        HubConfig.WebhookMatchEnd = arg40 == true
        HubCore.SaveSettings()
    end})
    tab5:Toggle({ Title = "Notify On Summon", Value = HubConfig.WebhookSummon, Callback = function (arg41)
        HubConfig.WebhookSummon = arg41 == true
        HubCore.SaveSettings()
    end})
    tab5:Input({ Title = "Discord User ID", Desc = "Ping this user for Godly summons.", Placeholder = "Your Discord user ID", Value = HubConfig.WebhookUserID, Callback = function (arg42)
        local text11 = tostring(arg42 or ""):match("^%s*<@!?(%d+)>%s*$") or tostring(arg42 or ""):match("^%s*(%d+)%s*$") or ""
        HubConfig.WebhookUserID = #text11 >= 15 and #text11 <= 22 and text11 or ""
        HubCore.SaveSettings()
    end})
    tab5:Section({ Title = "Telegram"})
    tab5:Input({ Title = "Telegram Bot Token", Desc = "Create a bot with @BotFather. Filled together with Chat ID, reports are also sent to Telegram.", Placeholder = "123456789:AA...", Value = HubConfig.TelegramToken, Callback = function (telegramToken)
        HubConfig.TelegramToken = tostring(telegramToken or ""):match("^%s*(.-)%s*$")
        HubCore.SaveSettings()
    end})
    tab5:Input({ Title = "Telegram Chat ID", Desc = "Your user, group or channel ID (123456789, -1001234567890 or @channelname). Start the bot first.", Placeholder = "Chat ID", Value = HubConfig.TelegramChatID, Callback = function (telegramChatId)
        HubConfig.TelegramChatID = tostring(telegramChatId or ""):match("^%s*(.-)%s*$")
        HubCore.SaveSettings()
    end})
    tab5:Section({ Title = "Test"})
    tab5:Button({ Title = "Send Test Webhook", Icon = "send", Callback = function ()
        task.spawn(function ()
            local value12, value13 = HubCore.SendWebhook("Webhook Test", "Camera TD Hub webhook is working.", 5763719, { HubCore.AccountTotalsField()})
            HubCore.WebhookStatus(value12, value13)
            HubCore.Notify(value12 and "Test message sent" or "Webhook failed: " .. tostring(value13))
        end)
    end})
    tab6:Section({ Title = "Interface Theme"})
    do
        local themeNames = {}
        local okThemes, themes = pcall(loadWindUI.GetThemes, loadWindUI)
        for themeName in pairs(okThemes and type(themes) == "table" and themes or { Dark = true, Light = true}) do
            if themeName ~= "CameraTDCustom" then
                themeNames[#themeNames + 1] = themeName
            end
        end
        table.sort(themeNames)
        if type(loadWindUI.GetThemeNames) == "function" then
            local okNames, orderedNames = pcall(loadWindUI.GetThemeNames, loadWindUI)
            if okNames and type(orderedNames) == "table" and #orderedNames > 0 then
                themeNames = {}
                for _, orderedName in ipairs(orderedNames) do
                    themeNames[#themeNames + 1] = orderedName
                end
            end
        end
        local baseTheme = HubCore.BaseTheme() or {}
        HubCore.Widgets.ThemeDropdown = tab6:Dropdown({ Title = "Theme", Desc = "Base color theme of the hub window.", Values = themeNames, Value = (type(HubConfig.ThemeName) == "string" and HubConfig.ThemeName ~= "") and HubConfig.ThemeName or "Dark", Multi = false, Callback = function (themeName)
            HubConfig.ThemeName = tostring(themeName)
            HubCore.ApplyTheme()
            HubCore.SaveSettings()
        end})
        tab6:Button({ Title = "Reset Theme", Icon = "rotate-ccw", Callback = function ()
            HubConfig.ThemeName = "Dark"
            HubConfig.AccentColor = ""
            HubConfig.BackgroundColor = ""
            HubCore.ApplyTheme()
            HubCore.SaveSettings()
            pcall(function ()
                HubCore.Widgets.ThemeDropdown:Select("Dark", true)
            end)
        end})
    end
    tab6:Section({ Title = "Automation"})
    tab6:Toggle({ Title = "Auto Execute", Desc = "Automatically reload the hub after teleporting.", Value = HubConfig.AutoExecute, Callback = function (arg43)
        HubConfig.AutoExecute = arg43 == true
        HubCore.SaveSettings()
        if HubConfig.AutoExecute then
            HubCore.QueueTeleport()
        end
    end})
    tab6:Toggle({ Title = "PlaceAnywhere (ONLY ON PATH NOT STACK)", Desc = "Enable additional tower placement locations where supported by the game.", Value = HubConfig.ClosePlacement, Callback = function (arg44)
        HubConfig.ClosePlacement = arg44 == true
        HubCore.SetClosePlacement(HubConfig.ClosePlacement)
        HubCore.SaveSettings()
    end})
    tab6:Section({ Title = "Auto Claim"})
    HubCore.Widgets.Rewards = tab6:Paragraph({ Title = "Battlepass State", Desc = "Claims available rewards only."})
    tab6:Toggle({ Title = "Auto Claim Battlepass", Desc = "Claim normal rewards when ready.", Value = HubConfig.AutoClaimBattlepass, Callback = function (arg45)
        HubConfig.AutoClaimBattlepass = arg45 == true
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "Auto Claim Premium", Desc = "Requires Premium Pass.", Value = HubConfig.AutoClaimPremium, Callback = function (arg46)
        HubConfig.AutoClaimPremium = arg46 == true
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "Auto Claim Halloween Quests", Desc = "Claim completed Halloween missions.", Value = HubConfig.AutoClaimPassQuest, Callback = function (arg47)
        HubConfig.AutoClaimPassQuest = arg47 == true
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "Auto Claim Daily Quests", Value = HubConfig.AutoClaimQuest, Callback = function (arg48)
        HubConfig.AutoClaimQuest = arg48 == true
        HubCore.Next.Quest = nil
        HubCore.SaveSettings()
    end})
    do
        local obj5, obj6, instance2 = HubCore, HubConfig, localPlayer
        local tbl17 = type(getgenv) == "function" and getgenv() or _G
        local text12 = "__NickHideUser_Camera_TD_Hub"
        local tbl18 = tbl17[text12]
        if tbl18 and type(tbl18.Destroy) == "function" then
            pcall(tbl18.Destroy)
        end
        local tbl19 = { Alive = true, Enabled = false, Saved = {}, Generation = 0}
        obj5.HideUserController = tbl19
        tbl17[text12] = tbl19
        tbl19.ImageSaved = {}
        tbl19.ImageWatches = {}
        tbl19.ImageConnections = {}
        local function disconnectImageWatches()
            for index9, obj7 in ipairs(tbl19.ImageConnections) do
                pcall(obj7.Disconnect, obj7)
            end
            for key5, tbl20 in pairs(tbl19.ImageWatches) do
                for index10, tbl21 in ipairs(tbl20) do
                    pcall(tbl21.Disconnect, tbl21)
                end
            end
            tbl19.ImageConnections = {}
            tbl19.ImageWatches = {}
            for key6, item2 in pairs(tbl19.ImageSaved) do
                pcall(function ()
                    key6.ImageTransparency = item2
                end)
            end
            tbl19.ImageSaved = {}
        end
        local function hasOwnNameNearby(instance3)
            local playerNames = tbl19.PlayerNames or {}
            local parent = instance3.Parent
            for index11 = 1, 2 do
                if not parent then
                    break
                end
                if playerNames[parent.Name] then
                    return true
                end
                for index12, child in ipairs(parent:GetChildren()) do
                    if child:IsA("TextLabel") or child:IsA("TextButton") then
                        local text13 = child.Name:lower():gsub("[^%a]", "")
                        if text13 == "username" or text13 == "displayname" or text13 == "playername" or text13 == "name" or text13 == "namelabel" then
                            local text14 = tostring(child.Text):gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
                            if playerNames[text14] or obj6.HideName and text14 == "Player" then
                                return true
                            end
                        end
                    end
                end
                parent = parent.Parent
            end
            return false
        end
        local function isAvatarImage(obj8)
            local text15 = ""
            pcall(function ()
                text15 = tostring(obj8.Image):lower()
            end)
            if text15:find("rbxthumb://", 1, true) and (text15:find("type=avatar", 1, true) or text15:find("type=headshot", 1, true)) then
                return true
            end
            if text15:find("headshot%-thumbnail") or text15:find("avatar%-thumbnail") or text15:find("avatar%.ashx") or text15:find("headshot%.ashx") or text15:find("thumbnails.roblox.com/v1/users/", 1, true) then
                return true
            end
            local text16 = obj8.Name:lower():gsub("[^%a]", "")
            if text16:find("avatar", 1, true) or text16:find("headshot", 1, true) or text16:find("portrait", 1, true) or text16 == "playericon" or text16 == "playerimage" or text16 == "profilepicture" then
                return true
            end
            return hasOwnNameNearby(obj8)
        end
        local function refreshHideUser()
            disconnectImageWatches()
            if not tbl19.Alive or not tbl19.Enabled then
                return
            end
            tbl19.PlayerNames = {}
            local function addPlayerNames(obj9)
                if obj9.Name then
                    tbl19.PlayerNames[obj9.Name] = true
                end
                if obj9.DisplayName then
                    tbl19.PlayerNames[obj9.DisplayName] = true
                end
                if obj9.UserId then
                    tbl19.PlayerNames[tostring(obj9.UserId)] = true
                end
            end
            addPlayerNames(instance2)
            local obj10
            pcall(function ()
                obj10 = game:GetService("Players")
                for index13, player in ipairs(obj10:GetPlayers()) do
                    addPlayerNames(player)
                end
            end)
            local tbl22 = setmetatable({}, { __mode = "k"})
            local function hideAvatarImage(instance4)
                if not tbl19.Alive or not tbl19.Enabled or tbl22[instance4] then
                    return
                end
                if not (instance4:IsA("ImageLabel") or instance4:IsA("ImageButton") or instance4:IsA("ViewportFrame")) then
                    return
                end
                local value14 = isAvatarImage(instance4)
                if value14 then
                    if tbl19.ImageSaved[instance4] == nil then
                        tbl19.ImageSaved[instance4] = instance4.ImageTransparency
                    end
                    tbl22[instance4] = true
                    instance4.ImageTransparency = 1
                    tbl22[instance4] = nil
                elseif tbl19.ImageSaved[instance4] ~= nil then
                    local value15 = tbl19.ImageSaved[instance4]
                    tbl19.ImageSaved[instance4] = nil
                    tbl22[instance4] = true
                    instance4.ImageTransparency = value15
                    tbl22[instance4] = nil
                end
            end
            local function rescanSiblingImages(instance5)
                local parent2 = instance5.Parent
                if not parent2 then
                    return
                end
                for item3 in pairs(tbl19.ImageWatches) do
                    if item3.Parent == parent2 or item3.Parent and item3.Parent.Parent == parent2 then
                        pcall(hideAvatarImage, item3)
                    end
                end
            end
            local function watchInstanceForHiding(instance6)
                if tbl19.ImageWatches[instance6] then
                    pcall(hideAvatarImage, instance6)
                    return
                end
                local isA = instance6:IsA("ImageLabel") or instance6:IsA("ImageButton") or instance6:IsA("ViewportFrame")
                local text17 = instance6.Name:lower():gsub("[^%a]", "")
                local isA2 = (instance6:IsA("TextLabel") or instance6:IsA("TextButton")) and (text17 == "username" or text17 == "displayname" or text17 == "playername" or text17 == "name" or text17 == "namelabel")
                if not isA and not isA2 then
                    return
                end
                local tbl23 = {}
                tbl19.ImageWatches[instance6] = tbl23
                local function connectPropertyChanged(arg49, arg50)
                    local ok15, result15 = pcall(function ()
                        return instance6:GetPropertyChangedSignal(arg49):Connect(arg50)
                    end)
                    if ok15 then
                        tbl23[#tbl23 + 1] = result15
                    end
                end
                if isA then
                    connectPropertyChanged("Image", function ()
                        pcall(hideAvatarImage, instance6)
                    end)
                    connectPropertyChanged("Name", function ()
                        pcall(hideAvatarImage, instance6)
                    end)
                    if instance6.AncestryChanged then
                        tbl23[#tbl23 + 1] = instance6.AncestryChanged:Connect(function ()
                            pcall(hideAvatarImage, instance6)
                        end)
                    end
                    connectPropertyChanged("ImageTransparency", function ()
                        if tbl22[instance6] or not tbl19.Enabled then
                            return
                        end
                        if tbl19.ImageSaved[instance6] ~= nil then
                            tbl19.ImageSaved[instance6] = instance6.ImageTransparency
                        end
                        pcall(hideAvatarImage, instance6)
                    end)
                    pcall(hideAvatarImage, instance6)
                else
                    connectPropertyChanged("Text", function ()
                        rescanSiblingImages(instance6)
                    end)
                    rescanSiblingImages(instance6)
                end
                if instance6.Destroying then
                    tbl23[#tbl23 + 1] = instance6.Destroying:Connect(function ()
                        for index14, tbl24 in ipairs(tbl23) do
                            pcall(tbl24.Disconnect, tbl24)
                        end
                        tbl19.ImageWatches[instance6] = nil
                        tbl19.ImageSaved[instance6] = nil
                    end)
                end
            end
            local tbl25 = {}
            pcall(function ()
                local playerGui = instance2:FindFirstChildOfClass("PlayerGui")
                if playerGui then
                    tbl25[#tbl25 + 1] = playerGui
                end
            end)
            for index15, item4 in ipairs({ "CoreGui", "Workspace"}) do
                pcall(function ()
                    tbl25[#tbl25 + 1] = game:GetService(item4)
                end)
            end
            local function watchDescendants(obj11)
                if obj11.DescendantAdded then
                    tbl19.ImageConnections[#tbl19.ImageConnections + 1] = obj11.DescendantAdded:Connect(function (arg51)
                        task.defer(function ()
                            if tbl19.Alive and tbl19.Enabled then
                                pcall(watchInstanceForHiding, arg51)
                            end
                        end)
                    end)
                end
                local ok16, result16 = pcall(obj11.GetDescendants, obj11)
                if ok16 then
                    for index16, result17 in ipairs(result16) do
                        pcall(watchInstanceForHiding, result17)
                    end
                end
            end
            for index17, tbl26 in ipairs(tbl25) do
                watchDescendants(tbl26)
            end
            if instance2.ChildAdded then
                tbl19.ImageConnections[#tbl19.ImageConnections + 1] = instance2.ChildAdded:Connect(function (instance7)
                    if tbl19.Alive and tbl19.Enabled and instance7:IsA("PlayerGui") then
                        watchDescendants(instance7)
                    end
                end)
            end
            if obj10 and obj10.PlayerAdded then
                tbl19.ImageConnections[#tbl19.ImageConnections + 1] = obj10.PlayerAdded:Connect(function (arg52)
                    addPlayerNames(arg52)
                    for item5 in pairs(tbl19.ImageWatches) do
                        pcall(hideAvatarImage, item5)
                    end
                end)
            end
        end
        local function restoreHiddenProperties()
            for key7, saved in pairs(tbl19.Saved) do
                for key8, saved2 in pairs(saved) do
                    pcall(function ()
                        key7[key8] = saved2
                    end)
                end
            end
            tbl19.Saved = {}
        end
        local function applyHideUserToCharacter(instance8)
            tbl19.Generation = tbl19.Generation + 1
            local generation = tbl19.Generation
            if tbl19.Descendants then
                tbl19.Descendants:Disconnect()
                tbl19.Descendants = nil
            end
            restoreHiddenProperties()
            tbl19.Character = instance8
            if not tbl19.Alive or not tbl19.Enabled or not instance8 then
                return
            end
            local color = Color3.fromRGB(255, 0, 0)
            local function hideCharacterPart(instance9)
                if tbl19.Saved[instance9] or not instance9:IsDescendantOf(instance8) then
                    return
                end
                local obj12
                if instance9:IsA("Accessory") or instance9:IsA("Shirt") or instance9:IsA("Pants") or instance9:IsA("ShirtGraphic") or instance9:IsA("CharacterMesh") then
                    obj12 = { Parent = false}
                elseif instance9:IsA("BasePart") and instance9.Parent == instance8 and instance9.Name ~= "HumanoidRootPart" then
                    obj12 = { Color = color}
                    if instance9:IsA("MeshPart") then
                        obj12.TextureID = ""
                    end
                elseif instance9:IsA("BodyColors") then
                    obj12 = {}
                    for index18, item6 in ipairs({ "HeadColor3", "TorsoColor3", "LeftArmColor3", "RightArmColor3", "LeftLegColor3", "RightLegColor3"}) do
                        obj12[item6] = color
                    end
                elseif instance9:IsA("SpecialMesh") and instance9.Parent and instance9.Parent.Parent == instance8 then
                    obj12 = { TextureId = ""}
                elseif instance9:IsA("SurfaceAppearance") and instance9.Parent and instance9.Parent.Parent == instance8 then
                    obj12 = { Parent = false}
                end
                if obj12 then
                    local tbl27 = {}
                    tbl19.Saved[instance9] = tbl27
                    for key9, obj13 in pairs(obj12) do
                        pcall(function ()
                            tbl27[key9] = instance9[key9]
                            if key9 == "Parent" then
                                instance9.Parent = nil
                            else
                                instance9[key9] = obj13
                            end
                        end)
                    end
                end
            end
            tbl19.Descendants = instance8.DescendantAdded:Connect(function (arg53)
                task.defer(function ()
                    if tbl19.Alive and tbl19.Enabled and generation == tbl19.Generation then
                        pcall(hideCharacterPart, arg53)
                    end
                end)
            end)
            for index19, descendant in ipairs(instance8:GetDescendants()) do
                pcall(hideCharacterPart, descendant)
            end
        end
        function tbl19.Set(flag13)
            if not tbl19.Alive then
                return
            end
            flag13 = flag13 == true
            obj6.HideUser = flag13
            if tbl19.Enabled == flag13 and (not flag13 or tbl19.Character == instance2.Character) then
                return
            end
            tbl19.Enabled = flag13
            applyHideUserToCharacter(flag13 and instance2.Character or nil)
            refreshHideUser()
        end
        function tbl19.Destroy()
            if not tbl19.Alive then
                return
            end
            tbl19.Alive = false
            tbl19.Enabled = false
            applyHideUserToCharacter(nil)
            disconnectImageWatches()
            if tbl19.Respawn then
                tbl19.Respawn:Disconnect()
                tbl19.Respawn = nil
            end
            if tbl17[text12] == tbl19 then
                tbl17[text12] = nil
            end
        end
        tbl19.Respawn = instance2.CharacterAdded:Connect(function (arg54)
            if tbl19.Alive and tbl19.Enabled then
                applyHideUserToCharacter(arg54)
            end
        end)
        function obj5.SetHideUser(arg55)
            tbl19.Set(arg55)
        end
        if createWindow and type(createWindow.OnDestroy) == "function" then
            pcall(function ()
                createWindow:OnDestroy(tbl19.Destroy)
            end)
        end
        tbl19.Set(obj6.HideUser)
    end
    tab6:Section({ Title = "Privacy"})
    tab6:Toggle({ Title = "Hide Name", Desc = "Hide your name in character tags, tower details, and the player list.", Value = HubConfig.HideName, Callback = function (arg56)
        HubCore.SetHideName(arg56)
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "Hide User", Desc = "Red body, face only. Local view.", Value = HubConfig.HideUser, Callback = function (arg57)
        HubCore.SetHideUser(arg57)
        HubCore.SaveSettings()
    end})
    tab6:Section({ Title = "Performance"})
    tab6:Toggle({ Title = "Turn Off Game Notification", Desc = "Hide game notifications, including waves, speed, skip and farm donations.", Value = HubConfig.HideGameNotifications, Callback = function (arg58)
        HubConfig.HideGameNotifications = arg58 == true
        HubCore.SetGameNotificationsHidden(HubConfig.HideGameNotifications)
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "FPS Boost", Desc = "Reduce visual effects to improve performance.", Value = HubConfig.FPSBoost, Callback = function (arg59)
        HubConfig.FPSBoost = arg59 == true
        HubCore.FPS(HubConfig.FPSBoost)
        HubCore.SaveSettings()
    end})
    tab6:Dropdown({ Title = "Remove Visual Method", Values = { "Normal", "Full (For Afk)"}, Value = HubConfig.VisualMethod, Callback = function (arg60)
        HubConfig.VisualMethod = arg60 == "Full (For Afk)" and arg60 or "Normal"
        if HubConfig.RemoveVisuals then
            HubCore.SetRemoveVisuals(true)
        end
        HubCore.SaveSettings()
    end})
    tab6:Toggle({ Title = "Remove Visual", Desc = "Normal keeps units and HP. Full hides combat visuals.", Value = HubConfig.RemoveVisuals, Callback = function (arg61)
        HubConfig.RemoveVisuals = arg61 == true
        HubCore.SetRemoveVisuals(HubConfig.RemoveVisuals)
        HubCore.SaveSettings()
    end})
    tab6:Section({ Title = "Anti-AFK"})
    tab6:Toggle({ Title = "Anti-AFK", Value = HubConfig.AntiAFK, Callback = function (arg62)
        HubConfig.AntiAFK = arg62 == true
        HubCore.SaveSettings()
    end})
end)
HubCore.LoadTimes.UISeconds = os.clock() - HubCore.LoadTimes.StartedAt
StartupMarks.UIControlsReady = os.clock()
genv.__CameraTDBoot.Loading = false
if not ok then
    HubCore.Notify("UI initialization failed: " .. tostring(result))
    HubCore.Destroy()
    return
end
task.delay(0.5, function ()
    if not HubCore.Running then
        return
    end
    local now = os.clock()
    local value2 = pcall(HubCore.Hydrate, true)
    HubCore.LoadTimes.HydrateSeconds = os.clock() - now
    HubCore.LoadTimes.HydrateOK = value2
end)
HubCore.SaveSettings()
HubCore.Connect(localPlayer.CharacterAdded, HubCore.BindHiddenNameCharacter)
HubCore.SetHideName(HubConfig.HideName)
HubCore.SetGameNotificationsHidden(HubConfig.HideGameNotifications)
StartupMarks.PrivacyReady = os.clock()
HubCore.Connect(localPlayer.Idled, function ()
    if not HubConfig.AntiAFK then
        return
    end
    local VirtualUserSvc = game:GetService("VirtualUser")
    local flag = pcall(function ()
        VirtualUserSvc:CaptureController()
        VirtualUserSvc:ClickButton2(Vector2.new(0, 0))
    end)
    if not flag then
        HubCore.Notify("Anti-AFK VirtualUser input unavailable in this executor")
    end
end)
HubCore.Connect(WorkspaceSvc.DescendantAdded, function (arg)
    if HubConfig.FPSBoost then
        HubCore.QueueFPSObject(arg)
    end
end)
HubCore.Connect(LightingSvc.DescendantAdded, function (arg)
    if HubConfig.FPSBoost then
        HubCore.QueueFPSObject(arg)
    end
end)
HubCore.Connect(localPlayer.OnTeleport, function (arg)
    if arg == Enum.TeleportState.Started then
        HubCore.QueueTeleport()
    end
    local replay = HubCore.Replay
    if not replay then
        return
    end
    if arg == Enum.TeleportState.Started or arg == Enum.TeleportState.InProgress then
        replay.TeleportUntil = replay.TeleportUntil or os.clock() + 25
    elseif arg == Enum.TeleportState.Failed then
        replay.TeleportUntil = nil
    end
end)
HubCore.Connect(game:GetService("TeleportService").TeleportInitFailed, function (arg)
    if arg == localPlayer and HubCore.Replay then
        HubCore.Replay.TeleportUntil = nil
    end
end)
local value = pcall(function ()
    HubCore.Window:OnDestroy(HubCore.Destroy)
end)
if HubConfig.FPSBoost then
    HubCore.FPS(true)
end
HubCore.SetRemoveVisuals(HubConfig.RemoveVisuals)
StartupMarks.FPSReady = os.clock()
HubCore.QueueTeleport()
HubCore.SetClosePlacement(HubConfig.ClosePlacement)
StartupMarks.PlacementReady = os.clock()
local ok2, result2 = pcall(HubCore.StartRejoin)
if not ok2 then
    HubCore.Notify("Auto Rejoin unavailable: " .. tostring(result2))
end
StartupMarks.RejoinReady = os.clock()
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.LobbyStep)
        if not ok3 then
            HubCore.SetStatus("Lobby", tostring(result3))
        end
        task.wait(1)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        if HubConfig.AutoSummon and game.PlaceId == HubCore.LobbyId and not HubCore.Teleporting then
            local ok3, result3, extra = pcall(HubCore.SummonOnce, HubConfig.SummonAmount)
            HubCore.SetStatus("Summon", ok3 and tostring(extra) or "Summon failed: " .. tostring(result3))
        end
        task.wait(HubConfig.AutoSummon and HubConfig.SummonDelay or 0.5)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(function ()
            HubCore.BindRemotes()
            if HubCore.Close.Enabled then
                HubCore.CloseRefresh()
            end
            local now = os.clock()
            HubCore.TradingReturnStep(now)
            HubCore.SoloGuard()
            local final = HubCore.Final()
            HubCore.RoundStep(final)
            HubCore.RefreshModifiers()
            local active = HubCore.Active()
            local webhookStep = HubCore.WebhookStep(final, active)
            local wave = HubCore.Wave()
            local waveGui = HubCore.GUI("Stats/Wave")
            HubCore.SetStatus("Match", (waveGui and waveGui.Text or "Lobby") .. " | Cash: " .. HubCore.Cash() .. " | Owned: " .. #HubCore.Owned())
            HubCore.SetStatus("MacroRuntime", (waveGui and waveGui.Text or "Lobby") .. " | " .. HubConfig.PlaybackMode .. " | Cash: " .. HubCore.Cash())
            local recording = HubCore.Recording
            local recording2 = recording and #recording.Profile.Actions or HubCore.LoadedProfile and #HubCore.LoadedProfile.Actions or 0
            pcall(function ()
                if HubCore.Widgets.Macro then
                    local recording3 = recording and "State: Recording" or HubCore.Playing and "State: Playback" or HubCore.PlaybackFailure and "State: Playback stopped" or HubConfig.AutoPlayback and "State: Playback armed" or "State: Idle"
                    if HubCore.LastMacroTitle ~= recording3 then
                        HubCore.Widgets.Macro:SetTitle(recording3)
                        HubCore.LastMacroTitle = recording3
                    end
                end
                if HubCore.Widgets.MacroActions and HubCore.LastMacroCount ~= recording2 then
                    HubCore.Widgets.MacroActions:SetTitle("Recorded actions: " .. recording2)
                    HubCore.LastMacroCount = recording2
                end
            end)
            HubCore.SetStatus("MacroActions", recording and "Recorded actions: " .. #recording.Profile.Actions or HubCore.Playing and string.format("Playback: %d/%d", HubCore.PlaybackIndex or 0, HubCore.PlaybackTotal or 0) or string.format("Selected macro: %s | %d actions", HubConfig.Profile ~= "" and HubConfig.Profile or "(none)", HubCore.LoadedProfile and #HubCore.LoadedProfile.Actions or 0))
            if HubConfig.AutoDifficulty and not HubCore.SoloReturning and game.PlaceId == HubCore.MatchId and HubCore.Visible(HubCore.DifficultyVoteButton()) and now >= (HubCore.Next.Vote or 0) then
                HubCore.Next.Vote = now + 2
                HubCore.Fire("ModeVote", HubCore.DifficultyId())
            end
            if final then
                if HubCore.Recording then
                    HubCore.StopRecord()
                end
                if HubCore.Playing then
                    HubCore.StopPlayback("Match ended")
                end
                HubCore.EndMatchStep(webhookStep)
            elseif HubConfig.EndAction == "Replay" and HubCore.Replay and (HubCore.Replay.Voted or HubCore.Replay.Returning) and not HubCore.SoloReturning then
                HubCore.ReplayStep(now)
            end
            HubCore.AutoPlaybackStep(active, now)
            HubCore.LastWave = wave
            HubCore.Visual()
        end)
        if not ok3 then
            HubCore.SetStatus("Match", "State update error: " .. tostring(result3))
        end
        task.wait(0.3)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.AutoStep)
        if not ok3 then
            HubCore.SetStatus("Auto", "Auto Play error: " .. tostring(result3))
        end
        task.wait(0.1 / HubCore.Speed.Value)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.SellFarmStep)
        if not ok3 and os.clock() >= (HubCore.Next.FarmSellError or 0) then
            HubCore.Next.FarmSellError = os.clock() + 10
            HubCore.SetStatus("FarmSell", "Farm sale error: " .. tostring(result3))
        end
        task.wait(0.1)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.SkipStep)
        if not ok3 and os.clock() >= (HubCore.Next.SkipError or 0) then
            HubCore.Next.SkipError = os.clock() + 10
            warn("[Camera TD Hub] Auto Skip: " .. tostring(result3))
        end
        task.wait(0.25)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.SpeedStep)
        if not ok3 then
            HubCore.SetStatus("Speed", "Speed update failed: " .. tostring(result3))
        end
        task.wait(0.25)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        local ok3, result3 = pcall(HubCore.QuestStep)
        if not ok3 then
            HubCore.SetStatus("Quest", "Quest update failed: " .. tostring(result3))
        end
        if HubConfig.AutoClaimPassQuest then
            local ok4, result4 = pcall(HubCore.PassQuestStep)
            if not ok4 then
                HubCore.SetStatus("Rewards", "Quest update failed: " .. tostring(result4))
            end
        end
        if HubConfig.AutoClaimBattlepass or HubConfig.AutoClaimPremium then
            local ok5, result5 = pcall(HubCore.BattlepassStep)
            if not ok5 then
                HubCore.SetStatus("Rewards", "Battlepass update failed: " .. tostring(result5))
            end
        end
        if HubConfig.AutoBuyCrate or HubConfig.AutoOpenCrate or HubCore.CratePending then
            local ok6, result6 = pcall(HubCore.CrateStep)
            if not ok6 then
                HubCore.SetStatus("Crates", "Crate update failed: " .. tostring(result6))
            end
        end
        task.wait(1)
    end
end)
task.spawn(function ()
    while HubCore.Running do
        pcall(HubCore.ActivityLogger)
        task.wait(1)
    end
end)
HubCore.AssertBrand()
HubCore.Notify("Camera TD Hub loaded | " .. Brand.ToggleHint)
task.spawn(function ()
    while HubCore.Running do
        HubCore.AssertBrand()
        task.wait(1)
    end
end)
StartupMarks.HubReady = os.clock()
HubCore.ExtrasOk, HubCore.ExtrasError = pcall(function ()
    local HttpService = game:GetService("HttpService")

    local function formatDuration(seconds)
        seconds = math.max(0, math.floor(seconds))
        return string.format("%02d:%02d:%02d", math.floor(seconds / 3600), math.floor(seconds % 3600 / 60), seconds % 60)
    end
    local function formatNumber(number)
        local text, replaced = tostring(math.floor(tonumber(number) or 0)), 0
        repeat
            text, replaced = text:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        until replaced == 0
        return text
    end
    local function setTitle(widget, text)
        if widget then
            pcall(function ()
                widget:SetTitle(text)
            end)
        end
    end

    local statsFile = HubCore.DataFolder .. "/Stats_" .. tostring(localPlayer.UserId) .. ".json"
    local function newStats()
        return { StartedAt = os.time(), Matches = 0, Wins = 0, Losses = 0, Coins = 0, Candy = 0, Exp = 0, Crates = 0}
    end
    local function saveStats()
        if type(writefile) ~= "function" then
            return
        end
        pcall(function ()
            if type(isfolder) == "function" and type(makefolder) == "function" and not isfolder(HubCore.DataFolder) then
                makefolder(HubCore.DataFolder)
            end
            writefile(statsFile, HttpService:JSONEncode(HubCore.Stats))
        end)
    end
    local stats = newStats()
    if type(isfile) == "function" and type(readfile) == "function" and isfile(statsFile) then
        local decoded, data = pcall(function ()
            return HttpService:JSONDecode(readfile(statsFile))
        end)
        if decoded and type(data) == "table" then
            for key in pairs(stats) do
                if tonumber(data[key]) then
                    stats[key] = tonumber(data[key])
                end
            end
        end
    end
    HubCore.Stats = stats

    local statsWidgets = {}
    if HubCore.StatsTab then
        local tab = HubCore.StatsTab
        tab:Paragraph({ Title = "Session Stats", Desc = "Counted from the first match until you press Reset. Kept between teleports."})
        statsWidgets.Time = tab:Paragraph({ Title = "Working time: 00:00:00", Desc = "Time since the stats were started"})
        statsWidgets.Matches = tab:Paragraph({ Title = "Matches: 0 | Wins: 0 | Losses: 0", Desc = "Result is read from the end screen"})
        statsWidgets.Rate = tab:Paragraph({ Title = "Win rate: - | Matches/hour: -", Desc = "Calculated from the working time"})
        statsWidgets.Rewards = tab:Paragraph({ Title = "Coins: +0 | Candy: +0 | Exp: +0 | Crates: +0", Desc = "Rewards shown on the end screen"})
        tab:Button({ Title = "Reset Stats", Desc = "Start counting from zero", Callback = function ()
            for key, value in pairs(newStats()) do
                HubCore.Stats[key] = value
            end
            saveStats()
            HubCore.Notify("Stats reset")
        end})
    end
    local function refreshStats()
        local s = HubCore.Stats
        local elapsed = os.time() - s.StartedAt
        setTitle(statsWidgets.Time, "Working time: " .. formatDuration(elapsed))
        setTitle(statsWidgets.Matches, string.format("Matches: %d | Wins: %d | Losses: %d", s.Matches, s.Wins, s.Losses))
        local decided = s.Wins + s.Losses
        local winRate = decided > 0 and string.format("%d%%", math.floor(s.Wins / decided * 100 + 0.5)) or "-"
        local perHour = elapsed >= 60 and string.format("%.1f", s.Matches / (elapsed / 3600)) or "-"
        setTitle(statsWidgets.Rate, "Win rate: " .. winRate .. " | Matches/hour: " .. perHour)
        setTitle(statsWidgets.Rewards, string.format("Coins: +%s | Candy: +%s | Exp: +%s | Crates: +%s", formatNumber(s.Coins), formatNumber(s.Candy), formatNumber(s.Exp), formatNumber(s.Crates)))
        local coinsPerHour = elapsed >= 60 and formatNumber(s.Coins / (elapsed / 3600)) or "-"
        local candyPerHour = elapsed >= 60 and formatNumber(s.Candy / (elapsed / 3600)) or "-"
        local expPerHour = elapsed >= 60 and formatNumber(s.Exp / (elapsed / 3600)) or "-"
        setTitle(statsWidgets.Farm, string.format("Coins/hour: %s | Candy/hour: %s | Exp/hour: %s", coinsPerHour, candyPerHour, expPerHour))
    end
    task.spawn(function ()
        local counted, finalAt
        while HubCore.Running do
            pcall(function ()
                if game.PlaceId == HubCore.MatchId and HubCore.Final() then
                    finalAt = finalAt or os.clock()
                    if not counted and os.clock() - finalAt >= 4 then
                        counted = true
                        local resultGui = HubCore.GUI("FinalUI/Content/Content")
                        local resultText = resultGui and tostring(resultGui.Text):lower() or ""
                        local s = HubCore.Stats
                        s.Matches = s.Matches + 1
                        if resultText:find("won", 1, true) then
                            s.Wins = s.Wins + 1
                        elseif resultText:find("lost", 1, true) then
                            s.Losses = s.Losses + 1
                        end
                        local rewards = HubCore.ResultRewards()
                        s.Coins = s.Coins + (rewards.Coins or 0)
                        s.Candy = s.Candy + (rewards.Candy or 0)
                        s.Exp = s.Exp + (rewards.Exp or 0)
                        s.Crates = s.Crates + (rewards.Crates or 0)
                        saveStats()
                    end
                else
                    counted, finalAt = nil, nil
                end
            end)
            refreshStats()
            task.wait(1)
        end
    end)

    if HubCore.ReplayTab then
        local tab = HubCore.ReplayTab
        tab:Paragraph({ Title = "Replay Status", Desc = "What After Match = Replay is doing right now (Match tab, Match End)."})
        local stateLine = tab:Paragraph({ Title = "State: idle", Desc = "Current step"})
        local timerLine = tab:Paragraph({ Title = "Next action: -", Desc = "Time until Cancel / lobby return"})
        local settingsLine = tab:Paragraph({ Title = "Retry: -", Desc = "Delay before Cancel, attempts before lobby"})
        task.spawn(function ()
            while HubCore.Running do
                pcall(function ()
                    local replay = HubCore.Replay
                    local now = os.clock()
                    local state, nextAction = "idle", "-"
                    if HubConfig.EndAction ~= "Replay" then
                        state = "After Match is " .. tostring(HubConfig.EndAction) .. " (not Replay)"
                    elseif not replay then
                        state = "waiting for match end"
                    elseif replay.Returning then
                        state = "failed " .. HubCore.ReplayMaxAttempts .. " times, returning to lobby"
                        nextAction = "lobby teleport retry in " .. math.max(0, math.ceil((replay.Deadline or now) - now)) .. "s"
                    elseif (replay.TeleportUntil or 0) > now then
                        state = "teleporting..."
                    elseif replay.Voted then
                        state = "Play Again pressed (attempt " .. replay.Attempts .. "/" .. HubCore.ReplayMaxAttempts .. ")"
                        nextAction = "Cancel in " .. math.max(0, math.ceil(HubCore.ReplayRetryDelay - (now - (replay.PressedAt or now)))) .. "s"
                    else
                        state = "vote cancelled, pressing Play Again again"
                        nextAction = "any moment"
                    end
                    setTitle(stateLine, "State: " .. state)
                    setTitle(timerLine, "Next action: " .. nextAction)
                    setTitle(settingsLine, "Retry: Cancel after " .. HubCore.ReplayRetryDelay .. "s | max " .. HubCore.ReplayMaxAttempts .. " attempts")
                end)
                task.wait(0.5)
            end
        end)
    end

    HubCore.VerifyTeleportsBlocked = false
    pcall(function ()
        HubCore.Connect(game:GetService("LogService").MessageOut, function (message)
            if type(message) == "string" and (message:find("Verify Teleports", 1, true) or message:find("restricted place", 1, true)) then
                if not HubCore.VerifyTeleportsBlocked then
                    HubCore.VerifyTeleportsBlocked = true
                    HubCore.Notify("Executor blocked a teleport: turn off Verify Teleports in the executor settings")
                end
            end
        end)
    end)
    local checks = {
        { "queue_on_teleport (Auto Execute)", function ()
            return type(queue_on_teleport) == "function" or type(syn) == "table" and type(syn.queue_on_teleport) == "function"
        end},
        { "File access (settings, macros, stats)", function ()
            return type(readfile) == "function" and type(writefile) == "function" and type(isfile) == "function"
        end},
        { "HTTP request (webhooks)", function ()
            return HubCore.RequestFunction() ~= nil
        end},
        { "hookmetamethod (PlaceAnywhere)", function ()
            return type(hookmetamethod) == "function"
        end},
        { "Teleports not blocked (Verify Teleports)", function ()
            return not HubCore.VerifyTeleportsBlocked
        end},
        { "Auto Execute file exists", function ()
            if not HubConfig.AutoExecute then
                return true
            end
            return type(isfile) == "function" and isfile(HubCore.AutoExecuteFile())
        end},
        { "Webhook target configured", function ()
            if not HubConfig.WebhookEnabled then
                return true
            end
            return HubCore.ValidWebhook(HubConfig.WebhookURL) or HubCore.Telegram.Configured()
        end},
        { "Known game place", function ()
            return game.PlaceId == HubCore.LobbyId or game.PlaceId == HubCore.MatchId or game.PlaceId == HubCore.TradingId
        end},
    }
    local checkWidgets = {}
    local function runChecks(notify)
        local failed = {}
        for index, check in ipairs(checks) do
            local passed, result = pcall(check[2])
            local good = passed and result == true
            if not good then
                failed[#failed + 1] = check[1]
            end
            setTitle(checkWidgets[index], (good and "OK: " or "PROBLEM: ") .. check[1])
        end
        if notify and #failed > 0 then
            HubCore.Notify("Checks failed: " .. table.concat(failed, "; "))
        end
        return failed
    end
    if HubCore.ChecksTab then
        local tab = HubCore.ChecksTab
        tab:Paragraph({ Title = "Startup Checks", Desc = "What this executor and your settings allow. Sub-tab mode: " .. tostring(HubCore.SubTabMode)})
        for index, check in ipairs(checks) do
            checkWidgets[index] = tab:Paragraph({ Title = "... " .. check[1], Desc = "Checking"})
        end
        tab:Button({ Title = "Run Checks Again", Desc = "Refresh the list", Callback = function ()
            local failed = runChecks(false)
            HubCore.Notify(#failed == 0 and "All checks passed" or "Checks failed: " .. table.concat(failed, "; "))
        end})
    end
    task.delay(3, function ()
        pcall(runChecks, true)
    end)
end)
if not HubCore.ExtrasOk then
    warn("[Camera TD Hub] Extras failed to load: " .. tostring(HubCore.ExtrasError))
end
