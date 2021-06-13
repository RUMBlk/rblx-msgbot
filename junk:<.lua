msgversion = "removed"

desc =
{
    "Join \"funky!\" DS today! Use this link -> waa.ai/mbSt to join! Script was made by RUMBlk"
}
msg = 
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
    "Unfunky is temporary, Funky is eternal",
    "Enlist to the \"Funky! Patrol\" today and serve your country",
    "Funky together strong",
    "100% pure, concentrated funky",
    "You save the funky, you save the world",
    "FumoCam is funky, don't forget to check \"Funky!\" history on BecomeFumoCam twitch!",
    "Touhou 6: Embodiment of a Funky Tree",
    "Funky 2: Electic Boogalo",
    "Touhou 7: Perfect Funky Blossom",
    "Touhou 15: Legacy of Funky Kingdom",
    "Touhou 19: Eternal Funk",
    "Stay hydrated while being Funky!",
    "Nipah, mukyu, awoo, whatever you are! Funky doesn't care who you are",
    "May the funky be with you",
    "Stay Funky, but don't end up like Junko",
    "Nobody knows the reason of Junko's death, all that we know is that she was funky",
    "\"roomia gaming\" - sponsored by guess who",
    "Funk for the erfoo doe",
    "\"not_food\", \"Melissandria666\", please come back to Funky Treehouse.",
    "Where were you when DangerCirno was stairs?"
    "The funky Angel watches over all of us"
}
test = false
skip = false
if test == true then msgupdate = "Succesfully compiled"
elseif msgcheck == nil then msgupdate = "*Quotes loaded succesfully. Version of quotes: \"" .. msgversion .. "\""
elseif msgcheck == msgversion then skip = true
else msgupdate = "*Quotes updated succesfully. Version of quotes: \"" .. msgversion .. "\"" end
if forceupdate == true and skip == true then msgupdate = "Quotes already up-to-date. Version of quotes: \"" .. msgversion .. "\"" skip = false forceupdate = false end
if skip == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msgupdate, "All") wait(speed) end
msgcheck = msgversion
