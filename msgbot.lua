if not enabled then enabled = true end --for loop
if not speed then speed = 30 end --in seconds
if not desc_speed then desc_speed = 10 end --in seconds
if not iteration then iteration = 20 end --integer, in case if random == true 
if not restart_time then restart_time = 10 end
if not update then update = true end --updates msglist after every iteration
if not random then random = true end --randomize quotes
if not msglist then update = false end

if not desc then desc = {
    "Script was made by RUMBlk",
    "Search on github \"rblx-msgbot\" for script"
} end
if not msg then msg = {
    "Put your messages here",
    "Placeholder"
} end

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*MsgBot: Executed and turned on*", "All")

function msgload()
    loadstring(game:HttpGet(msglist))() end

game:GetService("Players").LocalPlayer.Chatted:Connect(function(chatmsg)
    if not end_of_world then
		if chatmsg == "!msgbot off" and enabled == true then
			enabled = false
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*MsgBot: Turned off*", "All")
		elseif chatmsg == "!msgbot on" and enabled == false then
			enabled = true
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*MsgBot: Turned on*", "All")
		elseif chatmsg == "!msgbot kill" and not end_of_world then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*MsgBot: Killed*", "All")
			enabled = false
			end_of_world = true
		elseif chatmsg == "!msgbot update" then
			forceupdate = true
		end
    end
end)

if msglist then msgload() end

repeat
    if enabled == true then repeat
        items=#(msg)
        if random == true then
            math.randomseed(os.time())
            if #(msg) > iteration then items = iteration end
        end
        for i = 1, items do
            if desc and i == 1 then
                for i = 1, #(desc) do
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(desc[i], "All")
                    wait(desc_speed)
                end
            end
            if enabled == false or forceupdate == true then break
            elseif desc_speed < speed and i == 1 then wait(speed-desc_speed) end
            if random == true then rand = math.random(1, #(msg)) tosend = msg[rand] else tosend = msg[i] end
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tosend, "All")
            wait(speed)
        end
        if update == true or forceupdate == true then msgload() end --load msglist end
        until enabled == false
    end
    wait(restart_time)
until end_of_world