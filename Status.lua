if game.PlaceId == 6284583030 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Shiny Tool v1.0.8 Beta Testing", "Serpent")
    local spawnAreas = {"Town","Forest","Beach","Mine","Winter","Glacier","Desert","Volcano"}
    local FantasyAreas = {"Enchanted Forest","Ancient","Samurai","Candy","Haunted","Hell","Heaven","Heavens Gate"}
    local TechAreas = {"Ice Tech","Tech City","Dark Tech"}

    --Creators:


    function FarmCoin(CoinID, PetID)
        game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
        game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
    end
    
    function GetMyPets()
        local returntable = {}
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
            if v.ClassName == 'TextButton' and v.Equipped.Visible then
                table.insert(returntable, v.Name)
            end
        end
        return returntable
    end
    
    function GetCoins(world, area)
        local returntable = {}
        local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
        for i,v in pairs(ListCoins) do
            if string.lower(v.w) == string.lower(world) and string.lower(v.a) == string.lower(area) then
                table.insert(returntable, i)
            end
        end
        return returntable
    end
    
    --TABS
        local Creators = Window:NewTab("Creators")
        local CreatorsSection = Creators:NewSection("Discord:")
        CreatorsSection:NewDropdown("Discord:","Thats who made script!",{
            "Killua#0003",
            "Awwww#5555"
        },function(choice)
        end)

        --FUNCTIONS


        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Credits")
        MainSection:NewButton("Click to copy our discord link", "Support our Discord!", function()
            setclipboard("https://discord.gg/Qs7wex4dqU")
        end)
        local MainSection = Main:NewSection("Unlock all gamepasses")
        MainSection:NewButton("Click To get gamepasses", "Unlocks all gamepasses", function(s)
            local library = require(game:GetService("ReplicatedStorage").Framework.Library)
        library.Gamepasses.Owns = function() return true end
        end)





        local Player = Window:NewTab("Player")
        

        local PlayerSection = Player:NewSection("Player")
        local areaDropdown
        PlayerSection:NewSlider("WalkSpeed", "Faster Moves", 250, 16, function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
            end)
            PlayerSection:NewSlider("JumpPower", "Jumps Higher", 250, 50, function(s)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
            end)





        
        PlayerSection:NewToggle("Fly", "NOT WORKING", function(s)
            
        end)


        PlayerSection:NewToggle("Air Jump", "Jump like jesus!", function(s)
            InfiniteJumpEnabled = s
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfiniteJumpEnabled then
                    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                end
            end)
        end)


        PlayerSection:NewToggle("NoClip", "Hacker?", function(s)
                
            noclip = s
            game:GetService('RunService').Stepped:connect(function()
            if noclip then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            end)
            plr = game.Players.LocalPlayer
        end)
        

        local Egg = Window:NewTab("Eggs")
        local EggSection = Egg:NewSection("AutoHatch Mithical")
        EggSection:NewButton("Visual Huge Cat Hatch", "Visual Hatch", function(s)
                local string_1 = "Cracked Egg";
            local table_1 = {
            [1] = {
                ["nk"] = 'Preston',
                ["idt"] = 418,
                ["e"] = true,
                ["uid"] = 'id6h83hgkjh7dyhd7487yh898744343/rin3',
                ["s"] = 69420,
                ["id"] = '157'
                }
            };
        local Target = game:GetService("ReplicatedStorage").Framework.Modules["2 | Network"]["open egg"];
        Target:Fire(string_1, table_1);
        end)


        local EggSection = Egg:NewSection("AutoEggs")
        EggSection:NewToggle("Dark Tech Egg", "Just Egg Open :)", function(state)
            if state then
                getgenv().ench39333555555555555555555hgg = true;
        
                while wait() do
                    if getgenv().ench39333555555555555555555hgg == true then
                    workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer({"Dark Tech Egg 1",false})
                end
                end
                    else
                        getgenv().ench39333555555555555555555hgg = false;
        
                        while wait() do
                            if getgenv().ench39333555555555555555555hgg == true then
                            workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer({"Dark Tech Egg 1",false})
                        end
                        end
                    end   
        end)




        EggSection:NewToggle("Golden Dark Tech Egg", "Just Egg Open :)", function(state)
            if state then
                getgenv().ench39333555555555555555555hgg = true;
        
                while wait() do
                    if getgenv().ench39333555555555555555555hgg == true then
                    workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer({"Golden Dark Tech Egg",false})
                end
                end
                    else
                        getgenv().ench39333555555555555555555hgg = false;
        
                        while wait() do
                            if getgenv().ench39333555555555555555555hgg == true then
                            workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer({"Golden Dark Tech Egg",false})
                        end
                        end
                    end   
        end)





        local EggSection = Egg:NewSection("Auto Maker")
        EggSection:NewToggle("Auto Make Dark Matter", "BECARFUL WHEN YOU ON THIS FUCTION IT WILL MAKES FROM NORMALS PETS TO DARK MATTER PETS YOU WILL NEED TO WAIT 5 DAYS TO CLAIM IT!", function(s)
            workspace.__THINGS.__REMOTES["convert to dark matter"]:InvokeServer({{"159"}})
        end)



        

        local AutoFarm = Window:NewTab("Farming")

        local AutoFarmSection = AutoFarm:NewSection("AutoFarm ON/OFF")
        AutoFarmSection:NewToggle("AutoFarm", "AutoFarms Everything", function(s)
                
                _G.Stop = not s
                _G.World = worldChoice
                _G.Area = areaChoice
                loadstring(game:HttpGet('https://pastebin.com/raw/tGUJRjqb'))()
        end)


        local AutoFarmSection = AutoFarm:NewSection("AutoFarm Status Glitched ")
        AutoFarmSection:NewToggle("Farm Status", "Shows what you will get in 1 minute", function(state)
            if state then
                local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
            
            menus.Diamonds2.Visible = true
            menus['Tech Coins2'].Visible = true
            menus['Fantasy Coins2'].Visible = true
            menus.Coins2.Visible = true
            else
            local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
            
            menus.Diamonds2.Visible = false
            menus['Tech Coins2'].Visible = false
            menus['Fantasy Coins2'].Visible = false
            menus.Coins2.Visible = false
            end
            
            local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
            local Save = gamelibrary.Save.Get
            local Commas = gamelibrary.Functions.Commas
            local types = {}
            local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
            for i, v in pairs(menus:GetChildren()) do
                if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
                    table.insert(types, v.Name)
                end
            end
            
            function get(thistype)
                return Save()[thistype]
            end
            end)
            
            local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
            local Save = gamelibrary.Save.Get
            local Commas = gamelibrary.Functions.Commas
            local types = {}
            local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
            for i, v in pairs(menus:GetChildren()) do
                if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
                    table.insert(types, v.Name)
                end
            end
            
            function get(thistype)
                return Save()[thistype]
            end
            
            menus.Diamonds.LayoutOrder = 99990
            menus['Tech Coins'].LayoutOrder = 99992
            menus['Fantasy Coins'].LayoutOrder = 99994
            menus.Coins.LayoutOrder = 99996
            menus.UIListLayout.HorizontalAlignment = 2
            
            _G.MyTypes = {}
            for i,v in pairs(types) do
                if not menus:FindFirstChild(v.."2") then
                    local tempmaker = menus:FindFirstChild(v):Clone()
                    tempmaker.Name = tostring(tempmaker.Name .. "2")
                    tempmaker.Parent = menus
                    tempmaker.Size = UDim2.new(0, 200, 0, 35)
                    tempmaker.LayoutOrder = tempmaker.LayoutOrder + 1
                    _G.MyTypes[v] = tempmaker
                end
            end
            menus.Diamonds2.Add.Visible = false
            
            for i,v in pairs(types) do
                spawn(function()
                    local megatable = {}
                    local imaginaryi = 1
                    while wait(0.5) do
                        local currentbal = get(v)
                        megatable[imaginaryi] = currentbal
                        local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
                        imaginaryi = imaginaryi + 1
                        _G.MyTypes[v].Amount.Text = tostring(Commas(diffy).." in 60s")
                        _G.MyTypes[v]["Amount_odometerGUIFX"].Text = tostring(Commas(diffy).." in 60s")
                    end
                end)


        



        local AutoFarmSection = AutoFarm:NewSection("AutoFarm Areas")
        AutoFarmSection:NewDropdown("Worlds","Anti AFK ON",{
            "Spawn",
            "Fantasy",
            "Tech"
        },function(choice)
            worldChoice = choice
            if worldChoice == "Spawn" then
                areaDropdown:Refresh(spawnAreas)
            end
            if worldChoice == "Fantasy" then
                areaDropdown:Refresh(FantasyAreas)
            end
            if worldChoice == "Tech" then
                areaDropdown:Refresh(TechAreas)
            end
        end)
        areaDropdown = AutoFarmSection:NewDropdown("Areas","All Areas",spawnAreas
        ,function(choice)
            areaChoice = choice
        end)


        


        local AutoFarmSection = AutoFarm:NewSection("AutoFarm Chests")
        AutoFarmSection:NewToggle("Magma Chest Farm", "Farms Chest", function(s)
        
            getgenv().start = s

            function CollectOrbs()
                local ohTable1 = {[1] = {}}
                for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
                    ohTable1[1][i] = v.Name
                end
                game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
            end
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"105.39637")  then
                        return v.Parent.Name
                    end
                end
                end

            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end


        
        end)




        AutoFarmSection:NewToggle("Ancient Chest", "Farms Ancient Chest", function(s)
            
            getgenv().start = s

            function CollectOrbs()
                local ohTable1 = {[1] = {}}
                for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
                    ohTable1[1][i] = v.Name
                end
                game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
            end

            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end
            
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"169.901672")  then
                        return v.Parent.Name
                    end
                end
                end

        end)


        AutoFarmSection:NewToggle("Haunted Chest", "Farms Haunted Chest", function(s)
            
            getgenv().start = s

            function CollectOrbs()
                local ohTable1 = {[1] = {}}
                for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
                    ohTable1[1][i] = v.Name
                end
                game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
            end
            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end
            
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"131.071182")  then
                        return v.Parent.Name
                    end
                end
                end

        end)


        
        AutoFarmSection:NewToggle("Hell Chest", "Farms Hell Chest", function(s)
            
            getgenv().start = s

            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end
            
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"129.55484")  then
                        return v.Parent.Name
                    end
                end
                end

        end)
        

        AutoFarmSection:NewToggle("Heave's Gate Chest", "Farms Heaven Chest", function(s)
            
            getgenv().start = s

            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end
            
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"153.308334")  then
                        return v.Parent.Name
                    end
                end
                end

        end)



        AutoFarmSection:NewToggle("Tech Chest Farm", "Farms Hi-Tech Chest", function(s)
        
            getgenv().start = s

            while wait() and getgenv().start do
                local cointhiny = getchest()
                local pethingy = GetMyPets()
                for i = 1, #GetMyPets() do
                    pcall(function() FarmCoin(cointhiny, pethingy[i%#pethingy+1]) end)
                    pcall(function() CollectOrbs() end)
                end
            end
            
            function getchest()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
                    if v:IsA("Part") and string.match(tostring(v.CFrame),"124.084")  then
                        return v.Parent.Name
                    end
                end
                end

        end)
        


        local Secret = Window:NewTab("Redeem")
        local SecretSection = Secret:NewSection("RANKS/VIP")
        SecretSection:NewButton("Reddem Rank Rewards", "You will get automaticlly rewards from ranks", function()
            shared.enabled = true
                while shared.enabled do
            workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})
            end
        end)


        SecretSection:NewButton("Reddem VIP Rewards", "You will get automaticlly rewards from vip area", function()
            shared.enabled = true
                while shared.enabled do
            workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
            end
        end)


        local Settings = Window:NewTab("Settings")
        local SettingsFarmSection = Settings:NewSection("KeyWord to hide Hub")
        SettingsFarmSection:NewKeybind("Keybind", "KeybindInfo", Enum.KeyCode.F, function()
            for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
                if tonumber(v.Name) then
                    if v.Enabled then
                        v.Enabled = false
                    else
                        v.Enabled = true
                    end
                end
            end
        end)
    end


