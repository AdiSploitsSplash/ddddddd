wait(0)

local function callback(Text)
    if Text == "" then
        print("")
    elseif Text == "" then
        print("")
    end
end
------------------------------------------------------------------------------------------------------
local NotificationBindable = Instance.new("BindableFunction")

game.StarterGui:SetCore("SendNotification", {
    Title = "Thank You :D";
    Text = "Thank you for using scripts made by NITRO";
    Icon = "http://www.roblox.com/asset/?id=3264340825";
    Duration = 20;
    Button1 = "Ok";
    Button2 = "";
    Callback = NotificationBindable;
})







game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SetTeam", "Police")
wait(.75)
game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if v.Name == "Handcuffs" then v.Parent = game:GetService("Players").LocalPlayer.Character
   end
end
game:GetService("ReplicatedStorage").Event:FireServer("Eject", game:GetService("Players").LocalPlayer)
end)
