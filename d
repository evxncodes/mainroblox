local player = ...
    
game.Players.PlayerAdded:connect(function(player) --this gets the player that connected
    player.Chatted:connect(function(message) --this function executes when the player type into chat
    --commands are here
        if player.Name == "TominoCZ" or player.Name == "nathancain" or player.Name == "block100000" then
            if message == "kill/me" then
                player.Character.Head:remove()
            end
        
            if message == "ff/me" then
                if player.Character:findFirstChild("ForceField") then
                    player.Character.ForceField:Destroy()
                end
            
                Instance.new("ForceField").Parent = player.Character
            end
            
            if message == "unff/me" then 
                if player.Character:findFirstChild("ForceField") then
                    player.Character.ForceField:Destroy()
                end
            end
        end
    end)
end)
