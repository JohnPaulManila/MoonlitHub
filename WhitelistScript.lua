local http_request = http_request;
if syn then
    http_request = syn.request
end

if (not http_request) then
    return game:GetService('Players').LocalPlayer:Kick('HTTP Request Failed!')
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwidlist = {"Syn-Fingerprint"};
local hwid = "";

for i, v in next, hwidlist do
    if decoded.headers[v] then
        hwid = decoded.headers[v];
        break
    end
end

local data = http_request({
    Url = ('https://celiac.000webhostapp.com/Scripts/Synapse.hash.lua');
    Method = 'GET';
})

if data.StatusCode == 200 then
    local SynX = data.Body;
    if string.find(SynX, hwid) then
        local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/JohnPaulManila/MoonlitHub/main/MoonlitHub.txt?token=AOBIK6HWNZYFP4ZFEEUNJLK74Q25W');
            if Status then
                loadstring(Script)();
            else
                game:GetService('Players').LocalPlayer:Kick('Failed to connect to website');
            end;
    else
        game:GetService('Players').LocalPlayer:Kick('HWID Not Match!')
    end
end