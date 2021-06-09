msgversion = "1.0"
if(msgcheck == msgversion) then skip = true end
msg = 
{
    "Go to #funkyquotes to add your quotes and vote for others",
    "funky!",
    "Join \"funky!\" DS too! Search -> #funkyfumo in twitter for link!",
    "Stay Funky!",
    "The funky tree rises once again!",
    "We do a bit of funkying",
    "What a beautiful day to be FUNKY!",
    "All you have to do is being funky!",
    "Reject humanity, become funky",
    "What a funky!",
    "This messages was sended by a bot, my executor could be now afk",
    "Funky is Eternal, not funky is not",
    "Enlist to the \"Funky! Patrol\" today and serve your country",
    "Funky together strong"
}
test = false
if test == true then msgupdate = "Succesfully compiled" skip = false
else msgupdate = "*Quotes loaded/updated succesfully. Version of quotes: \"" .. msgversion .. "\"" end
if skip == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msgupdate, "All") end