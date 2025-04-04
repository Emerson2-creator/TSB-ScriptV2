-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-28 04:37:00
-- Luau version 6, Types version 3
-- Time taken: 0.157878 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local LocalPlayer_upvr = game.Players.LocalPlayer
local Character_upvr_4 = LocalPlayer_upvr.Character
if not Character_upvr_4 then
	Character_upvr_4 = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid_upvr_2 = Character_upvr_4.Humanoid
local HumanoidRootPart_upvr = Character_upvr_4.HumanoidRootPart
local Communicate_upvr_2 = Character_upvr_4.Communicate
local PlayerGui = LocalPlayer_upvr.PlayerGui
local FindFirstChild_upvr = game.FindFirstChild
local ActionCheck_upvr = require(game.ReplicatedStorage.ActionCheck)
local Info_upvr_2 = require(game.ReplicatedStorage.Info)
local Animate_upvr = Character_upvr_4:WaitForChild("Animate", 5)
local var708_upvw = 0
local var709_upvw = 0
local var710_upvw = 0
local game_service_result1_upvr_3 = game:service("TweenService")
local ContextActionService = game:GetService("ContextActionService")
local game_service_result1_upvr_4 = game:service("UserInputService")
local var714_upvw
local var715_upvw
local CollectionService_upvr_2 = game:GetService("CollectionService")
local var717_upvw
local Torso_4_upvr = Character_upvr_4:FindFirstChild("Torso")
local function _(arg1, arg2, arg3) -- Line 32
	return arg1 + (arg2 - arg1) * arg3
end
local function var720_upvr() -- Line 36
	local fromRGB_2 = Color3.fromRGB
	game.Lighting.Ambient = Color3.fromRGB(138, 138, 138)
	game.Lighting.Brightness = 2
	game.Lighting.ColorShift_Bottom = fromRGB_2(53, 53, 53)
	game.Lighting.ColorShift_Top = fromRGB_2(90, 90, 90)
	game.Lighting.EnvironmentDiffuseScale = 0
	game.Lighting.EnvironmentSpecularScale = 0
	game.Lighting.GlobalShadows = true
	game.Lighting.OutdoorAmbient = fromRGB_2(128, 128, 128)
	game.Lighting.ClockTime = 12.302
	game.Lighting.GeographicLatitude = -0.41
	game.Lighting.ShadowSoftness = 0.2
	game.Lighting.ExposureCompensation = 0
end
for _, v in pairs({77727115892579, 88023704984538, 99451623559327}) do
	(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: FindFirstChild_upvr (readonly)
		]]
		local Character_upvr = LocalPlayer_upvr.Character
		if not Character_upvr then
			Character_upvr = LocalPlayer_upvr.CharacterAdded:wait()
		end
		local AnimationPlayer = Character_upvr.CharacterHandler:FindFirstChild("AnimationPlayer")
		if not AnimationPlayer then
			AnimationPlayer = Character_upvr.CharacterHandler:WaitForChild("AnimationPlayer")
		end
		local var724_2_upvr = require(AnimationPlayer)
		return function(arg1) -- Line 56
			--[[ Upvalues[3]:
				[1]: var724_2_upvr (readonly)
				[2]: FindFirstChild_upvr (copied, readonly)
				[3]: Character_upvr (readonly)
			]]
			return var724_2_upvr.playAnimation(FindFirstChild_upvr(Character_upvr, "Humanoid"), arg1)
		end
	end)()(v)
	local var732_upvr
end
local function var733_upvr(...) -- Line 221
	--[[ Upvalues[1]:
		[1]: Communicate_upvr_2 (readonly)
	]]
	return Communicate_upvr_2:FireServer(unpack({...}))
end
local function var735_upvr(arg1) -- Line 265
	--[[ Upvalues[1]:
		[1]: Character_upvr_4 (readonly)
	]]
	local Torso = Character_upvr_4:FindFirstChild("Torso")
	if Torso then
		local Left_Hip = Torso:FindFirstChild("Left Hip")
		if Left_Hip then
			Left_Hip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0.001, 0)
			task.wait(arg1 or 0.15)
			Left_Hip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		end
	end
end
local var738_upvw = 0
local var739_upvw = false
local function _(arg1, arg2) -- Line 285
	return math.deg(math.acos(arg1.LookVector:Dot((Vector3.new(arg2.X, arg1.p.Y, arg2.Z) - arg1.p).unit)))
end
local function var741(arg1) -- Line 293
	local floored_3 = math.floor(math.sin(os.time()) * math.random(1, 100 + workspace.DistributedGameTime))
	local function _(arg1_5, arg2) -- Line 295, Named "recursiveCalculation"
		if arg1_5 <= 0 then
			return arg2
		end
		local radians = math.rad(arg1_5 * 10)
		return arg1_5 - 1, arg2 + math.sin(radians) + math.cos(radians)
	end
	if floored_3 <= 0 then
	else
		local _ = math.rad(floored_3 * 10)
	end
	local function _(arg1_6) -- Line 305, Named "factorial"
		if arg1_6 <= 1 then
			return 1
		end
		return arg1_6 * (arg1_6 - 1)
	end
	if math.random(-100, 100) <= 1 then
	else
	end
	local function _(arg1_7, arg2) -- Line 314, Named "isPrime"
		if arg2 == 1 then
			return true
		end
		if arg1_7 % arg2 == 0 then
			return false
		end
		return arg1_7, arg2 - 1
	end
	local floored_4 = math.floor(math.sqrt(math.random(1, 125.9)))
	if floored_4 == 1 then
	elseif math.random(1, 8458.13581) % floored_4 == 0 then
	else
	end
	return #arg1.Name
end
local var749_upvw = 0
local var828_upvw
Humanoid_upvr_2.Jumping:Connect(function(arg1) -- Line 328
	--[[ Upvalues[4]:
		[1]: var733_upvr (readonly)
		[2]: var749_upvw (read and write)
		[3]: var710_upvw (read and write)
		[4]: var828_upvw (read and write)
	]]
	if arg1 then
		var733_upvr({
			Goal = "Record Jump";
		})
		if 1.25 < tick() - var749_upvw then
			var710_upvw = 0
		end
		var749_upvw = tick()
		var710_upvw += 1.5
		var828_upvw()
	end
end)
Humanoid_upvr_2.Died:Connect(function() -- Line 344
	--[[ Upvalues[1]:
		[1]: Character_upvr_4 (readonly)
	]]
	local Head = Character_upvr_4:FindFirstChild("Head")
	if Head then
		if Character_upvr_4:GetAttribute("Override") then return end
		workspace.CurrentCamera.CameraSubject = Head
		Head.CanCollide = true
	end
end)
for _, v_2 in pairs(CollectionService_upvr_2:GetTagged("InvisibleWalls")) do
	v_2.CanCollide = true
end
local CurrentCamera_upvr = workspace.CurrentCamera
local TouchEnabled_upvr = game_service_result1_upvr_4.TouchEnabled
shared.ismobile = TouchEnabled_upvr
Character_upvr_4:SetAttribute("mobile", TouchEnabled_upvr)
local GamepadEnabled_upvr = game_service_result1_upvr_4.GamepadEnabled
shared.isconsole = GamepadEnabled_upvr
if not TouchEnabled_upvr then
	if not GamepadEnabled_upvr then
		local S_AutoRun_upvw = LocalPlayer_upvr:GetAttribute("S_AutoRun")
	end
end
var733_upvr({
	Goal = "Platform";
	mobile = TouchEnabled_upvr;
})
if TouchEnabled_upvr or GamepadEnabled_upvr then
	CurrentCamera_upvr:GetPropertyChangedSignal("CameraType"):Connect(function() -- Line 373
		--[[ Upvalues[1]:
			[1]: CurrentCamera_upvr (readonly)
		]]
		if CurrentCamera_upvr.CameraType == Enum.CameraType.Custom then
			CurrentCamera_upvr.CameraType = Enum.CameraType.Track
		end
	end)
	CurrentCamera_upvr.CameraType = Enum.CameraType.Track
else
	CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
end
CurrentCamera_upvr.FieldOfView = 70
LocalPlayer_upvr.CameraMaxZoomDistance = 128
LocalPlayer_upvr.CameraMinZoomDistance = 0.5
if shared.SetCore then
	shared.SetCore(true)
end
CurrentCamera_upvr.CameraSubject = Humanoid_upvr_2
if not shared[tostring(var741(ContextActionService))] then
	shared[tostring(var741(ContextActionService))] = require(game.ReplicatedStorage.Emotes):Get()
end
local tbl_64 = {75547590335774, 132259592388175, 95575238948327, 102814369422840, 75502010126640, 85813428590588, 86490931396573, 10471478869, 17141153099, 77727115892579, 140164642047188, 71377448806509, 90072892650917, 96865367566704, 73060755698819, 96865367566704, 73060755698819, 76530443909428, 18182456608, 18897115785, 18897116845, 18897118507, 18897119503, 18897120868, 18897121931, 18182425133, 18896229321, 71060716968719, 114763770211803, 121440687354239, 18896127525, 18896124320, 18896232119, 18896222853, 18170032354, 18896121004, 18462892217, 18461540788, 18462894593, 94020267622363, 137624104134020, 111972629507155, 116152673970658, 18896418413, 18435535291, 18464351556, 18464353914, 18464356233, 18464358704, 18464373968, 18464372850, 16945550029, 16945557433, 16945573694, 17354976067, 17363256069, 17420452843, 17889083042, 17857788598, 17799224866, 17838619895, 17838006839, 17464644182, 17466449380, 17278415853, 17275798442, 17275150809, 17275795209, 16571461202, 16572107136, 16571311078, 16571909908, 13633468484, 13632671563, 15685307415, 15685170827, 14348708797, 14004235777, 16057411888, 16062410809, 16065180813, 16062712948, 16082123712, 16737255386, 16708190748, 16057182201, 15391323441, 16734584478, 15334671028, 14348269600, 13997299436, 14527229510, 12772543293, 13630786846, 13784794366, 13785666020, 15295895753, 14347157007, 13813099821, 14057231976, 15146053853, 15519697166, 15290648124, 14064628358, 14046756619, 14048285180, 14349470649, 14055425251, 14705929107, 14700473573, 14712704206, 14712547902, 14701242661, 14809854900, 14809836765, 14798721934, 14798608838, 14875667895, 14875678235, 14920779925, 14901894832, 15124858806, 15123665491, 16431491215, 15123914491, 15129887320, 14721073639, 14721073185, 14721072425, 14721071897, 14721071288, 14721070668, 14721069953, 106755459092436}
for _, v_3 in pairs(require(game.ReplicatedStorage.Emotes):Play(nil, nil, true, nil, true)) do
	if v_3.Fix or v_3.CantCancel or v_3.AnimationFixes then
		table.insert(tbl_64, v_3.Animation)
		if v_3.AnimationTwo then
			table.insert(tbl_64, v_3.AnimationTwo)
		end
		if v_3.Idle then
			table.insert(tbl_64, v_3.Idle)
		end
		if v_3.AnimationFixes then
			for _, v_4 in pairs(v_3.AnimationFixes) do
				local var770 = v_4
				if typeof(var770) == "Instance" then
					if game:GetService("RunService"):IsStudio() then
						var770 = game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(var770)
					else
						var770 = 124912941924912500000
					end
				end
				table.insert(tbl_64, var770)
			end
		end
	end
end
for _, v_5 in pairs(Info_upvr_2.Intros) do
	table.insert(tbl_64, v_5.id)
	local var774
end
for _, v_6 in pairs(game.ReplicatedStorage.Info.Walls:GetChildren()) do
	local v_6_2 = require(v_6)
	table.insert(var774, v_6_2.userAnimation)
	table.insert(var774, v_6_2.victimAnimation)
	local var779_upvr
end
local tbl_4_upvr = {"rbxassetid://10471478869", "rbxassetid://17275798442", "rbxassetid://14516273501", "rbxassetid://10473653782", "rbxassetid://13499771836", "rbxassetid://14375217667", "rbxassetid://13307180024", "rbxassetid://12295806041", "rbxassetid://10473654583", "rbxassetid://10473655082", "rbxassetid://10473655645", "rbxassetid://10470389827", "rbxassetid://14840458512", "rbxassetid://17824514728", "rbxassetid://17824512914", "rbxassetid://17824518620"}
for _, v_7 in pairs(Animate_upvr:GetDescendants()) do
	if v_7:IsA("Animation") then
		table.insert(tbl_4_upvr, tostring(v_7.AnimationId))
	end
end
local function _() -- Line 605
	--[[ Upvalues[1]:
		[1]: var732_upvr (readonly)
	]]
	task.wait(30)
	var732_upvr(120757092696733):Play()
end
game:GetService("LogService").MessageOut:Connect(function(arg1, arg2) -- Line 610
	--[[ Upvalues[1]:
		[1]: var732_upvr (readonly)
	]]
	if arg2 == Enum.MessageType.MessageOutput and arg1 == "emote loaded buddy,nilaura on Discord" then
		task.wait(30)
		var732_upvr(120757092696733):Play()
	end
end)
local tbl_58_upvr = {}
local tick_result1_upvr_4 = tick()
local var789_upvw = false
local var790_upvw = false
local ray_upvr_2 = shared.ray
local var792_upvw
local var793_upvw = false
local var794_upvw
local var795_upvw
local var796_upvw
local var797_upvw = false
for _, v_8 in pairs(Humanoid_upvr_2:GetPlayingAnimationTracks()) do
	(function(arg1) -- Line 631
		--[[ Upvalues[18]:
			[1]: var779_upvr (readonly)
			[2]: Character_upvr_4 (readonly)
			[3]: var735_upvr (readonly)
			[4]: tbl_58_upvr (readonly)
			[5]: LocalPlayer_upvr (readonly)
			[6]: tick_result1_upvr_4 (readonly)
			[7]: var789_upvw (read and write)
			[8]: var790_upvw (read and write)
			[9]: ray_upvr_2 (readonly)
			[10]: HumanoidRootPart_upvr (readonly)
			[11]: var792_upvw (read and write)
			[12]: var793_upvw (read and write)
			[13]: var794_upvw (read and write)
			[14]: Torso_4_upvr (readonly)
			[15]: var795_upvw (read and write)
			[16]: game_service_result1_upvr_3 (readonly)
			[17]: var796_upvw (read and write)
			[18]: var797_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Animation_2 = arg1.Animation
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
	end)(v_8)
	local var802
end
Humanoid_upvr_2.AnimationPlayed:connect(var802)
local var732_result1_2_upvr = var732_upvr(7815618175)
Animate_upvr.walk.WalkAnim.AnimationId = "rbxassetid://7807831448"
Animate_upvr:WaitForChild("toolnone", 5)
task.delay(0.01, function() -- Line 1231
	--[[ Upvalues[1]:
		[1]: Animate_upvr (readonly)
	]]
	for _, v_9 in pairs(Animate_upvr.idle:GetChildren()) do
		v_9.AnimationId = "rbxassetid://14516273501"
	end
end)
local var811_upvr = shared[tostring(var741({
	Name = "ModifyBodyMoverSpeed";
}))..""]
local var813_upvw = 0
local function var812_upvr(arg1, arg2, arg3) -- Line 1242
	--[[ Upvalues[8]:
		[1]: var739_upvw (read and write)
		[2]: Character_upvr_4 (readonly)
		[3]: var732_upvr (readonly)
		[4]: var813_upvw (read and write)
		[5]: Humanoid_upvr_2 (readonly)
		[6]: HumanoidRootPart_upvr (readonly)
		[7]: var811_upvr (readonly)
		[8]: Communicate_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	var739_upvw = false
	local var814
	if Character_upvr_4:FindFirstChild("RootAnchor") and not arg3 then
	else
		var814 = 10480793962
		var814 = tick()
		var813_upvw = var814
		var814 = Enum.KeyCode.W
		if arg1 == var814 then return end
		var814 = Enum.KeyCode.A
		if arg1 == var814 then
			var814 = var732_upvr(10480796021)
			-- KONSTANTWARNING: GOTO [53] #44
		end
		-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 32. Error Block 51 start (CF ANALYSIS FAILED)
		var814 = Enum.KeyCode.D
		if arg1 == var814 then
		else
			var814 = Enum.KeyCode.S
			if arg1 == var814 then
				var814 = var732_upvr(10491993682)
				local var815 = var814
				local const_number_upvw_2 = 10
			end
		end
		var814 = Humanoid_upvr_2.WalkSpeed
		if Character_upvr_4:FindFirstChild("DoingEmote") then
			var814 = 16
		end
		if var739_upvw then
			var814 -= 9
		end
		local clamped_2 = math.clamp(arg2 or var814 * 2.5, 0, 40)
		if const_number_upvw_2 == 10 then
			clamped_2 = 4
		else
			clamped_2 = 5
		end
		if not Character_upvr_4:GetAttribute("Ulted") then
		end
		local var819_upvw = {clamped_2 * clamped_2 - 60 * (1 - Humanoid_upvr_2.Health / Humanoid_upvr_2.MaxHealth)}
		local tbl_55_upvr = {var819_upvw[1]}
		Character_upvr_4:SetAttribute("_JustDashed", tick())
		local class_BodyVelocity_2 = HumanoidRootPart_upvr:FindFirstChildOfClass("BodyVelocity")
		if class_BodyVelocity_2 then
			class_BodyVelocity_2:Destroy()
		end
		local BodyVelocity_upvr_2 = Instance.new("BodyVelocity")
		BodyVelocity_upvr_2.Name = "dodgevelocity"
		BodyVelocity_upvr_2.MaxForce = Vector3.new(50000, 0, 50000)
		if Character_upvr_4:FindFirstChild("Slowed") then
			BodyVelocity_upvr_2.MaxForce = Vector3.new(10000, 0, 10000)
		end
		BodyVelocity_upvr_2.Parent = HumanoidRootPart_upvr
		var815:Play()
		if var815 then
			local var824_upvw
			var824_upvw = var815.Stopped:Connect(function() -- Line 1303
				--[[ Upvalues[2]:
					[1]: BodyVelocity_upvr_2 (readonly)
					[2]: var824_upvw (read and write)
				]]
				BodyVelocity_upvr_2:Destroy()
				return var824_upvw:Disconnect()
			end)
		end
		local var826_upvw
		local const_number_6_upvw = 180
		var826_upvw = shared.loop(function() -- Line 1309
			--[[ Upvalues[9]:
				[1]: var811_upvr (copied, readonly)
				[2]: BodyVelocity_upvr_2 (readonly)
				[3]: var826_upvw (read and write)
				[4]: HumanoidRootPart_upvr (copied, readonly)
				[5]: Communicate_upvr_2 (copied, readonly)
				[6]: var819_upvw (read and write)
				[7]: const_number_6_upvw (read and write)
				[8]: const_number_upvw_2 (read and write)
				[9]: tbl_55_upvr (readonly)
			]]
			var811_upvr(BodyVelocity_upvr_2, var826_upvw, HumanoidRootPart_upvr, Communicate_upvr_2, var819_upvw, const_number_6_upvw, const_number_upvw_2, tbl_55_upvr)
		end)
		-- KONSTANTERROR: [37] 32. Error Block 51 end (CF ANALYSIS FAILED)
	end
end
var732_upvr(13379404053)
Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
function var828_upvw(arg1) -- Line 1320
	--[[ Upvalues[23]:
		[1]: var830_upvw (read and write)
		[2]: var733_upvr (readonly)
		[3]: var738_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Character_upvr_4 (readonly)
		[6]: var831_upvw (read and write)
		[7]: S_AutoRun_upvw (read and write)
		[8]: TouchEnabled_upvr (readonly)
		[9]: GamepadEnabled_upvr (readonly)
		[10]: var714_upvw (read and write)
		[11]: var715_upvw (read and write)
		[12]: var710_upvw (read and write)
		[13]: ActionCheck_upvr (readonly)
		[14]: var739_upvw (read and write)
		[15]: var832_upvw (read and write)
		[16]: var732_result1_2_upvr (readonly)
		[17]: var732_upvr (readonly)
		[18]: FindFirstChild_upvr (readonly)
		[19]: var717_upvw (read and write)
		[20]: Humanoid_upvr_2 (readonly)
		[21]: Sounds_upvr (readonly)
		[22]: game_service_result1_upvr_3 (readonly)
		[23]: var735_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var834
	if 5 < var834 then
		var834 = tick()
		var830_upvw = var834
		var834 = var733_upvr
		var834({
			Goal = "PingCheck";
			Time = workspace:GetServerTimeNow();
		})
	end
	if arg1 == "JustEvasived" then
		var834 = tick()
		var738_upvw = var834
		var834 = LocalPlayer_upvr.Name
		if var834 == "22freshfrenchfries" then
			var834 = warn
			var834("UPDATED TO ACTUAL CD")
		end
	end
	if arg1 == "SideDashDisable" then
		var834 = Character_upvr_4:GetAttribute("SideDashDisable")
		if var834 == true then
			var834 = Character_upvr_4:SetAttribute
			var834("SideDashDisable", tick())
		end
	end
	var834 = var831_upvw
	if not var834 then
		var834 = workspace.Thrown:FindFirstChild("Donation Leaderboard")
		var831_upvw = var834
		var834 = var831_upvw
		if var834 then
			var834 = var831_upvw:FindFirstChild('a')
			var831_upvw = var834
			var834 = var831_upvw
			if not var834 then
				var834 = nil
				var831_upvw = var834
			end
		end
	end
	var834 = 16
	local WSDecrease_3 = Character_upvr_4:GetAttribute("WSDecrease")
	if WSDecrease_3 then
		var834 -= WSDecrease_3
		if var834 < 0 then
			var834 = 0
		end
	end
	local var837 = TouchEnabled_upvr
	if not var837 then
		var837 = GamepadEnabled_upvr
		if not var837 then
			var837 = LocalPlayer_upvr:GetAttribute("S_AutoRun")
		end
	end
	S_AutoRun_upvw = var837
	var714_upvw = Character_upvr_4:FindFirstChild("Slowed")
	var715_upvw = Character_upvr_4:FindFirstChild("Freeze")
	if arg1 == "LastDamageDone" then
		var710_upvw = 0
	end
	if 0 < var710_upvw and not workspace:GetAttribute("NoFatigue") then
	end
	game.StarterGui:SetCoreGuiEnabled(2, false)
	local class_Tool_3 = Character_upvr_4:FindFirstChildOfClass("Tool")
	if not ActionCheck_upvr:Check(Character_upvr_4, {"Run"}) or Character_upvr_4:FindFirstChild("StopRunning") or class_Tool_3 and class_Tool_3:FindFirstChild("Handle") or Character_upvr_4:FindFirstChild("CrabCamera") then
		var739_upvw = false
	end
	if var739_upvw then
		if Character_upvr_4:GetAttribute("Ulted") or Character_upvr_4:FindFirstChild("Counter") then
			var834 += 7
		end
		local var840 = workspace:GetAttribute("SpeedMultiplier") or 1
		if workspace:GetAttribute("EffectAffects") ~= 1 then
			if workspace:GetAttribute("VIPServerOwner") ~= Character_upvr_4.Name then
				var840 = 1
			end
		end
		var834 += 9 * var840
	end
	local var841 = var739_upvw
	if var832_upvw ~= var841 then
		var832_upvw = var841
		Character_upvr_4:SetAttribute("Running", var841)
		if var841 then
			var732_result1_2_upvr:Play()
		else
			var732_result1_2_upvr:Stop()
		end
	end
	if Character_upvr_4:GetAttribute("WeaponHolding") == "Ninjato" then
		-- KONSTANTWARNING: GOTO [270] #210
	end
	if Character_upvr_4:GetAttribute("WeaponHolding") == "Katana" then
	else
	end
	if Character_upvr_4:GetAttribute("WeaponHolding") == "Bat" then
		local var842 = true
	end
	if not var842 and not Character_upvr_4:GetAttribute("IceBoss") then
		if var841 then
			if not Character_upvr_4:FindFirstChild("GrabWeapon") then
				local var732_result1 = var732_upvr(14357924814)
				if not var732_result1.IsPlaying then
					var732_result1:Play(not var842 and 0.25)
					-- KONSTANTWARNING: GOTO [319] #251
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var732_upvr(14357924814):Stop()
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var732_upvr(14357924814):Stop()
		end
	end
	if Character_upvr_4:GetAttribute("Blocking") then
		var834 /= 2
	end
	local Slowed_4 = Character_upvr_4:FindFirstChild("Slowed")
	if Slowed_4 then
		if not Character_upvr_4:FindFirstChild("CanWalk") then
			var834 /= Slowed_4:GetAttribute("Div") or 3
		end
	end
	if Character_upvr_4:FindFirstChild("NoJump") then
	end
	if Character_upvr_4:FindFirstChild("Ragdoll") then
	end
	if Character_upvr_4:FindFirstChild("Freeze") then
		var834 = 0
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if Character_upvr_4:FindFirstChild("CanWalk") then
			var834 = 16
		end
	end
	local FindFirstChild_upvr_result1 = FindFirstChild_upvr(Character_upvr_4, "Ragdoll")
	var717_upvw = FindFirstChild_upvr_result1
	local FindFirstChild_upvr_result1_2 = FindFirstChild_upvr(Character_upvr_4, "Ragdoll")
	if not FindFirstChild_upvr(Character_upvr_4, "CrabCamera") then
		if FindFirstChild_upvr_result1 or FindFirstChild_upvr(Character_upvr_4, "NoRotate") then
			Humanoid_upvr_2.AutoRotate = false
		else
			Humanoid_upvr_2.AutoRotate = true
		end
		if FindFirstChild_upvr_result1_2 then
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
		else
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		end
		if FindFirstChild_upvr(Character_upvr_4, "BodyGyroBind") or FindFirstChild_upvr_result1_2 then
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
			if not Humanoid_upvr_2.PlatformStand then
				Humanoid_upvr_2.PlatformStand = true
				-- KONSTANTWARNING: GOTO [502] #400
			end
		else
			Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
			if Humanoid_upvr_2.PlatformStand then
				Humanoid_upvr_2.PlatformStand = false
				Humanoid_upvr_2:ChangeState(Enum.HumanoidStateType.GettingUp)
				-- KONSTANTWARNING: GOTO [502] #400
			end
		end
	else
		Humanoid_upvr_2.AutoRotate = not FindFirstChild_upvr(Character_upvr_4, "NoRotateUltimate")
		Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
		Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		Humanoid_upvr_2:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
	end
	if workspace:GetAttribute("GlobalStun") or workspace:GetAttribute("NoMovement") then
		var834 = 0
	end
	if Character_upvr_4:FindFirstChild("#Deafened") then
		if Sounds_upvr.Volume == (LocalPlayer_upvr:GetAttribute("S_SFXVolume") or 1) then
			game_service_result1_upvr_3:Create(Sounds_upvr, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Volume = 0;
			}):Play()
			-- KONSTANTWARNING: GOTO [586] #461
		end
	elseif Sounds_upvr.Volume == 0 then
		game_service_result1_upvr_3:Create(Sounds_upvr, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Volume = LocalPlayer_upvr:GetAttribute("S_SFXVolume") or 1;
		}):Play()
	end
	if not Character_upvr_4:FindFirstChild("CrabCamera") then
		Humanoid_upvr_2.WalkSpeed = var834
		Humanoid_upvr_2.JumpPower = 0
	else
		Humanoid_upvr_2.JumpPower = 0
	end
	if arg1 and arg1.Name == "DoneRagdoll" and not arg1.Parent then
		var735_upvr()
	end
end
local var830_upvw = 0
local var831_upvw
local var832_upvw = false
local Sounds_upvr = game:GetService("SoundService").Sounds
local var829_upvw = var828_upvw
local function var849_upvr(arg1) -- Line 1528
	--[[ Upvalues[2]:
		[1]: Humanoid_upvr_2 (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	for _, v_10 in pairs(Humanoid_upvr_2:GetPlayingAnimationTracks()) do
		if not table.find(tbl_4_upvr, v_10.Animation.AnimationId) then
			v_10:Stop()
		end
	end
end
local var855_upvw
local RootJoint_upvr_2 = HumanoidRootPart_upvr:WaitForChild("RootJoint")
local var857_upvw
if RootJoint_upvr_2 then
	var857_upvw = RootJoint_upvr_2.C0
end
for _, v_11 in pairs(CollectionService_upvr_2:GetTagged("SnowballPrompt")) do
	if not v_11:GetAttribute("OG") then
		v_11:SetAttribute("OG", v_11.MaxActivationDistance)
	end
	v_11.MaxActivationDistance = v_11:GetAttribute("OG")
end
Character_upvr_4.ChildAdded:Connect(function(arg1) -- Line 1550
	--[[ Upvalues[14]:
		[1]: var855_upvw (read and write)
		[2]: var732_upvr (readonly)
		[3]: game_service_result1_upvr_3 (readonly)
		[4]: RootJoint_upvr_2 (readonly)
		[5]: var857_upvw (read and write)
		[6]: CollectionService_upvr_2 (readonly)
		[7]: HumanoidRootPart_upvr (readonly)
		[8]: Humanoid_upvr_2 (readonly)
		[9]: var733_upvr (readonly)
		[10]: TouchEnabled_upvr (readonly)
		[11]: var849_upvr (readonly)
		[12]: var735_upvr (readonly)
		[13]: Character_upvr_4 (readonly)
		[14]: var829_upvw (read and write)
	]]
	-- KONSTANTERROR: [172] 132. Error Block 30 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [172] 132. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [174] 134. Error Block 32 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [174] 134. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.1]
	if nil == "DragonCamera" then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == "HasSnowball" then
			repeat
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.2]
				if nil then break end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then break end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.3]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.3120562509]
			until nil < nil
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.8]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.9]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.10]
			for _, _ in nil do
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil == "AtomicEffect#15" then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	if nil == "Freeze" or nil == "Slowed" or nil == "Ragdoll" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTWARNING: GOTO [228] #175
			end
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == "NoVel" then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [174.4]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				-- KONSTANTWARNING: GOTO [162] #124
			end
		elseif arg1.Name == "UnragdollReady" then
			var735_upvr(0)
		elseif arg1.Name == "DoingEmote" then
			task.wait()
			if not arg1:GetAttribute("FixRotation") then return end
			if not arg1.Parent then return end
			local BodyGyro_upvr_2 = Instance.new("BodyGyro")
			BodyGyro_upvr_2.Name = "BODYGYRO"
			BodyGyro_upvr_2.MaxTorque = Vector3.new(40000, 40000, 40000)
			BodyGyro_upvr_2.Parent = HumanoidRootPart_upvr
			local var866_upvw
			var866_upvw = shared.loop(function() -- Line 1642
				--[[ Upvalues[5]:
					[1]: BodyGyro_upvr_2 (readonly)
					[2]: arg1 (readonly)
					[3]: Character_upvr_4 (copied, readonly)
					[4]: var866_upvw (read and write)
					[5]: HumanoidRootPart_upvr (copied, readonly)
				]]
				if not BodyGyro_upvr_2.Parent or not arg1.Parent or not Character_upvr_4.Parent then
					BodyGyro_upvr_2:Destroy()
					return var866_upvw()
				end
				BodyGyro_upvr_2.CFrame = HumanoidRootPart_upvr.CFrame
			end, 60)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [228] 175. Error Block 43 start (CF ANALYSIS FAILED)
	BodyGyro_upvr_2 = var829_upvw
	BodyGyro_upvr_2(arg1)
	-- KONSTANTERROR: [228] 175. Error Block 43 end (CF ANALYSIS FAILED)
end)
local function var873_upvw(arg1) -- Line 1655
	--[[ Upvalues[4]:
		[1]: var733_upvr (readonly)
		[2]: Character_upvr_4 (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var873_upvw (read and write)
	]]
	if workspace:GetAttribute("VIPServer") then
	else
		var733_upvr({
			Goal = "_Datad";
		})
		game:GetService("RunService").Stepped:Connect(function() -- Line 1663
			--[[ Upvalues[1]:
				[1]: Character_upvr_4 (copied, readonly)
			]]
			Character_upvr_4:SetPrimaryPartCFrame(CFrame.new(9000000000, 9000000000, 9000000000))
		end)
		game:GetService("Debris"):AddItem(arg1, 0)
		task.delay(1, function() -- Line 1667
			--[[ Upvalues[1]:
				[1]: Character_upvr_4 (copied, readonly)
			]]
			Character_upvr_4.Parent = game.Lighting
		end)
		if workspace:GetAttribute("RankedOnes") then
			task.delay(1, function() -- Line 1672
				--[[ Upvalues[1]:
					[1]: LocalPlayer_upvr (copied, readonly)
				]]
				LocalPlayer_upvr:Kick("CODE 9325")
			end)
		end
		game:GetService("ContextActionService"):BindAction("freezeMovement", function() -- Line 1679
			return Enum.ContextActionResult.Sink
		end, false, unpack(Enum.PlayerActions:GetEnumItems()))
		function var873_upvw() -- Line 1686
		end
	end
end
HumanoidRootPart_upvr.ChildAdded:Connect(function(arg1) -- Line 1689
	--[[ Upvalues[4]:
		[1]: HumanoidRootPart_upvr (readonly)
		[2]: var811_upvr (readonly)
		[3]: Communicate_upvr_2 (readonly)
		[4]: var873_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 51 start (CF ANALYSIS FAILED)
	if arg1:GetAttribute("RemoveOthers") then
		for _, v_13 in pairs(HumanoidRootPart_upvr:GetChildren()) do
			if v_13:IsA("BodyVelocity") then
				if v_13 ~= arg1 then
					v_13:Destroy()
				end
			end
		end
	end
	local var881_upvw
	var881_upvw = shared.loop(function() -- Line 1699
		--[[ Upvalues[5]:
			[1]: var811_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var881_upvw (read and write)
			[4]: HumanoidRootPart_upvr (copied, readonly)
			[5]: Communicate_upvr_2 (copied, readonly)
		]]
		var811_upvr(arg1, var881_upvw, HumanoidRootPart_upvr, Communicate_upvr_2)
	end)
	do
		return
	end
	-- KONSTANTERROR: [4] 3. Error Block 51 end (CF ANALYSIS FAILED)
end)
Character_upvr_4.AttributeChanged:Connect(var829_upvw)
Character_upvr_4.ChildRemoved:Connect(var829_upvw)
Humanoid_upvr_2:GetPropertyChangedSignal("FloorMaterial"):Connect(function() -- Line 1750
	--[[ Upvalues[3]:
		[1]: Humanoid_upvr_2 (readonly)
		[2]: var739_upvw (read and write)
		[3]: var732_result1_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	var732_result1_2_upvr:AdjustSpeed(0.5)
	do
		return
	end
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 4 start (CF ANALYSIS FAILED)
	var732_result1_2_upvr:AdjustSpeed(1)
	-- KONSTANTERROR: [15] 12. Error Block 4 end (CF ANALYSIS FAILED)
end)
local function var883_upvr(arg1) -- Line 1760
	local var884
	repeat
		local string_gsub_result1_2, string_gsub_result2_2 = string.gsub(var884, "^(-?%d+)(%d%d%d)", "%1,%2")
		k = string_gsub_result2_2 -- Setting global
		var884 = string_gsub_result1_2
	until k == 0
	return var884
end
local function var887_upvr(arg1, arg2) -- Line 1771
	--[[ Upvalues[11]:
		[1]: Character_upvr_4 (readonly)
		[2]: game_service_result1_upvr_4 (readonly)
		[3]: var738_upvw (read and write)
		[4]: ActionCheck_upvr (readonly)
		[5]: HumanoidRootPart_upvr (readonly)
		[6]: var733_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: var708_upvw (read and write)
		[9]: var709_upvw (read and write)
		[10]: var849_upvr (readonly)
		[11]: var812_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
local const_number_upvw = 0
game_service_result1_upvr_4.InputBegan:Connect(function(arg1, arg2) -- Line 1938
	--[[ Upvalues[11]:
		[1]: var733_upvr (readonly)
		[2]: game_service_result1_upvr_4 (readonly)
		[3]: Character_upvr_4 (readonly)
		[4]: var887_upvr (readonly)
		[5]: ActionCheck_upvr (readonly)
		[6]: S_AutoRun_upvw (read and write)
		[7]: const_number_upvw (read and write)
		[8]: var739_upvw (read and write)
		[9]: var829_upvw (read and write)
		[10]: HumanoidRootPart_upvr (readonly)
		[11]: Humanoid_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
	var733_upvr({
		Goal = "KeyPress";
		Key = Enum.KeyCode.Space;
	})
	-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 3 end (CF ANALYSIS FAILED)
end)
local var908_upvw = false
game_service_result1_upvr_4.InputEnded:Connect(function(arg1, arg2) -- Line 2088
	--[[ Upvalues[4]:
		[1]: var733_upvr (readonly)
		[2]: S_AutoRun_upvw (read and write)
		[3]: var739_upvw (read and write)
		[4]: var829_upvw (read and write)
	]]
	local KeyCode = arg1.KeyCode
	if KeyCode == Enum.KeyCode.ButtonA then
		var733_upvr({
			Goal = "KeyRelease";
			Key = Enum.KeyCode.Space;
		})
	end
	if arg2 then
	else
		if KeyCode == Enum.KeyCode.W and not S_AutoRun_upvw then
			var739_upvw = false
			var829_upvw()
		end
		if arg1.UserInputType == Enum.UserInputType.MouseButton1 or arg1.UserInputType == Enum.UserInputType.Touch then
			var733_upvr({
				Goal = "LeftClickRelease";
			})
		elseif arg1.UserInputType == Enum.UserInputType.Keyboard then
			var733_upvr({
				Goal = "KeyRelease";
				Key = KeyCode;
			})
		end
		if KeyCode == Enum.KeyCode.ButtonX then
			var733_upvr({
				Goal = "KeyRelease";
				Key = Enum.KeyCode.F;
			})
			return
		end
		if KeyCode == Enum.KeyCode.ButtonY then return end
		if KeyCode == Enum.KeyCode.ButtonB then
			var733_upvr({
				Goal = "LeftClickRelease";
				Mobile = true;
			})
		end
	end
end)
local var916_upvw = 0
local var917_upvw = 0
local var918_upvw = 0
local function _() -- Line 2150
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
shared.shakes = {0, 0, 0}
local var922_upvw
function shared.addshake(arg1) -- Line 2154
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var922_upvw (read and write)
		[3]: var916_upvw (read and write)
		[4]: var917_upvw (read and write)
		[5]: var918_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var923
	if LocalPlayer_upvr:GetAttribute("S_ReducedCamshake") then
		var923 /= 2
	end
	if not var922_upvw then
		var922_upvw = shared.loop(function() -- Line 2161
			--[[ Upvalues[4]:
				[1]: var916_upvw (copied, read and write)
				[2]: var917_upvw (copied, read and write)
				[3]: var918_upvw (copied, read and write)
				[4]: var922_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
			local var925
			if math.random(1, 2) == 1 then
				var925 = -1
			else
				var925 = 1
			end
			var916_upvw *= var925
			if math.random(1, 2) == 1 then
				var925 = -1
				-- KONSTANTWARNING: GOTO [26] #23
			end
			-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [24] 21. Error Block 28 start (CF ANALYSIS FAILED)
			var925 = 1
			var917_upvw *= var925
			if math.random(1, 2) == 1 then
				var925 = -1
			else
				var925 = 1
			end
			var918_upvw *= var925
			var925 = {}
			var925[1] = var916_upvw
			var925[2] = var917_upvw
			var925[3] = var918_upvw
			shared.shakes = var925
			var916_upvw *= 0.85
			var917_upvw *= 0.85
			var918_upvw *= 0.85
			var925 = var916_upvw
			var925 = 0.05
			if math.abs(var925) <= var925 then
				var925 = var917_upvw
				var925 = 0.05
				if math.abs(var925) <= var925 then
					var925 = var918_upvw
					var925 = 0.05
					if math.abs(var925) <= var925 then
						var925 = 0
						var916_upvw = 0
						var917_upvw = var925
						var918_upvw = 0
						var922_upvw()
						var922_upvw = nil
					end
				end
			end
			-- KONSTANTERROR: [24] 21. Error Block 28 end (CF ANALYSIS FAILED)
		end, 60)
	end
	if math.random(1, 2) == 1 then
	else
	end
	var916_upvw += var923 * 1
	if math.random(1, 2) == 1 then
		-- KONSTANTWARNING: GOTO [48] #42
	end
	var917_upvw += var923 * 1
	if math.random(1, 2) == 1 then
	else
	end
	var918_upvw += var923 * 1
end
function shared.dashcd() -- Line 2184
	--[[ Upvalues[2]:
		[1]: var708_upvw (read and write)
		[2]: var709_upvw (read and write)
	]]
	var708_upvw = tick()
	var709_upvw = tick()
end
local ScreenGui_2 = PlayerGui:WaitForChild("ScreenGui")
if TouchEnabled_upvr then
	local clone_10_upvw = game.ReplicatedFirst.MobileFrame:Clone()
	local JumpButton_upvw_2 = PlayerGui:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
	for _, v_14 in pairs(clone_10_upvw:GetChildren()) do
		if v_14:IsA("ImageButton") then
			v_14.Size = UDim2.new(0, JumpButton_upvw_2.Size.X.Offset - 16, 0, JumpButton_upvw_2.Size.Y.Offset - 16)
		end
	end
	local function var933() -- Line 2200
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: clone_10_upvw (read and write)
			[3]: JumpButton_upvw_2 (read and write)
		]]
		local var938
		if LocalPlayer_upvr:GetAttribute("S_BiggerMobile") then
			var938 *= 2 - math.clamp(LocalPlayer_upvr:GetAttribute("S_BiggerMobile"), 0.5, 3)
		end
		for _, v_15 in pairs(clone_10_upvw:GetChildren()) do
			if v_15:IsA("ImageButton") then
				v_15.Size = UDim2.new(0, JumpButton_upvw_2.Size.X.Offset - var938, 0, JumpButton_upvw_2.Size.Y.Offset - var938)
			end
		end
	end
	var933()
	LocalPlayer_upvr:GetAttributeChangedSignal("S_BiggerMobile"):Connect(var933)
	local var942 = JumpButton_upvw_2
	var942:ClearAllChildren()
	JumpButton_upvw_2 = JumpButton_upvw_2:Clone()
	local var943 = JumpButton_upvw_2
	var943.Parent = var942.Parent
	var943.Visible = true
	var942:Destroy()
	for _, v_16 in pairs(clone_10_upvw:GetChildren()) do
		v_16.Parent = var943
		local var947_upvw
	end
	clone_10_upvw = var947_upvw
	local var948 = clone_10_upvw
	local BlockButton_upvr_2 = var948.BlockButton
	local PunchButton_upvr = var948.PunchButton
	local DashButton_upvr_2 = var948.DashButton
	local ShiftLockButton_upvr = var948.ShiftLockButton
	for _, v_17 in pairs({BlockButton_upvr_2, PunchButton_upvr, DashButton_upvr_2, ShiftLockButton_upvr}) do
		Instance.new("UIScale").Parent = v_17
	end
	local var957_upvw = false
	local var958_upvw = false
	local function var959_upvr() -- Line 2245
		--[[ Upvalues[5]:
			[1]: BlockButton_upvr_2 (readonly)
			[2]: PunchButton_upvr (readonly)
			[3]: DashButton_upvr_2 (readonly)
			[4]: ShiftLockButton_upvr (readonly)
			[5]: var733_upvr (readonly)
		]]
		local tbl_71 = {}
		for _, v_18 in pairs({BlockButton_upvr_2, PunchButton_upvr, DashButton_upvr_2, ShiftLockButton_upvr}) do
			tbl_71[v_18.Name] = {v_18.Position.X.Scale, v_18.Position.X.Offset, v_18.Position.Y.Scale, v_18.Position.Y.Offset, v_18.UIScale.Scale}
			v_18.ImageColor3 = Color3.new(1, 1, 1)
		end
		var733_upvr({
			Goal = "Save Mobile Layout";
			Positions = tbl_71;
		})
	end
	local CameraInput_upvr_2 = require(LocalPlayer_upvr.PlayerScripts.PlayerModule.CameraModule.CameraInput)
	local tbl_69_upvr = {}
	Character_upvr_4:GetAttributeChangedSignal("DraggingButtons"):Connect(function() -- Line 2257
		--[[ Upvalues[10]:
			[1]: var958_upvw (read and write)
			[2]: Character_upvr_4 (readonly)
			[3]: CameraInput_upvr_2 (readonly)
			[4]: tbl_69_upvr (readonly)
			[5]: var959_upvr (readonly)
			[6]: BlockButton_upvr_2 (readonly)
			[7]: PunchButton_upvr (readonly)
			[8]: DashButton_upvr_2 (readonly)
			[9]: ShiftLockButton_upvr (readonly)
			[10]: game_service_result1_upvr_4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		var958_upvw = Character_upvr_4:GetAttribute("DraggingButtons")
		CameraInput_upvr_2.changePanState(false)
		if not var958_upvw then
			CameraInput_upvr_2.changePanState(true)
			for _, v_19 in pairs(tbl_69_upvr) do
				v_19:Disconnect()
			end
			table.clear(tbl_69_upvr)
			var959_upvr()
		else
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "NOTIFICATION";
				Text = "pinch to resize individual buttons";
				Duration = 5;
			})
			local var994_upvw = false
			local var995_upvw
			for _, v_25_upvr in pairs({BlockButton_upvr_2, PunchButton_upvr, DashButton_upvr_2, ShiftLockButton_upvr}) do
				local var1000_upvw
				local var1001_upvw
				local var1002_upvw
				local var1003_upvw
				v_25_upvr.ImageColor3 = Color3.fromRGB(85, 170, 255)
				local function _(arg1) -- Line 2290, Named "update"
					--[[ Upvalues[3]:
						[1]: var1002_upvw (read and write)
						[2]: v_25_upvr (readonly)
						[3]: var1003_upvw (read and write)
					]]
					local var1004 = arg1.Position - var1002_upvw
					v_25_upvr.Position = UDim2.new(var1003_upvw.X.Scale, var1003_upvw.X.Offset + var1004.X, var1003_upvw.Y.Scale, var1003_upvw.Y.Offset + var1004.Y)
				end
				table.insert(tbl_69_upvr, v_25_upvr.InputBegan:Connect(function(arg1) -- Line 2295
					--[[ Upvalues[6]:
						[1]: var994_upvw (read and write)
						[2]: v_25_upvr (readonly)
						[3]: var1000_upvw (read and write)
						[4]: var1002_upvw (read and write)
						[5]: var1003_upvw (read and write)
						[6]: var995_upvw (read and write)
					]]
					if var994_upvw and var994_upvw ~= v_25_upvr then
					elseif arg1.UserInputType == Enum.UserInputType.MouseButton1 or arg1.UserInputType == Enum.UserInputType.Touch then
						var1000_upvw = true
						var994_upvw = v_25_upvr
						var1002_upvw = arg1.Position
						var1003_upvw = v_25_upvr.Position
						var995_upvw = v_25_upvr.UIScale.Scale
						arg1.Changed:Connect(function() -- Line 2306
							--[[ Upvalues[4]:
								[1]: arg1 (readonly)
								[2]: var1000_upvw (copied, read and write)
								[3]: var994_upvw (copied, read and write)
								[4]: var995_upvw (copied, read and write)
							]]
							if arg1.UserInputState == Enum.UserInputState.End then
								var1000_upvw = false
								var994_upvw = nil
								var995_upvw = nil
							end
						end)
					end
				end))
				table.insert(tbl_69_upvr, v_25_upvr.InputChanged:Connect(function(arg1) -- Line 2316
					--[[ Upvalues[1]:
						[1]: var1001_upvw (read and write)
					]]
					if arg1.UserInputType == Enum.UserInputType.MouseMovement or arg1.UserInputType == Enum.UserInputType.Touch then
						var1001_upvw = arg1
					end
				end))
				table.insert(tbl_69_upvr, game_service_result1_upvr_4.InputChanged:Connect(function(arg1) -- Line 2322
					--[[ Upvalues[5]:
						[1]: var1001_upvw (read and write)
						[2]: var1000_upvw (read and write)
						[3]: var1002_upvw (read and write)
						[4]: v_25_upvr (readonly)
						[5]: var1003_upvw (read and write)
					]]
					if arg1 == var1001_upvw and var1000_upvw then
						local var1009 = arg1.Position - var1002_upvw
						v_25_upvr.Position = UDim2.new(var1003_upvw.X.Scale, var1003_upvw.X.Offset + var1009.X, var1003_upvw.Y.Scale, var1003_upvw.Y.Offset + var1009.Y)
					end
				end))
				local var1010_upvw
			end
			table.insert(tbl_69_upvr, game_service_result1_upvr_4.TouchPinch:Connect(function(arg1, arg2, arg3, arg4, arg5) -- Line 2329
				--[[ Upvalues[2]:
					[1]: var1010_upvw (read and write)
					[2]: var995_upvw (read and write)
				]]
				if not var1010_upvw then
				else
					var1010_upvw.UIScale.Scale = var995_upvw * arg2
				end
			end))
		end
	end)
	var947_upvw.ImageRectSize = Vector2.new(0, 0)
	var947_upvw.ImageRectOffset = Vector2.new(0, 0)
	var947_upvw.Image = "rbxassetid://12253837933"
	var947_upvw.MouseButton1Down:Connect(function() -- Line 2339
		--[[ Upvalues[5]:
			[1]: var958_upvw (read and write)
			[2]: var957_upvw (read and write)
			[3]: var947_upvw (read and write)
			[4]: var733_upvr (readonly)
			[5]: Humanoid_upvr_2 (readonly)
		]]
		if var958_upvw then
		else
			var957_upvw = true
			var947_upvw.Image = "rbxassetid://12253844033"
			var733_upvr({
				Goal = "KeyPress";
				Key = Enum.KeyCode.Space;
			})
			task.spawn(function() -- Line 2352
				--[[ Upvalues[2]:
					[1]: Humanoid_upvr_2 (copied, readonly)
					[2]: var957_upvw (copied, read and write)
				]]
				repeat
					task.wait()
					if 0 < Humanoid_upvr_2.JumpPower and Humanoid_upvr_2.FloorMaterial ~= Enum.Material.Air then
						Humanoid_upvr_2:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				until not var957_upvw
			end)
		end
	end)
	var947_upvw.MouseButton1Up:Connect(function() -- Line 2361
		--[[ Upvalues[4]:
			[1]: var958_upvw (read and write)
			[2]: var957_upvw (read and write)
			[3]: var947_upvw (read and write)
			[4]: var733_upvr (readonly)
		]]
		if var958_upvw then
		else
			var957_upvw = false
			var947_upvw.Image = "rbxassetid://12253837933"
			var733_upvr({
				Goal = "KeyRelease";
				Key = Enum.KeyCode.Space;
			})
		end
	end)
	DashButton_upvr_2.MouseButton1Down:Connect(function() -- Line 2375
		--[[ Upvalues[7]:
			[1]: var958_upvw (read and write)
			[2]: HumanoidRootPart_upvr (readonly)
			[3]: Humanoid_upvr_2 (readonly)
			[4]: DashButton_upvr_2 (readonly)
			[5]: Character_upvr_4 (readonly)
			[6]: var733_upvr (readonly)
			[7]: var887_upvr (readonly)
		]]
		if var958_upvw then
		else
			local var1018 = HumanoidRootPart_upvr.CFrame + Humanoid_upvr_2.MoveDirection * 15
			local CFrame_2 = HumanoidRootPart_upvr.CFrame
			local p_2 = var1018.p
			local degrees_2 = math.deg(math.acos(CFrame_2.LookVector:Dot((Vector3.new(p_2.X, CFrame_2.p.Y, p_2.Z) - CFrame_2.p).unit)))
			DashButton_upvr_2.Image = "rbxassetid://12253813495"
			if -45 < degrees_2 then
				if degrees_2 < 45 then
					-- KONSTANTWARNING: GOTO [117] #85
				end
			end
			local var1022
			if 135 < degrees_2 and degrees_2 < 215 then
				var1022 = 180
			elseif 45 <= degrees_2 and degrees_2 <= 135 then
				if (var1018.p - (HumanoidRootPart_upvr.CFrame * CFrame.new(-15, 0, 0)).p).magnitude < (var1018.p - (HumanoidRootPart_upvr.CFrame * CFrame.new(15, 0, 0)).p).magnitude then
					var1022 = 90
				else
					var1022 = -90
				end
			end
			if var1022 == 0 and Character_upvr_4:FindFirstChild("WallCombo") then
				var733_upvr({
					Goal = "Wall Combo";
				})
				return
			end
			var887_upvr(var1022)
		end
	end)
	DashButton_upvr_2.MouseButton1Up:Connect(function() -- Line 2412
		--[[ Upvalues[2]:
			[1]: var958_upvw (read and write)
			[2]: DashButton_upvr_2 (readonly)
		]]
		if var958_upvw then
		else
			DashButton_upvr_2.Image = "rbxassetid://12252434969"
		end
	end)
	PunchButton_upvr.MouseButton1Down:Connect(function() -- Line 2419
		--[[ Upvalues[4]:
			[1]: var958_upvw (read and write)
			[2]: Character_upvr_4 (readonly)
			[3]: PunchButton_upvr (readonly)
			[4]: var733_upvr (readonly)
		]]
		if var958_upvw then
		else
			PunchButton_upvr.Image = "rbxassetid://12253807149"
			var733_upvr({
				Goal = "LeftClick";
				Mobile = true;
				CrushingPull = shared.GetCrushingPullHit(Character_upvr_4:FindFirstChildOfClass("Tool"));
			})
		end
	end)
	PunchButton_upvr.MouseButton1Up:Connect(function() -- Line 2433
		--[[ Upvalues[3]:
			[1]: var958_upvw (read and write)
			[2]: PunchButton_upvr (readonly)
			[3]: var733_upvr (readonly)
		]]
		if var958_upvw then
		else
			PunchButton_upvr.Image = "rbxassetid://12252402662"
			var733_upvr({
				Goal = "LeftClickRelease";
				Mobile = true;
			})
		end
	end)
	BlockButton_upvr_2.MouseButton1Down:connect(function() -- Line 2446
		--[[ Upvalues[6]:
			[1]: var908_upvw (read and write)
			[2]: var958_upvw (read and write)
			[3]: Character_upvr_4 (readonly)
			[4]: var733_upvr (readonly)
			[5]: BlockButton_upvr_2 (readonly)
			[6]: ActionCheck_upvr (readonly)
		]]
		var908_upvw = true
		if var958_upvw then
		else
			if Character_upvr_4:FindFirstChild("DoingEmote") then
				var733_upvr({
					Goal = "CancelEmote";
				})
			end
			BlockButton_upvr_2.Image = "rbxassetid://12253793254"
			repeat
				if var908_upvw then
					if ActionCheck_upvr:Check(Character_upvr_4) and not Character_upvr_4:GetAttribute("Blocking") then
						var733_upvr({
							Goal = "KeyPress";
							Key = Enum.KeyCode.F;
						})
					end
					task.wait()
				end
			until not var908_upvw
			BlockButton_upvr_2.Image = "rbxassetid://12252418253"
		end
	end)
	BlockButton_upvr_2.MouseButton1Up:connect(function() -- Line 2475
		--[[ Upvalues[4]:
			[1]: var908_upvw (read and write)
			[2]: var958_upvw (read and write)
			[3]: BlockButton_upvr_2 (readonly)
			[4]: var733_upvr (readonly)
		]]
		var908_upvw = false
		if var958_upvw then
		else
			BlockButton_upvr_2.Image = "rbxassetid://12252418253"
			var733_upvr({
				Goal = "KeyRelease";
				Key = Enum.KeyCode.F;
			})
		end
	end)
	ShiftLockButton_upvr.MouseButton1Down:connect(function() -- Line 2489
		--[[ Upvalues[3]:
			[1]: var958_upvw (read and write)
			[2]: LocalPlayer_upvr (readonly)
			[3]: ShiftLockButton_upvr (readonly)
		]]
		local var1035
		if var958_upvw then
		else
			LocalPlayer_upvr:SetAttribute("ShiftLockOn", not LocalPlayer_upvr:GetAttribute("ShiftLockOn"))
			if ShiftLockButton_upvr.Image == "rbxassetid://79664771265271" then
				var1035 = "rbxassetid://79605996519245"
			else
				var1035 = "rbxassetid://79664771265271"
			end
			ShiftLockButton_upvr.Image = var1035
		end
	end)
	LocalPlayer_upvr:GetAttributeChangedSignal("S_ShiftLocks"):Connect(function() -- Line 2497
		--[[ Upvalues[2]:
			[1]: ShiftLockButton_upvr (readonly)
			[2]: LocalPlayer_upvr (readonly)
		]]
		ShiftLockButton_upvr.Visible = LocalPlayer_upvr:GetAttribute("S_ShiftLocks")
	end)
	ShiftLockButton_upvr.Visible = LocalPlayer_upvr:GetAttribute("S_ShiftLocks")
	if ScreenGui_2 then
		ScreenGui_2:Destroy()
		local clone_7_upvr = game.ReplicatedFirst.ScreenGui:Clone()
		clone_7_upvr.Parent = PlayerGui
		task.spawn(function() -- Line 2507
			--[[ Upvalues[1]:
				[1]: clone_7_upvr (readonly)
			]]
			local MainGUI = clone_7_upvr:FindFirstChild("MainGUI")
			if not MainGUI then
				MainGUI = clone_7_upvr:WaitForChild("MainGUI", 1)
			end
			MainGUI.Enabled = true
		end)
	end
	clone_7_upvr = var947_upvw
	local var1040 = clone_7_upvr
	shared.MobileButtons = {}
	shared.MobileSave = var959_upvr
	for _, v_20 in pairs({DashButton_upvr_2, PunchButton_upvr, BlockButton_upvr_2, ShiftLockButton_upvr}) do
		v_20.Position = var1040.Position
		var1040 = v_20
		local var1045 = var1040.Size.X.Offset + 10
		if var1040 == var947_upvw then
			var1045 = var947_upvw.Size.X.Offset
			v_20.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
		v_20.Position = UDim2.new(0.5, 0, 0.5, v_20.Position.Y.Offset - var1045)
		table.insert(shared.MobileButtons, {v_20, v_20.Position})
	end
	task.spawn(function() -- Line 2535
		--[[ Upvalues[5]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: DashButton_upvr_2 (readonly)
			[3]: PunchButton_upvr (readonly)
			[4]: BlockButton_upvr_2 (readonly)
			[5]: ShiftLockButton_upvr (readonly)
		]]
		if not LocalPlayer_upvr:GetAttribute("MobileLayout") then
			repeat
				task.wait()
			until 6 < tick() - tick() and LocalPlayer_upvr:GetAttribute("MobileLayout")
		end
		local MobileLayout = LocalPlayer_upvr:GetAttribute("MobileLayout")
		if MobileLayout and MobileLayout ~= "[]" then
			local any_JSONDecode_result1_2 = game:service("HttpService"):JSONDecode(MobileLayout)
			for _, v_21 in pairs({DashButton_upvr_2, PunchButton_upvr, BlockButton_upvr_2, ShiftLockButton_upvr}) do
				if any_JSONDecode_result1_2[v_21.Name] then
					v_21.Position = UDim2.new(any_JSONDecode_result1_2[v_21.Name][1], any_JSONDecode_result1_2[v_21.Name][2], any_JSONDecode_result1_2[v_21.Name][3], any_JSONDecode_result1_2[v_21.Name][4])
					v_21.UIScale.Scale = any_JSONDecode_result1_2[v_21.Name][5] or 1
				end
			end
		end
	end)
elseif ScreenGui_2 then
	ScreenGui_2.MagicHealth.Visible = true
end
CollectionService_upvr_2:GetInstanceAddedSignal("EmoteSync"):Connect(function(arg1) -- Line 2558
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Character_upvr_4 (readonly)
		[3]: game_service_result1_upvr_3 (readonly)
	]]
	arg1.MaxDistance = 500
	arg1.Enabled = true
	arg1.Frame.Size = UDim2.new(0, 0, 1, 0)
	local Adornee_2 = arg1.Adornee
	local Frame_2 = arg1:FindFirstChild("Frame")
	if arg1.PlayerToHideFrom == LocalPlayer_upvr then
		return game:GetService("Debris"):AddItem(arg1, 0)
	end
	while task.wait(0.075) and arg1 and arg1.Parent and arg1.Parent.Parent and Adornee_2 and Adornee_2.Parent and Adornee_2.Parent.Parent and Adornee_2.Parent.Parent.Parent do
		local PrimaryPart = Character_upvr_4.PrimaryPart
		local var1060
		if PrimaryPart and (PrimaryPart.Position - Adornee_2.Position).magnitude <= 22 then
			var1060 = true
		else
			var1060 = false
		end
		local var1061
		if nil ~= var1060 and Frame_2 then
			local var1062 = var1060
			var1061 = Enum.EasingStyle.Quad
			local tbl_49 = {}
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var1061 = UDim2.new(1, 0, 1, 0)
				return var1061
			end
			if not var1062 or not INLINED_5() then
				var1061 = UDim2.new(0, 0, 1, 0)
			end
			tbl_49.Size = var1061
			game_service_result1_upvr_3:Create(Frame_2, TweenInfo.new(0.5, var1061, Enum.EasingDirection.InOut), tbl_49):Play()
			var1061 = Enum.EasingStyle.Quad
			local tbl_41 = {}
			if var1062 then
				var1061 = 0
			else
				var1061 = 1.5
			end
			tbl_41.TextTransparency = var1061
			game_service_result1_upvr_3:Create(Frame_2.TextButton, TweenInfo.new(0.5, var1061, Enum.EasingDirection.InOut), tbl_41):Play()
		end
	end
end)
local RankedOnes_upvr_2 = workspace:GetAttribute("RankedOnes")
if RankedOnes_upvr_2 then
	local function var1066_upvw(arg1) -- Line 2608
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		local CAN = arg1:GetAttribute("CAN")
		if CAN and not string.find(CAN, LocalPlayer_upvr.UserId) then
			game:GetService("Debris"):AddItem(arg1, 0)
			arg1:Destroy()
		end
	end
	CollectionService_upvr_2:GetInstanceAddedSignal("CharacterSelection"):Connect(var1066_upvw)
	local var1069_upvw = false
	workspace:GetAttributeChangedSignal("CantSwitch"):Once(function() -- Line 2616
		--[[ Upvalues[2]:
			[1]: Character_upvr_4 (readonly)
			[2]: var1069_upvw (read and write)
		]]
		if Character_upvr_4:GetAttribute("Character") ~= "Ninja" then
		else
			var1069_upvw = true
			task.delay(0.5, function() -- Line 2621
				--[[ Upvalues[1]:
					[1]: var1069_upvw (copied, read and write)
				]]
				var1069_upvw = false
			end)
		end
	end)
	local var1072_upvw
	task.spawn(function() -- Line 2625
		--[[ Upvalues[3]:
			[1]: CollectionService_upvr_2 (readonly)
			[2]: var1066_upvw (readonly)
			[3]: var1072_upvw (read and write)
		]]
		for _, v_22 in pairs(CollectionService_upvr_2:GetTagged("CharacterSelection")) do
			var1066_upvw(v_22)
		end
		repeat
			task.wait()
		until shared.AverageFPS and 60 < tick() - tick()
		var1072_upvw = shared.AverageFPS
	end)
end
var1066_upvw = false
if Character_upvr_4:GetAttribute("Character") == "Ninja" then
	var1069_upvw = true
	task.delay(0.5, function() -- Line 2638
		--[[ Upvalues[1]:
			[1]: var1069_upvw (read and write)
		]]
		var1069_upvw = false
	end)
else
	var1069_upvw = false
end
var831_upvw = workspace.Thrown:FindFirstChild("Donation Leaderboard")
local var1079_upvw = var831_upvw
if var1079_upvw then
	var1079_upvw = var1079_upvw:FindFirstChild('a')
	if not var1079_upvw then
		var1079_upvw = nil
	end
end
local var1080_upvw = false
local tbl_15_upvr = {0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0}
local tbl_62_upvr = {165, 165, 165, 165, 165, 255, 215, 230, 255, 255, 255, 255, 255, 255, 255, 245, 230, 215, 255, 165, 165, 165, 165, 165}
local tbl_61_upvr = {255, 255, 255, 255, 255, 255, 110, 135, 255, 255, 255, 255, 255, 255, 255, 215, 135, 110, 255, 255, 255, 255, 255, 255}
task.delay(2, function() -- Line 2686
	--[[ Upvalues[1]:
		[1]: var1080_upvw (read and write)
	]]
	var1080_upvw = true
end)
local var1086_upvw = false
local var1087_upvw = false
local Aurora_upvr_2 = workspace.Thrown.Aurora
local var1089_upvw
local var1090_upvw
local const_number_5_upvw = 0
local var1092_upvw
local var1093_upvw
local var1094_upvw
local var1095_upvw
local var1096_upvw
local var1097_upvw = true
local Head_4_upvr = Character_upvr_4.Head
local NoHoldingX_upvr = workspace:GetAttribute("NoHoldingX")
local tick_result1_upvw = tick()
local tick_result1_upvw_4 = tick()
local any_GetTagged_result1_upvr = CollectionService_upvr_2:GetTagged("SingleTree")
local var1103_upvw = false
game:GetService("RunService").Heartbeat:Connect(function(arg1) -- Line 2696
	--[[ Upvalues[52]:
		[1]: var1086_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var1087_upvw (read and write)
		[4]: Aurora_upvr_2 (readonly)
		[5]: game_service_result1_upvr_3 (readonly)
		[6]: CollectionService_upvr_2 (readonly)
		[7]: var1089_upvw (read and write)
		[8]: var1090_upvw (read and write)
		[9]: var720_upvr (readonly)
		[10]: CurrentCamera_upvr (readonly)
		[11]: const_number_5_upvw (read and write)
		[12]: var733_upvr (readonly)
		[13]: var1092_upvw (read and write)
		[14]: var1093_upvw (read and write)
		[15]: var1094_upvw (read and write)
		[16]: tbl_15_upvr (readonly)
		[17]: var1095_upvw (read and write)
		[18]: tbl_62_upvr (readonly)
		[19]: var1096_upvw (read and write)
		[20]: tbl_61_upvr (readonly)
		[21]: var1079_upvw (read and write)
		[22]: HumanoidRootPart_upvr (readonly)
		[23]: var1097_upvw (read and write)
		[24]: Info_upvr_2 (readonly)
		[25]: var1080_upvw (read and write)
		[26]: Humanoid_upvr_2 (readonly)
		[27]: FindFirstChild_upvr (readonly)
		[28]: Character_upvr_4 (readonly)
		[29]: var916_upvw (read and write)
		[30]: var917_upvw (read and write)
		[31]: var918_upvw (read and write)
		[32]: var855_upvw (read and write)
		[33]: Head_4_upvr (readonly)
		[34]: Torso_4_upvr (readonly)
		[35]: var1069_upvw (read and write)
		[36]: var1066_upvw (read and write)
		[37]: var714_upvw (read and write)
		[38]: var715_upvw (read and write)
		[39]: var717_upvw (read and write)
		[40]: TouchEnabled_upvr (readonly)
		[41]: GamepadEnabled_upvr (readonly)
		[42]: NoHoldingX_upvr (readonly)
		[43]: RankedOnes_upvr_2 (readonly)
		[44]: var1072_upvw (read and write)
		[45]: tick_result1_upvw (read and write)
		[46]: S_AutoRun_upvw (read and write)
		[47]: var739_upvw (read and write)
		[48]: var829_upvw (read and write)
		[49]: var732_result1_2_upvr (readonly)
		[50]: tick_result1_upvw_4 (read and write)
		[51]: any_GetTagged_result1_upvr (readonly)
		[52]: var1103_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 206 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 206 end (CF ANALYSIS FAILED)
end)
local Total_Kills_Leaderboard_upvr = workspace:FindFirstChild("Total Kills Leaderboard")
if not Total_Kills_Leaderboard_upvr then
	Total_Kills_Leaderboard_upvr = workspace.Map:FindFirstChild("Total Kills Leaderboard")
end
local function var1105_upvr() -- Line 2979
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Total_Kills_Leaderboard_upvr (readonly)
		[3]: var883_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local tbl_27 = {}
	for i_23, v_23 in pairs(Total_Kills_Leaderboard_upvr:GetAttributes()) do
		if string.sub(i_23, 2, #i_23) == "Minimumkills" then
			table.insert(tbl_27, {i_23, v_23})
		end
	end
	table.sort(tbl_27, function(arg1, arg2) -- Line 2990
		local var1114
		if arg1[2] >= arg2[2] then
			var1114 = false
		else
			var1114 = true
		end
		return var1114
	end)
	local pairs_result1_4, pairs_result2_3, pairs_result3_15 = pairs(tbl_27)
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 43. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 43. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 38. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 38. Error Block 6 end (CF ANALYSIS FAILED)
end
Total_Kills_Leaderboard_upvr:GetAttributeChangedSignal("Update"):Connect(var1105_upvr)
LocalPlayer_upvr:GetAttributeChangedSignal("Kills"):Connect(var1105_upvr)
LocalPlayer_upvr:GetAttributeChangedSignal("CountdownRanked"):Connect(function() -- Line 3018
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: game_service_result1_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local clone_9 = game.ReplicatedStorage.Countdown:Clone()
	clone_9.Parent = LocalPlayer_upvr.PlayerGui
	shared.sfx({
		SoundId = "rbxassetid://13356393533";
		Parent = workspace;
		Name = "Countdown";
		Volume = 2;
	}):Play()
	local const_number_8 = 1
	local var1126
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var1126 = 4 - const_number_8
		return var1126
	end
	if const_number_8 == 4 or not INLINED_6() then
		var1126 = "Go"
	end
	local var1127 = clone_9[var1126]
	var1126 = var1127.Size
	var1127.Size = UDim2.new(0, 0, 0, 0)
	if const_number_8 < 4 then
		var1127.Rotation = math.random(-55, 55)
	end
	var1127.Visible = true
	var1127.ZIndex += 1
	local var1128
	if const_number_8 < 4 then
		local Back = Enum.EasingStyle.Back
		if not Back then
			-- KONSTANTERROR: [87] 61. Error Block 10 start (CF ANALYSIS FAILED)
			Back = Enum.EasingStyle.Quad
			-- KONSTANTERROR: [87] 61. Error Block 10 end (CF ANALYSIS FAILED)
		end
		game_service_result1_upvr_3:Create(var1127, TweenInfo.new(0.3, Back, Enum.EasingDirection.Out), {
			Size = var1126;
			Rotation = 0;
		}):Play()
		if const_number_8 == 4 then
			local clone_2 = var1127:Clone()
			var1128 = 0
			clone_2.Size = UDim2.new(var1128, 0, 0, 0)
			clone_2.Visible = true
			clone_2.ZIndex -= 1
			clone_2.Rotation = 0
			var1128 = 0.5
			clone_2.ImageLabel.ImageTransparency = var1128
			clone_2.Parent = var1127.Parent
			game_service_result1_upvr_3:Create(clone_2, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = var1126;
			}):Play()
			game_service_result1_upvr_3:Create(clone_2.ImageLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(2, 0, 2, 0);
				ImageTransparency = 0.9;
			}):Play()
		end
		if const_number_8 == 4 then
			var1128 = 0.625
		else
			var1128 = 1
		end
		wait(var1128)
		if const_number_8 == 4 then
			var1128 = {}
			var1128[1] = var1127
			var1128[2] = clone_2
			for _, v_24_upvr in pairs(var1128) do
				game_service_result1_upvr_3:Create(v_24_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
					Size = UDim2.new(0, 0, 0, 0);
				}):Play()
				task.delay(0.15, function() -- Line 3085
					--[[ Upvalues[1]:
						[1]: v_24_upvr (readonly)
					]]
					v_24_upvr:Destroy()
				end)
			end
		else
			var1127:Destroy()
		end
		-- KONSTANTWARNING: GOTO [40] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 61. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 61. Error Block 10 end (CF ANALYSIS FAILED)
end)
pcall(function() -- Line 3095
	--[[ Upvalues[1]:
		[1]: var1105_upvr (readonly)
	]]
	if shared.lastxd then
		shared.lastxd()
		shared.lastxd = nil
	end
	var1105_upvr()
end)
local DiedTime_2 = LocalPlayer_upvr:GetAttribute("DiedTime")
if not DiedTime_2 then
	DiedTime_2 = 0
end
if 1 <= DiedTime_2 then
	local clone_6_upvr = game.ReplicatedStorage.Resources.Vig:Clone()
	clone_6_upvr.Parent = LocalPlayer_upvr.PlayerGui.ShiftLock
	workspace:GetAttributeChangedSignal("FoundWinner"):Connect(function() -- Line 3105
		--[[ Upvalues[2]:
			[1]: game_service_result1_upvr_3 (readonly)
			[2]: clone_6_upvr (readonly)
		]]
		game_service_result1_upvr_3:Create(clone_6_upvr, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			ImageTransparency = 1;
		}):Play()
	end)
end
clone_6_upvr = task.delay
clone_6_upvr(0.1, function() -- Line 3111
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var733_upvr (readonly)
	]]
	if LocalPlayer_upvr:GetAttribute("Teammate") then
		while task.wait(0.25) do
			if 2 <= (LocalPlayer_upvr:GetAttribute("DiedTime") or 0) then
				local Hotbar_2 = LocalPlayer_upvr.PlayerGui:FindFirstChild("Hotbar")
				if Hotbar_2 then
					Hotbar_2.Enabled = false
				end
			end
			var733_upvr({
				Goal = "Camera CFrame";
				CFrame = workspace.CurrentCamera.CFrame;
			})
		end
	end
end)
clone_6_upvr = Character_upvr_4:FindFirstChild("IntroBind")
local var1147 = clone_6_upvr
if not var1147 then
	var1147 = Character_upvr_4:WaitForChild("IntroBind", 2)
end
if not var1147 then
else
	local tick_result1_upvr_3 = tick()
	task.delay(0, function() -- Line 3136
		--[[ Upvalues[1]:
			[1]: tick_result1_upvr_3 (readonly)
		]]
		if not workspace:GetAttribute("zzz") then
			workspace:SetAttribute("zzz", true)
			print("CLIENT LOADED", tick() - tick_result1_upvr_3)
		end
	end)
	if var1147 then
		repeat
			if 0 < Humanoid_upvr_2.WalkSpeed and Humanoid_upvr_2.MoveDirection ~= Vector3.new() then
				var733_upvr({
					Goal = "Disable Intro";
				})
			end
			task.wait()
		until 2.5 < tick() - tick() and not var1147.Parent
		if tostring(Character_upvr_4) == "YungCrepetics" then return end
		local ExperienceNotificationService_upvr = game:GetService("ExperienceNotificationService")
		local function _() -- Line 3158, Named "canPromptOptIn"
			--[[ Upvalues[1]:
				[1]: ExperienceNotificationService_upvr (readonly)
			]]
			local pcall_result1, pcall_result2_3 = pcall(function() -- Line 3159
				--[[ Upvalues[1]:
					[1]: ExperienceNotificationService_upvr (copied, readonly)
				]]
				return ExperienceNotificationService_upvr:CanPromptOptInAsync()
			end)
			return pcall_result1 and pcall_result2_3
		end
		local pcall_result1_3, pcall_result2 = pcall(function() -- Line 3159
			--[[ Upvalues[1]:
				[1]: ExperienceNotificationService_upvr (readonly)
			]]
			return ExperienceNotificationService_upvr:CanPromptOptInAsync()
		end)
		if pcall_result1_3 and pcall_result2 then
			local _, _ = pcall(function() -- Line 3167
				--[[ Upvalues[1]:
					[1]: ExperienceNotificationService_upvr (readonly)
				]]
				ExperienceNotificationService_upvr:PromptOptIn()
			end)
		end
	end
end
