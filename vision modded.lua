-- Version: 5.2.4-alpha
local a = {}
warn("Library brought to you by Vision Software")
warn("https://discord.gg/N9NEkNqzhk")
local b
b =
    hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local c = getnamecallmethod()
        if self == ContentProvider and (c == "PreloadAsync" or c == "preloadAsync") then
            local d = {...}
            if type(d[1]) ~= "table" or type(d[2]) ~= "function" then
                return b(self, ...)
            end
            local e
            task.spawn(
                function()
                    setnamecallmethod(c)
                    local f, g = pcall(b, self, d[1])
                    if not f and g then
                        e = g
                    end
                end
            )
            if e then
                return b(self, d[1])
            end
            d[1] = FilterTable(d[1])
            setnamecallmethod(c)
            return b(self, d[1], d[2])
        end
        return b(self, ...)
    end
)
if getgenv().visionlive then
    getgenv().visionlive = false
    getgenv().doCallback = false
    wait()
    getgenv().doCallback = true
    getgenv().visionlive = true
else
    getgenv().visionlive = false
    wait()
    getgenv().visionlive = true
end
local h = "5.2.4-alpha"
local i = "https://raw.githubusercontent.com/Vision-Software-LLC/Vision-UI/main/source"
function a:Icons()
    icons = {
        FluentIcons = {
            Home = "rbxassetid://9792462652",
            Aimbot = "rbxassetid://9766671041",
            Visuals = "rbxassetid://9766673555",
            Player = "rbxassetid://9766672602",
            Misc = "rbxassetid://9766671943",
            Settings = "rbxassetid://9766674082",
            Credits = "rbxassetid://9766675093",
            Exit = "rbxassetid://9766676906"
        },
        FeatherIcons = {
            Home = "rbxassetid://9792650361",
            Aimbot = "rbxassetid://9792632523",
            Visuals = "rbxassetid://9792631281",
            Player = "rbxassetid://9792631906",
            Misc = "rbxassetid://9792634811",
            Settings = "rbxassetid://9792633222",
            Credits = "rbxassetid://9792634075",
            Exit = "rbxassetid://9792635572"
        },
        NotificationIcons = {
            Success = "rbxassetid://9838874163",
            Warning = "rbxassetid://9838873385",
            Error = "rbxassetid://9838876113",
            Informational = "rbxassetid://9838877673",
            Custom = "rbxassetid://9838878267"
        },
        VisionLogo = "rbxassetid://10006089373"
    }
    return icons
end
function a:GetVersion()
    return h
end
function a:CompareVersion()
    if h == loadstring(game:HttpGet(i))():GetVersion() then
        return true
    else
        return false
    end
end
function a:CreateWindow(j)
    local k = j.PrimaryColor or Color3.fromRGB(35, 35, 35)
    local l = j.SecondaryColor or Color3.fromRGB(40, 40, 40)
    local m = j.FooterColor or Color3.fromRGB(45, 45, 45)
    local n = Color3.fromRGB(75, 75, 75)
    local o = Color3.fromRGB(255, 255, 255)
    local p = Color3.fromRGB(255, 255, 255)
    local q = Color3.fromRGB(30, 220, 130)
    local r = Color3.fromRGB(30, 220, 130)
    local s = Color3.fromRGB(60, 60, 60)
    local t = Color3.fromRGB(65, 65, 65)
    local u = Color3.fromRGB(169, 169, 169)
    local v = Color3.fromRGB(75, 75, 75)
    j.ToggleBind = j.ToggleBind or "RightShift"
    local w = j.Callback or function()
            print("Vision Closed")
        end
    local x = j.Title or "Vision UI"
    local y = j.TitleSize or 16
    local z = j.SkipStartup or false
    local A = game:GetService("TweenService")
    local B = j.Footer
    local C = Instance.new("ScreenGui")
    local D = Instance.new("Frame")
    local E = Instance.new("Frame")
    local F = Instance.new("Frame")
    local G = Instance.new("UICorner")
    local H = Instance.new("UICorner")
    local I = Instance.new("Frame")
    local J = Instance.new("TextLabel")
    local K = Instance.new("TextLabel")
    local L = Instance.new("UICorner")
    local M = Instance.new("Frame")
    local N = Instance.new("Frame")
    local O = Instance.new("Frame")
    if syn and syn.protect_gui and not getexecutorname then
        syn.protect_gui(C)
        C.Parent = game:GetService("CoreGui")
        C.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        print("Synapse Detected. GUI Protected.")
    elseif gethui and (getexecutorname and getexecutorname() == "ScriptWare") then
        C.Parent = gethui()
        C.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        print("ScriptWare Detected. GUI Protected.")
    elseif gethui then
        C.Parent = gethui()
        C.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        print("Supported Executor Detected. GUI Protected.")
    else
        coroutine.wrap(
            function()
                local P = {
                    "a",
                    "A",
                    "b",
                    "B",
                    "c",
                    "C",
                    "d",
                    "D",
                    "e",
                    "E",
                    "f",
                    "F",
                    "g",
                    "G",
                    "h",
                    "H",
                    "i",
                    "I",
                    "j",
                    "J",
                    "k",
                    "K",
                    "l",
                    "L",
                    "m",
                    "M",
                    "n",
                    "N",
                    "o",
                    "O",
                    "p",
                    "P",
                    "q",
                    "Q",
                    "r",
                    "R",
                    "s",
                    "S",
                    "t",
                    "T",
                    "u",
                    "U",
                    "v",
                    "V",
                    "w",
                    "W",
                    "x",
                    "X",
                    "y",
                    "Y",
                    "z",
                    "Z",
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    0
                }
                C.Name = tostring(P[math.random(1, #P)])
                for Q = 1, math.random(7, 30), 1 do
                    local R = tostring(P[math.random(1, #P)])
                    C.Name = C.Name .. R
                end
            end
        )()
        C.Parent = game:GetService("CoreGui")
        C.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        print("Synapse not detected. Vision will randomize name.")
    end
    if game.GameId == 1168263273 then
        warn("Bad Business Detected, Vision Startup Skipped.")
        z = true
    end
    if z then
        warn("Startup Skipped")
    else
        local function S(T)
            if not T or not tonumber(T) then
                return false
            end
            local U, V =
                pcall(
                function()
                    return MarketplaceService:GetProductInfo(T)
                end
            )
            if U and V and V.AssetTypeId == 3 then
                return true
            else
                return false
            end
        end
        if S(9795110270) and not z then
            local W = Instance.new("Sound", C)
            W.SoundId = "rbxassetid://9795110270"
            W.Volume = 0.5
            W.Pitch = 1
            W.Looped = false
            if not W.IsLoaded then
                W.Loaded:wait()
            end
            W:Play()
        end
        local X = Instance.new("ImageLabel")
        X.Name = "logo"
        X.Parent = C
        X.BackgroundTransparency = 1
        X.Image = "rbxassetid://9795408363"
        X.ImageTransparency = 1
        X.Size = UDim2.new(0, 250, 0, 125)
        X.AnchorPoint = Vector2.new(0.5, 0.5)
        X.Position = UDim2.new(0.5, 0, 0.5, 0)
        X.ZIndex = 2
        X.Visible = true
        local Y = Instance.new("TextLabel")
        Y.Name = "logoText"
        Y.Parent = X
        Y.BackgroundTransparency = 1
        Y.AnchorPoint = Vector2.new(0.5, 0.5)
        Y.Size = UDim2.new(0, 250, 0, 25)
        Y.Position = UDim2.new(0.5, 0, 1.5, 0)
        Y.ZIndex = 2
        Y.Font = Enum.Font.GothamBold
        Y.Text = "Vision"
        Y.TextTransparency = 1
        Y.TextColor3 = Color3.new(1, 1, 1)
        Y.TextSize = 24
        Y.TextStrokeTransparency = 1
        Y.TextStrokeColor3 = Color3.new(0, 0, 0)
        Y.TextWrapped = true
        Y.TextXAlignment = Enum.TextXAlignment.Center
        Y.TextYAlignment = Enum.TextYAlignment.Center
        Y.Visible = true
        local Z = Instance.new("TextLabel")
        Z.Name = "bottomLogoText"
        Z.Parent = X
        Z.BackgroundTransparency = 1
        Z.Size = UDim2.new(0, 500, 0, 100)
        Z.AnchorPoint = Vector2.new(0.5, 0.5)
        Z.Position = UDim2.new(0.5, 0, 1.75, 0)
        Z.ZIndex = 2
        Z.Font = Enum.Font.Gotham
        Z.Text = ""
        Z.TextTransparency = 1
        Z.TextColor3 = Color3.new(1, 1, 1)
        Z.TextSize = 20
        Z.TextStrokeTransparency = 1
        Z.TextStrokeColor3 = Color3.new(0, 0, 0)
        Z.TextWrapped = true
        Z.TextXAlignment = Enum.TextXAlignment.Center
        Z.TextYAlignment = Enum.TextYAlignment.Center
        Z.Visible = true
        local A = game:GetService("TweenService")
        local _ = game:GetService("Workspace").CurrentCamera
        local a0 = Instance.new("BlurEffect")
        a0.Parent = _
        a0.Size = 0
        local a1 =
            A:Create(X, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0})
        local a2 =
            A:Create(
            X,
            TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(0.5, 0, 0.5, 0)}
        )
        local a3 = A:Create(a0, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = 20})
        if not z ~= nil and not z then
            a1:Play()
            a3:Play()
            a2:Play()
            wait(2)
        end
        local a4 =
            A:Create(
            X,
            TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(0.5, 0, 0.45, 0)}
        )
        if not z ~= nil and not z then
            a4:Play()
        end
        local a1 =
            A:Create(Y, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})
        if not z ~= nil and not z then
            a1:Play()
        end
        local a3 =
            A:Create(Z, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})
        if not z ~= nil and not z then
            a3:Play()
            wait(2)
        end
        local a5 =
            A:Create(X, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1})
        local a6 = A:Create(a0, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = 0})
        if not z ~= nil and not z then
            a5:Play()
            a6:Play()
        end
        local a7 =
            A:Create(Y, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
        local a8 =
            A:Create(Z, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
        local a9 =
            A:Create(
            X,
            TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(0.5, 0, -0.2, 0)}
        )
        if not z ~= nil and not z then
            a7:Play()
            a8:Play()
            a9:Play()
            wait(2)
            X:Destroy()
            a0:Destroy()
        end
    end
    local aa = Instance.new("ImageLabel")
    aa.Name = "shadowimage"
    aa.Parent = C
    aa.AnchorPoint = Vector2.new(0.5, 0.5)
    aa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aa.BackgroundTransparency = 1.000
    aa.Position = UDim2.new(0.067, 0, 0.5, 0)
    aa.Size = UDim2.new(0.15, 0, 0.79, 0)
    if j.Footer then
        aa.Position = UDim2.new(0.067, 0, 0.53, 0)
        aa.Size = UDim2.new(0.15, 0, 0.85, 0)
    end
    aa.ZIndex = -3
    aa.Image = "rbxassetid://9313765853"
    aa.ImageColor3 = Color3.fromRGB(45, 45, 45)
    aa.ScaleType = Enum.ScaleType.Slice
    aa.SliceCenter = Rect.new(45, 45, 45, 45)
    aa.SliceScale = 0.8
    aa.ClipsDescendants = true
    F.Name = "sidebarext"
    F.Parent = C
    F.AnchorPoint = Vector2.new(0.5, 0.5)
    F.BackgroundColor3 = k
    F.Position = UDim2.new(0.0827400908, 0, 0.5, 0)
    F.Size = UDim2.new(0.0960000008, 0, 0.75, 0)
    F.ZIndex = 1
    L.CornerRadius = UDim.new(0, 12)
    L.Parent = F
    D.Name = "main"
    D.Parent = C
    D.AnchorPoint = Vector2.new(0.5, 0.5)
    D.BackgroundColor3 = k
    D.BackgroundTransparency = 1.000
    D.Position = UDim2.new(0.0539785288, 0, 0.5, 0)
    D.Size = UDim2.new(0.0136402259, 0, 0.75, 0)
    D.ZIndex = 0
    G.CornerRadius = UDim.new(0, 12)
    G.Parent = D
    E.Name = "sidebar"
    E.Parent = C
    E.AnchorPoint = Vector2.new(0.5, 0.5)
    E.BackgroundColor3 = k
    E.Position = UDim2.new(0.0254999995, 0, 0.5, 0)
    E.Size = UDim2.new(0.04, 0, 0.75, 0)
    E.ZIndex = 0
    H.CornerRadius = UDim.new(0, 12)
    H.Parent = E
    I.Name = "selector"
    I.Parent = E
    I.AnchorPoint = Vector2.new(0.5, 0.5)
    I.BackgroundColor3 = q
    I.BorderSizePixel = 0
    I.Position = UDim2.new(0.0199999996, 0, 0.0500000007, 0)
    I.Size = UDim2.new(0.0399999991, 0, 0, 25)
    I.ZIndex = 5
    J.Name = "SelectedTab"
    J.Parent = E
    J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    J.Position = UDim2.new(2.83072257, 0, 0.0689609349, 0)
    J.Size = UDim2.new(0, 1, 0, 4)
    J.Visible = false
    J.Font = Enum.Font.SourceSans
    J.Text = "home"
    J.TextColor3 = Color3.fromRGB(0, 0, 0)
    J.TextSize = 14.000
    K.Name = "isextended"
    K.Parent = E
    K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    K.Size = UDim2.new(0, 200, 0, 50)
    K.Visible = false
    K.Font = Enum.Font.SourceSans
    K.Text = "false"
    K.TextColor3 = Color3.fromRGB(0, 0, 0)
    K.TextSize = 14.000
    M.Name = "verticalseperator"
    M.Parent = F
    M.AnchorPoint = Vector2.new(0.5, 0.5)
    M.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    M.BorderSizePixel = 0
    M.Position = UDim2.new(0.993390441, 0, 0.5, 0)
    M.Size = UDim2.new(0, 2, 0, 0)
    M.ZIndex = 2
    coroutine.wrap(
        function()
            while wait() do
                if not getgenv().visionlive then
                    break
                end
                M.BackgroundColor3 = v
            end
        end
    )()
    local ab = Instance.new("Frame")
    local ac = Instance.new("UICorner")
    local ad = Instance.new("Frame")
    local ae = Instance.new("UICorner")
    ab.Name = "sidefooter"
    ab.Parent = C
    ab.AnchorPoint = Vector2.new(0.5, 0.5)
    ab.BackgroundColor3 = m
    ab.Position = UDim2.new(E.Position.X.Scale + 0.0426, 0, 0.88, 0)
    ab.Size = UDim2.new(0.1252, 0, 0.11, 0)
    ab.ZIndex = -1
    ac.CornerRadius = UDim.new(0, 12)
    ac.Parent = ab
    ad.Name = "mainfooter"
    ad.Parent = C
    ad.AnchorPoint = Vector2.new(0.5, 0.5)
    ad.BackgroundColor3 = m
    ad.Position = UDim2.new(0.0539785288, 0, 0.88, 0)
    ad.Size = UDim2.new(0.0136402259, 0, 0.11, 0)
    ad.ZIndex = -2
    ae.CornerRadius = UDim.new(0, 12)
    ae.Parent = ad
    local af = Instance.new("ImageLabel")
    local ag = Instance.new("UICorner")
    af.Name = "footerimage"
    af.Parent = ab
    af.AnchorPoint = Vector2.new(0.5, 0.5)
    af.BackgroundColor3 = m
    af.BackgroundTransparency = 1.000
    af.Position = UDim2.new(0.13, 0, 0.7, 0)
    local ah = game.Players.LocalPlayer.UserId
    local ai = Enum.ThumbnailType.HeadShot
    local aj = Enum.ThumbnailSize.Size48x48
    local ak, al = game.Players:GetUserThumbnailAsync(ah, ai, aj)
    af.Image = ak
    af.Size = UDim2.new(0, 32, 0, 32)
    ag.CornerRadius = UDim.new(1, 0)
    ag.Parent = af
    local am = Instance.new("TextLabel")
    am.Name = "footertext"
    am.Parent = ab
    am.AnchorPoint = Vector2.new(0.5, 0.5)
    am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    am.BackgroundTransparency = 1.000
    am.Position = UDim2.new(0.3, 0, 0.72, 0)
    am.Size = UDim2.new(0.1, 0, 0.1, 0)
    am.Font = Enum.Font.GothamSemibold
    am.TextXAlignment = Enum.TextXAlignment.Left
    am.Text = game.Players.LocalPlayer.Name
    am.TextColor3 = o
    am.TextSize = 14.000
    local an = Instance.new("Frame")
    an.Name = "footerseperator"
    an.Parent = ab
    an.AnchorPoint = Vector2.new(0.5, 0.5)
    an.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    an.BorderSizePixel = 0
    an.Position = UDim2.new(0.5, 0, 0.46, 0)
    an.Size = UDim2.new(1, 0, 0, 1)
    local ao = Instance.new("Frame")
    ao.Name = "mainfooterseperator"
    ao.Parent = ad
    ao.AnchorPoint = Vector2.new(0.5, 0.5)
    ao.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    ao.BorderSizePixel = 0
    ao.Position = UDim2.new(0.5, 0, 0.46, 0)
    ao.Size = UDim2.new(1, 0, 0, 1)
    local ap = Instance.new("ImageButton")
    ap.Name = "mainfooterdestroyguiimage"
    ap.Parent = ad
    ap.AnchorPoint = Vector2.new(0.5, 0.5)
    ap.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ap.BackgroundTransparency = 1
    ap.BorderSizePixel = 0
    ap.Position = UDim2.new(0.96, 0, 0.72, 0)
    ap.Size = UDim2.new(0.0324, 0, 0.25, 0)
    ap.Image = "rbxassetid://9766676906"
    ap.ImageColor3 = Color3.fromRGB(255, 255, 255)
    ap.ZIndex = 102
    local aq = Instance.new("UICorner")
    aq.CornerRadius = UDim.new(0, 6)
    aq.Parent = ap
    local ar = Instance.new("ImageButton")
    ar.Name = "sidefooterdestroyguiimage"
    ar.Parent = ab
    ar.AnchorPoint = Vector2.new(0.5, 0.5)
    ar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ar.BackgroundTransparency = 1
    ar.BorderSizePixel = 0
    ar.Position = UDim2.new(0.9, 0, 0.72, 0)
    ar.Size = UDim2.new(0.12, 0, 0.25, 0)
    ar.Image = "rbxassetid://9766676906"
    ar.ImageColor3 = Color3.fromRGB(255, 255, 255)
    ar.ZIndex = 102
    local as = Instance.new("UICorner")
    as.CornerRadius = UDim.new(0, 6)
    as.Parent = ar
    if j.Footer == nil or not j.Footer then
        ab.Visible = false
        ad.Visible = false
    end
    local at = game:GetService("UserInputService")
    getgenv().togglebind = Enum.KeyCode[j.ToggleBind] or Enum.KeyCode.RightShift
    local au =
        at.InputBegan:Connect(
        function(av)
            if av.KeyCode == getgenv().togglebind then
                for Q, aw in pairs(C:GetChildren()) do
                    if aw.Name ~= "NotifHolder" then
                        local ax =
                            A:Create(
                            aw,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                            {Position = aw.Position - UDim2.new(0, 0, -1, 0)}
                        )
                        local ay =
                            A:Create(
                            aw,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                            {Position = aw.Position - UDim2.new(0, 0, 1, 0)}
                        )
                        if aw.Visible then
                            task.spawn(
                                function()
                                    ax:Play()
                                    ax.Completed:Wait()
                                    aw.Visible = false
                                end
                            )
                        else
                            task.spawn(
                                function()
                                    aw.Visible = true
                                    ay:Play()
                                end
                            )
                        end
                    end
                end
            end
        end
    )
    coroutine.wrap(
        function()
            while wait() do
                if not getgenv().visionlive then
                    au:Disconnect()
                    break
                end
                am.TextColor3 = o
                af.BackgroundColor3 = m
                ab.BackgroundColor3 = m
                ad.BackgroundColor3 = m
                I.BackgroundColor3 = q
                F.BackgroundColor3 = k
                D.BackgroundColor3 = k
                E.BackgroundColor3 = k
                if D.Size.X.Scale > 0.055 then
                    K.Text = "true"
                else
                    K.Text = "false"
                end
                if D.Size.X.Scale > 0.055 then
                    ar.Visible = false
                end
                if D.Size.X.Scale < 0.066 then
                    ar.Visible = true
                end
                for Q, aw in pairs(D:GetChildren()) do
                    if aw:IsA("ScrollingFrame") or aw:IsA("Frame") then
                        if aw.Name == J.Text and K.Text == "true" then
                            aw.home_2.Visible = true
                            aw.Visible = true
                        else
                            if aw.Name ~= "shadow" then
                                if aw:IsA("ScrollingFrame") then
                                    aw.home_2.Visible = true
                                end
                                aw.Visible = false
                            end
                        end
                    end
                end
            end
        end
    )()
    local function az()
        for Q, aw in pairs(C:GetChildren()) do
            if
                aw:IsA("Frame") or aw:IsA("ImageLabel") or aw:IsA("TextLabel") or aw:IsA("ImageLabel") or
                    aw:IsA("ImageButton") or
                    aw:IsA("ImageButton")
             then
                local a1 = A:Create(aw, TweenInfo.new(2), {Position = aw.Position + UDim2.new(0, 0, 5, 0)})
                a1:Play()
            end
        end
    end
    ar.MouseButton1Click:connect(
        function()
            az()
            local function S(T)
                if not T or not tonumber(T) then
                    return false
                end
                local U, V =
                    pcall(
                    function()
                        return MarketplaceService:GetProductInfo(T)
                    end
                )
                if U and V and V.AssetTypeId == 3 then
                    return true
                else
                    return false
                end
            end
            if S(9795110270) and not z then
                local W = Instance.new("Sound", C)
                W.SoundId = "rbxassetid://9795110270"
                W.Volume = 0.5
                W.Pitch = 1
                W.Looped = false
                if not W.IsLoaded then
                    W.Loaded:wait()
                end
                W:Play()
            end
            wait(1)
            C:Destroy()
            getgenv().visionlive = false
        end
    )
    ap.MouseButton1Click:connect(
        function()
            az()
            local function S(T)
                if not T or not tonumber(T) then
                    return false
                end
                local U, V =
                    pcall(
                    function()
                        return MarketplaceService:GetProductInfo(T)
                    end
                )
                if U and V and V.AssetTypeId == 3 then
                    return true
                else
                    return false
                end
            end
            if S(9795110270) and not z then
                local W = Instance.new("Sound", C)
                W.SoundId = "rbxassetid://9795110270"
                W.Volume = 0.5
                W.Pitch = 1
                W.Looped = false
                if not W.IsLoaded then
                    W.Loaded:wait()
                end
                W:Play()
            end
            wait(1)
            C:Destroy()
            getgenv().visionlive = false
        end
    )
    local aA = Instance.new("Frame")
    local L = Instance.new("UICorner")
    aA.Name = "NotifHolder"
    aA.Parent = C
    aA.AnchorPoint = Vector2.new(1, 0)
    aA.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    aA.BackgroundTransparency = 1
    aA.BorderSizePixel = 0
    aA.ClipsDescendants = true
    aA.Position = UDim2.new(0.993811905, 0, 0.0113765644, 0)
    aA.Size = UDim2.new(0.3, 0, 0, 50)
    local aB = aA:GetChildren()
    L.Parent = aA
    local aC = true
    coroutine.wrap(
        function()
            while wait() do
                if not getgenv().visionlive then
                    break
                end
                if aA.BackgroundTransparency == 1 then
                    aC = true
                end
            end
        end
    )()
    local aD =
        aA.ChildAdded:Connect(
        function(aE)
            coroutine.wrap(
                function()
                    if aC then
                        local aF = A:Create(aA, TweenInfo.new(.2), {BackgroundTransparency = 0})
                        aC = false
                        aF:Play()
                    end
                    aB = aA:GetChildren()
                    sizeCalc = (#aB - 1) * 50
                    if #aB <= 2 then
                        sizeCalc = 50
                    end
                    local aF =
                        A:Create(
                        aA,
                        TweenInfo.new(.2),
                        {Size = UDim2.new(aA.Size.X.Scale, aA.Size.X.Offset, aA.Size.Y.Scale, sizeCalc)}
                    )
                    aF:Play()
                    wait(0.2)
                end
            )()
        end
    )
    local aG =
        aA.ChildRemoved:Connect(
        function()
            coroutine.wrap(
                function()
                    if aA.Size.Y.Offset > 50 then
                        local aF =
                            A:Create(
                            aA,
                            TweenInfo.new(.2),
                            {
                                Size = UDim2.new(
                                    aA.Size.X.Scale,
                                    aA.Size.X.Offset,
                                    aA.Size.Y.Scale,
                                    aA.Size.Y.Offset - 50
                                )
                            }
                        )
                        aF:Play()
                    else
                        local aF = A:Create(aA, TweenInfo.new(.2), {BackgroundTransparency = 1})
                        aF:Play()
                    end
                    for Q, aw in pairs(aA:GetChildren()) do
                        if aw:IsA("Frame") and aw.Name == "NewNotif" then
                            local aH =
                                A:Create(
                                aw,
                                TweenInfo.new(.2),
                                {
                                    Position = UDim2.new(
                                        aw.Position.X.Scale,
                                        aw.Position.X.Offset,
                                        aw.Position.Y.Scale,
                                        aw.Position.Y.Offset - 50
                                    )
                                }
                            )
                            aH:Play()
                        end
                    end
                    wait(.2)
                end
            )()
        end
    )
    coroutine.wrap(
        function()
            while wait() do
                if not getgenv().visionlive then
                    aD:Disconnect()
                    aG:Disconnect()
                    aA:Destroy()
                    break
                end
                if aA.Size.Y.Offset < 49 and not aA:FindFirstChild("NewNotif") then
                    aA.Size = UDim2.new(aA.Size.X.Scale, aA.Size.X.Offset, aA.Size.Y.Scale, 0)
                end
            end
        end
    )()
    local aI = false
    function a:Notification(j)
        coroutine.wrap(
            function()
                if aI then
                    warn("Hold your horses bucko")
                    return
                end
                aI = true
                local aJ = Instance.new("Frame")
                local aK = Instance.new("UICorner")
                local aL = Instance.new("ImageLabel")
                local aM = Instance.new("TextLabel")
                local aN = {}
                local aO = 0
                for Q, aw in pairs(aA:GetChildren()) do
                    if aw.Name == "NewNotif" and aw:IsA("Frame") then
                        aO = aO + 1
                    end
                end
                if j ~= nil then
                    aN = {
                        Icon = j.Icon or "rbxassetid://9856777794",
                        Text = j.Text or "Notification Example Text",
                        ShowIndex = j.ShowIndex,
                        IconPosition = UDim2.new(0.0460000001, 0, 0, 26),
                        TextPosition = UDim2.new(0.1, 20, 0, 26),
                        NewNotifPosition = UDim2.new(0, 0, 0, 50 * aO)
                    }
                else
                    aN = {
                        Icon = "rbxassetid://9856777794",
                        Text = "Notification Example Text",
                        ShowIndex = true,
                        IconPosition = UDim2.new(0.0460000001, 0, 0, 26),
                        TextPosition = UDim2.new(0.1, 20, 0, 26),
                        NewNotifPosition = UDim2.new(0, 0, 0, 50 * aO)
                    }
                end
                if aO == 0 then
                    aN.IconPosition = UDim2.new(0.0460000001, 0, 0, 26)
                    aN.TextPosition = UDim2.new(0.1, 20, 0, 26)
                    aN.NewNotifPosition = UDim2.new(0, 0, 0, 0)
                end
                aJ.Name = "NewNotif"
                aJ.Parent = aA
                aJ.AnchorPoint = Vector2.new(0, 0)
                aJ.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                aJ.BorderSizePixel = 0
                aJ.ClipsDescendants = true
                aJ.Position = aN.NewNotifPosition
                aJ.Size = UDim2.new(1, 0, 0, 51)
                aK.Parent = aJ
                aK.CornerRadius = UDim.new(0, 8)
                aL.Name = "Icon"
                aL.Parent = aJ
                aL.AnchorPoint = Vector2.new(0.5, 0.5)
                aL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aL.BackgroundTransparency = 1.000
                aL.BorderSizePixel = 0
                aL.Position = aN.IconPosition
                aL.Size = UDim2.new(0, 26, 0, 26)
                aL.Image = aN.Icon
                aL.ImageTransparency = 1
                aM.Name = "Text"
                aM.Parent = aJ
                aM.Active = true
                aM.AnchorPoint = Vector2.new(0, 0.5)
                aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aM.BackgroundTransparency = 1.000
                aM.Position = aN.TextPosition
                aM.Selectable = true
                aM.Size = UDim2.new(0.89, 0, 0.6, 0)
                aM.Font = Enum.Font.SourceSans
                aM.Text = aN.Text
                aM.TextColor3 = Color3.fromRGB(255, 255, 255)
                aM.TextSize = 20.000
                aM.TextXAlignment = Enum.TextXAlignment.Left
                aM.TextTransparency = 1.000
                aM.RichText = true
                if aN.ShowIndex then
                    aM.Text = aN.Text .. " " .. " [ " .. "<font color='#FFA500'>" .. aO + 1 .. "</font>" .. " ]"
                end
                local aP =
                    A:Create(
                    aM,
                    TweenInfo.new(.25),
                    {
                        TextTransparency = 0,
                        Position = UDim2.new(
                            aM.Position.X.Scale,
                            aM.Position.X.Offset - 20,
                            aM.Position.Y.Scale,
                            aM.Position.Y.Offset
                        )
                    }
                )
                local aQ = A:Create(aL, TweenInfo.new(.25), {ImageTransparency = 0})
                aP:Play()
                aQ:Play()
                wait(.25)
                local aB = aA:GetChildren()
                local aR =
                    A:Create(
                    aA,
                    TweenInfo.new(.05),
                    {Size = UDim2.new(aA.Size.X.Scale, aA.Size.X.Offset, aA.Size.Y.Scale, (#aB - 1) * 50)}
                )
                aR:Play()
                wait(0.05)
                aI = false
                wait(2.5)
                local aS = A:Create(aL, TweenInfo.new(.4), {ImageTransparency = 1})
                local aT =
                    A:Create(
                    aM,
                    TweenInfo.new(.4),
                    {
                        TextTransparency = 1,
                        Position = UDim2.new(
                            aM.Position.X.Scale,
                            aM.Position.X.Offset + 20,
                            aM.Position.Y.Scale,
                            aM.Position.Y.Offset
                        )
                    }
                )
                aS:Play()
                aT:Play()
                wait(.4)
                aJ:Destroy()
                if #aB <= 1 then
                    local aF = A:Create(aA, TweenInfo.new(.2), {BackgroundTransparency = 1})
                    aF:Play()
                end
            end
        )()
    end
    local aU = {}
    function aU:SetColor(aV, aW)
        if aV == "PrimaryColor" then
            k = aW
        elseif aV == "SecondaryColor" then
            l = aW
        elseif aV == "FooterColor" then
            m = aW
        elseif aV == "ButtonBorderColor" then
            n = aW
        elseif aV == "TextColor" then
            o = aW
        elseif aV == "CheckboxColor" then
            p = aW
        elseif aV == "SelectorColor" then
            q = aW
        elseif aV == "SliderPrimaryColor" then
            r = aW
        elseif aV == "SliderBackgroundColor" then
            s = aW
        elseif aV == "InputBoxBackgroundColor" then
            t = aW
        elseif aV == "DropdownUnselectedColor" then
            u = aW
        elseif aV == "SeparatorColor" then
            v = aW
        end
    end
    function aU:ChangeToggleBind(j)
        getgenv().togglebind = Enum.KeyCode[j.NewBind] or Enum.KeyCode.RightShift
    end
    function aU:Destroy()
        C:Destroy()
        getgenv().visionlive = false
    end
    function aU:Visible(aX)
        for Q, aw in pairs(C:GetChildren()) do
            if aw.Name ~= "NotifHolder" then
                aw.Visible = aX
            end
        end
    end
    function aU:TabSeparator()
        local aY = 0
        for Q, aw in pairs(D:GetChildren()) do
            if aw:IsA("Frame") then
                aY = aY + 1
            end
        end
        if aY == nil then
            aY = 1
        end
        local aZ = 0.024 + aY * 0.05
        local a_ = Instance.new("Frame")
        a_.Name = "Separator"
        a_.Parent = F
        a_.BackgroundColor3 = v
        a_.BorderSizePixel = 0
        a_.AnchorPoint = Vector2.new(0, 0)
        a_.Position = UDim2.new(-0.3, 0, aZ, 0)
        a_.Size = UDim2.new(1.3, 0, 0, 1)
        coroutine.wrap(
            function()
                while wait() do
                    if not getgenv().visionlive then
                        break
                    end
                    a_.BackgroundColor3 = v
                end
            end
        )()
    end
    function aU:CreateTab(j)
        j.Text = j.Text or "Text"
        j.Icon = j.Icon or ""
        j.CanvasSize = j.Canvas or 2
        j.Default = j.Default or false
        local b0 = Instance.new("TextButton")
        local b1 = Instance.new("UICorner")
        local b2 = Instance.new("Frame")
        local b3 = Instance.new("UICorner")
        local b4 = Instance.new("UIListLayout")
        local b5 = Instance.new("ImageButton")
        local b6 = Instance.new("Frame")
        local b2 = Instance.new("ScrollingFrame")
        local L = Instance.new("UICorner")
        local b7 = Instance.new("TextLabel")
        local aY = 0
        for Q, aw in pairs(D:GetChildren()) do
            if aw:IsA("Frame") then
                aY = aY + 1
            end
        end
        if aY == nil then
            aY = 1
        end
        local aZ = 0.05 + aY * 0.05
        b6.Name = j.Text
        b6.Parent = D
        b6.AnchorPoint = Vector2.new(0.5, 0.5)
        b6.BackgroundColor3 = k
        b6.BorderSizePixel = 0
        b6.Position = UDim2.new(0.510999978, 0, 0.5, 0)
        b6.Size = UDim2.new(1, 0, 1, 0)
        b6.Visible = true
        b6.ZIndex = 0
        b6.ClipsDescendants = true
        b2.Name = "home_2"
        b2.Parent = b6
        b2.Active = true
        b2.AnchorPoint = Vector2.new(0.5, 0.5)
        b2.BackgroundColor3 = k
        b2.BorderSizePixel = 0
        b2.Position = UDim2.new(0.5, 0, 0.5, 0)
        b2.Size = UDim2.new(0.924554944, 0, 0.9, 0)
        b2.ZIndex = 0
        if j.CanvasSize ~= nil then
            b2.CanvasSize = UDim2.new(0, 0, j.CanvasSize, 0)
        else
            b2.CanvasSize = UDim2.new(0, 0, 0, 0)
        end
        b2.ScrollBarThickness = 8
        b2.VerticalScrollBarInset = Enum.ScrollBarInset.Always
        b2.Visible = false
        b7.Name = "Title"
        b7.Parent = b6
        b7.AnchorPoint = Vector2.new(0.5, 0.5)
        b7.BackgroundColor3 = Color3.new(1, 1, 1)
        b7.BackgroundTransparency = 1
        b7.Position = UDim2.new(0.5, 0, 0.025, 0)
        b7.Size = UDim2.new(1, 0, 0.1, 0)
        b7.Font = Enum.Font.GothamBold
        b7.Text = x
        b7.TextColor3 = Color3.new(1, 1, 1)
        b7.TextSize = y
        b7.TextXAlignment = Enum.TextXAlignment.Center
        b7.TextYAlignment = Enum.TextYAlignment.Center
        b7.ZIndex = 0
        b3.CornerRadius = UDim.new(0, 12)
        b3.Parent = b2
        b4.Parent = b2
        b4.HorizontalAlignment = Enum.HorizontalAlignment.Center
        b4.SortOrder = Enum.SortOrder.LayoutOrder
        b4.Padding = UDim.new(0, 5)
        L.Parent = b6
        b5.Name = "home_3"
        b5.Parent = E
        b5.AnchorPoint = Vector2.new(0.5, 0.5)
        b5.BackgroundColor3 = l
        coroutine.wrap(
            function()
                while wait() do
                    if not getgenv().visionlive then
                        break
                    end
                    b5.BackgroundColor3 = l
                    b2.BackgroundColor3 = k
                    b6.BackgroundColor3 = k
                    b7.TextColor3 = o
                end
            end
        )()
        b5.BackgroundTransparency = 1.000
        b5.Position = UDim2.new(0.5, 0, 0.05, 0)
        if aY >= 1 then
            b5.Position = UDim2.new(0.5, 0, aZ, 0)
        end
        b5.Size = UDim2.new(0, 25, 0, 25)
        b5.ZIndex = 3
        b5.Image = j.Icon
        if j.Default then
            b5.ImageColor3 = q
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        b5.BackgroundColor3 = q
                    end
                end
            )()
        else
            b5.ImageColor3 = Color3.fromRGB(125, 135, 145)
        end
        b5.ImageRectOffset = Vector2.new(0, 0)
        b5.ImageRectSize = Vector2.new(0, 0)
        b0.Name = "home"
        b0.Parent = F
        b0.Active = false
        b0.AnchorPoint = Vector2.new(0.5, 0.5)
        b0.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        b0.BackgroundTransparency = 1.000
        b0.BorderSizePixel = 0
        b0.Position = UDim2.new(0.32004559, 0, 0.05, 0)
        if aY >= 1 then
            b0.Position = UDim2.new(0.32004559, 0, aZ, 0)
        end
        b0.Selectable = false
        b0.Size = UDim2.new(1, 0, 0, 30)
        b0.Font = Enum.Font.Gotham
        b0.Text = "        " .. j.Text
        if j.Default then
            b0.TextColor3 = q
            J.Text = j.Text
        end
        b0.TextColor3 = Color3.fromRGB(255, 255, 255)
        b0.TextSize = 16.000
        b0.TextXAlignment = Enum.TextXAlignment.Left
        b1.Parent = b0
        b0.MouseEnter:Connect(
            function()
                b0.BackgroundTransparency = 0.4
            end
        )
        b0.MouseLeave:Connect(
            function()
                b0.BackgroundTransparency = 1
            end
        )
        coroutine.wrap(
            function()
                while wait() do
                    if not getgenv().visionlive then
                        break
                    end
                    if J.Text ~= j.Text then
                        b5.ImageColor3 = Color3.fromRGB(125, 135, 145)
                        b0.TextColor3 = o
                    else
                        b5.ImageColor3 = q
                        b0.TextColor3 = q
                    end
                end
            end
        )()
        b0.MouseButton1Click:Connect(
            function()
                local A = game:GetService("TweenService")
                local b8 = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local b9 =
                    A:Create(
                    I,
                    b8,
                    {
                        Position = UDim2.new(
                            I.Position.X.Scale,
                            I.Position.X.Offset,
                            b0.Position.Y.Scale,
                            I.Position.Y.Offset
                        )
                    }
                )
                local ba = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local bb =
                    A:Create(D, ba, {Position = UDim2.new(0.345, 0, 0.5, 0), Size = UDim2.new(0.454, 0, 0.75, 0)})
                local bc =
                    A:Create(D, ba, {Position = UDim2.new(0.054, 0, 0.5, 0), Size = UDim2.new(0.014, 0, 0.75, 0)})
                local bd =
                    A:Create(ad, ba, {Position = UDim2.new(0.345, 0, 0.88, 0), Size = UDim2.new(0.464, 0, 0.11, 0)})
                local be =
                    A:Create(ad, ba, {Position = UDim2.new(0.054, 0, 0.88, 0), Size = UDim2.new(0.014, 0, 0.11, 0)})
                local bf = TweenInfo.new(1.18, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local bg = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local bh =
                    A:Create(aa, bf, {Position = UDim2.new(0.292, 0, 0.5, 0), Size = UDim2.new(0.595, 0, 0.79, 0)})
                local bi =
                    A:Create(aa, bg, {Position = UDim2.new(0.067, 0, 0.5, 0), Size = UDim2.new(0.15, 0, 0.79, 0)})
                local bj =
                    A:Create(aa, bf, {Position = UDim2.new(0.292, 0, 0.53, 0), Size = UDim2.new(0.595, 0, 0.85, 0)})
                local bk =
                    A:Create(aa, bg, {Position = UDim2.new(0.067, 0, 0.53, 0), Size = UDim2.new(0.15, 0, 0.85, 0)})
                local bl = A:Create(M, ba, {Position = UDim2.new(0.993, 0, 0.5, 0), Size = UDim2.new(0, 2, 1, 0)})
                local bm = A:Create(M, ba, {Position = UDim2.new(0.993, 0, 0.5, 0), Size = UDim2.new(0, 2, 0, 0)})
                b9:Play()
                if D.Size.X.Scale < 0.2 then
                    if K.Text == "false" then
                        bb:Play()
                        bl:Play()
                        bd:Play()
                        if B then
                            bj:Play()
                        else
                            bh:Play()
                        end
                    end
                else
                    if K.Text == "true" and J.Text == j.Text then
                        bc:Play()
                        bm:Play()
                        be:Play()
                        if B then
                            bk:Play()
                        else
                            bi:Play()
                        end
                    end
                end
                coroutine.wrap(
                    function()
                        J.Text = j.Text
                        while J.Text == j.Text do
                            if not getgenv().visionlive then
                                break
                            end
                            wait()
                            b5.ImageColor3 = q
                            b0.TextColor3 = q
                            if J.Text ~= j.Text then
                                b5.ImageColor3 = Color3.fromRGB(125, 135, 145)
                                b0.TextColor3 = o
                            end
                        end
                    end
                )()
            end
        )
        local bn = {}
        function aU:SetCallback(bo)
            w = bo
        end
        function bn:CreateButton(j)
            local bp = Instance.new("TextButton")
            local L = Instance.new("UICorner")
            local bq = Instance.new("TextButton")
            local b1 = Instance.new("UICorner")
            j.Text = j.Text or "Button"
            bp.Name = "ButtonParent"
            bp.Parent = b2
            bp.BackgroundColor3 = n
            bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
            bp.BorderSizePixel = 0
            bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
            bp.Size = UDim2.new(0.925, 0, 0, 48)
            bp.ZIndex = 0
            bp.Font = Enum.Font.GothamBold
            bp.Text = ""
            bp.TextColor3 = o
            bp.TextSize = 1.000
            bp.TextWrapped = true
            bp.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = bp
            bq.Name = "Button"
            bq.Parent = bp
            bq.AnchorPoint = Vector2.new(0.5, 0.5)
            bq.BackgroundColor3 = l
            bq.BorderSizePixel = 0
            bq.Position = UDim2.new(0.5, 0, 0.5, 0)
            bq.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            bq.ZIndex = 0
            bq.Font = Enum.Font.GothamBold
            bq.Text = "  " .. j.Text
            bq.TextColor3 = o
            bq.TextSize = 16.000
            bq.TextXAlignment = Enum.TextXAlignment.Left
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = bq
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        bq.TextColor3 = o
                        bq.BackgroundColor3 = l
                        bp.TextColor3 = o
                        bp.BackgroundColor3 = n
                    end
                end
            )()
            bq.MouseButton1Click:Connect(
                function()
                    j.Callback()
                end
            )
        end
        function bn:CreateSlider(j)
            local br = Instance.new("TextLabel")
            local L = Instance.new("UICorner")
            local bs = Instance.new("ImageButton")
            local b1 = Instance.new("UICorner")
            local bt = Instance.new("ImageButton")
            local G = Instance.new("UICorner")
            local bu = Instance.new("TextButton")
            local b3 = Instance.new("UICorner")
            local bv = Instance.new("TextLabel")
            local bw = Instance.new("UICorner")
            local bx = Instance.new("TextLabel")
            local by = Instance.new("UICorner")
            j.Text = j.Text or "Slider"
            j.ValueName = j.ValueName or ""
            j.Min = j.Min or 0
            j.Max = j.Max or 100
            j.Step = j.Step or 1
            j.Default = j.Default or 50
            j.Round = j.Round or true
            br.Name = "Slider"
            br.Parent = b2
            br.Active = true
            br.BackgroundColor3 = n
            br.BorderSizePixel = 0
            br.Position = UDim2.new(0.0621488318, 0, 0.306568474, 0)
            br.Selectable = true
            br.Size = UDim2.new(0.925, 0, 0, 48)
            br.ZIndex = 0
            br.Font = Enum.Font.GothamBold
            br.Text = ""
            br.TextColor3 = o
            br.TextSize = 1.000
            br.TextWrapped = true
            br.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = br
            bs.Name = "Sliderbg"
            bs.Parent = br
            bs.Active = false
            bs.BackgroundColor3 = r
            bs.BorderColor3 = Color3.fromRGB(0, 0, 0)
            bs.BorderSizePixel = 0
            bs.Position = UDim2.new(0.52557667, 0, 0.280000001, 0)
            bs.Selectable = false
            bs.Size = UDim2.new(0, 310, 0, 21)
            bs.AutoButtonColor = false
            bs.ImageColor3 = Color3.fromRGB(75, 75, 75)
            bs.BackgroundTransparency = 0
            b1.CornerRadius = UDim.new(0, 5)
            b1.Parent = bs
            bt.Name = "Slider"
            bt.Parent = bs
            bt.Active = false
            bt.AnchorPoint = Vector2.new(0.5, 0.5)
            bt.BackgroundColor3 = s
            bt.BorderColor3 = Color3.fromRGB(0, 0, 0)
            bt.BorderSizePixel = 0
            bt.Position = UDim2.new(0.5, 0, 0.5, 0)
            bt.Selectable = false
            bt.Size = UDim2.new(0, 306, 0, 17)
            bt.AutoButtonColor = false
            G.CornerRadius = UDim.new(0.310000002, 0)
            G.Parent = bt
            bu.Name = "SliderFill"
            bu.Parent = bt
            bu.AnchorPoint = Vector2.new(0, 0)
            bu.BackgroundColor3 = r
            bu.BorderColor3 = Color3.fromRGB(0, 0, 0)
            bu.BorderSizePixel = 0
            bu.BackgroundTransparency = 0
            bu.Position = UDim2.new(0, 0, 0, 0)
            bu.Size = UDim2.new(0, 0, 1, 0)
            bu.AutoButtonColor = false
            bu.Font = Enum.Font.SourceSans
            bu.Text = ""
            bu.TextColor3 = Color3.fromRGB(0, 0, 0)
            bu.TextSize = 14.000
            bu.ZIndex = 1
            bu.ClipsDescendants = true
            b3.CornerRadius = UDim.new(0.25, 0)
            b3.Parent = bu
            bv.Name = "SliderButton"
            bv.Parent = br
            bv.Active = true
            bv.AnchorPoint = Vector2.new(0.5, 0.5)
            bv.BackgroundColor3 = l
            bv.BorderColor3 = Color3.fromRGB(27, 42, 53)
            bv.BorderSizePixel = 0
            bv.Position = UDim2.new(0.5, 0, 0.5, 0)
            bv.Selectable = true
            bv.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            bv.ZIndex = 0
            bv.Font = Enum.Font.GothamBold
            bv.Text = "  " .. j.Text
            bv.TextColor3 = o
            bv.TextSize = 16.000
            bv.TextXAlignment = Enum.TextXAlignment.Left
            bw.CornerRadius = UDim.new(0, 7)
            bw.Parent = bv
            bx.Name = "SliderValue"
            bx.Parent = bv
            bx.Active = true
            bx.AnchorPoint = Vector2.new(0.5, 0.5)
            bx.BackgroundColor3 = l
            bx.BorderColor3 = Color3.fromRGB(27, 42, 53)
            bx.BorderSizePixel = 0
            bx.Position = UDim2.new(0.42, 0, 0.5, 0)
            bx.Selectable = true
            bx.Size = UDim2.new(0.200000003, 0, 1, 0)
            bx.ZIndex = 0
            bx.Font = Enum.Font.GothamBold
            bx.Text = j.ValueName .. " "
            bx.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        bx.TextColor3 = o
                        bx.BackgroundColor3 = l
                        bv.TextColor3 = o
                        bv.BackgroundColor3 = l
                        bu.BackgroundColor3 = r
                        bt.BackgroundColor3 = s
                        bs.BackgroundColor3 = r
                        br.TextColor3 = o
                        br.BackgroundColor3 = n
                    end
                end
            )()
            bx.TextSize = 16.000
            bx.TextXAlignment = Enum.TextXAlignment.Right
            by.CornerRadius = UDim.new(0, 7)
            by.Parent = bx
            local bz = bx.Text .. ": "
            local bA = bx
            local bB = bt
            local bC = false
            local bD = bu
            local bE = game:GetService("Players").LocalPlayer
            local bF = game:GetService("UserInputService")
            local bG = game:GetService("RunService")
            local bH = j.Max
            local bI = j.Min
            local bJ = j.Round
            local bK = false
            local bL = j.Step / j.Max
            local bM = 0
            local bN = function(bO, bP)
                bP = math.pow(10, bP or 0)
                bO = bO * bP
                if bO >= 0 then
                    bO = math.floor(bO + 0.5)
                else
                    bO = math.ceil(bO - 0.5)
                end
                return bO / bP
            end
            local default = j.Default or 50
            if default then
                local bQ = bF:GetMouseLocation().X
                local bR = bD.Position
                local bS = bB.AbsoluteSize.X
                local bT = bB.AbsolutePosition.X
                bM = 50 / 100
                bD.Position = UDim2.new(0, 0, bR.Y.Scale, bR.Y.Offset)
                bD.Size = UDim2.new(bM, 0, 1, 0)
                local bU = j.Default
                local bV = math.floor(bU)
                bA.Text = bz .. bV .. ""
                if bI >= bV then
                    bA.Text = bz .. bI
                end
            end
            function snap(bW, bX)
                if bX == 0 then
                    return bW
                else
                    return math.floor(bW / bX + 0.5) * bX
                end
            end
            bF.InputEnded:connect(
                function(bY, bZ)
                    if bY.UserInputType == Enum.UserInputType.MouseButton1 then
                        bK = false
                        bC = false
                    end
                end
            )
            bF.InputBegan:Connect(
                function(bY)
                    if bY.UserInputType == Enum.UserInputType.MouseButton1 then
                        bC = true
                    end
                end
            )
            local b_ =
                bt.MouseButton1Down:connect(
                function()
                    bK = true
                end
            )
            local c0 =
                bt.MouseButton1Up:connect(
                function()
                    bK = true
                end
            )
            local c1 =
                bu.MouseButton1Down:connect(
                function()
                    bK = true
                end
            )
            local c2 =
                bu.MouseButton1Up:connect(
                function()
                    bK = true
                end
            )
            bD.MouseEnter:connect(
                function()
                    repeat
                        wait()
                        if bC then
                            bK = true
                        end
                    until bD.MouseLeave
                end
            )
            local c3 =
                bG.RenderStepped:connect(
                function(c4)
                    if bK then
                        local bQ = bF:GetMouseLocation().X
                        local bR = bD.Position
                        local bS = bB.AbsoluteSize.X
                        local bT = bB.AbsolutePosition.X
                        local c5 = snap((bQ - bT) / bS, bL)
                        bM = math.clamp(c5, 0, 1)
                        bD.Position = UDim2.new(0, 0, bR.Y.Scale, bR.Y.Offset)
                        bD.Size = UDim2.new(bM, 0, 1, 0)
                        local bU = math.floor((0 + (bH - 0) * bM) * bH) / bH
                        local c6 = (0 + (bH - 0) * bM) * bH / bH
                        if bJ == true then
                            local bV = math.floor(bU)
                            if bI >= bV then
                                bA.Text = bz .. bI
                                j.Callback(bI)
                            else
                                bA.Text = bz .. bV .. ""
                                j.Callback(bV)
                            end
                        elseif bJ == false then
                            if bI >= bU then
                                bA.Text = bz .. bI
                                j.Callback(bI)
                            else
                                bA.Text = bz .. bN(c6, 2) .. ""
                                j.Callback(bN(c6, 2))
                            end
                        end
                    end
                end
            )
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            c3:Disconnect()
                            b_:Disconnect()
                            c0:Disconnect()
                            c1:Disconnect()
                            c2:Disconnect()
                            break
                        end
                    end
                end
            )()
            j.Callback(j.Default)
        end
        function bn:CreateDropdown(j)
            local c7 = Instance.new("TextButton")
            local L = Instance.new("UICorner")
            local c8 = Instance.new("TextButton")
            local b1 = Instance.new("UICorner")
            local c9 = Instance.new("ScrollingFrame")
            local b4 = Instance.new("UIListLayout")
            local ca = Instance.new("TextButton")
            local bw = Instance.new("UICorner")
            local cb = Instance.new("ImageLabel")
            local cc
            j.Text = j.Text or "Slider"
            j.MultiSelect = j.MultiSelect or false
            j.Default = j.Default or 0
            c7.Name = "Dropdown"
            c7.Parent = b2
            c7.BackgroundColor3 = n
            c7.BorderSizePixel = 0
            c7.Position = UDim2.new(0.0466692448, 0, 0.507754028, 0)
            c7.Size = UDim2.new(0.925, 0, 0, 48)
            c7.ZIndex = 0
            c7.Font = Enum.Font.GothamBold
            c7.Text = ""
            c7.TextColor3 = o
            c7.TextSize = 1.000
            c7.TextWrapped = true
            c7.TextXAlignment = Enum.TextXAlignment.Left
            c7.AutoButtonColor = false
            c7.ClipsDescendants = true
            L.Parent = c7
            c8.Name = "DropdownButton"
            c8.Parent = c7
            c8.AnchorPoint = Vector2.new(0.5, 0.5)
            c8.BackgroundColor3 = l
            c8.BorderColor3 = Color3.fromRGB(27, 42, 53)
            c8.BorderSizePixel = 0
            c8.Position = UDim2.new(0.5, 0, 0.5, 0)
            c8.Size = UDim2.new(0.996999979, 0, 0.95, 0)
            c8.ZIndex = 0
            c8.Font = Enum.Font.GothamBold
            c8.Text = "\n  " .. j.Text or "\n  Dropdown"
            c8.TextColor3 = o
            c8.TextSize = 16.000
            c8.TextXAlignment = Enum.TextXAlignment.Left
            c8.TextYAlignment = Enum.TextYAlignment.Top
            c8.AutoButtonColor = false
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = c8
            c9.Name = "Selections"
            c9.Parent = c8
            c9.Active = true
            c9.AnchorPoint = Vector2.new(0.5, 0.5)
            c9.BackgroundColor3 = l
            c9.BackgroundTransparency = 1.000
            c9.Position = UDim2.new(0.5, 0, 0.600000024, 0)
            c9.Size = UDim2.new(0.961118162, 0, 0, 0)
            c9.ZIndex = 0
            local cd = 0.25
            local ce = 0
            for Q, aw in pairs(j.Selections) do
                ce = Q
            end
            local cf = ce - 3
            cf = cf * cd
            cf = cf + 0.75
            c9.CanvasSize = UDim2.new(0, 0, 0, 0)
            c9.ScrollBarThickness = 0
            c9.VerticalScrollBarInset = Enum.ScrollBarInset.Always
            b4.Parent = c9
            b4.HorizontalAlignment = Enum.HorizontalAlignment.Center
            b4.SortOrder = Enum.SortOrder.LayoutOrder
            b4.Padding = UDim.new(0, 5)
            ca.Name = "SelectedItems"
            ca.Parent = c7
            ca.AnchorPoint = Vector2.new(0.5, 0.5)
            ca.BackgroundColor3 = l
            ca.BackgroundTransparency = 1.000
            ca.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ca.BorderSizePixel = 0
            ca.Position = UDim2.new(0.66, 0, 0, 25)
            ca.Size = UDim2.new(0.5, 0, 0.5, 0)
            ca.ZIndex = 0
            ca.AutoButtonColor = true
            ca.Font = Enum.Font.Gotham
            ca.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        ca.TextColor3 = o
                        ca.BackgroundColor3 = l
                        c9.BackgroundColor3 = l
                        c8.TextColor3 = o
                        c8.BackgroundColor3 = l
                        c7.TextColor3 = o
                        c7.BackgroundColor3 = n
                    end
                end
            )()
            ca.ClipsDescendants = true
            local cg = {}
            if j.Default then
                if j.Default == 0 then
                    ca.Text = "Nothing Selected"
                else
                    if j.MultiSelect then
                        if type(j.Default) == "table" then
                            ca.Text = ""
                            for Q, aw in pairs(j.Default) do
                                ca.Text = ca.Text .. j.Selections[aw] .. ", "
                                table.insert(cg, j.Selections[aw])
                            end
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                        else
                            ca.Text = j.Selections[j.Default]
                            table.insert(cg, j.Selections[j.Default])
                        end
                    else
                        ca.Text = j.Selections[j.Default]
                    end
                end
            else
                ca.Text = j.Selections[1]
            end
            local ch = {}
            function CreateDropdownButton(Q, aw)
                local bp = Instance.new("TextButton")
                local G = Instance.new("UICorner")
                local bq = Instance.new("TextButton")
                local b3 = Instance.new("UICorner")
                cc = aw
                bp.Name = aw
                bp.Parent = c9
                bp.BackgroundColor3 = n
                bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                bp.BorderSizePixel = 0
                bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                bp.Size = UDim2.new(1, 0, 0, 52)
                bp.ZIndex = 0
                bp.Font = Enum.Font.GothamBold
                bp.Text = ""
                bp.TextColor3 = o
                bp.TextSize = 1.000
                bp.TextWrapped = true
                bp.TextXAlignment = Enum.TextXAlignment.Left
                G.Parent = bp
                bq.Name = "Button"
                bq.Parent = bp
                bq.AnchorPoint = Vector2.new(0.5, 0.5)
                bq.BackgroundColor3 = l
                bq.BorderSizePixel = 0
                bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                bq.ZIndex = 0
                bq.Font = Enum.Font.GothamBold
                bq.Text = "  " .. aw
                bq.TextColor3 = u
                bq.TextSize = 16.000
                bq.TextXAlignment = Enum.TextXAlignment.Left
                local ci = aw
                coroutine.wrap(
                    function()
                        while wait() do
                            if not getgenv().visionlive then
                                break
                            end
                            bq.BackgroundColor3 = l
                            bp.TextColor3 = o
                            bp.BackgroundColor3 = n
                        end
                    end
                )()
                b3.CornerRadius = UDim.new(0, 7)
                b3.Parent = bq
                local cj = Q
                local ck = false
                table.insert(ch, aw)
                if table.find(cg, ci) then
                    bq.TextColor3 = o
                end
                if not j.MultiSelect then
                    coroutine.wrap(
                        function()
                            while wait() do
                                if not getgenv().visionlive then
                                    break
                                end
                                if ca.Text == aw then
                                    bq.TextColor3 = o
                                else
                                    bq.TextColor3 = u
                                end
                            end
                        end
                    )()
                end
                bq.MouseButton1Click:Connect(
                    function()
                        if j.MultiSelect then
                            local cl = ""
                            if table.find(cg, ci) then
                                bq.TextColor3 = u
                                table.remove(cg, table.find(cg, ci))
                            else
                                bq.TextColor3 = o
                                table.insert(cg, ci)
                            end
                            for Q, aw in pairs(cg) do
                                if ca.Text == "Nothing Selected" then
                                    ca.Text = ""
                                end
                                cl = cl .. aw .. ", "
                            end
                            if cl == "" or cl == " " then
                                cl = "Nothing Selected"
                            end
                            ca.Text = cl
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                            j.Callback(cg)
                        else
                            ca.Text = aw
                            j.Callback(aw)
                        end
                    end
                )
            end
            for Q, aw in pairs(j.Selections) do
                CreateDropdownButton(Q, aw)
            end
            local cm = {}
            local cn = false
            function cm:SetTable(co, cp)
                cp = cp or 0
                for Q, aw in pairs(c9:GetChildren()) do
                    if aw:IsA("TextButton") then
                        if aw.Button.TextColor3 == Color3.fromRGB(255, 255, 255) then
                            cp = Q - 1
                        end
                        aw:Destroy()
                    end
                end
                ch = {}
                cn = true
                wait()
                cn = false
                for Q, aw in pairs(co) do
                    local bp = Instance.new("TextButton")
                    local G = Instance.new("UICorner")
                    local bq = Instance.new("TextButton")
                    local b3 = Instance.new("UICorner")
                    bp.Name = aw
                    bp.Parent = c9
                    bp.BackgroundColor3 = n
                    bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    bp.BorderSizePixel = 0
                    bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                    bp.Size = UDim2.new(1, 0, 0, 52)
                    bp.ZIndex = 0
                    bp.Font = Enum.Font.GothamBold
                    bp.Text = ""
                    bp.TextColor3 = o
                    bp.TextSize = 1.000
                    bp.TextWrapped = true
                    bp.TextXAlignment = Enum.TextXAlignment.Left
                    G.Parent = bp
                    bq.Name = "Button"
                    bq.Parent = bp
                    bq.AnchorPoint = Vector2.new(0.5, 0.5)
                    bq.BackgroundColor3 = l
                    bq.BorderSizePixel = 0
                    bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                    bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                    bq.ZIndex = 0
                    bq.Font = Enum.Font.GothamBold
                    bq.Text = "  " .. aw
                    bq.TextColor3 = u
                    bq.TextSize = 16.000
                    bq.TextXAlignment = Enum.TextXAlignment.Left
                    local ci = aw
                    coroutine.wrap(
                        function()
                            while wait() do
                                if not getgenv().visionlive then
                                    break
                                end
                                if cn then
                                    break
                                end
                                bq.BackgroundColor3 = l
                                bp.TextColor3 = o
                                bp.BackgroundColor3 = n
                            end
                        end
                    )()
                    if not j.MultiSelect then
                        coroutine.wrap(
                            function()
                                while wait() do
                                    if not getgenv().visionlive then
                                        break
                                    end
                                    if cn then
                                        break
                                    end
                                    if ca.Text == aw then
                                        bq.TextColor3 = o
                                    else
                                        bq.TextColor3 = u
                                    end
                                end
                            end
                        )()
                    end
                    b3.CornerRadius = UDim.new(0, 7)
                    b3.Parent = bq
                    local cj = Q
                    local ck = false
                    table.insert(ch, ci)
                    if table.find(cg, ci) then
                        bq.TextColor3 = o
                    end
                    bq.MouseButton1Click:Connect(
                        function()
                            if j.MultiSelect then
                                local cl = ""
                                if table.find(cg, ci) then
                                    bq.TextColor3 = u
                                    table.remove(cg, table.find(cg, ci))
                                else
                                    bq.TextColor3 = o
                                    table.insert(cg, ci)
                                end
                                for Q, aw in pairs(cg) do
                                    if ca.Text == "Nothing Selected" then
                                        ca.Text = ""
                                    end
                                    cl = cl .. aw .. ", "
                                end
                                if cl == "" or cl == " " then
                                    cl = "Nothing Selected"
                                end
                                ca.Text = cl
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                j.Callback(cg)
                            else
                                ca.Text = aw
                                j.Callback(aw)
                            end
                        end
                    )
                    j.Callback(aw)
                    if cp == 0 then
                        ca.Text = "Nothing Selected"
                    else
                        if Q == cp then
                            bq.TextColor3 = Color3.fromRGB(255, 255, 255)
                            ca.Text = co[cp]
                        end
                    end
                end
                local cd = 0.25
                local ce = 0
                for Q, aw in pairs(co) do
                    ce = Q
                end
                local cf = ce - 3
                cf = cf * cd
                cf = cf + 0.75
                c9.CanvasSize = UDim2.new(0, 0, cf, 0)
            end
            ca.TextColor3 = Color3.fromRGB(200, 200, 200)
            ca.TextSize = 16.000
            ca.TextXAlignment = Enum.TextXAlignment.Right
            cb.Name = "Chevron"
            cb.Parent = c7
            cb.AnchorPoint = Vector2.new(0.5, 0.5)
            cb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cb.BackgroundTransparency = 1.000
            cb.BorderSizePixel = 0
            cb.Position = UDim2.new(0.948000014, 0, 0, 26)
            cb.Rotation = 0
            cb.Size = UDim2.new(0, 30, 0, 30)
            cb.Image = "rbxassetid://9775439710"
            local function cq()
                local A = game:GetService("TweenService")
                local b8 = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local ba = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local cr = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local bb = A:Create(c9, b8, {Size = UDim2.new(0.961118162, 0, 0.758997738, 0)})
                local bc = A:Create(c9, cr, {Size = UDim2.new(0.961118162, 0, 0, 0)})
                local cs = A:Create(c9, cr, {ScrollBarThickness = 4, CanvasSize = UDim2.new(0, 0, cf, 0)})
                local ct = A:Create(c9, b8, {ScrollBarThickness = 0, CanvasSize = UDim2.new(0, 0, 0, 0)})
                local cu = A:Create(c7, ba, {Size = UDim2.new(0.925, 0, 0, 228)})
                local cv = A:Create(c7, ba, {Size = UDim2.new(0.925, 0, 0, 48)})
                local cw = A:Create(c8, b8, {Size = UDim2.new(0.996999979, 0, 0.99000001, 0)})
                local cx = A:Create(c8, ba, {Size = UDim2.new(0.996999979, 0, 0.95, 0)})
                local cy = A:Create(cb, b8, {Rotation = 180})
                local cz = A:Create(cb, b8, {Rotation = 0})
                if c9.Size.Y.Scale == 0 then
                    bb:Play()
                    cu:Play()
                    cw:Play()
                    cs:Play()
                    cy:Play()
                else
                    bc:Play()
                    cv:Play()
                    cx:Play()
                    ct:Play()
                    cz:Play()
                end
            end
            c8.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            c7.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            ca.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            j.Callback(cc)
            return cm
        end
        function bn:NestedDropdown(j)
            local c7 = Instance.new("TextButton")
            local L = Instance.new("UICorner")
            local c8 = Instance.new("TextButton")
            local b1 = Instance.new("UICorner")
            local c9 = Instance.new("ScrollingFrame")
            local b4 = Instance.new("UIListLayout")
            local ca = Instance.new("TextButton")
            local bw = Instance.new("UICorner")
            local cb = Instance.new("ImageLabel")
            j.Text = j.Text or "NestedDropdown"
            j.MultiSelect = false
            j.Default = j.Default or 0
            c7.Name = "Dropdown"
            c7.Parent = b2
            c7.BackgroundColor3 = n
            c7.BorderSizePixel = 0
            c7.Position = UDim2.new(0.0466692448, 0, 0.507754028, 0)
            c7.Size = UDim2.new(0.925, 0, 0, 48)
            c7.ZIndex = 0
            c7.Font = Enum.Font.GothamBold
            c7.Text = ""
            c7.TextColor3 = o
            c7.TextSize = 1.000
            c7.TextWrapped = true
            c7.TextXAlignment = Enum.TextXAlignment.Left
            c7.AutoButtonColor = false
            c7.ClipsDescendants = true
            L.Parent = c7
            c8.Name = "DropdownButton"
            c8.Parent = c7
            c8.AnchorPoint = Vector2.new(0.5, 0.5)
            c8.BackgroundColor3 = l
            c8.BorderColor3 = Color3.fromRGB(27, 42, 53)
            c8.BorderSizePixel = 0
            c8.Position = UDim2.new(0.5, 0, 0.5, 0)
            c8.Size = UDim2.new(0.996999979, 0, 0.95, 0)
            c8.ZIndex = 0
            c8.Font = Enum.Font.GothamBold
            c8.Text = "\n  " .. j.Text or "\n  Dropdown"
            c8.TextColor3 = o
            c8.TextSize = 16.000
            c8.TextXAlignment = Enum.TextXAlignment.Left
            c8.TextYAlignment = Enum.TextYAlignment.Top
            c8.AutoButtonColor = false
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = c8
            c9.Name = "Selections"
            c9.Parent = c8
            c9.Active = true
            c9.AnchorPoint = Vector2.new(0.5, 0.5)
            c9.BackgroundColor3 = l
            c9.BackgroundTransparency = 1.000
            c9.Position = UDim2.new(0.5, 0, 0.600000024, 0)
            c9.Size = UDim2.new(0.961118162, 0, 0, 0)
            c9.ZIndex = 0
            local cd = 0.25
            local ce = 0
            for Q, aw in pairs(j.Selections) do
                ce = Q
            end
            local cf = ce - 3
            cf = cf * cd
            cf = cf + 0.75
            c9.CanvasSize = UDim2.new(0, 0, 0, 0)
            c9.ScrollBarThickness = 0
            c9.VerticalScrollBarInset = Enum.ScrollBarInset.Always
            b4.Parent = c9
            b4.HorizontalAlignment = Enum.HorizontalAlignment.Center
            b4.SortOrder = Enum.SortOrder.LayoutOrder
            b4.Padding = UDim.new(0, 5)
            ca.Name = "SelectedItems"
            ca.Parent = c7
            ca.AnchorPoint = Vector2.new(0.5, 0.5)
            ca.BackgroundColor3 = l
            ca.BackgroundTransparency = 1.000
            ca.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ca.BorderSizePixel = 0
            ca.Position = UDim2.new(0.66, 0, 0, 25)
            ca.Size = UDim2.new(0.5, 0, 0.5, 0)
            ca.ZIndex = 0
            ca.AutoButtonColor = true
            ca.Font = Enum.Font.Gotham
            ca.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        ca.TextColor3 = o
                        ca.BackgroundColor3 = l
                        c9.BackgroundColor3 = l
                        c8.TextColor3 = o
                        c8.BackgroundColor3 = l
                        c7.TextColor3 = o
                        c7.BackgroundColor3 = n
                    end
                end
            )()
            ca.ClipsDescendants = true
            local cg = {}
            if j.Default then
                if j.Default == 0 then
                    ca.Text = "Nothing Selected"
                else
                    if j.MultiSelect then
                        if type(j.Default) == "table" then
                            ca.Text = ""
                            for Q, aw in pairs(j.Default) do
                                ca.Text = ca.Text .. j.Selections[aw] .. ", "
                                table.insert(cg, j.Selections[aw])
                            end
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                        else
                            ca.Text = j.Selections[j.Default]
                            table.insert(cg, j.Selections[j.Default])
                        end
                    else
                        ca.Text = j.Selections[j.Default]
                    end
                end
            else
                ca.Text = j.Selections[1]
            end
            local ch = {}
            local cc
            function CreateDropdownButton(Q, aw)
                local bp = Instance.new("TextButton")
                local G = Instance.new("UICorner")
                local bq = Instance.new("TextButton")
                local b3 = Instance.new("UICorner")
                cc = aw
                bp.Name = aw
                bp.Parent = c9
                bp.BackgroundColor3 = n
                bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                bp.BorderSizePixel = 0
                bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                bp.Size = UDim2.new(1, 0, 0, 52)
                bp.ZIndex = 0
                bp.Font = Enum.Font.GothamBold
                bp.Text = ""
                bp.TextColor3 = o
                bp.TextSize = 1.000
                bp.TextWrapped = true
                bp.TextXAlignment = Enum.TextXAlignment.Left
                G.Parent = bp
                bq.Name = "Button"
                bq.Parent = bp
                bq.AnchorPoint = Vector2.new(0.5, 0.5)
                bq.BackgroundColor3 = l
                bq.BorderSizePixel = 0
                bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                bq.ZIndex = 0
                bq.Font = Enum.Font.GothamBold
                bq.Text = "  " .. aw
                bq.TextColor3 = u
                bq.TextSize = 16.000
                bq.TextXAlignment = Enum.TextXAlignment.Left
                local ci = aw
                coroutine.wrap(
                    function()
                        while wait() do
                            if not getgenv().visionlive then
                                break
                            end
                            bq.BackgroundColor3 = l
                            bp.TextColor3 = o
                            bp.BackgroundColor3 = n
                        end
                    end
                )()
                b3.CornerRadius = UDim.new(0, 7)
                b3.Parent = bq
                local cj = Q
                local ck = false
                table.insert(ch, aw)
                if table.find(cg, ci) then
                    bq.TextColor3 = o
                end
                if not j.MultiSelect then
                    coroutine.wrap(
                        function()
                            while wait() do
                                if not getgenv().visionlive then
                                    break
                                end
                                if ca.Text == aw then
                                    bq.TextColor3 = o
                                else
                                    bq.TextColor3 = u
                                end
                            end
                        end
                    )()
                end
                bq.MouseButton1Click:Connect(
                    function()
                        if j.MultiSelect then
                            local cl = ""
                            if table.find(cg, ci) then
                                bq.TextColor3 = u
                                table.remove(cg, table.find(cg, ci))
                            else
                                bq.TextColor3 = o
                                table.insert(cg, ci)
                            end
                            for Q, aw in pairs(cg) do
                                if ca.Text == "Nothing Selected" then
                                    ca.Text = ""
                                end
                                cl = cl .. aw .. ", "
                            end
                            if cl == "" or cl == " " then
                                cl = "Nothing Selected"
                            end
                            ca.Text = cl
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                            if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                            end
                            j.Callback(cg, false)
                        else
                            ca.Text = aw
                            j.Callback(aw, false)
                        end
                    end
                )
                if j.MultiSelect then
                    j.Callback(cg, false)
                else
                    j.Callback(aw, false)
                end
            end
            function CreateDropdownNest(j, cA, cB)
                local c7 = Instance.new("TextButton")
                local L = Instance.new("UICorner")
                local c8 = Instance.new("TextButton")
                local b1 = Instance.new("UICorner")
                local c9 = Instance.new("ScrollingFrame")
                local b4 = Instance.new("UIListLayout")
                local ca = Instance.new("TextButton")
                local bw = Instance.new("UICorner")
                local cb = Instance.new("ImageLabel")
                j.Text = j.Text or "Slider"
                j.MultiSelect = j.MultiSelect or false
                j.Default = j.Default or 0
                j.Selections = cA
                local cC = 1
                for Q, aw in pairs(cB:GetChildren()) do
                    if aw:IsA("TextButton") and aw.Name == "Dropdown" then
                        cC = cC + 1
                    end
                end
                c7.Name = "Dropdown"
                c7.Parent = cB
                c7.BackgroundColor3 = n
                c7.BorderSizePixel = 0
                c7.Position = UDim2.new(0.0466692448, 0, 0.507754028, 0)
                c7.Size = UDim2.new(1, 0, 0, 52)
                c7.ZIndex = 0
                c7.Font = Enum.Font.GothamBold
                c7.Text = ""
                c7.TextColor3 = o
                c7.TextSize = 1.000
                c7.TextWrapped = true
                c7.TextXAlignment = Enum.TextXAlignment.Left
                c7.AutoButtonColor = false
                c7.ClipsDescendants = true
                L.Parent = c7
                c8.Name = "DropdownButton"
                c8.Parent = c7
                c8.AnchorPoint = Vector2.new(0.5, 0.5)
                c8.BackgroundColor3 = l
                c8.BorderColor3 = Color3.fromRGB(27, 42, 53)
                c8.BorderSizePixel = 0
                c8.Position = UDim2.new(0.5, 0, 0.5, 0)
                c8.Size = UDim2.new(0.996999979, 0, 0.95, 0)
                c8.ZIndex = 0
                c8.Font = Enum.Font.GothamBold
                c8.Text =
                    "\n  " .. j.Text .. " " .. " [ " .. "<font color='#FFA500'>" .. cC .. "</font>" .. " ]" or
                    "\n  Dropdown " .. " [ " .. "<font color='#FFA500'>" .. cC .. "</font>" .. " ]"
                c8.TextColor3 = o
                c8.TextSize = 16.000
                c8.TextXAlignment = Enum.TextXAlignment.Left
                c8.TextYAlignment = Enum.TextYAlignment.Top
                c8.AutoButtonColor = false
                c8.RichText = true
                b1.CornerRadius = UDim.new(0, 7)
                b1.Parent = c8
                c9.Name = "Selections"
                c9.Parent = c8
                c9.Active = true
                c9.AnchorPoint = Vector2.new(0.5, 0.5)
                c9.BackgroundColor3 = l
                c9.BackgroundTransparency = 1.000
                c9.Position = UDim2.new(0.5, 0, 0.600000024, 0)
                c9.Size = UDim2.new(0.961118162, 0, 0, 0)
                c9.ZIndex = 0
                local cd = 0.25
                local ce = 0
                for Q, aw in pairs(j.Selections) do
                    ce = Q
                end
                local cf = ce - 3
                cf = cf * cd
                cf = cf + 0.75
                c9.CanvasSize = UDim2.new(0, 0, 0, 0)
                c9.ScrollBarThickness = 0
                c9.VerticalScrollBarInset = Enum.ScrollBarInset.Always
                b4.Parent = c9
                b4.HorizontalAlignment = Enum.HorizontalAlignment.Center
                b4.SortOrder = Enum.SortOrder.LayoutOrder
                b4.Padding = UDim.new(0, 5)
                ca.Name = "SelectedItems"
                ca.Parent = c7
                ca.AnchorPoint = Vector2.new(0.5, 0.5)
                ca.BackgroundColor3 = l
                ca.BackgroundTransparency = 1.000
                ca.BorderColor3 = Color3.fromRGB(27, 42, 53)
                ca.BorderSizePixel = 0
                ca.Position = UDim2.new(0.66, 0, 0, 25)
                ca.Size = UDim2.new(0.5, 0, 0.5, 0)
                ca.ZIndex = 0
                ca.AutoButtonColor = true
                ca.Font = Enum.Font.Gotham
                ca.TextColor3 = o
                coroutine.wrap(
                    function()
                        while wait() do
                            if not getgenv().visionlive then
                                break
                            end
                            ca.TextColor3 = o
                            ca.BackgroundColor3 = l
                            c9.BackgroundColor3 = l
                            c8.TextColor3 = o
                            c8.BackgroundColor3 = l
                            c7.TextColor3 = o
                            c7.BackgroundColor3 = n
                        end
                    end
                )()
                ca.ClipsDescendants = true
                local cg = {}
                if j.Default then
                    if j.Default == 0 then
                        ca.Text = "Nothing Selected"
                    else
                        if j.MultiSelect then
                            if type(j.Default) == "table" then
                                ca.Text = ""
                                for Q, aw in pairs(j.Default) do
                                    ca.Text = ca.Text .. j.Selections[aw] .. ", "
                                    table.insert(cg, j.Selections[aw])
                                end
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                            else
                                ca.Text = j.Selections[j.Default]
                                table.insert(cg, j.Selections[j.Default])
                            end
                        else
                            ca.Text = j.Selections[j.Default]
                        end
                    end
                else
                    ca.Text = j.Selections[1]
                end
                local ch = {}
                function CreateDropdownButtonInN(Q, aw)
                    local bp = Instance.new("TextButton")
                    local G = Instance.new("UICorner")
                    local bq = Instance.new("TextButton")
                    local b3 = Instance.new("UICorner")
                    bp.Name = aw
                    bp.Parent = c9
                    bp.BackgroundColor3 = n
                    bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    bp.BorderSizePixel = 0
                    bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                    bp.Size = UDim2.new(1, 0, 0, 52)
                    bp.ZIndex = 0
                    bp.Font = Enum.Font.GothamBold
                    bp.Text = ""
                    bp.TextColor3 = o
                    bp.TextSize = 1.000
                    bp.TextWrapped = true
                    bp.TextXAlignment = Enum.TextXAlignment.Left
                    G.Parent = bp
                    bq.Name = "Button"
                    bq.Parent = bp
                    bq.AnchorPoint = Vector2.new(0.5, 0.5)
                    bq.BackgroundColor3 = l
                    bq.BorderSizePixel = 0
                    bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                    bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                    bq.ZIndex = 0
                    bq.Font = Enum.Font.GothamBold
                    bq.Text = "  " .. aw
                    bq.TextColor3 = u
                    bq.TextSize = 16.000
                    bq.TextXAlignment = Enum.TextXAlignment.Left
                    local ci = aw
                    coroutine.wrap(
                        function()
                            while wait() do
                                if not getgenv().visionlive then
                                    break
                                end
                                bq.BackgroundColor3 = l
                                bp.TextColor3 = o
                                bp.BackgroundColor3 = n
                            end
                        end
                    )()
                    b3.CornerRadius = UDim.new(0, 7)
                    b3.Parent = bq
                    local cj = Q
                    local ck = false
                    table.insert(ch, aw)
                    if table.find(cg, ci) then
                        bq.TextColor3 = o
                    end
                    if not j.MultiSelect then
                        coroutine.wrap(
                            function()
                                while wait() do
                                    if not getgenv().visionlive then
                                        break
                                    end
                                    if ca.Text == aw then
                                        bq.TextColor3 = o
                                    else
                                        bq.TextColor3 = u
                                    end
                                end
                            end
                        )()
                    end
                    bq.MouseButton1Click:Connect(
                        function()
                            if j.MultiSelect then
                                local cl = ""
                                if table.find(cg, ci) then
                                    bq.TextColor3 = u
                                    table.remove(cg, table.find(cg, ci))
                                else
                                    bq.TextColor3 = o
                                    table.insert(cg, ci)
                                end
                                for Q, aw in pairs(cg) do
                                    if ca.Text == "Nothing Selected" then
                                        ca.Text = ""
                                    end
                                    cl = cl .. aw .. ", "
                                end
                                if cl == "" or cl == " " then
                                    cl = "Nothing Selected"
                                end
                                ca.Text = cl
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                j.Callback(cg, true)
                            else
                                ca.Text = aw
                                j.Callback(aw, true)
                            end
                        end
                    )
                end
                for Q, aw in pairs(j.Selections) do
                    CreateDropdownButtonInN(Q, aw)
                end
                local cm = {}
                local cn = false
                function cm:SetTable(co, cp)
                    cp = cp or 0
                    for Q, aw in pairs(c9:GetChildren()) do
                        if aw:IsA("TextButton") then
                            if aw.Button.TextColor3 == Color3.fromRGB(255, 255, 255) then
                                cp = Q - 1
                            end
                            aw:Destroy()
                        end
                    end
                    ch = {}
                    cn = true
                    wait()
                    cn = false
                    for Q, aw in pairs(co) do
                        local bp = Instance.new("TextButton")
                        local G = Instance.new("UICorner")
                        local bq = Instance.new("TextButton")
                        local b3 = Instance.new("UICorner")
                        bp.Name = aw
                        bp.Parent = c9
                        bp.BackgroundColor3 = n
                        bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        bp.BorderSizePixel = 0
                        bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                        bp.Size = UDim2.new(1, 0, 0, 52)
                        bp.ZIndex = 0
                        bp.Font = Enum.Font.GothamBold
                        bp.Text = ""
                        bp.TextColor3 = o
                        bp.TextSize = 1.000
                        bp.TextWrapped = true
                        bp.TextXAlignment = Enum.TextXAlignment.Left
                        G.Parent = bp
                        bq.Name = "Button"
                        bq.Parent = bp
                        bq.AnchorPoint = Vector2.new(0.5, 0.5)
                        bq.BackgroundColor3 = l
                        bq.BorderSizePixel = 0
                        bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                        bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                        bq.ZIndex = 0
                        bq.Font = Enum.Font.GothamBold
                        bq.Text = "  " .. aw
                        bq.TextColor3 = u
                        bq.TextSize = 16.000
                        bq.TextXAlignment = Enum.TextXAlignment.Left
                        local ci = aw
                        coroutine.wrap(
                            function()
                                while wait() do
                                    if not getgenv().visionlive then
                                        break
                                    end
                                    if cn then
                                        break
                                    end
                                    bq.BackgroundColor3 = l
                                    bp.TextColor3 = o
                                    bp.BackgroundColor3 = n
                                end
                            end
                        )()
                        if not j.MultiSelect then
                            coroutine.wrap(
                                function()
                                    while wait() do
                                        if not getgenv().visionlive then
                                            break
                                        end
                                        if cn then
                                            break
                                        end
                                        if ca.Text == aw then
                                            bq.TextColor3 = o
                                        else
                                            bq.TextColor3 = u
                                        end
                                    end
                                end
                            )()
                        end
                        b3.CornerRadius = UDim.new(0, 7)
                        b3.Parent = bq
                        local cj = Q
                        local ck = false
                        table.insert(ch, ci)
                        if table.find(cg, ci) then
                            bq.TextColor3 = o
                        end
                        bq.MouseButton1Click:Connect(
                            function()
                                if j.MultiSelect then
                                    local cl = ""
                                    if table.find(cg, ci) then
                                        bq.TextColor3 = u
                                        table.remove(cg, table.find(cg, ci))
                                    else
                                        bq.TextColor3 = o
                                        table.insert(cg, ci)
                                    end
                                    for Q, aw in pairs(cg) do
                                        if ca.Text == "Nothing Selected" then
                                            ca.Text = ""
                                        end
                                        cl = cl .. aw .. ", "
                                    end
                                    if cl == "" or cl == " " then
                                        cl = "Nothing Selected"
                                    end
                                    ca.Text = cl
                                    if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                        ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                    end
                                    if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                        ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                    end
                                    j.Callback(cg)
                                else
                                    ca.Text = aw
                                    j.Callback(aw)
                                end
                            end
                        )
                        if cp == 0 then
                            ca.Text = "Nothing Selected"
                        else
                            if Q == cp then
                                bq.TextColor3 = Color3.fromRGB(255, 255, 255)
                                ca.Text = co[cp]
                            end
                        end
                    end
                    local cd = 0.25
                    local ce = 0
                    for Q, aw in pairs(co) do
                        ce = Q
                    end
                    local cf = ce - 3
                    cf = cf * cd
                    cf = cf + 0.75
                    c9.CanvasSize = UDim2.new(0, 0, cf, 0)
                end
                ca.TextColor3 = Color3.fromRGB(200, 200, 200)
                ca.TextSize = 16.000
                ca.TextXAlignment = Enum.TextXAlignment.Right
                cb.Name = "Chevron"
                cb.Parent = c7
                cb.AnchorPoint = Vector2.new(0.5, 0.5)
                cb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cb.BackgroundTransparency = 1.000
                cb.BorderSizePixel = 0
                cb.Position = UDim2.new(0.948000014, 0, 0, 26)
                cb.Rotation = 0
                cb.Size = UDim2.new(0, 30, 0, 30)
                cb.Image = "rbxassetid://9775439710"
                local function cq()
                    local A = game:GetService("TweenService")
                    local b8 = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local ba = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local cr = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local bb = A:Create(c9, b8, {Size = UDim2.new(0.961118162, 0, 0.758997738, 0)})
                    local bc = A:Create(c9, cr, {Size = UDim2.new(0.961118162, 0, 0, 0)})
                    local cs = A:Create(c9, cr, {ScrollBarThickness = 4, CanvasSize = UDim2.new(0, 0, cf, 0)})
                    local ct = A:Create(c9, b8, {ScrollBarThickness = 0, CanvasSize = UDim2.new(0, 0, 0, 0)})
                    local cu = A:Create(c7, ba, {Size = UDim2.new(1, 0, 0, 228)})
                    local cv = A:Create(c7, ba, {Size = UDim2.new(1, 0, 0, 52)})
                    local cw = A:Create(c8, b8, {Size = UDim2.new(0.996999979, 0, 0.99000001, 0)})
                    local cx = A:Create(c8, ba, {Size = UDim2.new(0.996999979, 0, 0.95, 0)})
                    local cy = A:Create(cb, b8, {Rotation = 180})
                    local cz = A:Create(cb, b8, {Rotation = 0})
                    if c9.Size.Y.Scale == 0 then
                        bb:Play()
                        cu:Play()
                        cw:Play()
                        cs:Play()
                        cy:Play()
                    else
                        bc:Play()
                        cv:Play()
                        cx:Play()
                        ct:Play()
                        cz:Play()
                    end
                end
                c8.MouseButton1Click:Connect(
                    function()
                        cq()
                    end
                )
                c7.MouseButton1Click:Connect(
                    function()
                        cq()
                    end
                )
                ca.MouseButton1Click:Connect(
                    function()
                        cq()
                    end
                )
                return cm
            end
            for Q, aw in pairs(j.Selections) do
                if type(aw) == "table" then
                    CreateDropdownNest(j, aw, c9)
                    c9.CanvasSize = UDim2.new(0, 0, cf + 0.25, 0)
                    cf = cf + 0.25
                else
                    CreateDropdownButton(Q, aw)
                end
            end
            local cm = {}
            local cn = false
            function cm:SetTable(co, cp)
                cp = cp or 0
                for Q, aw in pairs(c9:GetChildren()) do
                    if aw:IsA("TextButton") then
                        if aw.Button.TextColor3 == Color3.fromRGB(255, 255, 255) then
                            cp = Q - 1
                        end
                        aw:Destroy()
                    end
                end
                ch = {}
                cn = true
                wait()
                cn = false
                for Q, aw in pairs(co) do
                    local bp = Instance.new("TextButton")
                    local G = Instance.new("UICorner")
                    local bq = Instance.new("TextButton")
                    local b3 = Instance.new("UICorner")
                    bp.Name = aw
                    bp.Parent = c9
                    bp.BackgroundColor3 = n
                    bp.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    bp.BorderSizePixel = 0
                    bp.Position = UDim2.new(0.0621488318, 0, 0, 0)
                    bp.Size = UDim2.new(1, 0, 0, 52)
                    bp.ZIndex = 0
                    bp.Font = Enum.Font.GothamBold
                    bp.Text = ""
                    bp.TextColor3 = o
                    bp.TextSize = 1.000
                    bp.TextWrapped = true
                    bp.TextXAlignment = Enum.TextXAlignment.Left
                    G.Parent = bp
                    bq.Name = "Button"
                    bq.Parent = bp
                    bq.AnchorPoint = Vector2.new(0.5, 0.5)
                    bq.BackgroundColor3 = l
                    bq.BorderSizePixel = 0
                    bq.Position = UDim2.new(0.5, 0, 0.5, 0)
                    bq.Size = UDim2.new(0.996, 0, 0.96, 0)
                    bq.ZIndex = 0
                    bq.Font = Enum.Font.GothamBold
                    bq.Text = "  " .. aw
                    bq.TextColor3 = u
                    bq.TextSize = 16.000
                    bq.TextXAlignment = Enum.TextXAlignment.Left
                    local ci = aw
                    coroutine.wrap(
                        function()
                            while wait() do
                                if not getgenv().visionlive then
                                    break
                                end
                                if cn then
                                    break
                                end
                                bq.BackgroundColor3 = l
                                bp.TextColor3 = o
                                bp.BackgroundColor3 = n
                            end
                        end
                    )()
                    if not j.MultiSelect then
                        coroutine.wrap(
                            function()
                                while wait() do
                                    if not getgenv().visionlive then
                                        break
                                    end
                                    if cn then
                                        break
                                    end
                                    if ca.Text == aw then
                                        bq.TextColor3 = o
                                    else
                                        bq.TextColor3 = u
                                    end
                                end
                            end
                        )()
                    end
                    b3.CornerRadius = UDim.new(0, 7)
                    b3.Parent = bq
                    local cj = Q
                    local ck = false
                    table.insert(ch, ci)
                    if table.find(cg, ci) then
                        bq.TextColor3 = o
                    end
                    bq.MouseButton1Click:Connect(
                        function()
                            if j.MultiSelect then
                                local cl = ""
                                if table.find(cg, ci) then
                                    bq.TextColor3 = u
                                    table.remove(cg, table.find(cg, ci))
                                else
                                    bq.TextColor3 = o
                                    table.insert(cg, ci)
                                end
                                for Q, aw in pairs(cg) do
                                    if ca.Text == "Nothing Selected" then
                                        ca.Text = ""
                                    end
                                    cl = cl .. aw .. ", "
                                end
                                if cl == "" or cl == " " then
                                    cl = "Nothing Selected"
                                end
                                ca.Text = cl
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                if string.sub(ca.Text, string.len(ca.Text) - 1) == ", " then
                                    ca.Text = string.sub(ca.Text, 1, string.len(ca.Text) - 2)
                                end
                                j.Callback(cg)
                            else
                                ca.Text = aw
                                j.Callback(aw)
                            end
                        end
                    )
                    if cp == 0 then
                        ca.Text = "Nothing Selected"
                    else
                        if Q == cp then
                            bq.TextColor3 = Color3.fromRGB(255, 255, 255)
                            ca.Text = co[cp]
                        end
                    end
                end
                local cd = 0.25
                local ce = 0
                for Q, aw in pairs(co) do
                    ce = Q
                end
                local cf = ce - 3
                cf = cf * cd
                cf = cf + 0.75
                c9.CanvasSize = UDim2.new(0, 0, cf, 0)
            end
            ca.TextColor3 = Color3.fromRGB(200, 200, 200)
            ca.TextSize = 16.000
            ca.TextXAlignment = Enum.TextXAlignment.Right
            cb.Name = "Chevron"
            cb.Parent = c7
            cb.AnchorPoint = Vector2.new(0.5, 0.5)
            cb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cb.BackgroundTransparency = 1.000
            cb.BorderSizePixel = 0
            cb.Position = UDim2.new(0.948000014, 0, 0, 26)
            cb.Rotation = 0
            cb.Size = UDim2.new(0, 30, 0, 30)
            cb.Image = "rbxassetid://9775439710"
            local function cq()
                local A = game:GetService("TweenService")
                local b8 = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local ba = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local cr = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                local bb = A:Create(c9, b8, {Size = UDim2.new(0.961118162, 0, 0.758997738, 0)})
                local bc = A:Create(c9, cr, {Size = UDim2.new(0.961118162, 0, 0, 0)})
                local cs = A:Create(c9, cr, {ScrollBarThickness = 4, CanvasSize = UDim2.new(0, 0, cf, 0)})
                local ct = A:Create(c9, b8, {ScrollBarThickness = 0, CanvasSize = UDim2.new(0, 0, 0, 0)})
                local cu = A:Create(c7, ba, {Size = UDim2.new(0.925, 0, 0, 428)})
                local cv = A:Create(c7, ba, {Size = UDim2.new(0.925, 0, 0, 48)})
                local cw = A:Create(c8, b8, {Size = UDim2.new(0.996999979, 0, 0.99000001, 0)})
                local cx = A:Create(c8, ba, {Size = UDim2.new(0.996999979, 0, 0.95, 0)})
                local cy = A:Create(cb, b8, {Rotation = 180})
                local cz = A:Create(cb, b8, {Rotation = 0})
                if c9.Size.Y.Scale == 0 then
                    bb:Play()
                    cu:Play()
                    cw:Play()
                    cs:Play()
                    cy:Play()
                else
                    bc:Play()
                    cv:Play()
                    cx:Play()
                    ct:Play()
                    cz:Play()
                end
            end
            c8.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            c7.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            ca.MouseButton1Click:Connect(
                function()
                    cq()
                end
            )
            return cm
        end
        function bn:CreateKeybind(j)
            local cD = Instance.new("TextLabel")
            local L = Instance.new("UICorner")
            local cE = Instance.new("TextBox")
            local b1 = Instance.new("UICorner")
            local cF = Instance.new("TextLabel")
            local G = Instance.new("UICorner")
            local cG = Instance.new("TextButton")
            j.Text = j.Text or "Keybind"
            j.Default = j.Default or "F"
            cD.Name = "Keybind"
            cD.Parent = b2
            cD.Active = true
            cD.BackgroundColor3 = n
            cD.BorderSizePixel = 0
            cD.Position = UDim2.new(0.0621488318, 0, 0.229926363, 0)
            cD.Selectable = true
            cD.Size = UDim2.new(0.925, 0, 0, 48)
            cD.ZIndex = 0
            cD.Font = Enum.Font.GothamBold
            cD.Text = ""
            cD.TextColor3 = o
            cD.TextSize = 1.000
            cD.TextWrapped = true
            cD.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = cD
            cE.Name = "InputBox"
            cE.Parent = cD
            cE.AnchorPoint = Vector2.new(0.5, 0.5)
            cE.BackgroundColor3 = t
            cE.BorderColor3 = Color3.fromRGB(255, 255, 255)
            cE.Position = UDim2.new(0.9, 0, 0.5, 0)
            cE.Size = UDim2.new(0.14, 0, 0.699999988, 0)
            cE.Font = Enum.Font.GothamSemibold
            cE.PlaceholderText = "Bind"
            cE.Text = ""
            if j.Default ~= nil then
                cE.Text = j.Default or "F"
            end
            cE.TextColor3 = o
            cE.TextSize = 14.000
            cE.TextWrapped = false
            cG.Name = "Input"
            cG.Parent = cE
            cG.AnchorPoint = Vector2.new(0.5, 0.5)
            cG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cG.BackgroundTransparency = 0.99
            cG.BorderSizePixel = 0
            cG.Position = UDim2.new(0.5, 0, 0.5, 0)
            cG.Size = UDim2.new(1, 0, 1, 0)
            cG.Text = ""
            cG.TextColor3 = o
            cG.TextSize = 16.000
            cG.TextWrapped = true
            cG.ZIndex = 2
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = cE
            cF.Name = "KeybindButton"
            cF.Parent = cD
            cF.Active = true
            cF.AnchorPoint = Vector2.new(0.5, 0.5)
            cF.BackgroundColor3 = l
            cF.BorderColor3 = Color3.fromRGB(27, 42, 53)
            cF.BorderSizePixel = 0
            cF.Position = UDim2.new(0.5, 0, 0.5, 0)
            cF.Selectable = true
            cF.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            cF.ZIndex = 0
            cF.Font = Enum.Font.GothamBold
            cF.Text = "  " .. j.Text or "  Keybind"
            cF.TextColor3 = o
            cF.TextSize = 16.000
            cF.TextXAlignment = Enum.TextXAlignment.Left
            G.Parent = cF
            local bF = game:GetService("UserInputService")
            local cH = false
            local cI = Enum.KeyCode[j.Default] or Enum.KeyCode.F
            local cJ =
                cG.MouseButton1Click:Connect(
                function()
                    cH = true
                    cE.Text = "..."
                end
            )
            local cK =
                bF.InputBegan:Connect(
                function(av)
                    if cH then
                        local cL = tostring(av.KeyCode):split(".")
                        cE.Text = tostring(cL[3])
                        cI = av.KeyCode
                        cH = false
                    end
                    if av.KeyCode == cI then
                        j.Callback(true, cI)
                    end
                end
            )
            local cM =
                bF.InputEnded:Connect(
                function(av)
                    if av.KeyCode == cI then
                        j.Callback(false, cI)
                    end
                end
            )
            coroutine.wrap(
                function()
                    while wait() do
                        if getgenv().visionlive == false then
                            cJ:Disconnect()
                            cK:Disconnect()
                            cM:Disconnect()
                            break
                        end
                        cF.TextColor3 = o
                        cF.BackgroundColor3 = l
                        cG.TextColor3 = o
                        cE.TextColor3 = o
                        cE.BackgroundColor3 = t
                        cD.TextColor3 = o
                        cD.BackgroundColor3 = n
                    end
                end
            )()
        end
        function bn:CreateInput(j)
            local cG = Instance.new("TextLabel")
            local L = Instance.new("UICorner")
            local cE = Instance.new("TextBox")
            local b1 = Instance.new("UICorner")
            local cN = Instance.new("TextLabel")
            local G = Instance.new("UICorner")
            j.Text = j.Text or "Input"
            j.Default = j.Default or "Input"
            j.IntOnly = j.IntOnly or false
            cG.Name = "Input"
            cG.Parent = b2
            cG.Active = true
            cG.BackgroundColor3 = n
            cG.BorderSizePixel = 0
            cG.Position = UDim2.new(0.0621488318, 0, 0.153284237, 0)
            cG.Selectable = true
            cG.Size = UDim2.new(0.925, 0, 0, 48)
            cG.ZIndex = 0
            cG.Font = Enum.Font.GothamBold
            cG.Text = ""
            cG.TextColor3 = o
            cG.TextSize = 1.000
            cG.TextWrapped = true
            cG.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = cG
            cE.Name = "InputBox"
            cE.Parent = cG
            cE.AnchorPoint = Vector2.new(0.5, 0.5)
            cE.BackgroundColor3 = t
            cE.BorderColor3 = Color3.fromRGB(255, 255, 255)
            cE.Position = UDim2.new(0.895, 0, 0.5, 0)
            cE.Size = UDim2.new(0.15, 0, 0.699999988, 0)
            cE.Font = Enum.Font.RobotoMono
            cE.ClearTextOnFocus = true
            cE.Text = j.Default or "Input"
            cE.TextColor3 = o
            cE.TextSize = 16.000
            cE.TextWrapped = true
            b1.Parent = cE
            cN.Name = "InputButton"
            cN.Parent = cG
            cN.Active = true
            cN.AnchorPoint = Vector2.new(0.5, 0.5)
            cN.BackgroundColor3 = l
            cN.BorderColor3 = Color3.fromRGB(27, 42, 53)
            cN.BorderSizePixel = 0
            cN.Position = UDim2.new(0.5, 0, 0.5, 0)
            cN.Selectable = true
            cN.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            cN.ZIndex = 0
            cN.Font = Enum.Font.GothamBold
            cN.Text = "  " .. j.Text or "  Input"
            cN.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        cN.TextColor3 = o
                        cN.BackgroundColor3 = l
                        cE.TextColor3 = o
                        cE.BackgroundColor3 = t
                        cG.TextColor3 = o
                        cG.BackgroundColor3 = n
                    end
                end
            )()
            cN.TextSize = 16.000
            cN.TextXAlignment = Enum.TextXAlignment.Left
            G.CornerRadius = UDim.new(0, 7)
            G.Parent = cN
            local cO, cP = string.sub, string.len
            local function cQ()
                local cR = cE.Text
                local cS = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}
                cE.Text = cE.Text
                if j.IntOnly then
                    cE.Text = cE.Text:gsub("%D+", "")
                end
            end
            cE:GetPropertyChangedSignal("Text"):Connect(cQ)
            cE.FocusLost:connect(
                function()
                    j.Callback(cE.Text)
                end
            )
        end
        function bn:CreateLabel(j)
            local cT = Instance.new("TextLabel")
            local L = Instance.new("UICorner")
            local cU = Instance.new("TextLabel")
            local cV = Instance.new("UITextSizeConstraint")
            local b1 = Instance.new("UICorner")
            local thisText = j.Text or "Label"
            j.Text = j.Text or "Label"
            cT.Name = "Label"
            cT.Parent = b2
            cT.Active = true
            cT.BackgroundColor3 = n
            cT.BorderSizePixel = 0
            cT.Position = UDim2.new(0.0621488318, 0, 0.153284237, 0)
            cT.Selectable = true
            cT.Size = UDim2.new(0.925, 0, 0, 48)
            cT.ZIndex = 0
            cT.Font = Enum.Font.GothamBold
            cT.Text = ""
            cT.TextColor3 = o
            cT.TextSize = 1.000
            cT.TextWrapped = true
            cT.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = cT
            cU.Name = "LabelText"
            cU.Parent = cT
            cU.Active = true
            cU.AnchorPoint = Vector2.new(0.5, 0.5)
            cU.BackgroundColor3 = l
            cU.BorderColor3 = Color3.fromRGB(27, 42, 53)
            cU.BorderSizePixel = 0
            cU.Position = UDim2.new(0.5, 0, 0.5, 0)
            cU.Selectable = true
            cU.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            cU.ZIndex = 0
            cU.Font = Enum.Font.GothamBold
            cU.Text = "  " .. thisText
            cU.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        cU.TextColor3 = o
                        cU.BackgroundColor3 = l
                        cT.TextColor3 = o
                        cT.BackgroundColor3 = n
                    end
                end
            )()
            cU.TextSize = 16.000
            cU.TextWrapped = true
            cU.TextScaled = true
            cV.Parent = cU
            cV.MaxTextSize = 16
            cV.MinTextSize = 9
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = cU
            local cW = {}
            function cW:SetText(cR)
                cU.Text = "  " .. cR
            end
            return cW
        end
        function bn:CreateSpacing(j)
            local cT = Instance.new("TextLabel")
            local L = Instance.new("UICorner")
            local cU = Instance.new("TextLabel")
            local b1 = Instance.new("UICorner")
            local cX = 48
            j.Size = j.Size or 1
            cT.Name = "Label"
            cT.Parent = b2
            cT.Active = true
            cT.BackgroundColor3 = n
            cT.BorderSizePixel = 0
            cT.BackgroundTransparency = 1.000
            cT.TextTransparency = 1.000
            if j.Size ~= nil then
                cX = cX * j.Size
            end
            cT.Position = UDim2.new(0.0621488318, 0, 0.153284237, 0)
            cT.Selectable = true
            cT.Size = UDim2.new(0.925, 0, 0, cX)
            cT.ZIndex = 0
            cT.Font = Enum.Font.GothamBold
            cT.Text = ""
            cT.TextColor3 = o
            cT.TextSize = 1.000
            cT.TextWrapped = true
            cT.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = cT
            cU.Name = "LabelText"
            cU.Parent = cT
            cU.Active = true
            cU.AnchorPoint = Vector2.new(0.5, 0.5)
            cU.BackgroundColor3 = l
            cU.BorderColor3 = Color3.fromRGB(27, 42, 53)
            cU.BorderSizePixel = 0
            cU.BackgroundTransparency = 1.000
            cU.TextTransparency = 1.000
            cU.Position = UDim2.new(0.5, 0, 0.5, 0)
            cU.Selectable = true
            cU.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            cU.ZIndex = 0
            cU.Font = Enum.Font.GothamBold
            cU.Text = thisText or "Place Holder Label"
            cU.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        cU.TextColor3 = o
                        cU.BackgroundColor3 = l
                        cT.TextColor3 = o
                        cT.BackgroundColor3 = n
                    end
                end
            )()
            cU.TextSize = 16.000
            cU.TextWrapped = true
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = cU
        end
        function bn:CreateToggle(j)
            local cY = Instance.new("TextButton")
            local L = Instance.new("UICorner")
            local cZ = Instance.new("TextButton")
            local b1 = Instance.new("UICorner")
            local c_ = Instance.new("ImageLabel")
            local d0 = Instance.new("ImageLabel")
            j.Text = j.Text or "Toggle"
            j.Default = j.Default or false
            cY.Name = "Toggle"
            cY.Parent = b2
            cY.AnchorPoint = Vector2.new(0.5, 0.5)
            cY.BackgroundColor3 = n
            cY.BorderSizePixel = 0
            cY.Position = UDim2.new(0.0621488318, 0, 0.0766421184, 0)
            cY.Size = UDim2.new(0.925, 0, 0, 48)
            cY.ZIndex = 0
            cY.Font = Enum.Font.GothamBold
            cY.Text = ""
            cY.TextColor3 = o
            cY.TextSize = 1.000
            cY.TextWrapped = true
            cY.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = cY
            cZ.Name = "ToggleButton"
            cZ.Parent = cY
            cZ.AnchorPoint = Vector2.new(0.5, 0.5)
            cZ.BackgroundColor3 = l
            cZ.BorderColor3 = Color3.fromRGB(27, 42, 53)
            cZ.BorderSizePixel = 0
            cZ.Position = UDim2.new(0.5, 0, 0.5, 0)
            cZ.Size = UDim2.new(0.996999979, 0, 0.959999979, 0)
            cZ.ZIndex = 0
            cZ.Font = Enum.Font.GothamBold
            cZ.Text = "  " .. j.Text or "  Toggle"
            cZ.TextColor3 = o
            cZ.TextSize = 16.000
            cZ.TextXAlignment = Enum.TextXAlignment.Left
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = cZ
            c_.Name = "Unchecked"
            c_.Parent = cY
            c_.AnchorPoint = Vector2.new(0.5, 0.5)
            c_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            c_.BackgroundTransparency = 1.000
            c_.BorderSizePixel = 0
            c_.Position = UDim2.new(0.949999988, 0, 0.504000008, 0)
            c_.Size = UDim2.new(0, 30, 0, 30)
            c_.Image = "rbxassetid://9767079014"
            c_.ImageColor3 = p
            c_.Visible = true
            d0.Name = "Checked"
            d0.Parent = c_
            d0.AnchorPoint = Vector2.new(0.5, 0.5)
            d0.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
            d0.BackgroundTransparency = 1.000
            d0.BorderSizePixel = 0
            d0.Position = UDim2.new(0.5, 0, 0.5, 0)
            d0.Size = UDim2.new(0, 30, 0, 30)
            d0.Visible = true
            d0.Image = "rbxassetid://9767089736"
            d0.ImageColor3 = p
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        d0.ImageColor3 = p
                        c_.ImageColor3 = p
                        cZ.TextColor3 = o
                        cZ.BackgroundColor3 = l
                        cY.TextColor3 = o
                        cY.BackgroundColor3 = n
                    end
                end
            )()
            if j.Default ~= nil then
                if j.Default then
                    d0.Size = UDim2.new(0, 30, 0, 30)
                else
                    d0.Size = UDim2.new(0, 0, 0, 0)
                end
            else
                d0.Size = UDim2.new(0, 0, 0, 0)
            end
            cZ.MouseButton1Click:Connect(
                function()
                    local A = game:GetService("TweenService")
                    local b8 = TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local d1 = A:Create(d0, b8, {Size = UDim2.new(0, 0, 0, 0)})
                    local d2 = A:Create(d0, b8, {Size = UDim2.new(0, 30, 0, 30)})
                    local d3 = j.Default
                    if d0.Size.Y.Offset == 30 then
                        d3 = true
                    else
                        d3 = false
                    end
                    j.Callback(not d3)
                    if d3 then
                        d1:Play()
                        wait(0.4)
                    else
                        d2:Play()
                        wait(0.4)
                    end
                end
            )
            j.Callback(j.Default)
        end
        function bn:CreateColorPicker(j)
            local d4 = Instance.new("TextButton")
            local L = Instance.new("UICorner")
            local d5 = Instance.new("TextButton")
            local b1 = Instance.new("UICorner")
            local d6 = Instance.new("ImageButton")
            local d7 = Instance.new("UIAspectRatioConstraint")
            local d8 = Instance.new("ImageLabel")
            local d9 = Instance.new("ImageButton")
            local da = Instance.new("UIGradient")
            local br = Instance.new("ImageLabel")
            local db = Instance.new("UIAspectRatioConstraint")
            local dc = Instance.new("ImageLabel")
            local dd = Instance.new("UIAspectRatioConstraint")
            local de = Instance.new("Frame")
            local df = Instance.new("TextLabel")
            local dg = Instance.new("Frame")
            local dh = Instance.new("TextLabel")
            local di = Instance.new("Frame")
            local dj = Instance.new("TextLabel")
            j.Text = j.Text or "Colorpicker"
            j.Default = j.Default or Color3.fromRGB(255, 255, 255)
            d4.Name = "Colorpicker"
            d4.Parent = b2
            d4.BackgroundColor3 = n
            d4.BorderSizePixel = 0
            d4.Position = UDim2.new(0.0466692448, 0, 0.507754028, 0)
            d4.Size = UDim2.new(0.925, 0, 0, 48)
            d4.ZIndex = 0
            d4.Font = Enum.Font.GothamBold
            d4.Text = ""
            d4.TextColor3 = o
            d4.TextSize = 1.000
            d4.TextWrapped = true
            d4.TextXAlignment = Enum.TextXAlignment.Left
            L.Parent = d4
            d5.Name = "ColorpickerButton"
            d5.Parent = d4
            d5.AnchorPoint = Vector2.new(0.5, 0.5)
            d5.BackgroundColor3 = l
            d5.BorderColor3 = Color3.fromRGB(27, 42, 53)
            d5.BorderSizePixel = 0
            d5.Position = UDim2.new(0.5, 0, 0.5, 0)
            d5.Size = UDim2.new(0.996999979, 0, 0.96, 0)
            d5.ZIndex = 0
            d5.Font = Enum.Font.GothamBold
            d5.Text = "\n  " .. j.Text or "\n  Colorpicker"
            d5.TextColor3 = o
            d5.TextSize = 16.000
            d5.TextXAlignment = Enum.TextXAlignment.Left
            d5.TextYAlignment = Enum.TextYAlignment.Top
            b1.CornerRadius = UDim.new(0, 7)
            b1.Parent = d5
            d6.Name = "ColourWheel"
            d6.Parent = d5
            d6.Active = false
            d6.AnchorPoint = Vector2.new(0.5, 0.5)
            d6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d6.BackgroundTransparency = 1.000
            d6.ImageTransparency = 1.000
            d6.BorderSizePixel = 0
            d6.Position = UDim2.new(0.76408422, 0, 0.581105053, 0)
            d6.Selectable = false
            d6.Size = UDim2.new(0.251966, 0, 0.696658313, 0)
            d6.Image = "http://www.roblox.com/asset/?id=6020299385"
            d7.Parent = d6
            d7.AspectRatio = 1.000
            d8.Name = "Picker"
            d8.Parent = d6
            d8.AnchorPoint = Vector2.new(0.5, 0.5)
            d8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d8.BackgroundTransparency = 1.000
            d8.ImageTransparency = 1.000
            d8.BorderSizePixel = 0
            d8.Position = UDim2.new(0.5, 0, 0.5, 0)
            d8.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
            d8.Image = "http://www.roblox.com/asset/?id=3678860011"
            d9.Name = "DarknessPicker"
            d9.Parent = d5
            d9.Active = false
            d9.AnchorPoint = Vector2.new(0.5, 0.5)
            d9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d9.BackgroundTransparency = 1.000
            d9.ImageTransparency = 1.000
            d9.BorderSizePixel = 0
            d9.Position = UDim2.new(0.944, 0, 0.581052899, 0)
            d9.Selectable = false
            d9.Size = UDim2.new(0.0425212495, 0, 0.78, 0)
            d9.ZIndex = 2
            d9.Image = "rbxassetid://3570695787"
            d9.ScaleType = Enum.ScaleType.Slice
            d9.SliceCenter = Rect.new(100, 100, 100, 100)
            d9.SliceScale = 0.050
            da.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
            }
            da.Rotation = 90
            da.Parent = d9
            br.Name = "Slider"
            br.Parent = d9
            br.AnchorPoint = Vector2.new(0.5, 0.5)
            br.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            br.BackgroundTransparency = 1.000
            br.ImageTransparency = 1.000
            br.BorderSizePixel = 0
            br.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
            br.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
            br.ZIndex = 2
            br.Image = "rbxassetid://3570695787"
            br.ImageColor3 = Color3.fromRGB(255, 74, 74)
            br.ScaleType = Enum.ScaleType.Slice
            br.SliceCenter = Rect.new(100, 100, 100, 100)
            br.SliceScale = 0.120
            db.Parent = d9
            db.AspectRatio = 0.157
            dc.Name = "ColourDisplay"
            dc.Parent = d5
            dc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dc.BackgroundTransparency = 1.000
            dc.BorderSizePixel = 0
            dc.Position = UDim2.new(0.9204, 0, 0, 6)
            dc.Size = UDim2.new(0, 33, 0, 33)
            dc.ZIndex = 2
            dc.Image = "rbxassetid://3570695787"
            dc.ScaleType = Enum.ScaleType.Slice
            dc.SliceCenter = Rect.new(100, 100, 100, 100)
            dc.SliceScale = 0.050
            dd.Parent = dc
            de.Name = "Red"
            de.Parent = d5
            de.BackgroundTransparency = 1.000
            de.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            de.BorderSizePixel = 0
            de.Position = UDim2.new(0.0578341261, 0, 0.261385769, 0)
            de.Size = UDim2.new(0, 5, 0, 38)
            df.Name = "RedColor"
            df.Parent = de
            df.Active = true
            df.AnchorPoint = Vector2.new(0.5, 0.5)
            df.BackgroundColor3 = l
            df.BackgroundTransparency = 1.000
            df.TextTransparency = 1.000
            df.BorderColor3 = Color3.fromRGB(27, 42, 53)
            df.BorderSizePixel = 0
            df.Position = UDim2.new(11.9000616, 0, 0.476185054, 0)
            df.Selectable = true
            df.Size = UDim2.new(16.5971031, 0, 0.784473717, 0)
            df.ZIndex = 0
            df.Font = Enum.Font.GothamBold
            df.Text = "255"
            df.TextColor3 = o
            df.TextSize = 16.000
            df.TextXAlignment = Enum.TextXAlignment.Left
            dg.Name = "Blue"
            dg.Parent = d5
            dg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dg.BorderSizePixel = 0
            dg.Position = UDim2.new(0.0578341261, 0, 0.722133577, 0)
            dg.Size = UDim2.new(0, 5, 0, 38)
            dg.BackgroundTransparency = 1.000
            dh.Name = "BlueColor"
            dh.Parent = dg
            dh.Active = true
            dh.AnchorPoint = Vector2.new(0.5, 0.5)
            dh.BackgroundColor3 = l
            dh.BackgroundTransparency = 1.000
            dh.TextTransparency = 1.000
            dh.BorderColor3 = Color3.fromRGB(27, 42, 53)
            dh.BorderSizePixel = 0
            dh.Position = UDim2.new(11.9000616, 0, 0.476185054, 0)
            dh.Selectable = true
            dh.Size = UDim2.new(16.5971031, 0, 0.784473717, 0)
            dh.ZIndex = 0
            dh.Font = Enum.Font.GothamBold
            dh.Text = "255"
            dh.TextColor3 = o
            dh.TextSize = 16.000
            dh.TextXAlignment = Enum.TextXAlignment.Left
            di.Name = "Green"
            di.Parent = d5
            di.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            di.BorderSizePixel = 0
            di.Position = UDim2.new(0.0578341261, 0, 0.491759688, 0)
            di.Size = UDim2.new(0, 5, 0, 38)
            di.BackgroundTransparency = 1.000
            dj.Name = "GreenColor"
            dj.Parent = di
            dj.Active = true
            dj.AnchorPoint = Vector2.new(0.5, 0.5)
            dj.BackgroundColor3 = l
            dj.BackgroundTransparency = 1.000
            dj.BorderColor3 = Color3.fromRGB(27, 42, 53)
            dj.BorderSizePixel = 0
            dj.Position = UDim2.new(11.9000616, 0, 0.476185054, 0)
            dj.Selectable = true
            dj.Size = UDim2.new(16.5971031, 0, 0.784473717, 0)
            dj.ZIndex = 0
            dj.Font = Enum.Font.GothamBold
            dj.Text = "255"
            dj.TextColor3 = o
            dj.TextSize = 16.000
            dj.TextXAlignment = Enum.TextXAlignment.Left
            dj.TextTransparency = 1.000
            local dk = d6
            local dl = d8
            local d9 = d9
            local dm = br
            local dn = dc
            local dp = game:GetService("UserInputService")
            local dq = false
            local dr = false
            local function ds(dt)
                local du =
                    Vector2.new(
                    d8.AbsolutePosition.X + d8.AbsoluteSize.X / 2,
                    d8.AbsolutePosition.Y + d8.AbsoluteSize.Y / 2
                )
                local dv = (math.pi - math.atan2(du.Y - dt.Y, du.X - dt.X)) / (math.pi * 2)
                local f = (dt - du).Magnitude / (d6.AbsoluteSize.X / 2)
                local aw = math.abs((dm.AbsolutePosition.Y - d9.AbsolutePosition.Y) / d9.AbsoluteSize.Y - 1)
                local dw = Color3.fromHSV(math.clamp(dv, 0, 1), math.clamp(f, 0, 1), math.clamp(aw, 0, 1))
                dn.ImageColor3 = dw
                local aW = dw
                local dx, dy, dz =
                    math.floor(aW.R * 255 + 0.5),
                    math.floor(aW.G * 255 + 0.5),
                    math.floor(aW.B * 255 + 0.5)
                de.BackgroundColor3 = Color3.fromRGB(dx, 0, 0)
                di.BackgroundColor3 = Color3.fromRGB(0, dy, 0)
                dg.BackgroundColor3 = Color3.fromRGB(0, 0, dz)
                df.Text = dx
                dj.Text = dy
                dh.Text = dz
                if dq or dr then
                    j.Callback(aW)
                end
                da.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0, dw),
                    ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
                }
            end
            local dA =
                d6.MouseButton1Down:Connect(
                function()
                    dq = true
                end
            )
            local dB =
                d9.MouseButton1Down:Connect(
                function()
                    dr = true
                end
            )
            local cM =
                dp.InputEnded:Connect(
                function(bY)
                    if bY.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return
                    end
                    dq = false
                    dr = false
                end
            )
            local dC =
                dp.InputChanged:Connect(
                function(bY)
                    if bY.UserInputType ~= Enum.UserInputType.MouseMovement then
                        return
                    end
                    if d4.Size.Y.Offset == 48 then
                        return
                    end
                    if d6.ImageTransparency == 1 then
                        return
                    end
                    if dq or dr then
                        local dD = dp:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
                        local dt =
                            Vector2.new(
                            d6.AbsolutePosition.X + d6.AbsoluteSize.X / 2,
                            d6.AbsolutePosition.Y + d6.AbsoluteSize.Y / 2
                        )
                        local dE = (dD - dt).Magnitude
                        if dE <= d6.AbsoluteSize.X / 2 and dq then
                            dl.Position = UDim2.new(0, dD.X - d6.AbsolutePosition.X, 0, dD.Y - d6.AbsolutePosition.Y)
                        elseif dr then
                            dm.Position =
                                UDim2.new(
                                dm.Position.X.Scale,
                                0,
                                0,
                                math.clamp(dD.Y - d9.AbsolutePosition.Y, 0, d9.AbsoluteSize.Y)
                            )
                        end
                        ds(dt)
                    end
                end
            )
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            cM:Disconnect()
                            dC:Disconnect()
                            dA:Disconnect()
                            dB:Disconnect()
                            break
                        end
                        dj.TextColor3 = o
                        dh.TextColor3 = o
                        df.TextColor3 = o
                        d5.TextColor3 = o
                        d5.BackgroundColor3 = l
                        d4.TextColor3 = o
                        d4.BackgroundColor3 = n
                    end
                end
            )()
            d5.MouseButton1Down:Connect(
                function()
                    local A = game:GetService("TweenService")
                    local ba = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local dF = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
                    local dG = A:Create(d5, ba, {Size = UDim2.new(0.996999979, 0, 0.99000001, 0)})
                    local dH = A:Create(d5, ba, {Size = UDim2.new(0.996999979, 0, 0.95, 0)})
                    local bb = A:Create(d4, ba, {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(0.925, 0, 0, 228)})
                    local bc = A:Create(d4, ba, {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(0.925, 0, 0, 48)})
                    local dI = A:Create(d6, dF, {ImageTransparency = 0})
                    local dJ = A:Create(d6, dF, {ImageTransparency = 1})
                    local dK = A:Create(d9, dF, {ImageTransparency = 0})
                    local dL = A:Create(d9, dF, {ImageTransparency = 1})
                    local dM = A:Create(de, dF, {BackgroundTransparency = 0})
                    local dN = A:Create(de, dF, {BackgroundTransparency = 1})
                    local dO = A:Create(di, dF, {BackgroundTransparency = 0})
                    local dP = A:Create(di, dF, {BackgroundTransparency = 1})
                    local dQ = A:Create(dg, dF, {BackgroundTransparency = 0})
                    local dR = A:Create(dg, dF, {BackgroundTransparency = 1})
                    local dS = A:Create(df, dF, {TextTransparency = 0})
                    local dT = A:Create(df, dF, {TextTransparency = 1})
                    local dU = A:Create(dj, dF, {TextTransparency = 0})
                    local dV = A:Create(dj, dF, {TextTransparency = 1})
                    local dW = A:Create(dh, dF, {TextTransparency = 0})
                    local dX = A:Create(dh, dF, {TextTransparency = 1})
                    local dY = A:Create(d8, dF, {ImageTransparency = 0})
                    local dZ = A:Create(d8, dF, {ImageTransparency = 1})
                    local d_ = A:Create(dm, dF, {ImageTransparency = 0})
                    local e0 = A:Create(dm, dF, {ImageTransparency = 1})
                    if d4.Size.Y.Offset == 48 then
                        bb:Play()
                        dK:Play()
                        dI:Play()
                        dM:Play()
                        dO:Play()
                        dQ:Play()
                        dS:Play()
                        dU:Play()
                        dW:Play()
                        dY:Play()
                        d_:Play()
                        dG:Play()
                    else
                        bc:Play()
                        dL:Play()
                        dJ:Play()
                        dN:Play()
                        dP:Play()
                        dR:Play()
                        dT:Play()
                        dV:Play()
                        dX:Play()
                        dZ:Play()
                        e0:Play()
                        dH:Play()
                    end
                end
            )
        end
        return bn
    end
    function aU:SettingsTab(j)
        local e1 = true
        local cR = j.Text or "Settings"
        local e2 = j.EnabledSettings or "None"
        local e3 = j.Icon or ""
        local e4 = j.CanvasSize or 2
        j.Text = j.Text or "Settings"
        j.Icon = j.Icon or "rbxassetid://9766674082"
        if e2 == "None" then
            e1 = false
        end
        local e5 = {
            "PrimaryColor",
            "SecondaryColor",
            "FooterColor",
            "ButtonBorderColor",
            "TextColor",
            "CheckboxColor",
            "SelectorColor",
            "SliderPrimaryColor",
            "SliderBackgroundColor",
            "InputBoxBackgroundColor",
            "DropdownUnselectedColor",
            "SeparatorColor"
        }
        if j.Visible then
            getgenv().SettingsTab = aU:CreateTab({Text = cR, CanvasSize = e4, Icon = e3, Default = false})
            SettingsTab:CreateButton(
                {Text = "Reset to Defaults", Callback = function()
                        k = j.PrimaryColor or Color3.fromRGB(35, 35, 35)
                        l = j.SecondaryColor or Color3.fromRGB(40, 40, 40)
                        m = j.FooterColor or Color3.fromRGB(45, 45, 45)
                        n = Color3.fromRGB(75, 75, 75)
                        o = Color3.fromRGB(255, 255, 255)
                        p = Color3.fromRGB(255, 255, 255)
                        q = Color3.fromRGB(30, 220, 130)
                        r = Color3.fromRGB(30, 220, 130)
                        s = Color3.fromRGB(60, 60, 60)
                        t = Color3.fromRGB(65, 65, 65)
                        u = Color3.fromRGB(169, 169, 169)
                        v = Color3.fromRGB(75, 75, 75)
                    end}
            )
            SettingsTab:CreateLabel({Text = "Colors"})
            for Q, aw in pairs(e2) do
                if aw then
                    if table.find(e5, Q) then
                        SettingsTab:CreateColorPicker(
                            {Text = Q, Default = Color3.fromRGB(255, 255, 255), Callback = function(aW)
                                    aU:SetColor(Q, aW)
                                end}
                        )
                    else
                        print("Invalid Setting: " .. Q)
                    end
                end
            end
        end
    end
    function aU:CreateTabButton(j)
        local b0 = Instance.new("TextButton")
        local b1 = Instance.new("UICorner")
        local b2 = Instance.new("Frame")
        local b3 = Instance.new("UICorner")
        local b4 = Instance.new("UIListLayout")
        local b5 = Instance.new("ImageButton")
        j.Text = j.Text or "Tab Button"
        j.Icon = j.Icon or ""
        local aY = 0
        for Q, aw in pairs(D:GetChildren()) do
            if aw:IsA("Frame") then
                aY = aY + 1
            end
        end
        if aY == nil then
            aY = 1
        end
        local aZ = 0.05 + aY * 0.05
        b2.Name = j.Text
        b2.Parent = D
        b2.AnchorPoint = Vector2.new(0.5, 0.5)
        b2.BackgroundColor3 = k
        b2.Position = UDim2.new(0.5, 0, 0.5, 0)
        b2.Size = UDim2.new(1, 0, 1, 0)
        b2.Visible = false
        b2.ZIndex = 0
        b3.CornerRadius = UDim.new(0, 12)
        b3.Parent = b2
        b4.Parent = b2
        b4.HorizontalAlignment = Enum.HorizontalAlignment.Center
        b4.SortOrder = Enum.SortOrder.LayoutOrder
        b4.Padding = UDim.new(0, 5)
        b5.Name = "home_3"
        b5.Parent = E
        b5.AnchorPoint = Vector2.new(0.5, 0.5)
        b5.BackgroundColor3 = l
        b5.BackgroundTransparency = 1.000
        b5.Position = UDim2.new(0.5, 0, 0.05, 0)
        if aY >= 1 then
            b5.Position = UDim2.new(0.5, 0, aZ, 0)
        end
        b5.Size = UDim2.new(0, 25, 0, 25)
        b5.ZIndex = 3
        b5.Image = j.Icon
        if j.Default then
            b5.ImageColor3 = q
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        b5.BackgroundColor3 = q
                    end
                end
            )()
        else
            b5.ImageColor3 = Color3.fromRGB(125, 135, 145)
        end
        b5.ImageRectOffset = Vector2.new(0, 0)
        b5.ImageRectSize = Vector2.new(0, 0)
        b0.Name = "home"
        b0.Parent = F
        b0.Active = false
        b0.AnchorPoint = Vector2.new(0.5, 0.5)
        b0.BackgroundColor3 = l
        b0.BackgroundTransparency = 1.000
        b0.BorderSizePixel = 0
        b0.Position = UDim2.new(0.32004559, 0, 0.05, 0)
        if aY >= 1 then
            b0.Position = UDim2.new(0.32004559, 0, aZ, 0)
        end
        b0.Selectable = false
        b0.Size = UDim2.new(1, 0, 0, 30)
        b0.Font = Enum.Font.Gotham
        b0.Text = "        " .. j.Text
        if default then
            b0.TextColor3 = q
        else
            b0.TextColor3 = o
            coroutine.wrap(
                function()
                    while wait() do
                        if not getgenv().visionlive then
                            break
                        end
                        b0.TextColor3 = o
                        b0.BackgroundColor3 = l
                        b5.BackgroundColor3 = l
                        b2.BackgroundColor3 = k
                    end
                end
            )()
        end
        b0.TextSize = 16.000
        b0.TextXAlignment = Enum.TextXAlignment.Left
        b1.Parent = b0
        b0.MouseEnter:Connect(
            function()
                b0.BackgroundTransparency = 0.4
            end
        )
        b0.MouseLeave:Connect(
            function()
                b0.BackgroundTransparency = 1
            end
        )
        b0.MouseButton1Click:Connect(
            function()
                j.Callback()
            end
        )
    end
    function aU:CreateSpacing()
        local b0 = Instance.new("TextButton")
        local b1 = Instance.new("UICorner")
        local b2 = Instance.new("Frame")
        local b3 = Instance.new("UICorner")
        local e6 = Instance.new("UIGridLayout")
        local b5 = Instance.new("ImageButton")
        local aY = 0
        for Q, aw in pairs(D:GetChildren()) do
            if aw:IsA("Frame") then
                aY = aY + 1
            end
        end
        if aY == nil then
            aY = 1
        end
        local aZ = 0.05 + aY * 0.05
        b2.Name = "home_2"
        b2.Parent = D
        b2.AnchorPoint = Vector2.new(0.5, 0.5)
        b2.BackgroundColor3 = k
        b2.Position = UDim2.new(0.5, 0, 0.5, 0)
        b2.Size = UDim2.new(1, 0, 1, 0)
        b2.Visible = false
        b2.ZIndex = 0
        b3.CornerRadius = UDim.new(0, 12)
        b3.Parent = b2
        e6.Parent = b2
        e6.HorizontalAlignment = Enum.HorizontalAlignment.Center
        e6.SortOrder = Enum.SortOrder.LayoutOrder
        e6.CellSize = UDim2.new(0.85, 0, 0.075, 0)
        e6.CellPadding = UDim2.new(0, 0, 0, 0)
        e6.FillDirectionMaxCells = 1
        b5.Name = "home_3"
        b5.Parent = E
        b5.AnchorPoint = Vector2.new(0.5, 0.5)
        b5.BackgroundColor3 = l
        b5.BackgroundTransparency = 1.000
        b5.Position = UDim2.new(0.5, 0, 0.05, 0)
        if aY >= 1 then
            b5.Position = UDim2.new(0.5, 0, aZ, 0)
        end
        b5.Size = UDim2.new(0, 25, 0, 25)
        b5.ZIndex = 3
        b5.Image = ""
        b5.ImageRectOffset = Vector2.new(0, 0)
        b5.ImageRectSize = Vector2.new(0, 0)
        b0.Name = "home"
        b0.Parent = F
        b0.Active = false
        b0.AnchorPoint = Vector2.new(0.5, 0.5)
        b0.BackgroundColor3 = l
        coroutine.wrap(
            function()
                while wait() do
                    if not getgenv().visionlive then
                        break
                    end
                    b0.BackgroundColor3 = l
                    b5.BackgroundColor3 = l
                    b2.BackgroundColor3 = k
                end
            end
        )()
        b0.BackgroundTransparency = 1.000
        b0.BorderSizePixel = 0
        b0.Position = UDim2.new(0.32004559, 0, 0.05, 0)
        if aY >= 1 then
            b0.Position = UDim2.new(0.32004559, 0, aZ, 0)
        end
        b0.Selectable = false
        b0.Size = UDim2.new(1, 0, 0, 30)
        b0.Font = Enum.Font.Gotham
        b0.Text = ""
        b0.TextSize = 16.000
        b0.TextXAlignment = Enum.TextXAlignment.Left
        b1.Parent = b0
    end
    coroutine.wrap(
        function()
            repeat
                wait()
            until not getgenv().visionlive
            if getgenv().doCallback then
                w()
            end
            C:Destroy()
        end
    )()
    return aU
end
return a
