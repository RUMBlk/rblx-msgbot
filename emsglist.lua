local msgversion = "1.3E"
local desc =
{
    "Go to #funkyquotes in our DS server to add your quotes and vote for others. Script was made by RUMBlk",
    "Join \"funky!\" DS too! Search -> #funkyfumo in twitter for link!"
}
local msg = 
{
    "funky!",
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
    "Funky together strong",
    "100% pure, concentrated funky",
    "You save the funky, you save the world",
    "FumoCam is funky, don't forget to check BecomeFumoCam on twitch!",
    "Touhou 6: Embodiment of a Funky Tree",
    "Funky 2: Electic Boogalo",
    "Touhou 7: Perfect Funky blossom",
    "Touhou 15: Legacy of Funky Kingdom",
    "Touhou 19: Eternal Funk"
}
local test = false
local skip = false
if test == true then msgupdate = "Succesfully compiled"
elseif msgcheck == nil then msgupdate = "*Quotes loaded succesfully. Version of quotes: \"" .. msgversion .. "\""
elseif msgcheck == msgversion then skip = true
else msgupdate = "*Quotes updated succesfully. Version of quotes: \"" .. msgversion .. "\"" end
if skip == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msgupdate, "All") wait(speed) end
msgcheck = msgversion