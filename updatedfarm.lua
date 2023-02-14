local WinsGained = 0
local el = workspace.Easy.Entry.LiftEntry
local ml = workspace.Medium.Entry.LiftEntry
local hl = workspace.Hard.Entry.LiftEntry
local LP = game.Players.LocalPlayer
local function getroot()
    repeat
        task.wait(1)
    until LP.Character and LP.Character:WaitForChild("HumanoidRootPart")
    return LP.Character:WaitForChild("HumanoidRootPart")
end

while true do
    if LP.Ingame.Value == 0 and LP.Waiting.Value == 0 then -- checks ingame and waiting values
        if workspace.Easy.Info.Value == "Game is Ready!" then
            firetouchinterest(getroot(),el,0)
            firetouchinterest(getroot(),el,1)
            for i = 1,3 do
                workspace.Easy.Info.Changed:wait()
            end
            repeat
                firetouchinterest(getroot(),workspace.Easy.Main.Exit,0)
                firetouchinterest(getroot(),workspace.Easy.Main.Exit,1)
                task.wait()
            until LP.Ingame.Value == 0
        elseif workspace.Medium.Info.Value == "Game is Ready!" then
            firetouchinterest(getroot(),ml,0)
            firetouchinterest(getroot(),ml,1)
            for i = 1,3 do
                workspace.Medium.Info.Changed:wait()
            end 
            repeat
                firetouchinterest(getroot(),workspace.Medium.Main.Exit,0)
                firetouchinterest(getroot(),workspace.Medium.Main.Exit,1)
                task.wait()
            until LP.Ingame.Value == 0
        elseif workspace.Hard.Info.Value == "Game is Ready!" then
            firetouchinterest(getroot(),hl,0)
            firetouchinterest(getroot(),hl,1)
            for i = 1,3 do
                workspace.Hard.Info.Changed:wait()
            end
            repeat
                firetouchinterest(getroot(),workspace.Hard.Main.Exit,0)
                firetouchinterest(getroot(),workspace.Hard.Main.Exit,1)
                task.wait()
            until LP.Ingame.Value == 0
        end 
    end
end