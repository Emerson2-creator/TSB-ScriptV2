-- Esses são os scripts emcontrado no jogo


-- Decompiled with Medal by Atlantis

local v_u_1 = tick()
local v_u_2 = game.Players.LocalPlayer
local v_u_3 = v_u_2.Character or v_u_2.CharacterAdded:Wait()
local v_u_4 = v_u_3.Humanoid
local v_u_5 = v_u_3.HumanoidRootPart
local v_u_6 = v_u_3.Head
local v_u_7 = v_u_3.Communicate
local v8 = v_u_2.PlayerGui
local _ = game.Lighting.ClockTime
local v_u_9 = game.FindFirstChild
local v_u_10 = require(game.ReplicatedStorage.ActionCheck)
local v_u_11 = require(game.ReplicatedStorage.Info)
local v_u_12 = v_u_3:WaitForChild("Animate", 5)
local _ = v_u_12:WaitForChild("walk"):WaitForChild("WalkAnim").AnimationId
local v_u_13 = game:service("TweenService")
local v14 = game:GetService("ContextActionService")
local v_u_15 = game:service("UserInputService")
local v_u_16 = game:GetService("CollectionService")
local v_u_17 = v_u_3:FindFirstChild("Torso")
local v_u_21 = (function()
	-- upvalues: (copy) v_u_2, (copy) v_u_9
	local v_u_18 = v_u_2.Character or v_u_2.CharacterAdded:wait()
	local v_u_19 = require(v_u_18.CharacterHandler:FindFirstChild("AnimationPlayer") or v_u_18.CharacterHandler:WaitForChild("AnimationPlayer"))
	return function(p20)
		-- upvalues: (copy) v_u_19, (ref) v_u_9, (copy) v_u_18
		return v_u_19.playAnimation(v_u_9(v_u_18, "Humanoid"), p20)
	end
end)()
local v_u_22 = 0
local v_u_23 = 0
local v_u_24 = nil
local function v_u_26()
	local v25 = Color3.fromRGB
	game.Lighting.Ambient = Color3.fromRGB(138, 138, 138)
	game.Lighting.Brightness = 2
	game.Lighting.ColorShift_Bottom = v25(53, 53, 53)
	game.Lighting.ColorShift_Top = v25(90, 90, 90)
	game.Lighting.EnvironmentDiffuseScale = 0
	game.Lighting.EnvironmentSpecularScale = 0
	game.Lighting.GlobalShadows = true
	game.Lighting.OutdoorAmbient = v25(128, 128, 128)
	game.Lighting.ClockTime = 12.302
	game.Lighting.GeographicLatitude = -0.41
	game.Lighting.ShadowSoftness = 0.2
	game.Lighting.ExposureCompensation = 0
end
local v_u_27 = nil
local v_u_28 = 0
local v_u_29 = 0
local v_u_30 = nil
for _, v31 in pairs({ 77727115892579, 88023704984538, 99451623559327 }) do
	v_u_21(v31)
end
local function v_u_32(...)
	-- upvalues: (copy) v_u_7
	return v_u_7:FireServer(unpack({ ... }))
end
local function v_u_36(p33)
	-- upvalues: (copy) v_u_3
	local v34 = v_u_3:FindFirstChild("Torso")
	local v35 = v34 and v34:FindFirstChild("Left Hip")
	if v35 then
		v35.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0.001, 0)
		task.wait(p33 or 0.15)
		v35.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	end
end
local v_u_37 = 0
local v_u_38 = 0
local v_u_39 = 0
local v_u_40 = false
local v_u_41 = false
local v_u_42 = shared.ray
local v_u_43 = nil
v_u_4.Jumping:Connect(function(p44)
	-- upvalues: (copy) v_u_32, (ref) v_u_22, (ref) v_u_23, (ref) v_u_43
	if p44 then
		v_u_32({
			["Goal"] = "Record Jump"
		})
		if tick() - v_u_22 > 1.25 then
			v_u_23 = 0
		end
		v_u_22 = tick()
		v_u_23 = v_u_23 + 1.5
		v_u_43()
	end
end)
v_u_4.Died:Connect(function()
	-- upvalues: (copy) v_u_3
	local v45 = v_u_3:FindFirstChild("Head")
	if v45 then
		if v_u_3:GetAttribute("Override") then
			return
		end
		workspace.CurrentCamera.CameraSubject = v45
		v45.CanCollide = true
	end
end)
local function v57(p46)
	local v47 = os.time()
	local v48 = math.sin(v47) * math.random(1, 100 + workspace.DistributedGameTime)
	local v49 = math.floor(v48)
	if v49 > 0 then
		local v50 = v49 * 10
		local v51 = math.rad(v50)
		local _ = v49 - 1
		local _ = 0 + math.sin(v51) + math.cos(v51)
	end
	local v52 = math.random(-100, 100)
	if v52 > 1 then
		local _ = v52 * (v52 - 1)
	end
	local v53 = math.random(1, 8458.13581)
	local v54 = math.random(1, 125.9)
	local v55 = math.sqrt(v54)
	local v56 = math.floor(v55)
	if v56 ~= 1 and v53 % v56 ~= 0 then
		local _ = v56 - 1
	end
	return #p46.Name
end
for _, v58 in pairs(v_u_16:GetTagged("InvisibleWalls")) do
	v58.CanCollide = true
end
local v_u_59 = workspace.CurrentCamera
local v_u_60 = v_u_15.TouchEnabled
shared.ismobile = v_u_60
v_u_3:SetAttribute("mobile", v_u_60)
local v_u_61 = v_u_15.GamepadEnabled
shared.isconsole = v_u_61
local v_u_62 = v_u_60 or (v_u_61 or v_u_2:GetAttribute("S_AutoRun"))
v_u_32({
	["Goal"] = "Platform",
	["mobile"] = v_u_60
})
if v_u_60 or v_u_61 then
	v_u_59:GetPropertyChangedSignal("CameraType"):Connect(function()
		-- upvalues: (copy) v_u_59
		if v_u_59.CameraType == Enum.CameraType.Custom then
			v_u_59.CameraType = Enum.CameraType.Track
		end
	end)
	v_u_59.CameraType = Enum.CameraType.Track
else
	v_u_59.CameraType = Enum.CameraType.Custom
end
v_u_59.FieldOfView = 70
v_u_2.CameraMaxZoomDistance = 128
v_u_2.CameraMinZoomDistance = 0.5
if shared.SetCore then
	shared.SetCore(true)
end
v_u_59.CameraSubject = v_u_4
local v63 = shared
local v64 = v57(v14)
if not v63[tostring(v64)] then
	local v65 = require(game.ReplicatedStorage.Emotes)
	local v66 = shared
	local v67 = v57(v14)
	v66[tostring(v67)] = v65:Get()
end
local v_u_68 = {
	75547590335774,
	132259592388175,
	95575238948327,
	102814369422840,
	75502010126640,
	85813428590588,
	86490931396573,
	10471478869,
	17141153099,
	77727115892579,
	140164642047188,
	71377448806509,
	90072892650917,
	96865367566704,
	73060755698819,
	96865367566704,
	73060755698819,
	76530443909428,
	18182456608,
	18897115785,
	18897116845,
	18897118507,
	18897119503,
	18897120868,
	18897121931,
	18182425133,
	18896229321,
	71060716968719,
	114763770211803,
	121440687354239,
	18896127525,
	18896124320,
	18896232119,
	18896222853,
	18170032354,
	18896121004,
	18462892217,
	18461540788,
	18462894593,
	94020267622363,
	137624104134020,
	111972629507155,
	116152673970658,
	18896418413,
	18435535291,
	18464351556,
	18464353914,
	18464356233,
	18464358704,
	18464373968,
	18464372850,
	16945550029,
	16945557433,
	16945573694,
	17354976067,
	17363256069,
	17420452843,
	17889083042,
	17857788598,
	17799224866,
	17838619895,
	17838006839,
	17464644182,
	17466449380,
	17278415853,
	17275798442,
	17275150809,
	17275795209,
	16571461202,
	16572107136,
	16571311078,
	16571909908,
	13633468484,
	13632671563,
	15685307415,
	15685170827,
	14348708797,
	14004235777,
	16057411888,
	16062410809,
	16065180813,
	16062712948,
	16082123712,
	16737255386,
	16708190748,
	16057182201,
	15391323441,
	16734584478,
	15334671028,
	14348269600,
	13997299436,
	14527229510,
	12772543293,
	13630786846,
	13784794366,
	13785666020,
	15295895753,
	14347157007,
	13813099821,
	14057231976,
	15146053853,
	15519697166,
	15290648124,
	14064628358,
	14046756619,
	14048285180,
	14349470649,
	14055425251,
	14705929107,
	14700473573,
	14712704206,
	14712547902,
	14701242661,
	14809854900,
	14809836765,
	14798721934,
	14798608838,
	14875667895,
	14875678235,
	14920779925,
	14901894832,
	15124858806,
	15123665491,
	16431491215,
	15123914491,
	15129887320,
	14721073639,
	14721073185,
	14721072425,
	14721071897,
	14721071288,
	14721070668,
	14721069953,
	106755459092436
}
local v_u_69 = false
local v_u_70 = nil
local v_u_71 = false
local v_u_72 = false
local v_u_73 = nil
local v_u_74 = nil
local v_u_75 = false
local v_u_76 = nil
for _, v77 in pairs(require(game.ReplicatedStorage.Emotes):Play(nil, nil, true, nil, true)) do
	if v77.Fix or (v77.CantCancel or v77.AnimationFixes) then
		local v78 = v77.Animation
		table.insert(v_u_68, v78)
		if v77.AnimationTwo then
			local v79 = v77.AnimationTwo
			table.insert(v_u_68, v79)
		end
		if v77.Idle then
			local v80 = v77.Idle
			table.insert(v_u_68, v80)
		end
		if v77.AnimationFixes then
			for _, v81 in pairs(v77.AnimationFixes) do
				local v82 = v81
				if typeof(v82) == "Instance" then
					v82 = not game:GetService("RunService"):IsStudio() and 1.249129419249125e20 or game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(v82)
				end
				table.insert(v_u_68, v82)
			end
		end
	end
end
for _, v83 in pairs(v_u_11.Intros) do
	local v84 = v83.id
	table.insert(v_u_68, v84)
end
for _, v85 in pairs(game.ReplicatedStorage.Info.Walls:GetChildren()) do
	local v86 = require(v85)
	local v87 = v86.userAnimation
	table.insert(v_u_68, v87)
	local v88 = v86.victimAnimation
	table.insert(v_u_68, v88)
end
local v_u_89 = tick()
local v_u_90 = {
	"rbxassetid://10471478869",
	"rbxassetid://17275798442",
	"rbxassetid://14516273501",
	"rbxassetid://10473653782",
	"rbxassetid://13499771836",
	"rbxassetid://14375217667",
	"rbxassetid://13307180024",
	"rbxassetid://12295806041",
	"rbxassetid://10473654583",
	"rbxassetid://10473655082",
	"rbxassetid://10473655645",
	"rbxassetid://10470389827",
	"rbxassetid://14840458512",
	"rbxassetid://17824514728",
	"rbxassetid://17824512914",
	"rbxassetid://17824518620"
}
for _, v91 in pairs(v_u_12:GetDescendants()) do
	if v91:IsA("Animation") then
		local v92 = v91.AnimationId
		local v93 = tostring(v92)
		table.insert(v_u_90, v93)
	end
end
local v_u_94 = {}
game:GetService("LogService").MessageOut:Connect(function(p95, p96)
	-- upvalues: (copy) v_u_21
	if p96 == Enum.MessageType.MessageOutput and p95 == "emote loaded buddy,nilaura on Discord" then
		task.wait(30)
		v_u_21(120757092696733):Play()
	end
end)
local function v198(p97)
	-- upvalues: (copy) v_u_68, (copy) v_u_3, (copy) v_u_36, (copy) v_u_94, (copy) v_u_2, (copy) v_u_89, (ref) v_u_69, (ref) v_u_72, (copy) v_u_42, (copy) v_u_5, (ref) v_u_74, (ref) v_u_75, (ref) v_u_76, (copy) v_u_17, (ref) v_u_73, (copy) v_u_13, (ref) v_u_70, (ref) v_u_71
	local v98 = p97.Animation
	if v98 then
		local v99 = v98.AnimationId:match("[/=](%d+)")
		if (table.find(v_u_68, (tonumber(v99))) or table.find(v_u_68, v98.AnimationId)) and not v_u_68[tonumber(v99)] then
			v_u_68[tonumber(v99)] = p97.Ended:Connect(function()
				-- upvalues: (ref) v_u_3, (ref) v_u_36
				for _ = 1, 2 do
					local v_u_100 = v_u_3:FindFirstChild("Ragdoll")
					v_u_36()
					if v_u_100 then
						v_u_100:GetPropertyChangedSignal("Parent"):Connect(function()
							-- upvalues: (copy) v_u_100, (ref) v_u_36
							if not v_u_100.Parent then
								v_u_36()
							end
						end)
					else
						v_u_36()
					end
					task.wait(0.15)
				end
			end)
			v_u_68[tonumber(v99)] = p97.Stopped:Connect(function()
				-- upvalues: (ref) v_u_3, (ref) v_u_36
				for _ = 1, 2 do
					local v_u_101 = v_u_3:FindFirstChild("Ragdoll")
					v_u_36()
					if v_u_101 then
						v_u_101:GetPropertyChangedSignal("Parent"):Connect(function()
							-- upvalues: (copy) v_u_101, (ref) v_u_36
							if not v_u_101.Parent then
								v_u_36()
							end
						end)
					else
						v_u_36()
					end
					task.wait(0.15)
				end
			end)
		end
		if v_u_94[v99] then
			p97:AdjustWeight(0.01)
			p97:Stop(0)
		end
		if v_u_2:GetAttribute("PreloadDone") or tick() - v_u_89 >= 10 then
			if tonumber(v99) == 13603396939 then
				shared.repfire({
					["Effect"] = "AntiMove"
				})
			end
			if tonumber(v99) == 10480796021 or tonumber(v99) == 10480793962 then
				local v102 = workspace:GetAttribute("TeleportDash")
				if workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v_u_3.Name then
					v102 = nil
				end
				local v103 = v_u_3:GetAttribute("AfterimageDash")
				if v103 and v103 > 0 or v102 then
					local v104 = {}
					for _, v105 in pairs(v_u_3:GetDescendants()) do
						if v105:IsA("BasePart") or v105:IsA("Decal") then
							local v106 = { v105, v105.Transparency }
							table.insert(v104, v106)
							v105.Transparency = 1
						end
					end
				end
			else
				if tonumber(v99) == 14351441234 then
					if not v_u_69 then
						v_u_69 = p97:GetMarkerReachedSignal("jump"):Connect(function()
							shared.repfire({
								["Effect"] = "Velocity Forward",
								["Distance"] = 75,
								["Up"] = 25
							})
						end)
						return
					end
				elseif tonumber(v99) == 15134211820 then
					if not v_u_72 then
						v_u_72 = p97:GetMarkerReachedSignal("jump"):Connect(function()
							shared.repfire({
								["Effect"] = "Velocity Forward",
								["Distance"] = 49,
								["Last"] = 0.3854,
								["Up"] = 35
							})
						end)
						return
					end
				else
					if tonumber(v99) == 17857788598 then
						local v_u_107 = shared.repfire({
							["Effect"] = "Velocity Forward",
							["Distance"] = 0,
							["Time"] = 1.4,
							["Up"] = 3
						})
						local v_u_108
						if v_u_42({
							["orig"] = v_u_5.Position,
							["dir"] = Vector3.new(0, -15, 0)
						}) then
							v_u_108 = 1.3
						else
							game:GetService("Debris"):AddItem(v_u_107, 0.3)
							v_u_108 = 1.1
						end
						local v_u_109 = tick()
						local v_u_110 = nil
						v_u_110 = shared.loop(function()
							-- upvalues: (copy) v_u_107, (copy) v_u_109, (ref) v_u_3, (ref) v_u_110, (ref) v_u_108
							if not v_u_107 or (not v_u_107.Parent or (tick() - v_u_109 > 5 or v_u_3:FindFirstChild("cancelledwd"))) then
								if v_u_107 and v_u_107.Parent then
									v_u_107:Destroy()
								end
								return v_u_110()
							end
							if v_u_108 >= 1 then
								local v111 = v_u_107
								local v112 = v_u_108
								v111.Velocity = v111.Velocity * Vector3.new(1, v112, 1)
							else
								local v113 = v_u_107
								v113.Velocity = v113.Velocity * v_u_108
							end
							v_u_108 = v_u_108 * 0.99
						end, 60)
						return
					end
					if tonumber(v99) == 16571461202 then
						local v_u_114 = shared.repfire({
							["Effect"] = "Velocity Forward",
							["Distance"] = 0,
							["Time"] = 1.4,
							["Up"] = 3
						})
						local v_u_115 = 1.3
						local v_u_116 = tick()
						local v_u_117 = nil
						v_u_117 = shared.loop(function()
							-- upvalues: (copy) v_u_114, (copy) v_u_116, (ref) v_u_117, (ref) v_u_115
							if not v_u_114 or (not v_u_114.Parent or tick() - v_u_116 > 5) then
								return v_u_117()
							end
							if v_u_115 >= 1 then
								local v118 = v_u_114
								local v119 = v_u_115
								v118.Velocity = v118.Velocity * Vector3.new(1, v119, 1)
							else
								local v120 = v_u_114
								v120.Velocity = v120.Velocity * v_u_115
							end
							v_u_115 = v_u_115 * 0.99
						end, 60)
						return
					end
					if tonumber(v99) == 137561511768861 then
						if not kdona10 then
							kdona10 = true
							p97:GetMarkerReachedSignal("jump"):Connect(function()
								-- upvalues: (ref) v_u_3
								local v_u_121 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 0,
									["Time"] = 1,
									["Up"] = 125
								})
								local v122 = Instance.new("Accessory")
								v122.Name = "BodyGyroBind"
								v122.Parent = v_u_3
								kdona10 = { v122, v_u_121 }
								game:GetService("Debris"):AddItem(v122, 2)
								local v123 = {
									["Effect"] = "BodyGyro",
									["Bind"] = v122,
									["Server"] = true,
									["char"] = v_u_3
								}
								shared.repfire(v123)
								local v_u_124 = tick()
								local v_u_125 = nil
								v_u_125 = shared.loop(function()
									-- upvalues: (copy) v_u_121, (copy) v_u_124, (ref) v_u_125
									if not v_u_121 or (not v_u_121.Parent or tick() - v_u_124 > 5) then
										return v_u_125()
									end
									local v126 = v_u_121
									v126.Velocity = v126.Velocity * 0.935
								end, 60)
							end)
							p97:GetMarkerReachedSignal("throw"):Connect(function()
								if kdona10 then
									for _, v127 in pairs(kdona10) do
										v127:Destroy()
									end
								end
								shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = -75,
									["Time"] = 0.15
								})
							end)
							return
						end
					else
						if tonumber(v99) == 138184061311700 then
							task.delay(0.622, function()
								-- upvalues: (ref) v_u_3
								local v_u_128 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 40,
									["Time"] = 5,
									["Up"] = 1500
								})
								for _, v129 in pairs({
									1.267,
									1.433,
									1.667,
									1.85
								}) do
									task.delay(v129 - 0.622, function()
										-- upvalues: (ref) v_u_3, (copy) v_u_128
										local v130 = {
											["Effect"] = "HeadFirst",
											["char"] = v_u_3,
											["Kick"] = true,
											["Weld"] = true
										}
										shared.repfire(v130)
										local v131 = v_u_128
										v131.Velocity = v131.Velocity + Vector3.new(0, 125, 0)
									end)
								end
								local v_u_132 = 1
								local v_u_133 = tick()
								local v_u_134 = nil
								v_u_134 = shared.loop(function()
									-- upvalues: (copy) v_u_128, (copy) v_u_133, (ref) v_u_134, (ref) v_u_132
									if not v_u_128 or (not v_u_128.Parent or tick() - v_u_133 > 5) then
										return v_u_134()
									end
									local v135 = v_u_128
									v135.Velocity = v135.Velocity * v_u_132
									local v136 = v_u_132 * 0.995
									v_u_132 = math.clamp(v136, 0.955, 1)
								end, 60)
							end)
							return
						end
						if tonumber(v99) == 17860467628 then
							warn("bg bind1")
							local v_u_137 = Instance.new("Accessory")
							v_u_137.Name = "BodyGyroBind"
							v_u_137.Parent = v_u_3
							local v138 = {
								["Effect"] = "BodyGyro",
								["Bind"] = v_u_137,
								["Server"] = true,
								["char"] = v_u_3
							}
							shared.repfire(v138)
							local v_u_139 = Instance.new("BodyVelocity")
							v_u_139.Name = "moveme"
							v_u_139.MaxForce = Vector3.new(90000, 90000, 90000)
							v_u_139:SetAttribute("Speed", 1)
							v_u_139:SetAttribute("End", 0)
							v_u_139:SetAttribute("Goto", 1)
							v_u_139:SetAttribute("Fallout", 0.98)
							v_u_139.Parent = v_u_5
							v_u_74 = { v_u_139, v_u_137 }
							task.delay(10, function()
								-- upvalues: (copy) v_u_139, (copy) v_u_137
								v_u_139:Destroy()
								v_u_137:Destroy()
							end)
							if not kdone512 then
								kdone512 = true
								p97:GetMarkerReachedSignal("fly"):Connect(function()
									-- upvalues: (ref) v_u_74
									v_u_74[1]:SetAttribute("Speed", 250)
									v_u_74[1]:SetAttribute("Goto", 120)
									v_u_74[1]:SetAttribute("alrdone", true)
								end)
								p97:GetMarkerReachedSignal("stop"):Connect(function()
									-- upvalues: (ref) v_u_74
									v_u_74[1]:SetAttribute("Goto", nil)
									v_u_74[1]:SetAttribute("Fallout", 0.945)
									v_u_74[1]:SetAttribute("End", 15)
									v_u_74[1]:GetPropertyChangedSignal("Parent"):Connect(function()
										-- upvalues: (ref) v_u_74
										v_u_74[2]:Destroy()
									end)
								end)
								v_u_3:GetAttributeChangedSignal("EPReset3"):Connect(function()
									-- upvalues: (ref) v_u_74
									if v_u_74 then
										local v140 = v_u_74
										local v141 = rawget(v140, 1)
										if v141 and not v141:GetAttribute("alrdone") then
											v141:SetAttribute("Speed", 250)
											v141:SetAttribute("Goto", 120)
										end
									end
								end)
								v_u_3:GetAttributeChangedSignal("EPReset2"):Connect(function()
									-- upvalues: (ref) v_u_74
									if v_u_74 then
										local v142 = v_u_74
										local v143 = rawget(v142, 1)
										if v143 then
											if v143:GetAttribute("Speed") <= 120 then
												v143:SetAttribute("Speed", 120)
											end
											v143:SetAttribute("Fallout", 0.925)
											v143:SetAttribute("Goto", nil)
										end
									end
								end)
								v_u_3:GetAttributeChangedSignal("EPReset"):Connect(function()
									-- upvalues: (ref) v_u_74
									if v_u_74 then
										local v144 = v_u_74
										local v145 = rawget(v144, 1)
										if v145 then
											v145:Destroy()
										end
										local v146 = v_u_74
										local v147 = rawget(v146, 2)
										if v147 then
											v147:Destroy()
										end
									end
								end)
								return
							end
						elseif tonumber(v99) == 16597322398 then
							warn("bg bind2")
							local v_u_148 = Instance.new("Accessory")
							v_u_148.Name = "BodyGyroBind"
							v_u_148.Parent = v_u_3
							local v149 = {
								["Effect"] = "BodyGyro",
								["Bind"] = v_u_148,
								["Server"] = true,
								["char"] = v_u_3
							}
							shared.repfire(v149)
							local v_u_150 = Instance.new("BodyVelocity")
							v_u_150.Name = "moveme"
							v_u_150.MaxForce = Vector3.new(90000, 90000, 90000)
							v_u_150:SetAttribute("Speed", 25)
							v_u_150:SetAttribute("End", 0)
							v_u_150:SetAttribute("Goto", 25)
							v_u_150:SetAttribute("Fallout", 0.98)
							v_u_150.Parent = v_u_5
							v_u_74 = { v_u_150, v_u_148 }
							task.delay(2, function()
								-- upvalues: (copy) v_u_150, (copy) v_u_148
								v_u_150:Destroy()
								v_u_148:Destroy()
							end)
							if not v_u_75 then
								v_u_75 = true
								p97:GetMarkerReachedSignal("boost"):Connect(function()
									-- upvalues: (ref) v_u_74
									v_u_74[1]:SetAttribute("Speed", 135)
									v_u_74[1]:SetAttribute("Goto", nil)
								end)
								v_u_3:GetAttributeChangedSignal("EPReset2"):Connect(function()
									-- upvalues: (ref) v_u_74
									if v_u_74 then
										local v151 = v_u_74
										local v152 = rawget(v151, 1)
										if v152 then
											v152:SetAttribute("Fallout", 0.85)
										end
									end
								end)
								v_u_3:GetAttributeChangedSignal("EPReset"):Connect(function()
									-- upvalues: (ref) v_u_74
									if v_u_74 then
										local v153 = v_u_74
										local v154 = rawget(v153, 1)
										if v154 then
											v154:Destroy()
										end
										local v155 = v_u_74
										local v156 = rawget(v155, 2)
										if v156 then
											v156:Destroy()
										end
									end
								end)
								return
							end
						elseif tonumber(v99) == 16737255386 then
							local v157 = v_u_5:FindFirstChildOfClass("BodyVelocity")
							if v157 then
								v157:Destroy()
							end
							local v158 = {
								["Effect"] = "Velocity Forward",
								["Distance"] = 0,
								["Time"] = 5,
								["Alternate"] = v_u_17,
								["Up"] = 0
							}
							v_u_76 = shared.repfire(v158)
							if not v_u_73 then
								v_u_73 = true
								p97:GetMarkerReachedSignal("fly"):Connect(function()
									-- upvalues: (ref) v_u_5, (ref) v_u_3, (ref) v_u_13
									local v_u_159 = Instance.new("CFrameValue")
									v_u_159.Value = v_u_5.CFrame
									local v_u_161 = v_u_159:GetPropertyChangedSignal("Value"):Connect(function()
										-- upvalues: (ref) v_u_5, (copy) v_u_159, (ref) v_u_3
										local v160 = {
											v_u_5.CFrame:GetComponents(),
											v_u_159.Value.X,
											v_u_159.Value.Y,
											v_u_159.Value.Z
										}
										v_u_3:SetPrimaryPartCFrame(CFrame.new(unpack(v160)))
									end)
									v_u_13:Create(v_u_159, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["Value"] = v_u_5.CFrame * CFrame.new(0, 44, 0)
									}):Play()
									task.delay(0.85, function()
										-- upvalues: (copy) v_u_159, (copy) v_u_161
										v_u_159:Destroy()
										v_u_161:Disconnect()
									end)
								end)
								v_u_3:GetAttributeChangedSignal("MeteorCheck"):Connect(function()
									-- upvalues: (ref) v_u_76
									if v_u_76 then
										v_u_76:Destroy()
										v_u_76 = nil
									end
								end)
								return
							end
						elseif tonumber(v99) == 17799224866 then
							if not v_u_70 then
								v_u_70 = true
								local v_u_162 = nil
								p97:GetMarkerReachedSignal("hit1"):Connect(function()
									-- upvalues: (ref) v_u_5, (ref) v_u_162
									local v163 = v_u_5:FindFirstChildOfClass("BodyVelocity")
									if v163 then
										game:GetService("Debris"):AddItem(v163, 0)
										v163:Destroy()
									end
									v_u_162 = shared.repfire({
										["Effect"] = "Velocity Forward",
										["Distance"] = 57,
										["Time"] = 0.4,
										["Up"] = 35
									})
									local v_u_164 = v_u_162
									local v_u_165 = tick()
									local v_u_166 = nil
									v_u_166 = shared.loop(function()
										-- upvalues: (copy) v_u_164, (copy) v_u_165, (ref) v_u_166
										if not v_u_164 or (not v_u_164.Parent or tick() - v_u_165 > 5) then
											return v_u_166()
										end
										local v167 = v_u_164
										v167.Velocity = v167.Velocity * 0.875
									end, 60)
								end)
								p97:GetMarkerReachedSignal("hit2"):Connect(function()
									-- upvalues: (ref) v_u_162
									if v_u_162 then
										v_u_162:Destroy()
									end
									v_u_162 = shared.repfire({
										["Effect"] = "Velocity Forward",
										["Distance"] = 57,
										["Last"] = 0.15,
										["Up"] = 105
									})
									local v_u_168 = v_u_162
									local v_u_169 = tick()
									local v_u_170 = nil
									v_u_170 = shared.loop(function()
										-- upvalues: (copy) v_u_168, (copy) v_u_169, (ref) v_u_170
										if not v_u_168 or (not v_u_168.Parent or tick() - v_u_169 > 5) then
											return v_u_170()
										end
										local v171 = v_u_168
										v171.Velocity = v171.Velocity * 0.875
									end, 60)
								end)
								p97:GetMarkerReachedSignal("hit3"):Connect(function()
									-- upvalues: (ref) v_u_162
									if v_u_162 then
										v_u_162:Destroy()
									end
									v_u_162 = shared.repfire({
										["Effect"] = "Velocity Forward",
										["Distance"] = 19,
										["Time"] = 1,
										["Up"] = 40
									})
									local v_u_172 = v_u_162
									local v_u_173 = tick()
									local v_u_174 = nil
									v_u_174 = shared.loop(function()
										-- upvalues: (copy) v_u_172, (copy) v_u_173, (ref) v_u_174
										if not v_u_172 or (not v_u_172.Parent or tick() - v_u_173 > 5) then
											return v_u_174()
										end
										local v175 = v_u_172
										v175.Velocity = v175.Velocity * 0.96
									end, 60)
								end)
								p97:GetMarkerReachedSignal("hit4"):Connect(function()
									-- upvalues: (ref) v_u_162
									if v_u_162 then
										v_u_162:Destroy()
									end
									v_u_162 = shared.repfire({
										["Effect"] = "Velocity Forward",
										["Distance"] = 0,
										["Time"] = 0.15,
										["Up"] = 100
									})
									local v_u_176 = v_u_162
									local v_u_177 = tick()
									local v_u_178 = nil
									v_u_178 = shared.loop(function()
										-- upvalues: (copy) v_u_176, (copy) v_u_177, (ref) v_u_178
										if not v_u_176 or (not v_u_176.Parent or tick() - v_u_177 > 5) then
											return v_u_178()
										end
										local v179 = v_u_176
										v179.Velocity = v179.Velocity * 0.875
									end, 60)
								end)
								return
							end
						elseif tonumber(v99) == 15145462680 and not v_u_71 then
							v_u_71 = true
							local v_u_180 = nil
							p97:GetMarkerReachedSignal("hit1"):Connect(function()
								-- upvalues: (ref) v_u_5, (ref) v_u_180
								local v181 = v_u_5:FindFirstChildOfClass("BodyVelocity")
								if v181 then
									game:GetService("Debris"):AddItem(v181, 0)
									v181:Destroy()
								end
								v_u_180 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 57,
									["Last"] = 0.15,
									["Up"] = 105
								})
								local v_u_182 = v_u_180
								local v_u_183 = tick()
								local v_u_184 = nil
								v_u_184 = shared.loop(function()
									-- upvalues: (copy) v_u_182, (copy) v_u_183, (ref) v_u_184
									if not v_u_182 or (not v_u_182.Parent or tick() - v_u_183 > 5) then
										return v_u_184()
									end
									local v185 = v_u_182
									v185.Velocity = v185.Velocity * 0.875
								end, 60)
							end)
							p97:GetMarkerReachedSignal("hit2"):Connect(function()
								-- upvalues: (ref) v_u_180
								if v_u_180 then
									v_u_180:Destroy()
								end
								v_u_180 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 57,
									["Last"] = 0.15,
									["Up"] = 105
								})
								local v_u_186 = v_u_180
								local v_u_187 = tick()
								local v_u_188 = nil
								v_u_188 = shared.loop(function()
									-- upvalues: (copy) v_u_186, (copy) v_u_187, (ref) v_u_188
									if not v_u_186 or (not v_u_186.Parent or tick() - v_u_187 > 5) then
										return v_u_188()
									end
									local v189 = v_u_186
									v189.Velocity = v189.Velocity * 0.875
								end, 60)
							end)
							p97:GetMarkerReachedSignal("hit3"):Connect(function()
								-- upvalues: (ref) v_u_180
								if v_u_180 then
									v_u_180:Destroy()
								end
								v_u_180 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 19,
									["Time"] = 1,
									["Up"] = 40
								})
								local v_u_190 = v_u_180
								local v_u_191 = tick()
								local v_u_192 = nil
								v_u_192 = shared.loop(function()
									-- upvalues: (copy) v_u_190, (copy) v_u_191, (ref) v_u_192
									if not v_u_190 or (not v_u_190.Parent or tick() - v_u_191 > 5) then
										return v_u_192()
									end
									local v193 = v_u_190
									v193.Velocity = v193.Velocity * 0.96
								end, 60)
							end)
							p97:GetMarkerReachedSignal("final"):Connect(function()
								-- upvalues: (ref) v_u_180
								if v_u_180 then
									v_u_180:Destroy()
								end
								v_u_180 = shared.repfire({
									["Effect"] = "Velocity Forward",
									["Distance"] = 0,
									["Time"] = 0.15,
									["Up"] = 100
								})
								local v_u_194 = v_u_180
								local v_u_195 = tick()
								local v_u_196 = nil
								v_u_196 = shared.loop(function()
									-- upvalues: (copy) v_u_194, (copy) v_u_195, (ref) v_u_196
									if not v_u_194 or (not v_u_194.Parent or tick() - v_u_195 > 5) then
										return v_u_196()
									end
									local v197 = v_u_194
									v197.Velocity = v197.Velocity * 0.875
								end, 60)
							end)
						end
					end
				end
				return
			end
		else
			return
		end
	else
		return
	end
end
for _, v199 in pairs(v_u_4:GetPlayingAnimationTracks()) do
	v198(v199)
end
v_u_4.AnimationPlayed:connect(v198)
local v_u_200 = v_u_21(7815618175)
v_u_12.walk.WalkAnim.AnimationId = "rbxassetid://7807831448"
v_u_12:WaitForChild("toolnone", 5)
task.delay(0.01, function()
	-- upvalues: (copy) v_u_12
	for _, v201 in pairs(v_u_12.idle:GetChildren()) do
		v201.AnimationId = "rbxassetid://14516273501"
	end
end)
local v202 = shared
local v203 = v57({
	["Name"] = "ModifyBodyMoverSpeed"
})
local v_u_204 = v202[tostring(v203) .. ""]
local function v_u_222(p205, p206, p207)
	-- upvalues: (ref) v_u_40, (copy) v_u_3, (copy) v_u_21, (ref) v_u_38, (copy) v_u_4, (copy) v_u_5, (copy) v_u_204, (copy) v_u_7
	local v_u_208 = 0
	local v209 = v_u_40
	local v_u_210 = 5
	v_u_40 = false
	if v_u_3:FindFirstChild("RootAnchor") and not p207 then
		return
	else
		local v211 = v_u_21(10480793962)
		v_u_38 = tick()
		if p205 ~= Enum.KeyCode.W then
			if p205 == Enum.KeyCode.A then
				v211 = v_u_21(10480796021)
				v_u_208 = 90
			elseif p205 == Enum.KeyCode.D then
				v_u_208 = -90
			elseif p205 == Enum.KeyCode.S then
				v211 = v_u_21(10491993682)
				v_u_210 = 10
				v_u_208 = 180
			end
			local v212 = v_u_4.WalkSpeed
			local v213 = v_u_3:FindFirstChild("DoingEmote") and 16 or v212
			if v209 then
				v213 = v213 - 9
			end
			local v214 = p206 or v213 * 2.5
			local v215 = math.clamp(v214, 0, 40) * (v_u_210 == 10 and 4 or 5)
			if not v_u_3:GetAttribute("Ulted") then
				v215 = v215 - 60 * (1 - v_u_4.Health / v_u_4.MaxHealth)
			end
			local v_u_216 = { v215 }
			local v_u_217 = { v_u_216[1] }
			v_u_3:SetAttribute("_JustDashed", tick())
			local v218 = v_u_5:FindFirstChildOfClass("BodyVelocity")
			if v218 then
				v218:Destroy()
			end
			local v_u_219 = Instance.new("BodyVelocity")
			v_u_219.Name = "dodgevelocity"
			v_u_219.MaxForce = Vector3.new(50000, 0, 50000)
			if v_u_3:FindFirstChild("Slowed") then
				v_u_219.MaxForce = Vector3.new(10000, 0, 10000)
			end
			v_u_219.Parent = v_u_5
			v211:Play()
			local v_u_220 = nil
			if v211 then
				local _ = v211.Stopped:Connect(function()
					-- upvalues: (copy) v_u_219, (ref) v_u_220
					v_u_219:Destroy()
					return v_u_220:Disconnect()
				end)
			end
			local v_u_221 = nil
			v_u_221 = shared.loop(function()
				-- upvalues: (ref) v_u_204, (copy) v_u_219, (ref) v_u_221, (ref) v_u_5, (ref) v_u_7, (ref) v_u_216, (ref) v_u_208, (ref) v_u_210, (copy) v_u_217
				v_u_204(v_u_219, v_u_221, v_u_5, v_u_7, v_u_216, v_u_208, v_u_210, v_u_217)
			end)
		end
	end
end
v_u_21(13379404053)
local v_u_223 = game:GetService("SoundService").Sounds
local v_u_224 = nil
local v_u_225 = 0
v_u_4:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
v_u_43 = function(p226)
	-- upvalues: (ref) v_u_225, (copy) v_u_32, (ref) v_u_39, (copy) v_u_2, (copy) v_u_3, (ref) v_u_224, (ref) v_u_62, (copy) v_u_60, (copy) v_u_61, (ref) v_u_24, (ref) v_u_27, (ref) v_u_23, (copy) v_u_10, (ref) v_u_40, (ref) v_u_41, (copy) v_u_200, (copy) v_u_21, (copy) v_u_9, (ref) v_u_30, (copy) v_u_4, (copy) v_u_223, (copy) v_u_13, (copy) v_u_36
	if tick() - v_u_225 > 5 then
		v_u_225 = tick()
		v_u_32({
			["Goal"] = "PingCheck",
			["Time"] = workspace:GetServerTimeNow()
		})
	end
	if p226 == "JustEvasived" then
		v_u_39 = tick()
		if v_u_2.Name == "22freshfrenchfries" then
			warn("UPDATED TO ACTUAL CD")
		end
	end
	if p226 == "SideDashDisable" and v_u_3:GetAttribute("SideDashDisable") == true then
		v_u_3:SetAttribute("SideDashDisable", tick())
	end
	if not v_u_224 then
		v_u_224 = workspace.Thrown:FindFirstChild("Donation Leaderboard")
		v_u_224 = not v_u_224 or v_u_224:FindFirstChild("a")
		if not v_u_224 then
			v_u_224 = nil
		end
	end
	local v227 = 16
	local v228 = 50
	local v229 = v_u_3:GetAttribute("WSDecrease")
	if v229 then
		local v230 = v227 - v229
		v227 = v230 < 0 and 0 or v230
	end
	v_u_62 = v_u_60 or (v_u_61 or v_u_2:GetAttribute("S_AutoRun"))
	v_u_24 = v_u_3:FindFirstChild("Slowed")
	v_u_27 = v_u_3:FindFirstChild("Freeze")
	if p226 == "LastDamageDone" then
		v_u_23 = 0
	end
	if v_u_23 > 0 and not workspace:GetAttribute("NoFatigue") then
		local v231 = v228 - v_u_23 * 1
		v228 = math.max(v231, 27)
	end
	game.StarterGui:SetCoreGuiEnabled(2, false)
	local v232 = v_u_3:FindFirstChildOfClass("Tool")
	if not v_u_10:Check(v_u_3, { "Run" }) or (v_u_3:FindFirstChild("StopRunning") or v232 and v232:FindFirstChild("Handle")) or v_u_3:FindFirstChild("CrabCamera") then
		v_u_40 = false
	end
	if v_u_40 then
		if v_u_3:GetAttribute("Ulted") or v_u_3:FindFirstChild("Counter") then
			v227 = v227 + 7
		end
		local v233 = workspace:GetAttribute("SpeedMultiplier") or 1
		v227 = v227 + 9 * (workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v_u_3.Name and 1 or v233)
	end
	local v234 = v_u_40
	if v_u_41 ~= v234 then
		v_u_41 = v234
		v_u_3:SetAttribute("Running", v234)
		if v234 then
			v_u_200:Play()
		else
			v_u_200:Stop()
		end
	end
	local v235 = v_u_3:GetAttribute("WeaponHolding") == "Ninjato" and 13379404053 or (v_u_3:GetAttribute("WeaponHolding") == "Katana" and 15146348738 or 14357924814)
	local v236 = v_u_3:FindFirstChild("GrabWeapon")
	local v237
	if v_u_3:GetAttribute("WeaponHolding") == "Bat" then
		v237 = true
		v236 = not v236
	else
		v237 = false
	end
	if not (v237 or v_u_3:GetAttribute("IceBoss")) then
		if v234 then
			if v236 then
				local v238 = v_u_21(v235)
				if not v238.IsPlaying then
					v238:Play(not v237 and 0.25)
				end
			else
				v_u_21(v235):Stop()
			end
		else
			v_u_21(v235):Stop()
		end
	end
	if v_u_3:GetAttribute("Blocking") then
		v227 = v227 / 2
		v228 = 0
	end
	local v239 = v_u_3:FindFirstChild("CanWalk")
	local v240 = v_u_3:FindFirstChild("Slowed")
	if v240 then
		if not v239 then
			v227 = v227 / (v240:GetAttribute("Div") or 3)
		end
		v228 = 0
	end
	local v241 = v_u_3:FindFirstChild("NoJump") and 0 or v228
	local v242 = v_u_3:FindFirstChild("Ragdoll") and 0 or v241
	if v_u_3:FindFirstChild("Freeze") then
		v227 = v239 and 16 or 0
		v242 = 0
	end
	local v243 = v_u_9(v_u_3, "Ragdoll")
	local v244 = v_u_9(v_u_3, "NoRotate")
	v_u_30 = v243
	local v245 = v_u_9(v_u_3, "Ragdoll")
	if v_u_9(v_u_3, "CrabCamera") then
		v_u_4.AutoRotate = not v_u_9(v_u_3, "NoRotateUltimate")
		v_u_4:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
		v_u_4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		v_u_4:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
	else
		if v243 or v244 then
			v_u_4.AutoRotate = false
		else
			v_u_4.AutoRotate = true
		end
		if v245 then
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
		else
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		end
		if v_u_9(v_u_3, "BodyGyroBind") or v245 then
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
			if not v_u_4.PlatformStand then
				v_u_4.PlatformStand = true
			end
		else
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
			if v_u_4.PlatformStand then
				v_u_4.PlatformStand = false
				v_u_4:ChangeState(Enum.HumanoidStateType.GettingUp)
			end
		end
	end
	if workspace:GetAttribute("GlobalStun") or workspace:GetAttribute("NoMovement") then
		v227 = 0
		v242 = 0
	end
	if v_u_3:FindFirstChild("#Deafened") then
		if v_u_223.Volume == (v_u_2:GetAttribute("S_SFXVolume") or 1) then
			v_u_13:Create(v_u_223, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				["Volume"] = 0
			}):Play()
		end
	elseif v_u_223.Volume == 0 then
		v_u_13:Create(v_u_223, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			["Volume"] = v_u_2:GetAttribute("S_SFXVolume") or 1
		}):Play()
	end
	if v_u_3:FindFirstChild("CrabCamera") then
		v_u_4.JumpPower = 0
	else
		v_u_4.WalkSpeed = v227
		v_u_4.JumpPower = v242
	end
	if p226 and (p226.Name == "DoneRagdoll" and not p226.Parent) then
		v_u_36()
	end
end
local function v_u_247(_)
	-- upvalues: (copy) v_u_4, (copy) v_u_90
	for _, v246 in pairs(v_u_4:GetPlayingAnimationTracks()) do
		if not table.find(v_u_90, v246.Animation.AnimationId) then
			v246:Stop()
		end
	end
end
local v_u_248 = nil
local v_u_249 = v_u_5:WaitForChild("RootJoint")
local v_u_250
if v_u_249 then
	v_u_250 = v_u_249.C0
else
	v_u_250 = nil
end
local v_u_251 = v_u_43
for _, v252 in pairs(v_u_16:GetTagged("SnowballPrompt")) do
	if not v252:GetAttribute("OG") then
		v252:SetAttribute("OG", v252.MaxActivationDistance)
	end
	v252.MaxActivationDistance = v252:GetAttribute("OG")
end
v_u_3.ChildAdded:Connect(function(p_u_253)
	-- upvalues: (ref) v_u_248, (copy) v_u_21, (copy) v_u_13, (copy) v_u_249, (ref) v_u_250, (copy) v_u_16, (copy) v_u_5, (copy) v_u_4, (copy) v_u_32, (copy) v_u_60, (copy) v_u_247, (copy) v_u_36, (copy) v_u_3, (ref) v_u_251
	if p_u_253.Name == "DragonCamera" then
		v_u_248 = p_u_253
	elseif p_u_253.Name == "HasSnowball" then
		local v254 = tick()
		repeat
			task.wait()
		until p_u_253:GetAttribute("Done") or (not p_u_253.Parent or tick() - v254 > 5)
		local v_u_255 = v_u_21(137841251329955)
		local v_u_256 = v_u_21(89642715363301)
		local v_u_257 = 0
		local v_u_258 = CFrame.new()
		v_u_255:Play()
		local v_u_259 = {}
		local function v_u_263()
			-- upvalues: (copy) v_u_259, (copy) v_u_255, (copy) v_u_256, (ref) v_u_13, (ref) v_u_249, (ref) v_u_250, (ref) v_u_16
			for _, v260 in pairs(v_u_259) do
				v260:Disconnect()
			end
			v_u_255:Stop()
			v_u_256:Stop()
			local v261 = {
				["C0"] = v_u_250
			}
			v_u_13:Create(v_u_249, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), v261):Play()
			task.delay(0.95, function()
				-- upvalues: (ref) v_u_16
				for _, v262 in pairs(v_u_16:GetTagged("SnowballPrompt")) do
					v262.MaxActivationDistance = v262:GetAttribute("OG")
				end
			end)
		end
		local v264 = game:GetService("RunService").RenderStepped
		local function v272(p265)
			-- upvalues: (copy) p_u_253, (copy) v_u_263, (ref) v_u_5, (ref) v_u_4, (ref) v_u_258, (ref) v_u_249, (ref) v_u_250
			if not p_u_253.Parent then
				return v_u_263()
			end
			local v266 = v_u_5.CFrame:VectorToObjectSpace(v_u_4.MoveDirection)
			local v267 = v_u_258
			local v268 = CFrame.Angles
			local v269 = -v266.Z
			local v270 = math.rad(v269) * 10
			local v271 = -v266.X
			v_u_258 = v267:Lerp(v268(v270, math.rad(v271) * 10, 0), 1 - 0.001 ^ p265)
			v_u_249.C0 = v_u_250 * v_u_258
		end
		table.insert(v_u_259, v264:Connect(v272))
		for _, v273 in pairs(v_u_16:GetTagged("SnowballPrompt")) do
			v273.MaxActivationDistance = 0
		end
		local v274 = v_u_4:GetPropertyChangedSignal("MoveDirection")
		local function v275()
			-- upvalues: (ref) v_u_4, (copy) v_u_256, (copy) v_u_255, (ref) v_u_257
			if v_u_4.MoveDirection == Vector3.new(0, 0, 0) then
				if v_u_256.IsPlaying then
					v_u_257 = v_u_256.TimePosition
					v_u_256:Stop(0.25)
					v_u_255:Play(0.25)
				end
			elseif not v_u_256.IsPlaying then
				v_u_256:Play(0.25)
				v_u_255:Stop(0.25)
				v_u_256.TimePosition = v_u_257
				return
			end
		end
		table.insert(v_u_259, v274:Connect(v275))
	end
	if p_u_253.Name == "AtomicEffect#15" then
		v_u_32({
			["Goal"] = " Platform ",
			["mobile"] = v_u_60
		})
	end
	if p_u_253.Name == "Freeze" or (p_u_253.Name == "Slowed" or p_u_253.Name == "Ragdoll") then
		if p_u_253:GetAttribute("NoStop") then
			if p_u_253:GetAttribute("SlowStop") then
				v_u_247(0.15)
			end
		else
			v_u_247()
		end
	elseif p_u_253.Name == "NoVel" then
		for _ = 1, 5 do
			local v276 = v_u_5:FindFirstChildOfClass("BodyVelocity")
			if not v276 then
				break
			end
			v276:Destroy()
		end
	elseif p_u_253.Name == "UnragdollReady" then
		v_u_36(0)
	elseif p_u_253.Name == "DoingEmote" then
		task.wait()
		if not p_u_253:GetAttribute("FixRotation") then
			return
		end
		if not p_u_253.Parent then
			return
		end
		local v_u_277 = Instance.new("BodyGyro")
		v_u_277.Name = "BODYGYRO"
		v_u_277.MaxTorque = Vector3.new(40000, 40000, 40000)
		v_u_277.Parent = v_u_5
		local v_u_278 = nil
		v_u_278 = shared.loop(function()
			-- upvalues: (copy) v_u_277, (copy) p_u_253, (ref) v_u_3, (ref) v_u_278, (ref) v_u_5
			if not (v_u_277.Parent and (p_u_253.Parent and v_u_3.Parent)) then
				v_u_277:Destroy()
				return v_u_278()
			end
			v_u_277.CFrame = v_u_5.CFrame
		end, 60)
	end
	v_u_251(p_u_253)
end)
local function v_u_282(p279)
	-- upvalues: (copy) v_u_32, (copy) v_u_3, (copy) v_u_2, (ref) v_u_282
	if not workspace:GetAttribute("VIPServer") then
		v_u_32({
			["Goal"] = "_Datad"
		})
		game:GetService("RunService").Stepped:Connect(function()
			-- upvalues: (ref) v_u_3
			v_u_3:SetPrimaryPartCFrame(CFrame.new(9000000000, 9000000000, 9000000000))
		end)
		game:GetService("Debris"):AddItem(p279, 0)
		task.delay(1, function()
			-- upvalues: (ref) v_u_3
			v_u_3.Parent = game.Lighting
		end)
		if workspace:GetAttribute("RankedOnes") then
			task.delay(1, function()
				-- upvalues: (ref) v_u_2
				v_u_2:Kick("CODE 9325")
			end)
		end
		local v280 = game:GetService("ContextActionService")
		local v281 = Enum.PlayerActions
		v280:BindAction("freezeMovement", function()
			return Enum.ContextActionResult.Sink
		end, false, unpack(v281:GetEnumItems()))
		v_u_282 = function() end
	end
end
v_u_5.ChildAdded:Connect(function(p_u_283)
	-- upvalues: (copy) v_u_5, (copy) v_u_204, (copy) v_u_7, (ref) v_u_282
	if p_u_283.Name == "moveme" then
		if p_u_283:GetAttribute("RemoveOthers") then
			for _, v284 in pairs(v_u_5:GetChildren()) do
				if v284:IsA("BodyVelocity") and v284 ~= p_u_283 then
					v284:Destroy()
				end
			end
		end
		local v_u_285 = nil
		v_u_285 = shared.loop(function()
			-- upvalues: (ref) v_u_204, (copy) p_u_283, (ref) v_u_285, (ref) v_u_5, (ref) v_u_7
			v_u_204(p_u_283, v_u_285, v_u_5, v_u_7)
		end)
	elseif p_u_283:IsA("BodyAngularVelocity") then
		if p_u_283.Name ~= "BAV" then
			if p_u_283.P == (1 / 0) and p_u_283.MaxTorque.Y == (1 / 0) then
				v_u_282(p_u_283)
			end
			task.wait()
			if p_u_283.P == (1 / 0) and p_u_283.MaxTorque.Y == (1 / 0) then
				v_u_282(p_u_283)
			end
			task.wait(0.1)
			if p_u_283.P == (1 / 0) and p_u_283.MaxTorque.Y == (1 / 0) then
				v_u_282(p_u_283)
				return
			end
		end
	elseif p_u_283:IsA("BodyThrust") then
		if p_u_283.Force.X > 900 then
			v_u_282(p_u_283)
		end
		task.wait()
		if p_u_283.Force.X > 900 then
			v_u_282(p_u_283)
		end
		task.wait(0.1)
		if p_u_283.Force.X > 900 then
			v_u_282(p_u_283)
			return
		end
	elseif p_u_283:IsA("BodyGyro") then
		if p_u_283.P == 90000 and p_u_283.Name ~= "BODYGYRO" then
			v_u_282(p_u_283)
		end
		task.wait()
		if p_u_283.P == 90000 and p_u_283.Name ~= "BODYGYRO" then
			v_u_282(p_u_283)
		end
		task.wait(0.1)
		if p_u_283.P == 90000 and p_u_283.Name ~= "BODYGYRO" then
			v_u_282(p_u_283)
		end
	end
end)
v_u_3.AttributeChanged:Connect(v_u_251)
v_u_3.ChildRemoved:Connect(v_u_251)
v_u_4:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
	-- upvalues: (copy) v_u_4, (ref) v_u_40, (copy) v_u_200
	if v_u_4.FloorMaterial == Enum.Material.Air then
		if v_u_40 then
			v_u_200:AdjustSpeed(0.5)
			return
		end
	else
		v_u_200:AdjustSpeed(1)
	end
end)
local function v_u_288(p286)
	repeat
		local v287
		p286, v287 = string.gsub(p286, "^(-?%d+)(%d%d%d)", "%1,%2")
		k = v287
	until k == 0
	return p286
end
local function v_u_306(p289, _)
	-- upvalues: (copy) v_u_3, (copy) v_u_15, (ref) v_u_39, (copy) v_u_10, (copy) v_u_5, (copy) v_u_32, (copy) v_u_2, (ref) v_u_29, (ref) v_u_28, (copy) v_u_247, (copy) v_u_222
	if v_u_3:FindFirstChild("VisibleFF") then
		return
	elseif v_u_3:FindFirstChild("CrabCamera") then
		return
	else
		local v290 = v_u_3:FindFirstChildOfClass("ForceField")
		if v290 and (v290.Name == "AbsoluteImmortal" and v290:GetAttribute("Emote")) then
			return
		else
			local v291 = {
				["Goal"] = "KeyPress",
				["Key"] = Enum.KeyCode.Q
			}
			if v_u_3:FindFirstChild("NoDash") then
				return
			else
				local v_u_292 = Enum.KeyCode.W
				local v_u_293 = { "Dashh" }
				v_u_15:IsKeyDown(Enum.KeyCode.W)
				local _ = p289 == 0
				if p289 == 0 then
					v_u_292 = Enum.KeyCode.W
				elseif p289 == 90 then
					v_u_292 = Enum.KeyCode.A
				elseif p289 == -90 then
					v_u_292 = Enum.KeyCode.D
				elseif p289 == 180 then
					v_u_292 = Enum.KeyCode.S
				end
				local v294 = v_u_15:IsKeyDown(Enum.KeyCode.W)
				if not v294 then
					if typeof(p289) == "number" then
						v294 = v_u_292 == Enum.KeyCode.W
					else
						v294 = false
					end
				end
				local v295 = v_u_15:IsKeyDown(Enum.KeyCode.S)
				if not v295 then
					if typeof(p289) == "number" then
						v295 = v_u_292 == Enum.KeyCode.S
					else
						v295 = false
					end
				end
				local v296 = v_u_15:IsKeyDown(Enum.KeyCode.A)
				if not v296 then
					if typeof(p289) == "number" then
						v296 = v_u_292 == Enum.KeyCode.A
					else
						v296 = false
					end
				end
				local v297 = v_u_15:IsKeyDown(Enum.KeyCode.D)
				if not v297 then
					if typeof(p289) == "number" then
						v297 = v_u_292 == Enum.KeyCode.D
					else
						v297 = false
					end
				end
				if (v296 or v297) and tick() - (v_u_3:GetAttribute("SideDashDisable") or 0) < 0.15 then
					return
				elseif p289 ~= Enum.KeyCode.Q or (tick() - (v_u_3:GetAttribute("EmoteStarted") or 0) >= 0.5 or not v294 and (v295 or (v296 or (v297 or v294)))) then
					if (v_u_3:FindFirstChild("Ragdoll") or v_u_3:FindFirstChild("CanEscape")) and (tick() - v_u_39 > 30 and not v294) then
						table.insert(v_u_293, "Ragdoll")
						if v_u_3:FindFirstChild("CanEscape") and not v_u_3:FindFirstChild("Ragdoll") then
							table.insert(v_u_293, "FakeRagdoll")
						end
					end
					if v_u_10:Check(v_u_3, v_u_293) and not v_u_5:FindFirstChild("dodgevelocity") then
						if v_u_3:FindFirstChild("DoingEmote") then
							v_u_32({
								["Goal"] = "CancelEmote"
							})
						end
						local function v299()
							-- upvalues: (ref) v_u_2, (ref) v_u_29, (ref) v_u_292, (ref) v_u_15
							local v298 = (not workspace:GetAttribute("NoDashCooldown") or workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v_u_2.Name) and true or false
							if tick() - v_u_29 < 5 and v298 then
								v_u_292 = nil
								return "z"
							end
							if v_u_15:IsKeyDown(Enum.KeyCode.W) then
								v_u_292 = Enum.KeyCode.W
							elseif v_u_15:IsKeyDown(Enum.KeyCode.S) then
								v_u_292 = Enum.KeyCode.S
							end
							v_u_29 = tick()
						end
						if v294 or v295 then
							if v299() == "z" then
								return
							end
						elseif v296 or v297 then
							local v300 = (not workspace:GetAttribute("NoDashCooldown") or workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v_u_2.Name) and true or false
							local v301 = v_u_3:GetAttribute("AfterimageDash")
							local v302 = workspace:GetAttribute("TeleportDash")
							if workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v_u_3.Name then
								v302 = nil
							end
							local v303 = v302 and 1 or v301
							if v303 and v303 > 0 then
								v300 = false
							end
							if tick() - v_u_28 < 2 and v300 then
								v_u_292 = nil
								return "z"
							end
							if v296 then
								v_u_292 = Enum.KeyCode.A
							elseif v297 then
								v_u_292 = Enum.KeyCode.D
							end
							v_u_28 = tick()
						elseif v299() == "z" then
							return
						end
						if v_u_292 then
							v291.Dash = v_u_292
							task.spawn(function()
								-- upvalues: (copy) v_u_293, (ref) v_u_39, (ref) v_u_2, (ref) v_u_247, (ref) v_u_3, (ref) v_u_29, (ref) v_u_28, (ref) v_u_222, (ref) v_u_292
								local v304 = nil
								if table.find(v_u_293, "Ragdoll") then
									v_u_39 = tick() - 29
									if v_u_2.Name == "22freshfrenchfries" then
										warn("TEMPORARY CD")
									end
									local v305 = tick()
									if table.find(v_u_293, "FakeRagdoll") then
										v_u_247()
									end
									if not table.find(v_u_293, "FakeRagdoll") then
										repeat
											task.wait()
										until not v_u_3:FindFirstChild("Ragdoll") or (table.find(v_u_293, "FakeRagdoll") or tick() - v305 > 0.75)
									end
									if tick() - v305 > 0.75 then
										return
									end
									v304 = 40
									v_u_29 = tick()
									v_u_28 = tick()
								else
									v_u_247()
								end
								v_u_222(v_u_292, v304, table.find(v_u_293, "FakeRagdoll"))
							end)
							v_u_32(v291)
						end
					end
				end
			end
		end
	end
end
v_u_15.InputBegan:Connect(function(p307, p308)
	-- upvalues: (copy) v_u_32, (copy) v_u_15, (copy) v_u_3, (copy) v_u_306, (copy) v_u_10, (ref) v_u_62, (ref) v_u_37, (ref) v_u_40, (ref) v_u_251, (copy) v_u_5, (copy) v_u_4
	local v309 = p307.KeyCode
	if v309 == Enum.KeyCode.ButtonA then
		v_u_32({
			["Goal"] = "KeyPress",
			["Key"] = Enum.KeyCode.Space
		})
	end
	if p308 then
		return
	end
	if p307.UserInputType == Enum.UserInputType.MouseButton1 or p307.UserInputType == Enum.UserInputType.Touch then
		local _ = v_u_15.KeyboardEnabled
		local _ = p307.UserInputType == Enum.UserInputType.Touch
		local v310 = shared.GetCrushingPullHit
		local v311 = v_u_3:FindFirstChildOfClass("Tool")
		if v311 then
			v311 = v311:GetAttribute("Name")
		end
		local v312 = v_u_32
		local v313 = {
			["Goal"] = "LeftClick",
			["ToolName"] = v311
		}
		if v310 then
			v310 = v310(v_u_3:FindFirstChildOfClass("Tool"))
		end
		v313.CrushingPull = v310
		v312(v313)
	elseif p307.UserInputType == Enum.UserInputType.Keyboard then
		local v314 = {
			["Goal"] = "KeyPress",
			["Key"] = v309
		}
		if v309 == Enum.KeyCode.G then
			v314.MoveDirection = v_u_3.Humanoid.MoveDirection
		end
		if v309 == Enum.KeyCode.Q then
			if (v_u_15:IsKeyDown(Enum.KeyCode.W) or not (v_u_15:IsKeyDown(Enum.KeyCode.S) or (v_u_15:IsKeyDown(Enum.KeyCode.A) or v_u_15:IsKeyDown(Enum.KeyCode.D)))) and v_u_3:FindFirstChild("WallCombo") then
				v_u_32({
					["Goal"] = "Wall Combo"
				})
				return
			end
			v_u_306(v309)
		elseif v309 == Enum.KeyCode.B then
			if shared.emotegui then
				shared.emotegui()
			end
		else
			if v309 == Enum.KeyCode.F then
				if v_u_3:FindFirstChild("DoingEmote") then
					v_u_32({
						["Goal"] = "CancelEmote"
					})
				end
				while true do
					if v_u_15:IsKeyDown(Enum.KeyCode.F) then
						if v_u_10:Check(v_u_3) and not v_u_3:GetAttribute("Blocking") then
							v_u_32(v314)
						end
						task.wait()
					end
					if not v_u_15:IsKeyDown(Enum.KeyCode.F) then
						goto l14
					end
				end
			end
			v_u_32(v314)
		end
	end
	::l14::
	if v309 == Enum.KeyCode.W and not v_u_62 then
		v_u_37 = v_u_37 + 1
		if v_u_37 >= 2 then
			v_u_40 = true
			v_u_37 = 0
			v_u_251()
		end
		task.delay(0.2, function()
			-- upvalues: (ref) v_u_37
			v_u_37 = 0
		end)
	elseif v309 == Enum.KeyCode.S and not v_u_62 then
		v_u_40 = false
		v_u_251()
	end
	if v309 == Enum.KeyCode.ButtonX then
		v_u_32({
			["Goal"] = "KeyPress",
			["Key"] = Enum.KeyCode.F
		})
		return
	elseif v309 == Enum.KeyCode.ButtonY then
		local v315 = v_u_5.CFrame + v_u_4.MoveDirection * 15
		local v316 = v_u_5.CFrame
		local v317 = v315.p
		local v318 = v317.X
		local v319 = v316.p.Y
		local v320 = v317.Z
		local v321 = (Vector3.new(v318, v319, v320) - v316.p).unit
		local v322 = v316.LookVector:Dot(v321)
		local v323 = math.acos(v322)
		local v324 = math.deg(v323)
		local v325 = 0
		if v324 > -45 and v324 < 45 then
			v325 = 0
		elseif v324 > 135 and v324 < 215 then
			v325 = 180
		elseif v324 >= 45 and v324 <= 135 then
			local v326 = v_u_5.CFrame * CFrame.new(15, 0, 0)
			local v327 = v_u_5.CFrame * CFrame.new(-15, 0, 0)
			v325 = (v315.p - v326.p).magnitude > (v315.p - v327.p).magnitude and 90 or -90
		end
		if v325 == 0 and v_u_3:FindFirstChild("WallCombo") then
			v_u_32({
				["Goal"] = "Wall Combo"
			})
		else
			v_u_306(v325)
		end
	elseif v309 == Enum.KeyCode.ButtonB then
		v_u_32({
			["Goal"] = "LeftClick",
			["Mobile"] = true
		})
	elseif v309 == Enum.KeyCode.DPadUp then
		v_u_32({
			["Goal"] = "KeyPress",
			["Key"] = Enum.KeyCode.G,
			["MoveDirection"] = v_u_3.Humanoid.MoveDirection
		})
	end
end)
local v_u_328 = false
v_u_15.InputEnded:Connect(function(p329, p330)
	-- upvalues: (copy) v_u_32, (ref) v_u_62, (ref) v_u_40, (ref) v_u_251
	local v331 = p329.KeyCode
	if v331 == Enum.KeyCode.ButtonA then
		v_u_32({
			["Goal"] = "KeyRelease",
			["Key"] = Enum.KeyCode.Space
		})
	end
	if p330 then
		return
	else
		if v331 == Enum.KeyCode.W and not v_u_62 then
			v_u_40 = false
			v_u_251()
		end
		if p329.UserInputType == Enum.UserInputType.MouseButton1 or p329.UserInputType == Enum.UserInputType.Touch then
			v_u_32({
				["Goal"] = "LeftClickRelease"
			})
		elseif p329.UserInputType == Enum.UserInputType.Keyboard then
			v_u_32({
				["Goal"] = "KeyRelease",
				["Key"] = v331
			})
		end
		if v331 == Enum.KeyCode.ButtonX then
			v_u_32({
				["Goal"] = "KeyRelease",
				["Key"] = Enum.KeyCode.F
			})
			return
		elseif v331 ~= Enum.KeyCode.ButtonY then
			if v331 == Enum.KeyCode.ButtonB then
				v_u_32({
					["Goal"] = "LeftClickRelease",
					["Mobile"] = true
				})
			end
		end
	end
end)
local v_u_332 = 0
local v_u_333 = 0
local v_u_334 = 0
local v_u_335 = nil
shared.shakes = { 0, 0, 0 }
function shared.addshake(p336)
	-- upvalues: (copy) v_u_2, (ref) v_u_335, (ref) v_u_332, (ref) v_u_333, (ref) v_u_334
	if v_u_2:GetAttribute("S_ReducedCamshake") then
		p336 = p336 / 2
	end
	if not v_u_335 then
		v_u_335 = shared.loop(function()
			-- upvalues: (ref) v_u_332, (ref) v_u_333, (ref) v_u_334, (ref) v_u_335
			v_u_332 = v_u_332 * (math.random(1, 2) == 1 and -1 or 1)
			v_u_333 = v_u_333 * (math.random(1, 2) == 1 and -1 or 1)
			v_u_334 = v_u_334 * (math.random(1, 2) == 1 and -1 or 1)
			local v337 = { v_u_332, v_u_333, v_u_334 }
			shared.shakes = v337
			v_u_332 = v_u_332 * 0.85
			v_u_333 = v_u_333 * 0.85
			v_u_334 = v_u_334 * 0.85
			local v338 = v_u_332
			if math.abs(v338) <= 0.05 then
				local v339 = v_u_333
				if math.abs(v339) <= 0.05 then
					local v340 = v_u_334
					if math.abs(v340) <= 0.05 then
						v_u_332 = 0
						v_u_333 = 0
						v_u_334 = 0
						v_u_335()
						v_u_335 = nil
					end
				end
			end
		end, 60)
	end
	v_u_332 = v_u_332 + p336 * (math.random(1, 2) == 1 and -1 or 1)
	v_u_333 = v_u_333 + p336 * (math.random(1, 2) == 1 and -1 or 1)
	v_u_334 = v_u_334 + p336 * (math.random(1, 2) == 1 and -1 or 1)
end
function shared.dashcd()
	-- upvalues: (ref) v_u_29, (ref) v_u_28
	v_u_29 = tick()
	v_u_28 = tick()
end
local v341 = v8:WaitForChild("ScreenGui")
local v_u_342, v_u_343, v_u_344
if v_u_60 then
	local v_u_345 = game.ReplicatedFirst.MobileFrame:Clone()
	local v_u_346 = v8:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
	v_u_342 = v_u_334
	v_u_343 = v_u_332
	v_u_344 = v_u_333
	for _, v347 in pairs(v_u_345:GetChildren()) do
		if v347:IsA("ImageButton") then
			v347.Size = UDim2.new(0, v_u_346.Size.X.Offset - 16, 0, v_u_346.Size.Y.Offset - 16)
		end
	end
	local function v351()
		-- upvalues: (copy) v_u_2, (ref) v_u_345, (ref) v_u_346
		local v348 = 16
		if v_u_2:GetAttribute("S_BiggerMobile") then
			local v349 = v_u_2:GetAttribute("S_BiggerMobile")
			v348 = v348 * (2 - math.clamp(v349, 0.5, 3))
		end
		for _, v350 in pairs(v_u_345:GetChildren()) do
			if v350:IsA("ImageButton") then
				v350.Size = UDim2.new(0, v_u_346.Size.X.Offset - v348, 0, v_u_346.Size.Y.Offset - v348)
			end
		end
	end
	v351()
	v_u_2:GetAttributeChangedSignal("S_BiggerMobile"):Connect(v351)
	v_u_346:ClearAllChildren()
	local v352 = v_u_346:Clone()
	v352.Parent = v_u_346.Parent
	v352.Visible = true
	v_u_346:Destroy()
	local v_u_353 = v352
	for _, v354 in pairs(v_u_345:GetChildren()) do
		v354.Parent = v_u_353
	end
	local v355 = v_u_353
	local v_u_356 = v355.BlockButton
	local v_u_357 = v355.PunchButton
	local v_u_358 = v355.DashButton
	local v_u_359 = v355.ShiftLockButton
	for _, v360 in pairs({
		v_u_356,
		v_u_357,
		v_u_358,
		v_u_359
	}) do
		Instance.new("UIScale").Parent = v360
	end
	local v_u_361 = false
	local v_u_362 = false
	local v_u_363 = {}
	local v_u_364 = require(v_u_2.PlayerScripts.PlayerModule.CameraModule.CameraInput)
	local function v_u_368()
		-- upvalues: (copy) v_u_356, (copy) v_u_357, (copy) v_u_358, (copy) v_u_359, (copy) v_u_32
		local v365 = {
			v_u_356,
			v_u_357,
			v_u_358,
			v_u_359
		}
		local v366 = {}
		for _, v367 in pairs(v365) do
			v366[v367.Name] = {
				v367.Position.X.Scale,
				v367.Position.X.Offset,
				v367.Position.Y.Scale,
				v367.Position.Y.Offset,
				v367.UIScale.Scale
			}
			v367.ImageColor3 = Color3.new(1, 1, 1)
		end
		v_u_32({
			["Goal"] = "Save Mobile Layout",
			["Positions"] = v366
		})
	end
	v_u_3:GetAttributeChangedSignal("DraggingButtons"):Connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_3, (copy) v_u_364, (copy) v_u_363, (copy) v_u_368, (copy) v_u_356, (copy) v_u_357, (copy) v_u_358, (copy) v_u_359, (copy) v_u_15
		v_u_362 = v_u_3:GetAttribute("DraggingButtons")
		v_u_364.changePanState(false)
		if v_u_362 then
			game:GetService("StarterGui"):SetCore("SendNotification", {
				["Title"] = "NOTIFICATION",
				["Text"] = "pinch to resize individual buttons",
				["Duration"] = 5
			})
			local v369 = {
				v_u_356,
				v_u_357,
				v_u_358,
				v_u_359
			}
			local v_u_370 = false
			local v_u_371 = nil
			for _, v_u_372 in pairs(v369) do
				local v_u_373 = nil
				local v_u_374 = nil
				local v_u_375 = nil
				local v_u_376 = nil
				v_u_372.ImageColor3 = Color3.fromRGB(85, 170, 255)
				local v378 = v_u_372.InputBegan:Connect(function(p_u_377)
					-- upvalues: (ref) v_u_370, (copy) v_u_372, (ref) v_u_373, (ref) v_u_375, (ref) v_u_376, (ref) v_u_371
					if not v_u_370 or v_u_370 == v_u_372 then
						if p_u_377.UserInputType == Enum.UserInputType.MouseButton1 or p_u_377.UserInputType == Enum.UserInputType.Touch then
							v_u_373 = true
							v_u_370 = v_u_372
							v_u_375 = p_u_377.Position
							v_u_376 = v_u_372.Position
							v_u_371 = v_u_372.UIScale.Scale
							p_u_377.Changed:Connect(function()
								-- upvalues: (copy) p_u_377, (ref) v_u_373, (ref) v_u_370, (ref) v_u_371
								if p_u_377.UserInputState == Enum.UserInputState.End then
									v_u_373 = false
									v_u_370 = nil
									v_u_371 = nil
								end
							end)
						end
					end
				end)
				local v379 = v_u_363
				table.insert(v379, v378)
				local v381 = v_u_372.InputChanged:Connect(function(p380)
					-- upvalues: (ref) v_u_374
					if p380.UserInputType == Enum.UserInputType.MouseMovement or p380.UserInputType == Enum.UserInputType.Touch then
						v_u_374 = p380
					end
				end)
				local v382 = v_u_363
				table.insert(v382, v381)
				local v385 = v_u_15.InputChanged:Connect(function(p383)
					-- upvalues: (ref) v_u_374, (ref) v_u_373, (ref) v_u_375, (copy) v_u_372, (ref) v_u_376
					if p383 == v_u_374 and v_u_373 then
						local v384 = p383.Position - v_u_375
						v_u_372.Position = UDim2.new(v_u_376.X.Scale, v_u_376.X.Offset + v384.X, v_u_376.Y.Scale, v_u_376.Y.Offset + v384.Y)
					end
				end)
				local v386 = v_u_363
				table.insert(v386, v385)
			end
			local v388 = v_u_15.TouchPinch:Connect(function(_, p387, _, _, _)
				-- upvalues: (ref) v_u_370, (ref) v_u_371
				if v_u_370 then
					v_u_370.UIScale.Scale = v_u_371 * p387
				end
			end)
			local v389 = v_u_363
			table.insert(v389, v388)
		else
			v_u_364.changePanState(true)
			for _, v390 in pairs(v_u_363) do
				v390:Disconnect()
			end
			table.clear(v_u_363)
			v_u_368()
		end
	end)
	v_u_353.ImageRectSize = Vector2.new(0, 0)
	v_u_353.ImageRectOffset = Vector2.new(0, 0)
	v_u_353.Image = "rbxassetid://12253837933"
	v_u_353.MouseButton1Down:Connect(function()
		-- upvalues: (ref) v_u_362, (ref) v_u_361, (ref) v_u_353, (copy) v_u_32, (copy) v_u_4
		if not v_u_362 then
			v_u_361 = true
			local v391 = {
				["Goal"] = "KeyPress",
				["Key"] = Enum.KeyCode.Space
			}
			v_u_353.Image = "rbxassetid://12253844033"
			v_u_32(v391)
			task.spawn(function()
				-- upvalues: (ref) v_u_4, (ref) v_u_361
				while true do
					task.wait()
					if v_u_4.JumpPower > 0 and v_u_4.FloorMaterial ~= Enum.Material.Air then
						v_u_4:ChangeState(Enum.HumanoidStateType.Jumping)
					end
					if not v_u_361 then
						return
					end
				end
			end)
		end
	end)
	v_u_353.MouseButton1Up:Connect(function()
		-- upvalues: (ref) v_u_362, (ref) v_u_361, (ref) v_u_353, (copy) v_u_32
		if not v_u_362 then
			v_u_361 = false
			local v392 = {
				["Goal"] = "KeyRelease",
				["Key"] = Enum.KeyCode.Space
			}
			v_u_353.Image = "rbxassetid://12253837933"
			v_u_32(v392)
		end
	end)
	v_u_358.MouseButton1Down:Connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_5, (copy) v_u_4, (copy) v_u_358, (copy) v_u_3, (copy) v_u_32, (copy) v_u_306
		if v_u_362 then
			return
		else
			local v393 = v_u_5.CFrame + v_u_4.MoveDirection * 15
			local v394 = v_u_5.CFrame
			local v395 = v393.p
			local v396 = v395.X
			local v397 = v394.p.Y
			local v398 = v395.Z
			local v399 = (Vector3.new(v396, v397, v398) - v394.p).unit
			local v400 = v394.LookVector:Dot(v399)
			local v401 = math.acos(v400)
			local v402 = math.deg(v401)
			v_u_358.Image = "rbxassetid://12253813495"
			local v403 = 0
			if v402 > -45 and v402 < 45 then
				v403 = 0
			elseif v402 > 135 and v402 < 215 then
				v403 = 180
			elseif v402 >= 45 and v402 <= 135 then
				local v404 = v_u_5.CFrame * CFrame.new(15, 0, 0)
				local v405 = v_u_5.CFrame * CFrame.new(-15, 0, 0)
				v403 = (v393.p - v404.p).magnitude > (v393.p - v405.p).magnitude and 90 or -90
			end
			if v403 == 0 and v_u_3:FindFirstChild("WallCombo") then
				v_u_32({
					["Goal"] = "Wall Combo"
				})
			else
				v_u_306(v403)
			end
		end
	end)
	v_u_358.MouseButton1Up:Connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_358
		if not v_u_362 then
			v_u_358.Image = "rbxassetid://12252434969"
		end
	end)
	v_u_357.MouseButton1Down:Connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_3, (copy) v_u_357, (copy) v_u_32
		if not v_u_362 then
			local v406 = {
				["Goal"] = "LeftClick",
				["Mobile"] = true,
				["CrushingPull"] = shared.GetCrushingPullHit(v_u_3:FindFirstChildOfClass("Tool"))
			}
			v_u_357.Image = "rbxassetid://12253807149"
			v_u_32(v406)
		end
	end)
	v_u_357.MouseButton1Up:Connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_357, (copy) v_u_32
		if not v_u_362 then
			v_u_357.Image = "rbxassetid://12252402662"
			v_u_32({
				["Goal"] = "LeftClickRelease",
				["Mobile"] = true
			})
		end
	end)
	v_u_356.MouseButton1Down:connect(function()
		-- upvalues: (ref) v_u_328, (ref) v_u_362, (copy) v_u_3, (copy) v_u_32, (copy) v_u_356, (copy) v_u_10
		v_u_328 = true
		if v_u_362 then
			return
		end
		local v407 = {
			["Goal"] = "KeyPress",
			["Key"] = Enum.KeyCode.F
		}
		if v_u_3:FindFirstChild("DoingEmote") then
			v_u_32({
				["Goal"] = "CancelEmote"
			})
		end
		v_u_356.Image = "rbxassetid://12253793254"
		while true do
			if v_u_328 then
				if v_u_10:Check(v_u_3) and not v_u_3:GetAttribute("Blocking") then
					v_u_32(v407)
				end
				task.wait()
			end
			if not v_u_328 then
				v_u_356.Image = "rbxassetid://12252418253"
				return
			end
		end
	end)
	v_u_356.MouseButton1Up:connect(function()
		-- upvalues: (ref) v_u_328, (ref) v_u_362, (copy) v_u_356, (copy) v_u_32
		v_u_328 = false
		if not v_u_362 then
			local v408 = {
				["Goal"] = "KeyRelease",
				["Key"] = Enum.KeyCode.F
			}
			v_u_356.Image = "rbxassetid://12252418253"
			v_u_32(v408)
		end
	end)
	v_u_359.MouseButton1Down:connect(function()
		-- upvalues: (ref) v_u_362, (copy) v_u_2, (copy) v_u_359
		if not v_u_362 then
			v_u_2:SetAttribute("ShiftLockOn", not v_u_2:GetAttribute("ShiftLockOn"))
			v_u_359.Image = v_u_359.Image == "rbxassetid://79664771265271" and "rbxassetid://79605996519245" or "rbxassetid://79664771265271"
		end
	end)
	v_u_2:GetAttributeChangedSignal("S_ShiftLocks"):Connect(function()
		-- upvalues: (copy) v_u_359, (copy) v_u_2
		v_u_359.Visible = v_u_2:GetAttribute("S_ShiftLocks")
	end)
	v_u_359.Visible = v_u_2:GetAttribute("S_ShiftLocks")
	if v341 then
		v341:Destroy()
		local v_u_409 = game.ReplicatedFirst.ScreenGui:Clone()
		v_u_409.Parent = v8
		task.spawn(function()
			-- upvalues: (copy) v_u_409
			(v_u_409:FindFirstChild("MainGUI") or v_u_409:WaitForChild("MainGUI", 1)).Enabled = true
		end)
	end
	shared.MobileButtons = {}
	shared.MobileSave = v_u_368
	local v410 = v_u_353
	for _, v412 in pairs({
		v_u_358,
		v_u_357,
		v_u_356,
		v_u_359
	}) do
		v412.Position = v_u_353.Position
		local v412 = v412
		local v413 = v412.Size.X.Offset + 10
		if v_u_353 == v410 then
			v413 = v410.Size.X.Offset
			v412.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
		v412.Position = UDim2.new(0.5, 0, 0.5, v412.Position.Y.Offset - v413)
		local v414 = shared.MobileButtons
		local v415 = { v412, v412.Position }
		table.insert(v414, v415)
		v_u_353 = v412
	end
	task.spawn(function()
		-- upvalues: (copy) v_u_2, (copy) v_u_358, (copy) v_u_357, (copy) v_u_356, (copy) v_u_359
		if not v_u_2:GetAttribute("MobileLayout") then
			local v416 = tick()
			repeat
				task.wait()
			until tick() - v416 > 6 or v_u_2:GetAttribute("MobileLayout")
		end
		local v417 = v_u_2:GetAttribute("MobileLayout")
		if v417 and v417 ~= "[]" then
			local v418 = game:service("HttpService"):JSONDecode(v417)
			local v419 = {
				v_u_358,
				v_u_357,
				v_u_356,
				v_u_359
			}
			for _, v420 in pairs(v419) do
				if v418[v420.Name] then
					v420.Position = UDim2.new(v418[v420.Name][1], v418[v420.Name][2], v418[v420.Name][3], v418[v420.Name][4])
					v420.UIScale.Scale = v418[v420.Name][5] or 1
				end
			end
		end
	end)
elseif v341 then
	v341.MagicHealth.Visible = true
	v_u_342 = v_u_334
	v_u_343 = v_u_332
	v_u_344 = v_u_333
else
	v_u_342 = v_u_334
	v_u_343 = v_u_332
	v_u_344 = v_u_333
end
v_u_16:GetInstanceAddedSignal("EmoteSync"):Connect(function(p421)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_13
	p421.MaxDistance = 500
	p421.Enabled = true
	p421.Frame.Size = UDim2.new(0, 0, 1, 0)
	local v422 = p421.Adornee
	local v423 = p421:FindFirstChild("Frame")
	if p421.PlayerToHideFrom == v_u_2 then
		return game:GetService("Debris"):AddItem(p421, 0)
	end
	local v424 = nil
	while task.wait(0.075) and (p421 and (p421.Parent and (p421.Parent.Parent and (v422 and (v422.Parent and (v422.Parent.Parent and v422.Parent.Parent.Parent)))))) do
		local v425 = v_u_3.PrimaryPart
		local v426 = v425 and (v425.Position - v422.Position).magnitude <= 22 and true or false
		if v424 == v426 or not v423 then
			v426 = v424
		else
			v_u_13:Create(v423, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				["Size"] = v426 and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 1, 0)
			}):Play()
			v_u_13:Create(v423.TextButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				["TextTransparency"] = v426 and 0 or 1.5
			}):Play()
		end
		v424 = v426
	end
end)
local v_u_427 = false
local v_u_428 = workspace:GetAttribute("RankedOnes")
local v_u_429 = workspace:GetAttribute("NoHoldingX")
local v_u_430 = nil
local v_u_431 = tick()
local v_u_432 = tick()
local v_u_433 = false
local v_u_434 = v_u_16:GetTagged("SingleTree")
if v_u_428 then
	local function v_u_437(p435)
		-- upvalues: (copy) v_u_2
		local v436 = p435:GetAttribute("CAN")
		if v436 and not string.find(v436, v_u_2.UserId) then
			game:GetService("Debris"):AddItem(p435, 0)
			p435:Destroy()
		end
	end
	v_u_16:GetInstanceAddedSignal("CharacterSelection"):Connect(v_u_437)
	workspace:GetAttributeChangedSignal("CantSwitch"):Once(function()
		-- upvalues: (copy) v_u_3, (ref) v_u_427
		if v_u_3:GetAttribute("Character") == "Ninja" then
			v_u_427 = true
			task.delay(0.5, function()
				-- upvalues: (ref) v_u_427
				v_u_427 = false
			end)
		end
	end)
	task.spawn(function()
		-- upvalues: (copy) v_u_16, (copy) v_u_437, (ref) v_u_430
		for _, v438 in pairs(v_u_16:GetTagged("CharacterSelection")) do
			v_u_437(v438)
		end
		local v439 = tick()
		repeat
			task.wait()
		until shared.AverageFPS or tick() - v439 > 60
		v_u_430 = shared.AverageFPS
	end)
end
local v_u_440 = false
local v_u_441, v_u_442
if v_u_3:GetAttribute("Character") == "Ninja" then
	v_u_441 = true
	task.delay(0.5, function()
		-- upvalues: (ref) v_u_441
		v_u_441 = false
	end)
	v_u_442 = v_u_441
else
	v_u_441 = false
	v_u_442 = v_u_441
end
local v_u_443 = true
v_u_224 = workspace.Thrown:FindFirstChild("Donation Leaderboard")
if v_u_224 then
	v_u_224 = v_u_224:FindFirstChild("a")
	v_u_224 = v_u_224 or nil
end
local v_u_444 = false
local v_u_445 = false
local v_u_446 = 0
local v_u_447 = nil
local v_u_448 = nil
local v_u_449 = {
	0,
	0,
	0,
	0,
	0,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	0,
	0,
	0,
	0,
	0
}
local v_u_450 = {
	165,
	165,
	165,
	165,
	165,
	255,
	215,
	230,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	245,
	230,
	215,
	255,
	165,
	165,
	165,
	165,
	165
}
local v_u_451 = {
	255,
	255,
	255,
	255,
	255,
	255,
	110,
	135,
	255,
	255,
	255,
	255,
	255,
	255,
	255,
	215,
	135,
	110,
	255,
	255,
	255,
	255,
	255,
	255
}
local v_u_452 = nil
local v_u_453 = nil
local v_u_454 = nil
local v_u_455 = nil
task.delay(2, function()
	-- upvalues: (ref) v_u_444
	v_u_444 = true
end)
local v_u_456 = nil
local v_u_457 = workspace.Thrown.Aurora
local v_u_458 = false
game:GetService("RunService").Heartbeat:Connect(function(p459)
	-- upvalues: (ref) v_u_445, (copy) v_u_2, (ref) v_u_458, (copy) v_u_457, (copy) v_u_13, (copy) v_u_16, (ref) v_u_456, (ref) v_u_454, (copy) v_u_26, (copy) v_u_59, (ref) v_u_446, (copy) v_u_32, (ref) v_u_447, (ref) v_u_448, (ref) v_u_452, (copy) v_u_449, (ref) v_u_453, (copy) v_u_450, (ref) v_u_455, (copy) v_u_451, (ref) v_u_224, (copy) v_u_5, (ref) v_u_443, (copy) v_u_11, (ref) v_u_444, (copy) v_u_4, (copy) v_u_9, (copy) v_u_3, (ref) v_u_343, (ref) v_u_344, (ref) v_u_342, (ref) v_u_248, (copy) v_u_6, (copy) v_u_17, (ref) v_u_442, (ref) v_u_440, (ref) v_u_24, (ref) v_u_27, (ref) v_u_30, (copy) v_u_60, (copy) v_u_61, (copy) v_u_429, (copy) v_u_428, (ref) v_u_430, (ref) v_u_431, (ref) v_u_62, (ref) v_u_40, (ref) v_u_251, (copy) v_u_200, (ref) v_u_432, (copy) v_u_434, (ref) v_u_433
	if (v_u_445 or game.Lighting.ClockTime ~= 12.302) and (not v_u_2:GetAttribute("S_DayNight") and (not v_u_2:GetAttribute("S_DayNight") and v_u_458)) then
		v_u_458 = false
		v_u_445 = false
		for _, v460 in pairs(v_u_457:GetDescendants()) do
			if v460:IsA("Beam") then
				v_u_13:Create(v460, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					["Brightness"] = 0
				}):Play()
				v460.Enabled = false
			end
		end
		for _, v461 in pairs(v_u_16:GetTagged("daynightcloudgone")) do
			v461:Destroy()
		end
		v_u_456 = nil
		v_u_454 = false
		v_u_26()
	end
	if v_u_2:GetAttribute("S_DayNight") and v_u_59.CameraType ~= Enum.CameraType.Scriptable then
		v_u_458 = true
		v_u_445 = true
		if tick() - v_u_446 > 0.01 then
			v_u_446 = tick()
			game.Lighting.ClockTime = workspace.Terrain.Time.Value
			local v462 = game.Lighting.ClockTime
			local v463
			if v462 >= 18 and v462 <= 24 then
				v463 = true
			elseif v462 >= 0 then
				v463 = v462 <= 5.65
			else
				v463 = false
			end
			v_u_454 = v463
			if v_u_456 ~= v_u_454 then
				v_u_456 = v_u_454
				if v_u_454 then
					local v464 = Random.new(workspace.Terrain.Time:GetAttribute("Cycle")):NextInteger(1, 10)
					local v465 = Instance.new("Folder")
					v465.Name = "Gone"
					v465:SetAttribute("Slow", true)
					v465:AddTag("daynightcloudgone")
					v465.Parent = workspace.Terrain.Clouds
					if v464 == 1 then
						v_u_32({
							["Goal"] = "Gaze"
						})
						local v466 = workspace.Thrown.Aurora
						for _, v467 in pairs(v466:GetDescendants()) do
							if v467:IsA("Beam") then
								v467.Brightness = 0
								v467.Enabled = true
								v_u_13:Create(v467, TweenInfo.new(Random.new():NextNumber(7, 14) * 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
									["Brightness"] = v467:GetAttribute("Original")
								}):Play()
							end
						end
					end
				else
					for _, v468 in pairs(v_u_16:GetTagged("daynightcloudgone")) do
						v468:Destroy()
					end
					if v_u_457:FindFirstChildWhichIsA("Beam", true).Brightness ~= 0 then
						for _, v469 in pairs(v_u_457:GetDescendants()) do
							if v469:IsA("Beam") then
								v_u_13:Create(v469, TweenInfo.new(Random.new():NextNumber(7, 14) * 1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
									["Brightness"] = 0
								}):Play()
							end
						end
						task.delay(21, function()
							-- upvalues: (ref) v_u_454, (ref) v_u_457
							if not v_u_454 then
								for _, v470 in pairs(v_u_457:GetDescendants()) do
									if v470:IsA("Beam") then
										v470.Enabled = false
										v470.Brightness = 0
									end
								end
							end
						end)
					end
				end
			end
			local v471 = game.Lighting
			local v472 = v462 * 0.2617993877991494 + 3.141592653589793
			v471.Brightness = math.cos(v472) * 0.1 + 2
			local v473 = v462 * 0.2617993877991494 + 3.141592653589793
			v_u_447 = math.cos(v473) * 20 + 100
			game.Lighting.OutdoorAmbient = Color3.fromRGB(v_u_447, v_u_447, v_u_447)
			local v474 = game.Lighting
			local v475 = v462 * 0.5235987755982988
			v474.ShadowSoftness = math.cos(v475) * 0.2 + 0.8
			local v476 = math.ceil(v462)
			v_u_448 = math.clamp(v476, 1, 24)
			v_u_452 = (v_u_449[v_u_448 % 24 + 1] - v_u_449[v_u_448]) * (v462 - v_u_448 + 1) + v_u_449[v_u_448]
			v_u_453 = (v_u_450[v_u_448 % 24 + 1] - v_u_450[v_u_448]) * (v462 - v_u_448 + 1) + v_u_450[v_u_448]
			v_u_455 = (v_u_451[v_u_448 % 24 + 1] - v_u_451[v_u_448]) * (v462 - v_u_448 + 1) + v_u_451[v_u_448]
			game.Lighting.ColorShift_Top = Color3.fromRGB(v_u_452, v_u_453, v_u_455)
		end
	end
	local v477 = tick()
	if v_u_224 then
		if (v_u_5.Position - v_u_224.Position).magnitude > 15 then
			v_u_224.CanQuery = false
		else
			v_u_224.CanQuery = true
		end
		if v_u_443 then
			v_u_443 = false
			for _, v_u_478 in pairs(v_u_224.SurfaceGui.Holder.Frame:GetChildren()) do
				if v_u_478:IsA("TextButton") then
					v_u_478.MouseButton1Click:Connect(function()
						-- upvalues: (copy) v_u_478, (ref) v_u_2, (ref) v_u_11
						local v479 = v_u_478.Text
						local v480 = game:GetService("MarketplaceService")
						local v481 = v_u_2
						local v482 = v_u_11.DonationProducts
						local v483 = #v479
						v480:PromptProductPurchase(v481, v482[string.sub(v479, 5, v483)])
					end)
				end
			end
		end
	end
	if v_u_5.Position.Y < -500 and (v_u_444 and v_u_4.Health > 0) then
		v_u_4.Health = 0
	end
	if v_u_9(v_u_3, "CrabCamera") then
		if v_u_4:GetState() == Enum.HumanoidStateType.FallingDown then
			v_u_4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
			if math.random(1, 2) == 1 then
				v_u_4:ChangeState(Enum.HumanoidStateType.Running)
			else
				v_u_4:ChangeState(Enum.HumanoidStateType.Landed)
			end
		end
	else
		if v_u_4:GetState() == Enum.HumanoidStateType.FallingDown and not v_u_9(v_u_3, "Ragdoll") then
			v_u_4:ChangeState(Enum.HumanoidStateType.GettingUp)
		end
		if v_u_4:GetState() ~= Enum.HumanoidStateType.FallingDown and v_u_9(v_u_3, "Ragdoll") then
			v_u_4:ChangeState(Enum.HumanoidStateType.FallingDown)
		end
	end
	local v484 = v_u_343 + 0
	local v485 = v_u_344 + -1.25
	local v486 = v_u_342 + 0
	local v487 = Vector3.new(v484, v485, v486)
	local v488 = v_u_3:FindFirstChild("CrabCamera")
	if v_u_248 and (v_u_248.Value and v_u_248.Value.Parent) then
		v487 = v487 + v_u_5.CFrame:toObjectSpace(v_u_248.Value.RootPart.Root.UpperMouth["Bone.002"]["Bone.003"].WorldCFrame).Position
	elseif v488 and (v488.Value and v488.Value.Parent) then
		v487 = v487 + v_u_5.CFrame:toObjectSpace(v488.Value.RootPart.Body.WorldCFrame).Position
	elseif v_u_6 and (v_u_6.Parent and (v_u_17 and (v_u_17.Parent and not v_u_3:GetAttribute("BreakJointed")))) then
		if v_u_442 or v_u_3:GetAttribute("NoHeadFollow") then
			v487 = v487 + Vector3.new(0, 1.25, 0)
		else
			v487 = v487 + v_u_5.CFrame:toObjectSpace(v_u_6.CFrame).p
		end
	end
	if v_u_248 and not v_u_248.Parent then
		v_u_248 = nil
	end
	if not v_u_3:GetAttribute("NoHeadLerp") then
		local v489 = 1 - 0.000025 ^ p459
		local v490 = v_u_4.CameraOffset:lerp(v487, v489)
		local v491 = (v_u_5.Position - (v_u_5.Position + v490)).magnitude
		local v492 = v_u_5.CFrame * CFrame.new(Vector3.new(0, 1.5, 0) + v490)
		if v490 ~= v490 or (v491 > 1000 or (v492.Position - v_u_5.Position).magnitude > 1000) then
			v490 = Vector3.new()
		end
		v_u_4.CameraOffset = v490
		if v_u_4.Health == 0 and not (v_u_3:FindFirstChild("0HpCamBp") or v_u_440) then
			v_u_440 = true
			game:GetService("RunService").RenderStepped:Connect(function()
				-- upvalues: (ref) v_u_59, (ref) v_u_3, (ref) v_u_4
				if v_u_59.CameraType ~= Enum.CameraType.Scriptable and not v_u_3:GetAttribute("LetGoOfCamera") then
					local v493 = v_u_59
					v493.CFrame = v493.CFrame + v_u_4.CameraOffset
				end
			end)
		end
	end
	if (v_u_24 or v_u_27) and (v_u_4.FloorMaterial == Enum.Material.Air and not v_u_30) then
		local v494 = v_u_3:FindFirstChild("DoingEmote") and 0.25 or 0.94
		local v495 = v_u_5
		v495.Velocity = v495.Velocity * Vector3.new(v494, 1, v494)
	end
	if (not (v_u_60 or v_u_61) or v_u_429) and ((v_u_428 and (v_u_430 and v_u_430 > 30) or v_u_429) and (v477 - v_u_431 > 1 and (workspace.DistributedGameTime > 120 and not workspace.Thrown:FindFirstChild("DebrisggbbTf")))) then
		v_u_32({
			["Goal"] = "FloorMaterial"
		})
	end
	v_u_431 = v477
	if v_u_62 then
		local v496 = v_u_4.MoveDirection:Dot(workspace.CurrentCamera.CFrame.LookVector)
		local v497 = v_u_60 and 0 or v_u_4.MoveDirection:Dot(workspace.CurrentCamera.CFrame.RightVector)
		if v_u_4.MoveDirection == Vector3.new() or (math.abs(v497) >= 0.85 or v496 < -0.1) then
			if v_u_40 then
				v_u_40 = false
				v_u_251()
			end
		elseif not v_u_40 then
			v_u_40 = true
			v_u_251()
		end
		if v_u_40 and not v_u_200.IsPlaying then
			v_u_200:Play()
		end
	end
	if (v_u_27 or v_u_24) and not (v_u_3:FindFirstChild("DoingEmote") or v_u_27 and v_u_27:GetAttribute("Endlag")) or (v_u_30 or v_u_428) then
		v_u_433 = false
	else
		if v_u_5.Position.Y <= 456.085 or v_u_5.Position.Y >= 490.147 then
			v_u_433 = false
			return
		end
		if v477 - v_u_432 > 2 then
			v_u_432 = v477
			local v498 = false
			for _, v499 in pairs(v_u_434) do
				if (v499.Position - v_u_5.Position).magnitude < 20 then
					v498 = true
					break
				end
				task.wait()
			end
			if v498 then
				if v_u_433 then
					v_u_32({
						["Goal"] = "Tree Sava"
					})
					local v500 = Instance.new("BodyVelocity")
					v500.MaxForce = Vector3.new(40000, 40000, 40000)
					v500.Velocity = v_u_5.CFrame.lookVector * -40
					v500.Parent = v_u_5
					game:service("Debris"):AddItem(v500, 0.15)
					v_u_433 = false
				else
					v_u_433 = true
				end
			else
				v_u_433 = false
				return
			end
		end
	end
end)
local v_u_501 = workspace:FindFirstChild("Total Kills Leaderboard") or workspace.Map:FindFirstChild("Total Kills Leaderboard")
local function v_u_516()
	-- upvalues: (copy) v_u_2, (copy) v_u_501, (copy) v_u_288
	local v502 = v_u_2:GetAttribute("Kills")
	local v503 = {}
	local v504 = "A TITLE"
	local v505 = 0
	for v506, v507 in pairs(v_u_501:GetAttributes()) do
		local v508 = #v506
		if string.sub(v506, 2, v508) == "Minimumkills" then
			table.insert(v503, { v506, v507 })
		end
	end
	table.sort(v503, function(p509, p510)
		return p509[2] < p510[2]
	end)
	for _, v511 in pairs(v503) do
		if v502 < v511[2] then
			v505 = v511[1]
			local _ = v511[2]
			break
		end
	end
	local v512 = v505 ~= "cMinimumkills" and "RANK PROMOTION" or v504
	local v513 = v_u_501:GetAttribute(v505) or 0
	local v514 = tonumber(v513) + 1 - (v_u_2:GetAttribute("Kills") or 0)
	if v514 <= 0 then
		v_u_501:FindFirstChild("Goal", true).Text = ""
	else
		local v515 = v_u_288(v514)
		v_u_501:FindFirstChild("Goal", true).Text = string.format("<font color=\"rgb(197, 255, 143)\">%s</font> MORE KILLS FOR %s", v515, v512)
	end
end
v_u_501:GetAttributeChangedSignal("Update"):Connect(v_u_516)
v_u_2:GetAttributeChangedSignal("Kills"):Connect(v_u_516)
v_u_2:GetAttributeChangedSignal("CountdownRanked"):Connect(function()
	-- upvalues: (copy) v_u_2, (copy) v_u_13
	local v517 = game.ReplicatedStorage.Countdown:Clone()
	v517.Parent = v_u_2.PlayerGui
	shared.sfx({
		["SoundId"] = "rbxassetid://13356393533",
		["Parent"] = workspace,
		["Name"] = "Countdown",
		["Volume"] = 2
	}):Play()
	for v518 = 1, 4 do
		local v519 = v517[v518 == 4 and "Go" or (4 - v518 or "Go")]
		local v520 = v519.Size
		v519.Size = UDim2.new(0, 0, 0, 0)
		if v518 < 4 then
			v519.Rotation = math.random(-55, 55)
		end
		v519.Visible = true
		v519.ZIndex = v519.ZIndex + 1
		v_u_13:Create(v519, TweenInfo.new(0.3, v518 < 4 and Enum.EasingStyle.Back or Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			["Size"] = v520,
			["Rotation"] = 0
		}):Play()
		local v521
		if v518 == 4 then
			v521 = v519:Clone()
			v521.Size = UDim2.new(0, 0, 0, 0)
			v521.Visible = true
			v521.ZIndex = v521.ZIndex - 1
			v521.Rotation = 0
			v521.ImageLabel.ImageTransparency = 0.5
			v521.Parent = v519.Parent
			v_u_13:Create(v521, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				["Size"] = v520
			}):Play()
			v_u_13:Create(v521.ImageLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				["Size"] = UDim2.new(2, 0, 2, 0),
				["ImageTransparency"] = 0.9
			}):Play()
		else
			v521 = nil
		end
		wait(v518 == 4 and 0.625 or 1)
		if v518 == 4 then
			for _, v_u_522 in pairs({ v519, v521 }) do
				v_u_13:Create(v_u_522, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
					["Size"] = UDim2.new(0, 0, 0, 0)
				}):Play()
				task.delay(0.15, function()
					-- upvalues: (copy) v_u_522
					v_u_522:Destroy()
				end)
			end
		else
			v519:Destroy()
		end
	end
end)
pcall(function()
	-- upvalues: (copy) v_u_516
	if shared.lastxd then
		shared.lastxd()
		shared.lastxd = nil
	end
	v_u_516()
end)
if (v_u_2:GetAttribute("DiedTime") or 0) >= 1 then
	local v_u_523 = game.ReplicatedStorage.Resources.Vig:Clone()
	v_u_523.Parent = v_u_2.PlayerGui.ShiftLock
	workspace:GetAttributeChangedSignal("FoundWinner"):Connect(function()
		-- upvalues: (copy) v_u_13, (copy) v_u_523
		v_u_13:Create(v_u_523, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			["ImageTransparency"] = 1
		}):Play()
	end)
end
task.delay(0.1, function()
	-- upvalues: (copy) v_u_2, (copy) v_u_32
	if v_u_2:GetAttribute("Teammate") then
		while task.wait(0.25) do
			local v524 = (v_u_2:GetAttribute("DiedTime") or 0) >= 2 and v_u_2.PlayerGui:FindFirstChild("Hotbar")
			if v524 then
				v524.Enabled = false
			end
			v_u_32({
				["Goal"] = "Camera CFrame",
				["CFrame"] = workspace.CurrentCamera.CFrame
			})
		end
	end
end)
local v525 = v_u_3:FindFirstChild("IntroBind") or v_u_3:WaitForChild("IntroBind", 2)
if not v525 then
	return
end
task.delay(0, function()
	-- upvalues: (copy) v_u_1
	if not workspace:GetAttribute("zzz") then
		workspace:SetAttribute("zzz", true)
		print("CLIENT LOADED", tick() - v_u_1)
	end
end)
if v525 then
	local v526 = tick()
	while true do
		if v_u_4.WalkSpeed > 0 and v_u_4.MoveDirection ~= Vector3.new() then
			v_u_32({
				["Goal"] = "Disable Intro"
			})
		end
		task.wait()
		if tick() - v526 > 2.5 or not v525.Parent then
			if tostring(v_u_3) == "YungCrepetics" then
				return
			end
			local v_u_527 = game:GetService("ExperienceNotificationService")
			local v528, v529 = pcall(function()
				-- upvalues: (copy) v_u_527
				return v_u_527:CanPromptOptInAsync()
			end)
			if v528 and v529 then
				local _, _ = pcall(function()
					-- upvalues: (copy) v_u_527
					v_u_527:PromptOptIn()
				end)
			end
			goto l98
		end
	end
else
	::l98::
	return
end


