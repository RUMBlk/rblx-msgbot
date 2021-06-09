msgversion = "1.1B"
msg = 
{
    "Go to #funkyquotes to add your quotes and vote for others. Script was made by RUMBlk",
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
    "Funky together strong",
    "100% pure, concentrated funky",
    "You save the funky, you save the world"
}
test = true
msg =
{
    "TEST MODE",
    "Versions comparison: " .. msgcheck .. " " .. msgversion
}
if test == true then msgupdate = "Succesfully compiled" skip = false
else msgupdate = "*Quotes updated succesfully. Version of quotes: \"" .. msgversion .. "\"" end
if skip == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msgupdate, "All") wait(speed) end