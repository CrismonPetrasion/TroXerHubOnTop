if game.PlaceId == 6403373529 then 
    local bypass;

    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end

        return bypass(method, ...)
    end)

    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    
    local Window = Fluent:CreateWindow({
        Title = "Slap Battles | Troxer Hub",
        SubTitle = "By cheese",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
    })
    
    local Tabs = {
        Misc = Window:AddTab({ 
            Title = "Misc", 
            Icon = "wrench" 
        }),
        Badges = Window:AddTab({ 
            Title = "Badges", 
            Icon = "award" 
        }),
        Player = Window:AddTab({ 
            Title = "Player", 
            Icon = "user" 
        }),
        Settings = Window:AddTab({ 
            Title = "Settings", 
            Icon = "settings" 
        })
    }
    
    function Notify(Title, Content, SubContent, Duration)
        Fluent:Notify({
            Title = Title,
            Content = Content,
            SubContent = SubContent , -- Optional
            Duration = Duration or 2 -- Set to nil to make the notification not disappear
        })
    end
    
    local Options = Fluent.Options
    
    do
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        Tabs.Player:AddSlider("WalkSpeedChanged", {
            Title = "Speed Hack",
            Description = "Changes your's walkspeed",
            Default = 16,
            Min = 0,
            Max = 500,
            Rounding = 1,
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            end
        })

        Tabs.Player:AddSlider("JumpPowerChanged", {
            Title = "Jump Power Hack",
            Description = "Changes your's jump power",
            Default = 50,
            Min = 0,
            Max = 500,
            Rounding = 1,
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
            end
        })

        Tabs.Player:AddSlider("GravityChanged", {
            Title = "Gravity Hack",
            Description = "Changes your's gravity",
            Default = 200,
            Min = 0,
            Max = 500,
            Rounding = 1,
            Callback = function(Value)
                workspace.Gravity = Value
            end
        })


        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
        local Portal = Tabs.Misc:AddToggle("Portal", {Title = "Anti Portal", Default = false })
        local Void = Tabs.Misc:AddToggle("Void", {Title = "Anti Void", Default = false })
        local Alchemist = Tabs.Misc:AddToggle("Ingridients", {Title = "Get Infinite Ingredients", Default = false })
        
        Portal:OnChanged(function()
            if Options.Portal.Value == true then
                local block = Instance.new("Part")
                block.Name = "Anti GS"
                block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                block.Transparency = 0.9 
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-803.081604, 328.906738, -21.2476311, 0, 0, 1, 0, -1, 0, 1, 0, -0) 
                block.Parent = game.Workspace
                -----------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "Anti KS"
                block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                block.Transparency = 0.9 
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-788.860962, 328.906738, 17.1004639, 0, 0, -1, 0, -1, -0, -1, 0, -0)
                block.Parent = game.Workspace
                ---------------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "Anti SR"
                block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                block.Transparency = 0.9
                block.CanCollide = true
                block.Anchored = true 
                block.Position = Vector3.new(-803.098694, 328.906738, 16.7261944, 0, 0, 1, 0, -1, 0, 1, 0, -0)
                block.Parent = game.Workspace
                ------------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "Anti DF"
                block.Size = Vector3.new(5.8665102124214172, 14.961214065551758, 12.762105941772461)
                block.Transparency = 0.9
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-810.073608, 329.886566, -8.02650452, 1, 0, 0, 0, -1, 0, 0, 0, -1)
                block.Parent = game.Workspace
            else
                local block = game.Workspace:FindFirstChild("Anti GS")
                if block then
                    block:Destroy()
                end
                ----------------
                local block = game.Workspace:FindFirstChild("Anti KS")
                if block then
                    block:Destroy()
                end
                --------------------------
                local block = game.Workspace:FindFirstChild("Anti SR")
                if block then
                    block:Destroy()
                end
                ------------------------------
                local block = game.Workspace:FindFirstChild("Anti DF")
                if block then
                    block:Destroy()
                end
            end
        end)
    
        Void:OnChanged(function()
            if Options.Void.Value == true then
                local block = Instance.new("Part")
                block.Name = "AntiVoid"
                block.Size = Vector3.new(265, 1, 1000) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(0, -9, 0)
                block.Parent = game.Workspace
                ---------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidPsycho"
                block.Size = Vector3.new(2000, 1, 1000) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(17800.9082, 2947, -226.017517, -0.248515129, 0.00487846136, -0.968615651, 0.966844261, -0.0594091415, -0.248359889, -0.0587562323, -0.998221755, 0.0100474358)
                block.Parent = game.Workspace
                ----------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoid2"
                block.Size = Vector3.new(500, 10, 1000)
                block.Transparency = 0.5 
                block.CanCollide = true
                block.Anchored = true 
                block.Position = Vector3.new(200, -24, 0)
                block.Parent = game.Workspace
                ----------------------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoid3"
                block.Size = Vector3.new(1000, 1, 48) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(150, -24, 0) 
                block.Parent = game.Workspace
                ----------------------------------------------------------------------------------------------------------------------------
                local block = workspace:FindFirstChild("AntiVoid3")
                if block then
                    local rotationAngle = 90
                    local rotationCFrame = CFrame.Angles(0, math.rad(rotationAngle), 0)
                    block.CFrame = block.CFrame * rotationCFrame
                end
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro6"
                block.Size = Vector3.new(460, 3, 150) 
                block.Transparency = 0.5
                block.CanCollide = true
                block.Anchored = true 
                block.Position = Vector3.new(-27930.4746, 160.009445, 4835.11084, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro5"
                block.Size = Vector3.new(500, 3, 150) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(-27965.0977, 35.1371307, 4834.51074, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro4"
                block.Size = Vector3.new(1000, 5, 500) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-28030.8477, -93.4633942, 4950.85986, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro3"
                block.Size = Vector3.new(100, 5, 1000) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-28030.6484, -219.863602, 4836.85986, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro2"
                block.Size = Vector3.new(1000, 2, 1000)
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(-16906.6445, 770.000549, 4719.68848, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidRetro"
                block.Size = Vector3.new(1000, 2, 1000)
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(-16874.8262, -7.55000019, 4799.2666)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------
                local block = workspace:FindFirstChild("AntiVoid3")
                if block then
                    local rotationAngle = 45
                    local rotationCFrame = CFrame.Angles(math.rad(rotationAngle), 0, 0)
                    block.CFrame = block.CFrame * rotationCFrame
                end
                --------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoid4"
                block.Size = Vector3.new(265, 1, 1000) 
                block.Transparency = 0.5
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(-135, -9, 0)
                block.Parent = game.Workspace
                -----------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoidBA"
                block.Size = Vector3.new(2000, 10, 2000)
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true
                block.Position = Vector3.new(3500, 74.5, 0)
                block.Parent = game.Workspace
                -----------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "AntiVoid5"
                block.Size = Vector3.new(300, 1, 1000)
                block.Transparency = 0.5 
                block.CanCollide = true
                block.Anchored = true 
                block.Position = Vector3.new(-400, -15, 0)
                block.Parent = game.Workspace
            else
                local block = game.Workspace:FindFirstChild("AntiVoid")
                if block then
                    block:Destroy()
                end
                ----------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoid2")
                if block then
                    block:Destroy()
                end
                -----------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoid3")
                if block then
                    block:Destroy()
                end
                --------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoid4")
                if block then
                    block:Destroy()
                end
                --------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidBA")
                if block then
                    block:Destroy()
                end
                ------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro6")
                if block then
                    block:Destroy()
                end
                ------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro5")
                if block then
                    block:Destroy()
                end
                ------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro4")
                if block then
                    block:Destroy()
                end
                -------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro3")
                if block then
                    block:Destroy()
                end
                ------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidPsycho")
                if block then
                    block:Destroy()
                end
                ------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro2")
                if block then
                    block:Destroy() 
                end
                -------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoidRetro")
                if block then
                    block:Destroy()
                end
                --------------------------------------------------------------------------------------------
                local block = game.Workspace:FindFirstChild("AntiVoid5")
                if block then
                    block:Destroy()
                end
            end
        end)
    
        Alchemist:OnChanged(function()
            if Options.Ingridients.Value == true then
                _G.AlchemistScript = true
    
                while _G.AlchemistScript == true do
                    wait()
                    local args = {
                        [1] = "AddItem",
                        [2] = "Blood Rose"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Jade Stone"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ----------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Plane Flower"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ----------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Lamp Grass"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    -----------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Winter Rose"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ----------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Autumn Sprout"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ----------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Dire Flower"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ----------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Dark Root"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    --------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Fire Flower"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    ---------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Mushroom"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    --------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Hazel Lily"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                    --------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "AddItem",
                        [2] = "Cake Mix"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("AlchemistEvent"):FireServer(unpack(args))
                end
            else
                _G.AlchemistScript = false
            end
        end)

        local TeleportDrow = Tabs.Misc:AddDropdown("TeleportSection", {
            Title = "Teleport",
            Values = {"Slapple Island", "Moai Island", "Plate", "Battle Arena", "Cannon Island", "Defualt Arena", "Normal Arena", "Spawn", "Safe Port"},
            Multi = false,
            Default = 8,
        })

        TeleportDrow:OnChanged(function(Value)
            if Value == "Slapple Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.island5.Union.CFrame
            elseif Value == "Moai Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.island4["Big Tree"].Bark.CFrame
            elseif Value == "Plate" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
            elseif Value == "Battle Arena" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
            elseif Value == "Cannon Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.620972, 35.9974861, 198.8535, 0.788386106, 0.045268368, -0.613512933, -8.81827944e-09, 0.997288942, 0.0735854656, 0.615180731, -0.0580137558, 0.786248744)
            elseif Value == "Defualt Arena" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,364,-3)
            elseif Value == "Normal Arena" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.3642788, -3.69053721, -7.41954088, 0.405183077, -0.00669269683, -0.914211094, -1.2553046e-05, 0.999973178, -0.00732610561, 0.914235532, 0.00297989813, 0.40517211)
            elseif Value == "Spawn" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-798.47345, 329.357147, 0.84058404, -0.791819096, -2.52048302e-08, -0.610755682, -2.72838037e-08, 1, -5.89596372e-09, 0.610755682, 1.19952013e-08, -0.791819096)
            elseif Value == "Safe Port" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-450.217651, -28151.4883, -2.34852624, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end)

        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
        Tabs.Badges:AddButton({
            Title = "Get Brazil Badge",
            Description = "Kicks you from the game!",
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
            end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Retro Badge",
            Description = "Must equip Recall glove to use this command!",
            Callback = function()
                if game.Players.LocalPlayer.leaderstats.Glove == "Recall" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
                else
                    Notify("Error", "You must need recall glove equipped!", "", 3)
                end
            end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Duck Badge",
            Description = "Clicking for you a duck to get the badge!",
            Callback = function()
                fireclickdetector(workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
            end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Court Evidence Badge",
            Description = "Clicking for you a knife to get the badge!",
            Callback = function()
                fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
            end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Lone Orange Badge",
            Description = "Clicking for you a lone orange to get the badge!",
            Callback = function()
                fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
            end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Ice Skate Badge",
            Description = "Freeze's you to get the badge!",
            Callback = function()
                local args = {
                    [1] = "Freeze"
                }
                
                game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))
             end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Trap Badge",
            Description = "Must equip Brick glove to use this command!",
            Callback = function()
                if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
                    for i = 1, 200 do
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                        wait(Random.new():NextNumber(1.1,1.25))
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                        wait(Random.new():NextNumber(1.1,1.25))
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                        wait(Random.new():NextNumber(1.1,1.25))
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                        wait(Random.new():NextNumber(1.1,1.25))
                        game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
                        wait(Random.new():NextNumber(1.1,1.25))
                    end
                else
                    Notify("Error", "You must need brick glove equipped!", "", 3)
                end
             end,
        })
    
        Tabs.Badges:AddButton({
            Title = "Get Redacted Badge",
            Description = "Must have 5000 slaps to use this command!",
            Callback = function()
                if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["1"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["10"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["2"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["3"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["4"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["5"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["6"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["7"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["8"].CFrame
                    wait(3.75)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["9"].CFrame
                else
                    Notify("Error", "You don't have 5000 slaps", "", 3)
                end
            end,
        })

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/SlapBattles")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

    end
end
