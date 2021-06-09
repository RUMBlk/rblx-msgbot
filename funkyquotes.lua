enabled = true
msg = 
{
    "Go to #funkyquotes to add your quotes and vote for others",
    "funky!",
    "Join \"funky!\" DS too! Search -> #funkyfumo in twitter for link!",
    "Stay Funky!",
    "The funky tree rises once again!",
    "We do a bit of funkying",
    "What a beautiful F U N K Y!"
}
speed = 30 --in seconds
items=#(msg)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*Turned on*", "All")
repeat
    for i = 1, items do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg[i], "All")
        wait(speed)
    end
until enabled == false