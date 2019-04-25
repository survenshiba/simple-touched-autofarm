--[[
	Author: Bincs58
	Language: RLua
	Info: This only works for games that have touched eventz for a certain action, such as touching a certain object called "Ball" or "Coin" for money.
--]]

local Contains = {"Ball", "Coin"} --The names that it will teleport to
local path = workspace --The path that the autofarm should looked for
local option = "Children" --Put this to Descendants if needed, it will be laggier tho
local waittime = 0.01 --The time that the autofarm will wait until teleporting to the next object
local looped = true --If the autofarm is looping

--[[
	DONT EDIT UNDER UNLESS YOU KNOW WHAT YOU'RE DOING
--]]

if looped == true then
while wait() do
if option == "Children" then
	for i,v in pairs(path:GetChildren()) do
		for _,names in pairs(Contains) do
			if string.find(v.Name, names) then
				local chr = game:service'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
				local root = chr:FindFirstChild("HumanoidRootPart")
				root.CFrame = CFrame.new(v.Position)
				wait(waittime)
			end
		end
	end
else if option == "Descendants" then
	for i,v in pairs(path:GetDescendants()) do
		for _,names in pairs(Contains) do
			if string.find(v.Name, names) then
				local chr = game:service'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
				local root = chr:FindFirstChild("HumanoidRootPart")
				root.CFrame = CFrame.new(v.Position)
				wait(waittime)
			end
		end
	end
end
end
end
else
if option == "Children" then
	for i,v in pairs(path:GetChildren()) do
		for _,names in pairs(Contains) do
			if string.find(v.Name, names) then
				local chr = game:service'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
				local root = chr:FindFirstChild("HumanoidRootPart")
				root.CFrame = CFrame.new(v.Position)
				wait(waittime)
			end
		end
	end
else if option == "Descendants" then
	for i,v in pairs(path:GetDescendants()) do
		for _,names in pairs(Contains) do
			if string.find(v.Name, names) then
				local chr = game:service'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
				local root = chr:FindFirstChild("HumanoidRootPart")
				root.CFrame = CFrame.new(v.Position)
				wait(waittime)
			end
		end
	end
end
end
end
