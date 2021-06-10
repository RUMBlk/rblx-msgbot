local enabled = true --for loop
local speed = 30 --in seconds
local update = true --updates msglist after every iteration
local random = true --randomize quotes

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")

loadstring(game:HttpGet('https://raw.githubusercontent.com/RUMBlk/funkyquotes/main/emsglist.lua'))() --load msglist

repeat
    items=#(msg)
    if random == true then
        math.randomseed(os.time())
        items = math.fmod(items, 20)
    end
    if desc then
        for i = 1, #(desc) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(desc[i], "All")
            wait(speed)
        end
    end
    for i = 1, items do
        
        if random == true then tosend = msg[math.random(1, items)] else tosend = msg[i] end
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tosend, "All")
        wait(speed)
    end
    if update == true then loadstring(game:HttpGet('https://raw.githubusercontent.com/RUMBlk/funkyquotes/main/msglist.lua'))() end --load msglist end
until enabled == false