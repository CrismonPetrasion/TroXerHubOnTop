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

    local Library = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    local Window = Library:CreateWindow({
       Name = "Slap Battles | TroXer Hub",
       LoadingTitle = "Troxer Hub is Loading",
       LoadingSubtitle = "by Cheese",
       ConfigurationSaving = {
          Enabled = true,
          FolderName = nil, -- Create a custom folder for your hub/game
          FileName = "Big Hub"
       },
       Discord = {
          Enabled = false,
          Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
          RememberJoins = true -- Set this to false to make them join the discord every time they load it up
       },
       KeySystem = false, -- Set this to true to use our key system
       KeySettings = {
          Title = "Key System",
          Subtitle = "Key System",
          Note = "",
          FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
          SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
          GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
          Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
       }
    })
    
    function Notify(Title, Content, Duration)
       Library:Notify({
            Title = Title,
            Content = Content,
            Duration = Duration or 2,
            Image = 4483362458,
       })
    end
    
    --// Tabs

    local Misc = Window:CreateTab("Misc", 4370318685) -- Title, Image
    local Badges = Window:CreateTab("Badges", 4483362458) -- Title, Image
    local Player = Window:CreateTab("Player", 4335489011) -- Title, Image
    
    --// Player Commands

    local WalkSpeed = Player:CreateSlider({
        Name = "Speed Hack",
        Range = {16, 500},
        Increment = 1,
        Suffix = "Walk Speed",
        CurrentValue = 0,
        Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end,
    })

    local JumpPower = Player:CreateSlider({
        Name = "Jump Hack",
        Range = {50, 500},
        Increment = 1,
        Suffix = "Jump Power",
        CurrentValue = 0,
        Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end,
    })

    local GravityPower = Player:CreateSlider({
        Name = "Gravity Hack",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Gravity Power",
        CurrentValue = 0,
        Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            workspace.Gravity = Value
        end,
    })

    --// Misc Commands

    local Alchemist = Misc:CreateToggle({
        Name = "Get Infinite Ingredients",
        CurrentValue = false,
        Flag = "Ingredients", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                _G.Alchemist = true

                while _G.Alchemist == true do
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
                _G.Alchemist = false
            end
        end,
    })

    local AntiVoid = Misc:CreateToggle({
        Name = "Anti Void",
        CurrentValue = false,
        Flag = "Voids", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
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
        end,
    })

    local AntiPortal = Misc:CreateToggle({
        Name = "Anti Portal",
        CurrentValue = false,
        Flag = "Portals", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
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
        end,
    })

    --// Badges Commands

    local Brazil = Badges:CreateButton({
        Name = "Get Brazil Badge",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
        end,
    })

    local Retro = Badges:CreateButton({
        Name = "Get Retro Badge",
        Callback = function()
            if game.Players.LocalPlayer.leaderstats.Glove == "Recall" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
            else
                Notify("Error", "You don't have recall glove equipped!", 3)
            end
        end,
    })

    local Duck = Badges:CreateButton({
        Name = "Get Duck Badge",
        Callback = function()
            fireclickdetector(workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
        end,
    })

    local Knife = Badges:CreateButton({
        Name = "Get Court Evidence Badge",
        Callback = function()
            fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
        end,
    })

    local Orange = Badges:CreateButton({
        Name = "Get Lone Orange Badge",
        Callback = function()
            fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
        end,
    })

    local Skate = Badges:CreateButton({
        Name = "Get Ice Skate Badge",
        Callback = function()
            local args = {
                [1] = "Freeze"
            }
            
            game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))
         end,
    })

    local Trap = Badges:CreateButton({
        Name = "Get Trap Badge",
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
                Notify("Error", "You don't have brick equipped")
            end
         end,
    })

    local Redacted = Badges:CreateButton({
        Name = "Get Redacted Badge",
        Callback = function()
            if not game.BadgeService:UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
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
                    Notify("Error", "You don't have 5000 slaps!!", 3)
                end
            else
                Notify("Error", "You already have redacted badge!", 3)
            end
        end,
    })
elseif game.PlaceId == 9431156611 then
    local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS2 then
            return
        end
        return bypass(method, ...)
    end)

    local Library = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    local Window = Library:CreateWindow({
       Name = "Slap Royale | TroXer Hub",
       LoadingTitle = "Troxer Hub is Loading",
       LoadingSubtitle = "by Cheese",
       ConfigurationSaving = {
          Enabled = true,
          FolderName = nil, -- Create a custom folder for your hub/game
          FileName = "Big Hub"
       },
       Discord = {
          Enabled = false,
          Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
          RememberJoins = true -- Set this to false to make them join the discord every time they load it up
       },
       KeySystem = false, -- Set this to true to use our key system
       KeySettings = {
          Title = "Key System",
          Subtitle = "Key System",
          Note = "",
          FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
          SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
          GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
          Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
       }
    })
    
    function Notify(Title, Content, Duration)
       Library:Notify({
            Title = Title,
            Content = Content,
            Duration = Duration or 2,
            Image = 4483362458,
       })
    end
    
    --// Tabs

    local Combat = Window:CreateTab("Combat", 7733674079) -- Title, Image
    local Misc = Window:CreateTab("Misc", 4370318685) -- Title, Image
    local Player = Window:CreateTab("Player", 4335489011) -- Title, Image

    --// Combat Commands

    local SlapAura = Combat:CreateToggle({
        Name = "Slap Aura",
        CurrentValue = false,
        Flag = "Aura", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                _G.SlapAura = true

                while _G.SlapAura == true do
                    wait()
                    local Players = game:GetService("Players")
                    local LocalPlayer = Players.LocalPlayer
                    local NearbyPlayers = {}
                    
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer then
                            local character = player.Character
                            if character and character:FindFirstChild("Head") then
                                local distance = (LocalPlayer.Character.Head.Position - character.Head.Position).magnitude
                                if distance <= 25 then  
                                    table.insert(NearbyPlayers, player)
                                end
                            end
                        end
                    end
                    
                    if #NearbyPlayers > 0 then
                        for _, player in ipairs(NearbyPlayers) do
                            local args = {
                                [1] = player.Character.Head
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Slap"):FireServer(unpack(args))
                        end
                    end
                end
            else
                _G.SlapAura = false
            end
        end,
    })

    --// Misc Commands

    local AntiLava = Misc:CreateToggle({
        Name = "Anti Lava",
        CurrentValue = false,
        Flag = "Lava", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                local block = Instance.new("Part")
                block.Name = "AntiLavaKYK"
                block.Size = Vector3.new(100, 1, 110) 
                block.Transparency = 0.5
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(-240.93428, -29.1903477, 401.880219, 0.349086821, -0.0864096507, 0.933097899, 1.95710618e-06, 0.995739639, 0.0922098681, -0.937090397, -0.0321874209, 0.347599745) 
                block.Parent = game.Workspace
            else
                local block = game.Workspace:FindFirstChild("AntiLavaKYK")
                if block then
                    block:Destroy()
                end
            end
        end,
    })

    local AntiAcid = Misc:CreateToggle({
        Name = "Anti Acid",
        CurrentValue = false,
        Flag = "Acid", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                local block = Instance.new("Part")
                block.Name = "AntiAcidKYK"
                block.Size = Vector3.new(200, 1, 200) 
                block.Transparency = 0.5 
                block.CanCollide = true 
                block.Anchored = true 
                block.Position = Vector3.new(-64.6827164, 0.228857517, -711.446655, -0.91774404, -0.0017926431, 0.397168338, -6.40035691e-10, 0.999989808, 0.00451351237, -0.397172391, 0.004142249, -0.917734683)
                block.Parent = game.Workspace
            else
                local block = game.Workspace:FindFirstChild("AntiAcidKYK")
                if block then
                    block:Destroy()
                end
            end
        end,
    })
    
    --// Player Commands

    local WalkSpeed = Player:CreateSlider({
        Name = "Speed Hack",
        Range = {16, 500},
        Increment = 1,
        Suffix = "Walk Speed",
        CurrentValue = 0,
        Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end,
    })

    local JumpPower = Player:CreateSlider({
        Name = "Jump Hack",
        Range = {50, 500},
        Increment = 1,
        Suffix = "Jump Power",
        CurrentValue = 0,
        Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end,
    })

    local GravityPower = Player:CreateSlider({
        Name = "Gravity Hack",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Gravity Power",
        CurrentValue = 0,
        Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            workspace.Gravity = Value
        end,
    })
end
