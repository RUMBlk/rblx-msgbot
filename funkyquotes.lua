enabled = true --for loop
speed = 30 --in seconds

loadstring(game:HttpGet('https://raw.githubusercontent.com/RUMBlk/funkyquotes/main/msglist.lua'))() --load msglist

items=#(msg)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")
repeat
    for i = 1, items do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg[i], "All")
        wait(speed)
    end
until enabled == false