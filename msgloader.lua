if not enabled then enabled = true end --for loop
if not speed then speed = 30 end --in seconds
if not restart_time then restart_time = 10 end
if not update then update = true end --updates msglist after every iteration
if not random then random = true end --randomize quotes

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")

function msgload()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RUMBlk/funkyquotes/main/msglist.lua'))() end --load msglist

if not end_of_world then
    game:GetService("Players").LocalPlayer.Chatted:Connect(function(chatmsg)
            if chatmsg == "!msgbot off" and enabled == true then
                enabled = false
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned off*", "All")
            elseif chatmsg == "!msgbot on" and enabled == false then
                enabled = true
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")
            elseif chatmsg == "!msgbot kill" and not end_of_world then
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Killed*", "All")
                enabled = false
                end_of_world = true
            elseif chatmsg == "!msgbot update" then
                msgload()
            end
    end)
end


msgload()

repeat
    if enabled == true then repeat
        items=#(msg)
        if random == true then
            math.randomseed(os.time())
            if #(msg) > 20 then items = 20 end
        end
        for i = 1, items do
            if desc and i == 1 then
                for i = 1, #(desc) do
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(desc[i], "All")
                    wait(speed)
                end
            end
            if enabled == false then break end
            if random == true then rand = math.random(1, #(msg)) tosend = msg[rand] else tosend = msg[i] end
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tosend, "All")
            wait(speed)
        end
        if update == true then msgload() end --load msglist end
        until enabled == false
    end
    wait(restart_time)
until end_of_world