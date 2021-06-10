if not enabled then enabled = true end --for loop
if not speed then speed = 30 end --in seconds
if not update then update = true end --updates msglist after every iteration
if not random then random = true end --randomize quotes

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")

function msgload()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RUMBlk/funkyquotes/main/msglist.lua'))() end --load msglist

msgload()

repeat
    items=#(msg)
    if random == true then
        math.randomseed(os.time())
        if #(msg) > 20 then items = 20 end
    end
    if desc then
        for i = 1, #(desc) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(desc[i], "All")
            wait(speed)
        end
    end
    for i = 1, items do
        rand = math.random(1, #(msg))
        if random == true then tosend = msg[rand] else tosend = msg[i] end
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tosend, "All")
        wait(speed)
    end
    if update == true then msgload() end --load msglist end
until enabled == false
