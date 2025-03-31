util.AddNetworkString("better_murder_scoreboard_kill_player")
util.AddNetworkString("better_murder_scoreboard_ignite_player")
util.AddNetworkString("better_murder_scoreboard_extinguish_player")
util.AddNetworkString("better_murder_scoreboard_kick_player")
util.AddNetworkString("better_murder_scoreboard_ban_player")
util.AddNetworkString("better_murder_scoreboard_freeze_player")
util.AddNetworkString("better_murder_scoreboard_unfreeze_player")
util.AddNetworkString("better_murder_scoreboard_revive_player")

------------------ KILL PLAYER ------------------ 
net.Receive("better_murder_scoreboard_kill_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Kill()
    end
end)

------------------ BURN/EXTINGUISH PLAYER ------------------ 
net.Receive("better_murder_scoreboard_ignite_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Ignite(30)
    end
end)

net.Receive("better_murder_scoreboard_extinguish_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Extinguish()
    end
end)

------------------ KICK/BAN PLAYER ------------------ 
net.Receive("better_murder_scoreboard_kick_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Kick( "Do not respect the rules." )
    end
end)

net.Receive("better_murder_scoreboard_ban_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Ban( 0, true )
    end
end)

------------------ FREEZE/UNFREEZE PLAYER ------------------ 
net.Receive("better_murder_scoreboard_freeze_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Lock()
    end
end)

net.Receive("better_murder_scoreboard_unfreeze_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:UnLock()
    end
end)

------------------ REVIVE PLAYER ------------------ 
net.Receive("better_murder_scoreboard_revive_player", function(_, sender)
    local targetPlayer = net.ReadEntity()

    if IsValid(targetPlayer) and sender:IsAdmin() then
        targetPlayer:Spawn()
    end
end)