--[[
Made by AtKnSploits and OnlySploits
--]]


local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local Player = game.Players.LocalPlayer
local Chat = game:GetService("Chat")
local vu = game:GetService("VirtualUser")
_G.AntiAfkOpened = false

local Bot = {}

--// FUNCTIONLAR

function Bot.walkto(pos1,pos2,pos3)
    game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(pos1,pos2,pos3))
end

function Bot.jump()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

function Bot.sit()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end

function Bot.exit()
    game:Shutdown()
end

function Bot.Chat(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end

function Bot.findbackdoorandlag(path)
    for i,v in pairs(path:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            v:FireServer("Instance.new(\"Part\",workspace).Name = \"BACKD00R\"")
            if workspace:WaitForChild("BACKD00R") then
                v:FireServer("while wait() do Instance.new(\"Part\",workspace).Size = Vector3.new(200,200,200) end")
            end
        end
    end
end

function Bot.execute(scr)
    if scr == 1 then
        
    end

    if scr == 2 then
        
    end
    
    if scr == 3 then
        
    end
end


function Bot.join(place)
    game.Players.LocalPlayer:Kick("Joining..")
    game:GetService("TeleportService"):Teleport(place, game.Players.LocalPlayer)
end

function Bot.rejoin()
    TeleportService:TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer)
end

function Bot.equip(name)
    game.Players.LocalPlayer.Backpack[name].Parent = game.Players.LocalPlayer.Character
end

function Bot.unequip(name)
    game.Players.LocalPlayer.Character[name].Parent = game.Players.LocalPlayer.Backpack
end

function Bot.kill()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

function Bot.run(scr)
    loadstring(scr)()
end
function Bot.antiafk(trueorfalse)
    _G.AntiAfkOpened = trueorfalse
end

--//FUNCTIONLAR BITIŞ

local baslangicsaas = {"As","Aleyküm selam","aleyküm selam","as"}
local baslangic2 = {"nabıyonuz","naber","nasılsınız","kız var mı"}


--//EVENTLER
Chat.Chatted:Connect(function(plr,msg)
    if msg == "sa" and msg == "SA" and msg == "Selamun Aleykum" and msg == "Selamün Aleykum" and msg == "Selamun Aleyküm" then
        if not plr == Player then
            Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
        end
    end
end)

while _G.AntiAfkOpened do wait() -- event sayılır 
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end
--//EVENTLER BITIş

--//BAŞLANGIC SCRIPTLERI

if _G.StarterScriptsOpened == true then
    Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangicsaas)]))
    wait(2)
    Bot.Chat(tostring(baslangicsaas[math.random(1,#baslangic2)]))
    while wait(13) do
        Bot.jump()  --evet ama direk functionun içinde olursa daha az yer kaplar yada az karışık olr yk knk bence iyi böle
    end 
    Bot.antiafk(true)
end
--//BAŞLANGIC SCRIPTLERI BITIŞ
