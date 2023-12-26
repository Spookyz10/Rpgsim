function swingdasword()
    local args = {[1] = "Slash"}
    game:GetService("ReplicatedStorage").Events.attack:FireServer(unpack(args))
    local args = {[1] = "T"}
    game:GetService("ReplicatedStorage").Events.attack:FireServer(unpack(args)) 
    local args = {[1] = "E"}
    game:GetService("ReplicatedStorage").Events.attack:FireServer(unpack(args))
end

function lookAt(chr,target) -- found this func somewhere
    if chr.PrimaryPart then 
        local chrPos=chr.PrimaryPart.Position 
        local tPos=target.Position 
        local newCF=CFrame.new(chrPos,tPos) 
        chr:SetPrimaryPartCFrame(newCF)
    end
end

function gettarget()
    local target = game:GetService("Workspace"):WaitForChild('Mobs'):FindFirstChild('Crystal') or game:GetService("Workspace"):WaitForChild('Mobs'):FindFirstChild('Stand')
    if not target then
        target = workspace:WaitForChild('Mobs'):FindFirstChild("Hive Queen") or workspace:WaitForChild('Mobs'):FindFirstChild("Hive Guard") or game:GetService("Workspace"):WaitForChild('Mobs'):FindFirstChildWhichIsA("Model")
    end
    if target then
        if getgenv().settings['farmsettings']['mobsettings'][target.Name] then
            return target, getgenv().settings['farmsettings']['mobsettings'][target.Name]['x'], getgenv().settings['farmsettings']['mobsettings'][target.Name]['y'], getgenv().settings['farmsettings']['mobsettings'][target.Name]['z'], getgenv().settings['farmsettings']['mobsettings'][target.Name]['type']
        else
            return target
        end
    end
end

function farmraid()
    task.wait()
        for _,v in pairs(game.Workspace.misc:GetChildren()) do
            if v:FindFirstChild('Beam') then
                game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(23277, 2206, 376)
                repeat
                    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(1,0,0)
                    wait(0.1)
                until not v:IsDescendantOf(game.Workspace.misc)
            end
        end
        if workspace.misc:FindFirstChild('Rockwall') then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
                if v:IsA('TextLabel') then
                    if v.Name == "Speech" then
                        local t = v.Text
                        local foundNumber = string.gsub(t, 'Get behind a wall before the swarm comes %(','')
                        local foundNumber = string.gsub(foundNumber, '%)','')
                        if tonumber(foundNumber) == 1 then
                            pcall(function()
                                repeat
                                    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game:GetService("Workspace").misc:FindFirstChild('Rockwall'):FindFirstChild('Safe').CFrame
                                    task.wait()
                                until not game:GetService("Workspace").misc:FindFirstChild('Rockwall'):IsDescendantOf(game.Workspace) or getgenv().adaffvca
                            end)
                        end
                    end
                end
            end
        end       
                    end)
                end
            end
        end

        local mob, x, y, z, type = gettarget()

        if mob then
            if mob.Name == "Sentry" then -- we dont wanna target useless stuff right
                game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(100,500,100)
                task.wait()
                farmraid()
                return
            end

            swing = true
            repeat
                if table.find(getgenv().settings['farmsettings']['silencers'], game.Players.LocalPlayer.Name) then
                    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = mob.HumanoidRootPart.CFrame + Vector3.new(0,0,5)
                else
                    if not type then
                        if getgenv().adaffvca then
                            return
                        end
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = mob.HumanoidRootPart.CFrame + Vector3.new(0,0,getgenv().settings['farmsettings']['range']) 
                    else
                        if type == '+' then
                            if getgenv().adaffvca then
                                return
                            end
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = mob.HumanoidRootPart.CFrame + Vector3.new(x,y,z)
                        else
                            if getgenv().adaffvca then
                                return
                            end
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(x,y,z)
                        end
                    end
                end
                lookAt(game.Players.LocalPlayer.Character, mob.HumanoidRootPart)
                task.wait()
            until abort or getgenv().adaffvca or not mob:IsDescendantOf(workspace.Mobs) or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') or game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health == 0 or mob:FindFirstChild('Humanoid').Health == 0
            swing = false
            abort = false
            getgenv().adaffvca = false
            farmraid()
            return
        else
            if getgenv().settings["teleportinairwhennomob"] then
                game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(100,500,100)
            end
            farmraid()
        end
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(1)
    farmraid()
end)
workspace:WaitForChild('Mobs').ChildAdded:Connect(function(v) -- for shadow palace and crystal caverns 
    if v.Name == "Stand" or "Crystal" then
        abort = true
        farmraid()
    end
end)

workspace.misc.ChildAdded:Connect(function(v) -- for hive so u dont die
    if v.Name == "Rockwall" then
        abort = true
        farmraid()
    end
end)

pcall(function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
        if v:IsA('TextLabel') then
            if v.Name == "Speech" then
                v:GetPropertyChangedSignal('Text'):connect(function()
                    local t = v.Text
                    if string.find(t, "Get behind a wall") then
                        local foundNumber = string.gsub(t, 'Get behind a wall before the swarm comes %(','')
                        local foundNumber = string.gsub(foundNumber, '%)','')
                        if tonumber(foundNumber) == 1 then
                            abort = true
                            farmraid()
                        end
                    end
                end)
            end
        end
    end
end)

game.Workspace.misc.DescendantAdded:connect(function(v)
    if v.Name == "Beam" then
        getgenv().adaffvca = true
        farmraid()
    end
end)

coroutine.resume(coroutine.create(function() -- gotta be safe.. also swinging dont matter much in end game anyway
    while task.wait(0.1) do
        if swing then
            if getgenv().settings['farmsettings']['autoswing'] then
                swingdasword()
                wait(1)
            end
        end
    end        
end))

coroutine.resume(coroutine.create(function()
    pcall(function()
        while wait(3) do
            for _,v in pairs(game:GetService("Workspace").RandomKey:GetChildren()) do
                pcall(function()
                    if v:IsA('Model') then
                        fireclickdetector(v.Click.ClickDetector)
                    end
                end)
            end
            fireclickdetector(workspace.Obby.Box.Click.ClickDetector)
        end
    end) 
end))

game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(v)
    if v.Name == "Thaw" then
        local button = v:WaitForChild('TextButton')
        while task.wait() do
            for i,v in pairs(getconnections(button.MouseButton1Click)) do
                v:Fire()
            end
        end
    end
end)
