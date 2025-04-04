-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:38
-- Luau version 6, Types version 3
-- Time taken: 0.600050 seconds

local module_upvr_3 = {}
local var2_upvw = 85
if workspace:FindFirstChild("Duel Choice") then
	var2_upvw = 37.5
end
local function var3_upvr(arg1) -- Line 11
	for _, v in pairs(arg1:GetDescendants()) do
		if v:IsA("ParticleEmitter") then
			v:Emit(v:GetAttribute("EmitCount"))
		end
	end
end
local function var9_upvr(arg1) -- Line 19
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_23, pairs_result2_114, pairs_result3_33 = pairs(arg1:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 45. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 45. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [57.6]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if nil or INLINED() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [57] #45
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x5)
		if nil or nil or nil or nil or nil then
		end
	end
	-- KONSTANTERROR: [7] 6. Error Block 22 end (CF ANALYSIS FAILED)
end
local function var13_upvr(arg1, arg2, arg3) -- Line 32
	for _, v_2 in pairs(arg1) do
		if shared.p(v_2) then
			local tbl_581 = {
				Effect = "Camshake";
			}
			tbl_581.Intensity = arg2
			tbl_581.Last = arg3 or nil
			game.ReplicatedStorage.Replication:FireClient(shared.p(v_2), tbl_581)
		end
	end
end
local function var20_upvr(arg1) -- Line 44
	local tbl_117_upvr = {-- : First try: runluau:11745: attempt to index nil with 't'

	local C0_upvr = tbl_117_upvr[2].C0
	task.spawn(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: tbl_117_upvr (readonly)
			[2]: C0_upvr (readonly)
		]]
		for _ = 1, 10 do
			tbl_117_upvr[2].C0 = C0_upvr * CFrame.new(1e-08, 0, 0)
			wait()
			tbl_117_upvr[2].C0 = C0_upvr
			task.wait(0.05)
		end
	end)
end
local function var25_upvr(arg1, arg2) -- Line 57
	for _, v_3 in pairs(arg1:GetDescendants()) do
		if v_3:IsA("ParticleEmitter") or v_3:IsA("PointLight") then
			v_3.Enabled = arg2 or false
		end
	end
end
local CollectionService_upvr_2 = game:GetService("CollectionService")
local function var31_upvr(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local SOME_4 = script.NewAssets:FindFirstChild(arg1.name)
	local char_upvr = arg1.char
	local cleanup = arg1.cleanup
	if SOME_4 then
		local tbl_894 = {}
		for _, v_4 in pairs(SOME_4.Parts:GetChildren()) do
			local var56
			if v_4:IsA("Model") then
				var56 = v_4:Clone()
				var56.Parent = char_upvr
			elseif v_4:IsA("Part") or v_4:IsA("MeshPart") or v_4:IsA("UnionOperation") then
				var56 = v_4:Clone()
				var56.Parent = char_upvr
				var56.Anchored = false
				var56.Massless = true
			end
			table.insert(tbl_894, var56)
			table.insert({}, var56)
			var56:SetAttribute("EmoteProperty", true)
			table.insert(cleanup, var56)
			CollectionService_upvr_2:AddTag(var56, "emoteendstuff"..char_upvr.Name)
		end
		for _, v_5 in pairs(SOME_4.Welds:GetChildren()) do
			local clone_334_upvr = v_5:Clone()
			clone_334_upvr:SetAttribute("EmoteProperty", true)
			table.insert(cleanup, clone_334_upvr)
			CollectionService_upvr_2:AddTag(clone_334_upvr, "emoteendstuff"..char_upvr.Name)
			spawn(function() -- Line 111
				--[[ Upvalues[2]:
					[1]: char_upvr (readonly)
					[2]: clone_334_upvr (readonly)
				]]
				for _, v_6 in pairs(char_upvr:GetDescendants()) do
					if tostring(v_6) == clone_334_upvr:GetAttribute("Parent") then
						clone_334_upvr.Parent = v_6
					end
					if tostring(v_6) == clone_334_upvr:GetAttribute("Part0") and not v_6:IsA("Model") and (v_6:IsA("Part") or v_6:IsA("MeshPart") or v_6:IsA("UnionOperation")) then
						clone_334_upvr.Part0 = v_6
					end
					if tostring(v_6) == clone_334_upvr:GetAttribute("Part1") and not v_6:IsA("Model") and (v_6:IsA("Part") or v_6:IsA("MeshPart") or v_6:IsA("UnionOperation")) then
						clone_334_upvr.Part1 = v_6
					end
				end
			end)
			table.insert(tbl_894, clone_334_upvr)
			local var67
		end
		return var67
	end
end
local function var68_upvr(arg1) -- Line 139
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local cleanup_2 = arg1.cleanup
	local object = arg1.object
	local mind = arg1.mind
	object:SetAttribute("EmoteProperty", true)
	table.insert(cleanup_2, object)
	mind.Handle = object
	local class_Motor6D_13 = object:FindFirstChildOfClass("Motor6D")
	class_Motor6D_13:SetAttribute("EmoteProperty", true)
	table.insert(cleanup_2, class_Motor6D_13)
	mind.md = class_Motor6D_13
	if tostring(object) == arg1.part1 then
		-- KONSTANTWARNING: GOTO [79] #57
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 36. Error Block 19 start (CF ANALYSIS FAILED)
	local _, _, _ = pairs(object:GetChildren())
	-- KONSTANTERROR: [51] 36. Error Block 19 end (CF ANALYSIS FAILED)
end
local tbl_381_upvr = {1839850227, 1837571829, 1845742329, 9038380332, 1839444520, 140238630247057, 9045031823, 1839312938, 1838577168, 83119347007476, 9045590571, 9112871516, 1841681029, 1837934932, 1840161104, 129084829698643, 9048376021, 1843650812, 120837088679745, 1845480621, 1839850337, 9047358509, 9048185180, 1836681160, 1846637439, 1842122622, 1842179370, 1838846993, 9047820458, 1838611838, 1846329169, 1839850227, 9048435290, 9040183974, 1839850402, 1840511111, 1842247841, 1845593645, 1842922954, 9038895603, 1839850699, 1845843249, 9045588592, 1845194026, 1841361703, 1846564205, 1837871067, 1843071445, 1841610903, 1835969978, 1837768352, 1847692872, 9038367768, 1837768517, 1841726277, 1842792928, 1845508064, 1847530262, 9042542555, 1844765268, 1842104602, 9046712764, 1842188443, 1836112668, 35930009, 9114013375, 1837226630, 9042800221, 1835904215, 1836308391, 1836019934, 1847180622, 9043379206, 9046189833, 1838868548, 1837365487, 14145625078, 1840374054, 1836256328, 9042798921, 1847479242, 1841061037, 9043916958, 1835906503, 9043851073, 1837682925, 17086479927, 9043114637, 1842190005, 9045473815, 1842247132, 1846971107, 1847362131, 9044565954, 1846628364, 1836270048, 1837711983, 1837664271, 17096893930, 1845732793, 1835443210, 1840135136, 17097078338, 1848254940, 1842892976, 1840019043, 17086664493, 1839643165, 14145620056, 9125652432, 9048378262, 1845023041, 1841647421, 9042785151, 1837322223, 1842772099, 1839181441, 9039548001, 1845910020, 1835831314, 1836402463, 9046455305, 1846943603, 1846187476, 1846012134, 1839918500, 1837904676, 1839918500, 1836253240, 9120974708, 9045623796, 9047324264, 1841573938, 9120973886, 1836640331, 1839209784, 1847174988, 1842188426, 1843699308, 1842188393, 1840489462, 13772555886, 1847840594, 9044612350, 1841609664, 9046628228, 1837528258, 9044565954, 1842190166, 1836736766, 1848269635, 9046379730, 1846079994, 1839021706, 9042719219, 1844612112, 1837911163, 1836440339, 1836860450, 1844765268, 1839270703, 1842976958, 1837644729, 1841319934, 1835606556, 9042544497, 9045395415, 1842612601, 13935204860, 9040601928, 1846808425, 1840434670}
local function var77_upvr(arg1) -- Line 349
	local var85
	for _, v_7 in pairs(arg1.Torso:GetChildren()) do
		if v_7:IsA("Motor6D") then
			var85 += 1
		end
	end
	if var85 == 5 then
		return true
	end
	return false
end
local function var86_upvr(arg1) -- Line 363
	--[[ Upvalues[1]:
		[1]: var77_upvr (readonly)
	]]
	for _, v_8 in pairs(workspace.Live:GetChildren()) do
		if tostring(v_8) ~= tostring(arg1) and v_8:FindFirstChild("Humanoid") and v_8:FindFirstChild("HumanoidRootPart") and arg1 and arg1.PrimaryPart and v_8:FindFirstChild("Humanoid").Health <= 0 and (v_8:FindFirstChild("HumanoidRootPart").Position - arg1.PrimaryPart.Position).Magnitude <= 12.5 and not v_8:FindFirstChild("KillEmoteFinished") and var77_upvr(v_8) and not v_8:FindFirstChild("DoingEmote") then
			return v_8
		end
	end
end
local CollectionService_upvr = game:GetService("CollectionService")
local function var93_upvr(arg1) -- Line 377
	--[[ Upvalues[3]:
		[1]: var2_upvw (read and write)
		[2]: tbl_381_upvr (readonly)
		[3]: CollectionService_upvr (readonly)
	]]
	arg1.Name = "EmoteSFX"
	arg1.RollOffMaxDistance = var2_upvw
	local shared_sfx_result1, shared_sfx_result2, shared_sfx_result3 = shared.sfx(arg1)
	local string_gsub_result1 = string.gsub(shared_sfx_result1.SoundId, "rbxassetid://", "")
	if string_gsub_result1 and table.find(tbl_381_upvr, tonumber(string_gsub_result1)) then
		CollectionService_upvr:AddTag(shared_sfx_result1, "EmoteMusic")
	end
	shared_sfx_result1:SetAttribute("EmoteProperty", true)
	return shared_sfx_result1, shared_sfx_result2, shared_sfx_result3
end
local function var98_upvr(arg1) -- Line 391
	local orig = arg1.orig
	local dir = arg1.dir
	local RaycastParams_new_result1 = RaycastParams.new()
	if not arg1.Whitelist and not arg1.Ignore then
	end
	RaycastParams_new_result1.FilterDescendantsInstances = {workspace.Thrown, workspace.Live}
	if arg1.Whitelist then
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
	else
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
	end
	if arg1.Blockcast then
		local workspace_Blockcast_result1 = workspace:Blockcast(orig, arg1.Blockcast, dir, RaycastParams_new_result1)
		if workspace_Blockcast_result1 then
			return workspace_Blockcast_result1.Instance, workspace_Blockcast_result1.Position, workspace_Blockcast_result1.Material, workspace_Blockcast_result1.Normal
		end
	else
		local workspace_Raycast_result1_2 = workspace:Raycast(orig, dir, RaycastParams_new_result1)
		if workspace_Raycast_result1_2 then
			return workspace_Raycast_result1_2.Instance, workspace_Raycast_result1_2.Position, workspace_Raycast_result1_2.Material, workspace_Raycast_result1_2.Normal
		end
	end
end
local function _(arg1, arg2) -- Line 418
	return math.deg(math.acos(arg1.LookVector:Dot((Vector3.new(arg2.X, arg1.p.Y, arg2.Z) - arg1.p).unit)))
end
local random_state_upvr = Random.new()
local function var107_upvr(arg1, arg2, arg3) -- Line 427
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	if not arg2 and arg1 then
		arg1 = 1
		local var108
	end
	if not arg1 and not var108 then
		var108 = 0
		local const_number = 1
	end
	if not arg3 then
		return random_state_upvr:NextNumber(var108, const_number)
	end
	return random_state_upvr:NextInteger(var108, const_number)
end
local function var110_upvr(arg1, arg2, arg3) -- Line 444
	local clone_73 = script[arg1.."Handle"]:Clone()
	clone_73:SetAttribute("EmoteProperty", true)
	table.insert(arg2, clone_73)
	local m6d_7 = clone_73.m6d
	m6d_7:SetAttribute("EmoteProperty", true)
	table.insert(arg2, m6d_7)
	m6d_7.Part1 = clone_73[arg1.."HandleMain"]
	m6d_7.Part0 = arg3[arg1.." Arm"]
	m6d_7.Parent = m6d_7.Part1
	for _, v_9 in pairs(clone_73:GetDescendants()) do
		if v_9:IsA("BasePart") then
			v_9.Color = m6d_7.Part0.Color
			if arg3:FindFirstChild("Left ArmL") then
				v_9.Color = Color3.fromRGB(49, 48, 51)
				v_9.Reflectance = 0.1
			elseif arg3:FindFirstChild("Red Gloves") then
				v_9.Color = Color3.fromRGB(145, 65, 65)
			end
		end
	end
	clone_73.Parent = arg3
	return clone_73
end
local TweenService_upvr = game:GetService("TweenService")
local VFX_upvr = require(script.VFX)
local ActionCheck_upvr = require(game.ReplicatedStorage.ActionCheck)
function module_upvr_3.Play(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 466
	--[[ Upvalues[19]:
		[1]: var13_upvr (readonly)
		[2]: var93_upvr (readonly)
		[3]: CollectionService_upvr (readonly)
		[4]: var110_upvr (readonly)
		[5]: var25_upvr (readonly)
		[6]: var3_upvr (readonly)
		[7]: var31_upvr (readonly)
		[8]: var2_upvw (read and write)
		[9]: TweenService_upvr (readonly)
		[10]: random_state_upvr (readonly)
		[11]: var68_upvr (readonly)
		[12]: var107_upvr (readonly)
		[13]: var86_upvr (readonly)
		[14]: var9_upvr (readonly)
		[15]: var98_upvr (readonly)
		[16]: VFX_upvr (readonly)
		[17]: var20_upvr (readonly)
		[18]: module_upvr_3 (readonly)
		[19]: ActionCheck_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 395 start (CF ANALYSIS FAILED)
	local any_GetPlayerFromCharacter_result1_2_upvr = game.Players:GetPlayerFromCharacter(arg2)
	local var130_upvw
	local tbl_459 = {}
	local tbl_892 = {
		Sounds = {};
		Animation = 0;
		Idle = 0;
		HideWeapon = true;
		Stun = "Slowed";
		Looped = true;
		StunAttribute = 0.65;
	}
	local function Startup(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) -- Line 494
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var130_upvw (read and write)
		]]
		if game.Players:GetPlayerFromCharacter(arg2) then
			local tbl_959 = {
				Name = "BlinkBind";
			}
			tbl_959.Parent = arg2
			local shared_cfolder_result1_4 = shared.cfolder(tbl_959)
			table.insert(arg1_2, shared_cfolder_result1_4)
			local tbl_660 = {
				Effect = "Blink Emote";
				bind = shared_cfolder_result1_4;
			}
			tbl_660.char = arg2
			game.ReplicatedStorage.Replication:FireAllClients(tbl_660)
			task.spawn(function() -- Line 508
				--[[ Upvalues[4]:
					[1]: var130_upvw (copied, read and write)
					[2]: arg1_2 (readonly)
					[3]: arg5_2 (readonly)
					[4]: arg2 (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				table.insert(arg1_2, var130_upvw(99643081415160))
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [40] 30. Error Block 10 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [40] 30. Error Block 10 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
			end)
		end
	end
	tbl_892.Startup = Startup
	tbl_459.Blink = tbl_892
	tbl_459["Aka Stance"] = {
		Sounds = {};
		Idle = 118383042869348;
		Animation = 131177495882827;
		HideWeapon = true;
		Stun = "Freeze";
		Keyframes = {
			start = function(arg1_3, arg2_3, arg3_3, arg4_3, arg5_3) -- Line 539
				--[[ Upvalues[6]:
					[1]: var13_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var93_upvr (copied, readonly)
					[4]: CollectionService_upvr (copied, readonly)
					[5]: arg5 (readonly)
					[6]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				]]
				local tbl_307 = {}
				tbl_307[1] = arg2
				var13_upvr(tbl_307, 1)
				var93_upvr({
					SoundId = "rbxassetid://91565431637142";
					Parent = arg2.Torso;
					Looped = true;
					Volume = 0.5;
				}):Play()
				for _ = 1, 2 do
					local clone_210 = script.cursedEnergy2:Clone()
					clone_210.Parent = arg2
					clone_210:SetAttribute("EmoteProperty", true)
					table.insert(arg1_3, clone_210)
					local var157 = arg5
					if not var157 then
						var157 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var157 then
							var157 = arg2
						end
					end
					CollectionService_upvr:AddTag(clone_210, "emoteendstuff"..var157.Name)
					local Weld_23 = Instance.new("Weld")
					Weld_23.Part0 = arg2["Right Arm"]
					Weld_23.Part1 = clone_210
					Weld_23.Parent = clone_210
					Weld_23.C0 = CFrame.new(0, -1, 0)
				end
			end;
		};
	}
	tbl_459["Ao Stance"] = {
		Sounds = {};
		Idle = 113201609340793;
		Animation = 104243341468337;
		HideWeapon = true;
		Stun = "Freeze";
		Keyframes = {
			start = function(arg1_4, arg2_4, arg3_4, arg4_4, arg5_4) -- Line 590
				--[[ Upvalues[6]:
					[1]: var13_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var93_upvr (copied, readonly)
					[4]: CollectionService_upvr (copied, readonly)
					[5]: arg5 (readonly)
					[6]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				]]
				local tbl_36 = {}
				tbl_36[1] = arg2
				var13_upvr(tbl_36, 1)
				var93_upvr({
					SoundId = "rbxassetid://91565431637142";
					Parent = arg2.Torso;
					Looped = true;
					Volume = 0.5;
				}):Play()
				for _ = 1, 2 do
					local clone_91 = script.cursedEnergy:Clone()
					clone_91.Parent = arg2
					clone_91:SetAttribute("EmoteProperty", true)
					table.insert(arg1_4, clone_91)
					local var169 = arg5
					if not var169 then
						var169 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var169 then
							var169 = arg2
						end
					end
					CollectionService_upvr:AddTag(clone_91, "emoteendstuff"..var169.Name)
					local Weld_18 = Instance.new("Weld")
					Weld_18.Part0 = arg2["Right Arm"]
					Weld_18.Part1 = clone_91
					Weld_18.Parent = clone_91
					Weld_18.C0 = CFrame.new(0, -1, 0)
				end
			end;
		};
	}
	tbl_459.Amplify = {
		Sounds = {};
		Animation = 106778226674700;
		HideWeapon = true;
		Stun = "Freeze";
		MeleeEffects = true;
		Keyframes = {
			first = function(arg1_5, arg2_5, arg3_5, arg4_5, arg5_5) -- Line 643
				--[[ Upvalues[5]:
					[1]: CollectionService_upvr (copied, readonly)
					[2]: arg5 (readonly)
					[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
					[4]: arg2 (readonly)
					[5]: var13_upvr (copied, readonly)
				]]
				local tbl_351_upvr = {}
				local tbl_647_upvr = {}
				local AmplifyVfx_upvr = script.AmplifyVfx
				local function var182(arg1_6, arg2_6) -- Line 650
					--[[ Upvalues[8]:
						[1]: AmplifyVfx_upvr (readonly)
						[2]: arg1_5 (readonly)
						[3]: CollectionService_upvr (copied, readonly)
						[4]: arg5 (copied, readonly)
						[5]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
						[6]: arg2 (copied, readonly)
						[7]: tbl_647_upvr (readonly)
						[8]: tbl_351_upvr (readonly)
					]]
					local clone_81 = AmplifyVfx_upvr[arg1_6]:Clone()
					clone_81.Parent = arg2_6
					game.Debris:AddItem(clone_81, 5)
					clone_81:SetAttribute("EmoteProperty", true)
					table.insert(arg1_5, clone_81)
					local var199 = arg5
					if not var199 then
						var199 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var199 then
							var199 = arg2
						end
					end
					CollectionService_upvr:AddTag(clone_81, "emoteendstuff"..var199.Name)
					local class_Motor6D_6 = clone_81:FindFirstChildOfClass("Motor6D")
					if class_Motor6D_6 then
						clone_81.CanCollide = false
						clone_81.Massless = true
						clone_81.Anchored = false
						class_Motor6D_6.Part0 = arg2_6
						class_Motor6D_6.Part1 = clone_81
					else
						clone_81.CFrame = arg2.PrimaryPart.CFrame * CFrame.new(0, 0, -2)
					end
					for _, v_10 in pairs(clone_81:GetDescendants()) do
						if v_10:IsA("ParticleEmitter") then
							v_10:Emit(v_10:GetAttribute("EmitCount"))
							if class_Motor6D_6 then
								v_10.Enabled = true
								table.insert(tbl_647_upvr, v_10)
							end
							if tostring(arg1_6) == "head" then
								table.insert(tbl_351_upvr, v_10)
							end
						end
					end
				end
				local tbl_968 = {}
				tbl_968[1] = arg2
				var13_upvr(tbl_968, 1)
				var182("arm", arg2["Right Arm"])
				var182("head", arg2.Head)
				wait(1.1)
				for _, v_11 in pairs(tbl_351_upvr) do
					v_11.Enabled = false
				end
				for _, v_12 in pairs(tbl_647_upvr) do
					v_12.Enabled = false
					game.Debris:AddItem(v_12, 1)
				end
			end;
			sec = function(arg1_7, arg2_7, arg3_6, arg4_6, arg5_6) -- Line 697
				--[[ Upvalues[5]:
					[1]: CollectionService_upvr (copied, readonly)
					[2]: arg5 (readonly)
					[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
					[4]: arg2 (readonly)
					[5]: var13_upvr (copied, readonly)
				]]
				local AmplifyVfx_upvr_2 = script.AmplifyVfx
				local function var212(arg1_8, arg2_8) -- Line 700
					--[[ Upvalues[6]:
						[1]: AmplifyVfx_upvr_2 (readonly)
						[2]: arg1_7 (readonly)
						[3]: CollectionService_upvr (copied, readonly)
						[4]: arg5 (copied, readonly)
						[5]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
						[6]: arg2 (copied, readonly)
					]]
					local clone_71 = AmplifyVfx_upvr_2[arg1_8]:Clone()
					clone_71.Parent = arg2_8
					game.Debris:AddItem(clone_71, 5)
					clone_71:SetAttribute("EmoteProperty", true)
					table.insert(arg1_7, clone_71)
					local var229 = arg5
					if not var229 then
						var229 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var229 then
							var229 = arg2
						end
					end
					CollectionService_upvr:AddTag(clone_71, "emoteendstuff"..var229.Name)
					local class_Motor6D = clone_71:FindFirstChildOfClass("Motor6D")
					if class_Motor6D then
						clone_71.CanCollide = false
						clone_71.Massless = true
						clone_71.Anchored = false
						class_Motor6D.Part0 = arg2_8
						class_Motor6D.Part1 = clone_71
					else
						clone_71.CFrame = arg2.PrimaryPart.CFrame * CFrame.new(0, 0, -2)
					end
					for _, v_13 in pairs(clone_71:GetDescendants()) do
						if v_13:IsA("ParticleEmitter") then
							v_13:Emit(v_13:GetAttribute("EmitCount"))
							if class_Motor6D then
								v_13.Enabled = true
							end
						end
					end
				end
				local tbl_863 = {}
				tbl_863[1] = arg2
				var13_upvr(tbl_863, 3)
				var212("arm2", arg2["Left Arm"])
				var212("auraoff", arg2["Left Arm"])
				local tbl_671 = {}
				tbl_671.Char = arg2
				tbl_671.Effect = "Amplify"
				tbl_671.time = 30
				shared.MeleeEffects(tbl_671)
			end;
		};
	}
	tbl_459["Beneath Me"] = {
		Sounds = {};
		Animation = 134934729128196;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local tbl_772 = {
		Sounds = {};
		Animation = 111810635064735;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local function Startup(arg1_9, arg2_9, arg3_7) -- Line 770
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_315 = script.Present:Clone()
		clone_315:SetAttribute("EmoteProperty", true)
		table.insert(arg1_9, clone_315)
		arg3_7.Handle = clone_315
		local MasterM = clone_315.MasterM
		MasterM:SetAttribute("EmoteProperty", true)
		table.insert(arg1_9, MasterM)
		arg3_7.md = MasterM
		MasterM.Part0 = arg2.PrimaryPart
		MasterM.Name = "Master"
		MasterM.Part1 = clone_315.Master
		MasterM.Parent = arg2.PrimaryPart
		clone_315.Parent = arg2.PrimaryPart
		var93_upvr({
			SoundId = "rbxassetid://113981806904179";
			Parent = clone_315.Master.Top;
			Volume = 2;
		}):Play()
	end
	tbl_772.Startup = Startup
	tbl_459["Boxed Up"] = tbl_772
	local tbl_555 = {
		Sounds = {};
		Animation = 129295156336675;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local function Startup(arg1_10, arg2_10, arg3_8) -- Line 874
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local function _(arg1_12) -- Line 875
			--[[ Upvalues[5]:
				[1]: arg1_10 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_12:SetAttribute("EmoteProperty", true)
			table.insert(arg1_10, arg1_12)
			local var293 = arg5
			if not var293 then
				var293 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var293 then
					var293 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_12, "emoteendstuff"..var293.Name)
		end
		for _ = 1, 2 do
			local tbl_950 = {}
			local var298
			for _, v_14 in pairs(script.Ruthless.Part:GetChildren()) do
				local clone_277 = v_14:Clone()
				clone_277:SetAttribute("EmoteProperty", true)
				table.insert(arg1_10, clone_277)
				local var300 = arg5
				if not var300 then
					var300 = any_GetPlayerFromCharacter_result1_2_upvr
					if not var300 then
						var300 = arg2
					end
				end
				CollectionService_upvr:AddTag(clone_277, "emoteendstuff"..var300.Name)
				clone_277.Parent = arg2["Right Arm"]
				if clone_277:FindFirstChildOfClass("Trail") then
				end
				if tostring(clone_277):find('1') then
				else
				end
				tbl_950[2] = clone_277
			end
			for _, v_15 in pairs(nil:GetChildren()) do
				v_15.Attachment0 = tbl_950[1]
				v_15.Attachment1 = tbl_950[2]
			end
		end
	end
	tbl_555.Startup = Startup
	tbl_459.Ruthless = tbl_555
	tbl_459.Weak = {
		Sounds = {};
		Animation = 93125757361125;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	tbl_459["Energy Barrage"] = {
		Sounds = {};
		Animation = 101680746241828;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local tbl_533 = {
		Sounds = {};
		Animation = 139229122563753;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local function Startup(arg1_13, arg2_11, arg3_9) -- Line 952
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_533.Startup = Startup
	tbl_459.Insect = tbl_533
	tbl_459["Dragon Combo"] = {
		Sounds = {};
		Animation = 136363608783208;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local tbl_490 = {
		Sounds = {};
		Animation = 77053316619185;
		HideWeapon = true;
		Stun = "Freeze";
		KillEmote = true;
	}
	local function Startup(arg1_14, arg2_12, arg3_10) -- Line 989
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local clone_143 = script.bookHeart:Clone()
		clone_143:SetAttribute("EmoteProperty", true)
		table.insert(arg1_14, clone_143)
		local Book_BinderM = clone_143["Book BinderM"]
		Book_BinderM:SetAttribute("EmoteProperty", true)
		table.insert(arg1_14, Book_BinderM)
		arg3_10.md = Book_BinderM
		Book_BinderM.Part0 = arg2["Left Arm"]
		Book_BinderM.Part1 = clone_143["Book Binder"]
		Book_BinderM.Parent = arg2["Left Arm"]
		clone_143.Parent = arg2
		Book_BinderM.Name = "Book Binder"
	end
	tbl_490.Startup = Startup
	tbl_459["Heart Strike"] = tbl_490
	local tbl_694 = {
		Sounds = {};
	}
	local function Startup(arg1_15, arg2_13, arg3_11) -- Line 1015
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg5 (readonly)
			[4]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		local Wipe = script.Wipe
		local clone_280 = Wipe.Glasses:Clone()
		clone_280.Parent = arg2.Head
		local class_Motor6D_24 = clone_280:FindFirstChildOfClass("Motor6D")
		class_Motor6D_24.Part0 = arg2.Head
		class_Motor6D_24.Part1 = clone_280
		class_Motor6D_24.Parent = arg2.Head
		local clone_125 = Wipe["forget device"]:Clone()
		clone_125.Parent = arg2
		local Mm_2 = clone_125.Mm
		Mm_2.Part0 = arg2["Right Arm"]
		Mm_2.Part1 = clone_125["memory stick"]
		Mm_2.Parent = arg2["Right Arm"]
		Mm_2.Name = "memory stick"
		for _, v_16 in pairs({clone_280, class_Motor6D_24, Mm_2, clone_125}) do
			v_16:SetAttribute("EmoteProperty", true)
			table.insert(arg1_15, v_16)
			local var351 = arg5
			if not var351 then
				var351 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var351 then
					var351 = arg2
				end
			end
			CollectionService_upvr:AddTag(v_16, "emoteendstuff"..var351.Name)
		end
	end
	tbl_694.Startup = Startup
	tbl_694.Animation = 101859186770986
	tbl_694.HideWeapon = true
	tbl_694.Stun = "Freeze"
	tbl_694.KillEmote = true
	tbl_459.Wipe = tbl_694
	local tbl_359 = {
		Sounds = {};
	}
	local function Startup(arg1_16, arg2_14, arg3_12) -- Line 1054
	end
	tbl_359.Startup = Startup
	tbl_359.Animation = 109608173870373
	tbl_359.HideWeapon = true
	tbl_359.Stun = "Freeze"
	tbl_359.KillEmote = true
	tbl_459.Telekinesis = tbl_359
	local tbl_271 = {
		Sounds = {};
	}
	local function Startup(arg1_17, arg2_15, arg3_13) -- Line 1071
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://78462595468736";
			Parent = arg2.Torso;
			Volume = 2;
		}):Play()
		local var93_upvr_result1_11 = var93_upvr({
			SoundId = "rbxassetid://93204259658665";
			CFrame = arg2.PrimaryPart.CFrame * CFrame.new(-0.591, 1, 8.396);
			Volume = 2;
		})
		var93_upvr_result1_11:Play()
		table.insert(arg1_17, var93_upvr_result1_11)
	end
	tbl_271.Startup = Startup
	tbl_271.Animation = 80293430011221
	tbl_271.HideWeapon = true
	tbl_271.Stun = "Freeze"
	tbl_271.KillEmote = true
	tbl_459["Fly High"] = tbl_271
	local tbl_511 = {
		Sounds = {};
	}
	local function Startup(arg1_18, arg2_16, arg3_14) -- Line 1099
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local var93_upvr_result1_12 = var93_upvr({
			SoundId = "rbxassetid://133870782945226";
			Volume = 2;
			Parent = arg2["Right Arm"];
		})
		var93_upvr_result1_12:Play()
		table.insert(arg1_18, var93_upvr_result1_12)
	end
	tbl_511.Startup = Startup
	tbl_511.Animation = 140145728452253
	tbl_511.HideWeapon = true
	tbl_511.Stun = "Freeze"
	tbl_511.KillEmote = true
	tbl_459["Sure Hit"] = tbl_511
	local tbl_458 = {
		Sounds = {};
	}
	local function Startup(arg1_19, arg2_17, arg3_15) -- Line 1126
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_69 = script.BanHammer:Clone()
		clone_69:SetAttribute("EmoteProperty", true)
		table.insert(arg1_19, clone_69)
		local var371 = arg5
		if not var371 then
			var371 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var371 then
				var371 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_69, "emoteendstuff"..var371.Name)
		local class_Motor6D_8 = clone_69:FindFirstChildOfClass("Motor6D")
		class_Motor6D_8:SetAttribute("EmoteProperty", true)
		table.insert(arg1_19, class_Motor6D_8)
		local var373 = arg5
		if not var373 then
			var373 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var373 then
				var373 = arg2
			end
		end
		CollectionService_upvr:AddTag(class_Motor6D_8, "emoteendstuff"..var373.Name)
		local Right_Arm_3 = arg2["Right Arm"]
		class_Motor6D_8.Part0 = Right_Arm_3
		class_Motor6D_8.Part1 = clone_69
		class_Motor6D_8.Parent = Right_Arm_3
		clone_69.Parent = arg2["Right Arm"]
		class_Motor6D_8.Parent = arg2["Right Arm"]
		clone_69.Name = "Handle"
	end
	tbl_458.Startup = Startup
	tbl_458.Animation = 71063727733290
	tbl_458.HideWeapon = true
	tbl_458.Stun = "Freeze"
	tbl_458.KillEmote = true
	tbl_459["Ban Hammer"] = tbl_458
	local tbl_653 = {
		Sounds = {};
		Keyframes = {
			stop = function() -- Line 1171
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var25_upvr (copied, readonly)
				]]
				for _, v_17 in pairs(arg2.PrimaryPart:GetChildren()) do
					if v_17:GetAttribute("Wolf") then
						var25_upvr(v_17)
					end
				end
			end;
			clang = function() -- Line 1179
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var3_upvr (copied, readonly)
				]]
				if not arg2:FindFirstChild("Sparks2") then
					local clone_337 = script.BadWolf.Sparks2:Clone()
					clone_337.Parent = arg2
					local class_Motor6D_4 = clone_337:FindFirstChildOfClass("Motor6D")
					class_Motor6D_4.Part0 = arg2.PrimaryPart
					class_Motor6D_4.Part1 = clone_337
					class_Motor6D_4.Parent = arg2.PrimaryPart
				end
				var3_upvr(clone_337)
			end;
			restart = function() -- Line 1196
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var25_upvr (copied, readonly)
				]]
				for _, v_18 in pairs(arg2.PrimaryPart:GetChildren()) do
					if v_18:GetAttribute("Wolf") then
						var25_upvr(v_18, true)
					end
				end
			end;
		};
	}
	local function Startup(arg1_20, arg2_18, arg3_16) -- Line 1205
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local function _(arg1_21) -- Line 1206
			--[[ Upvalues[5]:
				[1]: arg1_20 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_21:SetAttribute("EmoteProperty", true)
			table.insert(arg1_20, arg1_21)
			local var395 = arg5
			if not var395 then
				var395 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var395 then
					var395 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_21, "emoteendstuff"..var395.Name)
			arg1_21.Parent = arg2
		end
		local BadWolf = script.BadWolf
		local function var397(arg1_22) -- Line 1212
			--[[ Upvalues[5]:
				[1]: arg1_20 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			for _, v_19 in pairs(arg1_22.things) do
				local clone_243 = v_19:Clone()
				clone_243:SetAttribute("EmoteProperty", true)
				table.insert(arg1_20, clone_243)
				local var423 = arg5
				if not var423 then
					var423 = any_GetPlayerFromCharacter_result1_2_upvr
					if not var423 then
						var423 = arg2
					end
				end
				CollectionService_upvr:AddTag(clone_243, "emoteendstuff"..var423.Name)
				clone_243.Parent = arg2
				local class_Motor6D_27 = clone_243:FindFirstChildOfClass("Motor6D")
				class_Motor6D_27:SetAttribute("EmoteProperty", true)
				table.insert(arg1_20, class_Motor6D_27)
				local var425 = arg5
				if not var425 then
					var425 = any_GetPlayerFromCharacter_result1_2_upvr
					if not var425 then
						var425 = arg2
					end
				end
				CollectionService_upvr:AddTag(class_Motor6D_27, "emoteendstuff"..var425.Name)
				if v_19.Name == arg1_22.Left then
				end
				if arg1_22.Parent then
					local Parent_2 = arg1_22.Parent
				end
				class_Motor6D_27.Part0 = Parent_2
				class_Motor6D_27.Part1 = clone_243
				class_Motor6D_27.Parent = Parent_2
				local Parent_3 = arg1_22.Parent
				if not Parent_3 then
					Parent_3 = arg2
				end
				clone_243.Parent = Parent_3
				if arg1_22.set then
					clone_243:SetAttribute("Wolf", true)
				end
			end
		end
		var397({
			things = {BadWolf.HandleL, BadWolf.HandleR};
			Left = "HandleL";
		})
		var397({
			things = {BadWolf.Left, BadWolf.Right};
			Left = "Left";
			Parent = arg2.PrimaryPart;
			set = true;
		})
	end
	tbl_653.Startup = Startup
	tbl_653.Animation = 138819926694160
	tbl_653.HideWeapon = true
	tbl_653.Stun = "Slowed"
	tbl_653.Looped = true
	tbl_653.Infinite = true
	tbl_653.DontDisconnectMarkers = true
	tbl_459.Death = tbl_653
	local tbl_77 = {
		Sounds = {};
		Keyframes = {
			floorhit = function() -- Line 1265
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				-- KONSTANTERROR: Failed to generate AST for unnamed function:
runluau:8223: assertion failed!
Traceback:
runluau:8223 function gen_condition
runluau:8163 function gen_from_hl_block
runluau:8131 function gen_from_hl_block
runluau:8131 function gen_from_hl_block
runluau:8340 function astgen
runluau:8357 function astgen_protected
runluau:4639 function expr_function
runluau:7714 function NEWCLOSURE
runluau:7954 function gen_from_insts
runluau:8053 function gen_from_hl_block
runluau:8228 function gen_condition
runluau:8163 function gen_from_hl_block
runluau:8131 function gen_from_hl_block
runluau:8131 function gen_from_hl_block
runluau:8340 function astgen
runluau:8357 function astgen_protected
runluau:4639 function expr_function
runluau:7714 function NEWCLOSURE
runluau:7954 function gen_from_insts
runluau:8053 function gen_from_hl_block
runluau:8131 function gen_from_hl_block
runluau:8340 function astgen
runluau:8357 function astgen_protected
runluau:8418 function decompile_bytecode
runluau:11983 function wrapped
runluau:11991
runluau:12015 function _decompile
runluau:12181 function decompile
runluau:12377

			end;
			touchfloor = function() -- Line 1297
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var3_upvr (copied, readonly)
				]]
				local ClashVFX = arg2.PrimaryPart:FindFirstChild("ClashVFX")
				if ClashVFX then
					var3_upvr(ClashVFX)
				end
			end;
		};
	}
	local function Startup(arg1_24, arg2_19, arg3_17) -- Line 1306
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local function _(arg1_26) -- Line 1307
			--[[ Upvalues[5]:
				[1]: arg1_24 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_26:SetAttribute("EmoteProperty", true)
			table.insert(arg1_24, arg1_26)
			local var487 = arg5
			if not var487 then
				var487 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var487 then
					var487 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_26, "emoteendstuff"..var487.Name)
		end
		local BladesOfJade = script.BladesOfJade
		for _, v_20 in pairs(BladesOfJade.Attach:GetChildren()) do
			local clone_269 = v_20:Clone()
			clone_269.Parent = arg2.Head
			clone_269:SetAttribute("EmoteProperty", true)
			table.insert(arg1_24, clone_269)
			local var493 = arg5
			if not var493 then
				var493 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var493 then
					var493 = arg2
				end
			end
			CollectionService_upvr:AddTag(clone_269, "emoteendstuff"..var493.Name)
		end
		for _, v_21 in pairs({BladesOfJade.JadeL, BladesOfJade.JadeR}) do
			local clone_259 = v_21:Clone()
			clone_259:SetAttribute("EmoteProperty", true)
			table.insert(arg1_24, clone_259)
			var493 = arg5
			local var499 = var493
			if not var499 then
				var499 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var499 then
					var499 = arg2
				end
			end
			CollectionService_upvr:AddTag(clone_259, "emoteendstuff"..var499.Name)
			local class_Motor6D_29 = clone_259:FindFirstChildOfClass("Motor6D")
			class_Motor6D_29:SetAttribute("EmoteProperty", true)
			table.insert(arg1_24, class_Motor6D_29)
			local var501 = arg5
			if not var501 then
				var501 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var501 then
					var501 = arg2
				end
			end
			CollectionService_upvr:AddTag(class_Motor6D_29, "emoteendstuff"..var501.Name)
			local Right_Arm_2 = arg2["Right Arm"]
			if v_21.Name == "JadeL" then
				Right_Arm_2 = arg2["Left Arm"]
			end
			class_Motor6D_29.Part0 = Right_Arm_2
			class_Motor6D_29.Part1 = clone_259.ChainPart1
			class_Motor6D_29.Parent = Right_Arm_2
			clone_259.Parent = arg2
			class_Motor6D_29.Name = "ChainPart1"
		end
		local clone_57 = BladesOfJade.Part.ClashVFX:Clone()
		clone_57.Parent = arg2.PrimaryPart
		clone_57:SetAttribute("EmoteProperty", true)
		table.insert(arg1_24, clone_57)
		Right_Arm_2 = arg5
		local var504 = Right_Arm_2
		if not var504 then
			var504 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var504 then
				var504 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_57, "emoteendstuff"..var504.Name)
	end
	tbl_77.Startup = Startup
	tbl_77.Animation = 121440687354239
	tbl_77.HideWeapon = true
	tbl_77.Stun = "Slowed"
	tbl_77.Looped = true
	tbl_77.Infinite = true
	tbl_77.DontDisconnectMarkers = true
	tbl_459["Blades Of Jade"] = tbl_77
	local tbl_1010 = {
		Sounds = {};
	}
	local function Startup(arg1_27, arg2_20, arg3_18) -- Line 1364
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		for _, v_22 in pairs({script.Circle1, script.Circle2}) do
			local clone_156 = v_22:Clone()
			clone_156:SetAttribute("EmoteProperty", true)
			table.insert(arg1_27, clone_156)
			local var530 = arg5
			if not var530 then
				var530 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var530 then
					var530 = arg2
				end
			end
			CollectionService_upvr:AddTag(clone_156, "emoteendstuff"..var530.Name)
			local class_Motor6D_30 = clone_156:FindFirstChildOfClass("Motor6D")
			class_Motor6D_30:SetAttribute("EmoteProperty", true)
			table.insert(arg1_27, class_Motor6D_30)
			local var532 = arg5
			if not var532 then
				var532 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var532 then
					var532 = arg2
				end
			end
			CollectionService_upvr:AddTag(class_Motor6D_30, "emoteendstuff"..var532.Name)
			local Right_Arm_5 = arg2["Right Arm"]
			if v_22.Name == "Circle2" then
				Right_Arm_5 = arg2["Left Arm"]
			end
			class_Motor6D_30.Part0 = Right_Arm_5
			class_Motor6D_30.Part1 = clone_156
			class_Motor6D_30.Parent = Right_Arm_5
			clone_156.Parent = arg2
		end
	end
	tbl_1010.Startup = Startup
	tbl_1010.Animation = 81416134930511
	tbl_1010.HideWeapon = true
	tbl_1010.Stun = "Slowed"
	tbl_1010.Looped = true
	tbl_459["Cymbal Walk"] = tbl_1010
	local tbl_306 = {
		Sounds = {};
	}
	local function Startup(arg1_28, arg2_21, arg3_19) -- Line 1401
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		for _, v_23 in pairs({script.Circle1, script.Circle2}) do
			local clone_112 = v_23:Clone()
			clone_112:SetAttribute("EmoteProperty", true)
			table.insert(arg1_28, clone_112)
			local var546 = arg5
			if not var546 then
				var546 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var546 then
					var546 = arg2
				end
			end
			CollectionService_upvr:AddTag(clone_112, "emoteendstuff"..var546.Name)
			local class_Motor6D_11 = clone_112:FindFirstChildOfClass("Motor6D")
			class_Motor6D_11:SetAttribute("EmoteProperty", true)
			table.insert(arg1_28, class_Motor6D_11)
			local var548 = arg5
			if not var548 then
				var548 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var548 then
					var548 = arg2
				end
			end
			CollectionService_upvr:AddTag(class_Motor6D_11, "emoteendstuff"..var548.Name)
			local Right_Arm_6 = arg2["Right Arm"]
			if v_23.Name == "Circle2" then
				Right_Arm_6 = arg2["Left Arm"]
			end
			class_Motor6D_11.Part0 = Right_Arm_6
			class_Motor6D_11.Part1 = clone_112
			class_Motor6D_11.Parent = Right_Arm_6
			clone_112.Parent = arg2
		end
	end
	tbl_306.Startup = Startup
	tbl_306.Animation = 95156811398036
	tbl_306.HideWeapon = true
	tbl_306.Stun = "Freeze"
	tbl_459.Cymbals = tbl_306
	local tbl_947 = {
		Sounds = {};
	}
	local function Startup(arg1_29, arg2_22, arg3_20) -- Line 1437
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_54 = script.WalkieTalkie:Clone()
		clone_54:SetAttribute("EmoteProperty", true)
		table.insert(arg1_29, clone_54)
		local var558 = arg5
		if not var558 then
			var558 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var558 then
				var558 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_54, "emoteendstuff"..var558.Name)
		local Motor6D_3 = clone_54.Motor6D
		Motor6D_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_29, Motor6D_3)
		local var560 = arg5
		if not var560 then
			var560 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var560 then
				var560 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor6D_3, "emoteendstuff"..var560.Name)
		clone_54.Name = "Handle"
		Motor6D_3.Part0 = arg2["Left Arm"]
		Motor6D_3.Part1 = clone_54
		Motor6D_3.Parent = arg2.PrimaryPart
		clone_54.Parent = arg2.PrimaryPart
	end
	tbl_947.Startup = Startup
	tbl_947.Animation = 102938209711074
	tbl_947.HideWeapon = true
	tbl_947.Stun = "Slowed"
	tbl_459["Send Backup"] = tbl_947
	local tbl_808 = {
		Sounds = {};
	}
	local function Startup(arg1_30, arg2_23, arg3_21) -- Line 1468
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_26 = script.chalice:Clone()
		clone_26:SetAttribute("EmoteProperty", true)
		table.insert(arg1_30, clone_26)
		local var565 = arg5
		if not var565 then
			var565 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var565 then
				var565 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_26, "emoteendstuff"..var565.Name)
		local Motor = clone_26.Motor
		Motor:SetAttribute("EmoteProperty", true)
		table.insert(arg1_30, Motor)
		local var567 = arg5
		if not var567 then
			var567 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var567 then
				var567 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor, "emoteendstuff"..var567.Name)
		Motor.Part0 = arg2["Left Arm"]
		Motor.Part1 = clone_26.Handle
		Motor.Parent = arg2["Left Arm"]
		Motor.Name = "Handle"
		clone_26.Parent = arg2
	end
	tbl_808.Startup = Startup
	tbl_808.Idle = 108719443641457
	tbl_808.Animation = 102159604911972
	tbl_808.HideWeapon = true
	tbl_808.Stun = "Freeze"
	tbl_808.Looped = true
	tbl_459["Chalice Play"] = tbl_808
	local tbl_476 = {
		Sounds = {};
	}
	local function Startup(arg1_31, arg2_24, arg3_22) -- Line 1499
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_311 = script.Maniac.MeshPart:Clone()
		clone_311:SetAttribute("EmoteProperty", true)
		table.insert(arg1_31, clone_311)
		local var576 = arg5
		if not var576 then
			var576 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var576 then
				var576 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_311, "emoteendstuff"..var576.Name)
		local Motor_3 = clone_311.Motor
		Motor_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_31, Motor_3)
		local var578 = arg5
		if not var578 then
			var578 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var578 then
				var578 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor_3, "emoteendstuff"..var578.Name)
		Motor_3.Part0 = arg2["Right Arm"]
		Motor_3.Part1 = clone_311.Handle
		Motor_3.Parent = arg2["Right Arm"]
		Motor_3.Name = "Handle"
		clone_311.Parent = arg2
	end
	tbl_476.Startup = Startup
	tbl_476.Idle = 102174454129081
	tbl_476.Animation = 110359958284400
	tbl_476.HideWeapon = true
	tbl_476.Stun = "Freeze"
	tbl_459["By My Sword"] = tbl_476
	tbl_459["Begone!"] = {
		Sounds = {};
		Animation = 134823032473116;
		Stun = "Slowed";
		HideWeapon = true;
	}
	tbl_459.Flight = {
		Sounds = {};
		Animation = 78547941116306;
		Stun = "Slowed";
		StunAttribute = 0.7;
		HideWeapon = true;
		Looped = true;
	}
	local tbl_393 = {
		Sounds = {};
	}
	local function Startup(arg1_32, arg2_25, arg3_23) -- Line 1566
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_393.Startup = Startup
	tbl_393.Animation = 133225663180459
	tbl_393.Stun = "Slowed"
	tbl_393.StunAttribute = 1
	tbl_393.HideWeapon = true
	tbl_393.Looped = true
	tbl_459["Doodle Dance"] = tbl_393
	local tbl_352 = {
		Sounds = {};
	}
	local function Startup(arg1_33, arg2_26, arg3_24) -- Line 1589
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_352.Startup = Startup
	tbl_352.Animation = 139039401196042
	tbl_352.Stun = "Slowed"
	tbl_352.StunAttribute = 1
	tbl_352.HideWeapon = true
	tbl_459["Foul Smell"] = tbl_352
	local tbl_217 = {
		Sounds = {};
	}
	local function Startup(arg1_34, arg2_27, arg3_25) -- Line 1632
		--[[ Upvalues[5]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var110_upvr (copied, readonly)
		]]
		local clone_213 = script.PhoneBeQuiet:Clone()
		clone_213:SetAttribute("EmoteProperty", true)
		table.insert(arg1_34, clone_213)
		local var595 = arg5
		if not var595 then
			var595 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var595 then
				var595 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_213, "emoteendstuff"..var595.Name)
		local PlaneMotor = clone_213.PlaneMotor
		PlaneMotor:SetAttribute("EmoteProperty", true)
		table.insert(arg1_34, PlaneMotor)
		local var597 = arg5
		if not var597 then
			var597 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var597 then
				var597 = arg2
			end
		end
		CollectionService_upvr:AddTag(PlaneMotor, "emoteendstuff"..var597.Name)
		PlaneMotor.Part0 = arg2["Right Arm"]
		PlaneMotor.Part1 = clone_213.Plane
		PlaneMotor.Parent = arg2["Right Arm"]
		PlaneMotor.Name = "Plane"
		clone_213.Parent = arg2
	end
	tbl_217.Startup = Startup
	tbl_217.Animation = 104651529417410
	tbl_217.Stun = "Freeze"
	tbl_217.HideWeapon = true
	tbl_459["Be Quiet"] = tbl_217
	local tbl_1131 = {
		Sounds = {};
	}
	local function Startup(arg1_35, arg2_28, arg3_26) -- Line 1668
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1131.Startup = Startup
	tbl_1131.Animation = 102201408849991
	tbl_1131.Stun = "Freeze"
	tbl_1131.HideWeapon = true
	tbl_459["Not Human"] = tbl_1131
	local tbl_127 = {
		Sounds = {};
	}
	local function Startup(arg1_36, arg2_29, arg3_27) -- Line 1687
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_4 = script.Torch:Clone()
		clone_4:SetAttribute("EmoteProperty", true)
		table.insert(arg1_36, clone_4)
		local var605 = arg5
		if not var605 then
			var605 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var605 then
				var605 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_4, "emoteendstuff"..var605.Name)
		local Handle_46 = clone_4.Handle
		Handle_46:SetAttribute("EmoteProperty", true)
		table.insert(arg1_36, Handle_46)
		local var607 = arg5
		if not var607 then
			var607 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var607 then
				var607 = arg2
			end
		end
		CollectionService_upvr:AddTag(Handle_46, "emoteendstuff"..var607.Name)
		Handle_46.Part0 = arg2["Right Arm"]
		Handle_46.Part1 = clone_4
		Handle_46.Parent = arg2["Right Arm"]
		clone_4.Parent = arg2
	end
	tbl_127.Startup = Startup
	tbl_127.Animation = 94311488918867
	tbl_127.HideWeapon = true
	tbl_127.Stun = "Slowed"
	tbl_127.StunAttribute = 1.5
	tbl_127.Looped = true
	tbl_459.Torch = tbl_127
	local tbl_138 = {
		Sounds = {};
	}
	local function Startup(arg1_37, arg2_30, arg3_28) -- Line 1717
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_88 = script.pitchfork:Clone()
		clone_88:SetAttribute("EmoteProperty", true)
		table.insert(arg1_37, clone_88)
		local var612 = arg5
		if not var612 then
			var612 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var612 then
				var612 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_88, "emoteendstuff"..var612.Name)
		local pitchfork = clone_88.pitchfork
		pitchfork:SetAttribute("EmoteProperty", true)
		table.insert(arg1_37, pitchfork)
		local var614 = arg5
		if not var614 then
			var614 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var614 then
				var614 = arg2
			end
		end
		CollectionService_upvr:AddTag(pitchfork, "emoteendstuff"..var614.Name)
		pitchfork.Part0 = arg2["Left Arm"]
		pitchfork.Part1 = clone_88
		pitchfork.Parent = arg2["Left Arm"]
		clone_88.Parent = arg2
	end
	tbl_138.Startup = Startup
	tbl_138.Animation = 84608123283347
	tbl_138.HideWeapon = true
	tbl_138.Stun = "Slowed"
	tbl_138.Looped = true
	tbl_459["Pitchfork Protest!"] = tbl_138
	local tbl_23 = {
		Sounds = {};
	}
	local function Startup(arg1_38, arg2_31, arg3_29) -- Line 1748
		--[[ Upvalues[2]:
			[1]: var31_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local tbl_989 = {
			name = "Witch Flight";
		}
		tbl_989.char = arg2
		tbl_989.cleanup = arg1_38
		var31_upvr(tbl_989)
	end
	tbl_23.Startup = Startup
	tbl_23.Animation = 84303828924826
	tbl_23.HideWeapon = true
	tbl_23.Stun = "Slowed"
	tbl_23.Looped = true
	tbl_23.StunAttribute = 0.9
	tbl_459.Broomstick = tbl_23
	local tbl_689 = {
		Sounds = {};
	}
	local function Startup(arg1_39, arg2_32, arg3_30) -- Line 1772
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_207 = script.signkj:Clone()
		clone_207:SetAttribute("EmoteProperty", true)
		table.insert(arg1_39, clone_207)
		local var623 = arg5
		if not var623 then
			var623 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var623 then
				var623 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_207, "emoteendstuff"..var623.Name)
		local sign_2 = clone_207.sign
		sign_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_39, sign_2)
		local var625 = arg5
		if not var625 then
			var625 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var625 then
				var625 = arg2
			end
		end
		CollectionService_upvr:AddTag(sign_2, "emoteendstuff"..var625.Name)
		clone_207.Name = "sign"
		sign_2.Part0 = arg2["Right Arm"]
		sign_2.Part1 = clone_207
		sign_2.Parent = arg2["Right Arm"]
		clone_207.Parent = arg2
	end
	tbl_689.Startup = Startup
	tbl_689.Animation = 131920426725963
	tbl_689.HideWeapon = true
	tbl_689.Stun = "Slowed"
	tbl_689.Looped = true
	tbl_459["We want KJ!"] = tbl_689
	local tbl_440 = {
		Sounds = {};
	}
	local function Startup(arg1_40, arg2_33, arg3_31) -- Line 1803
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_110 = script.Lamp:Clone()
		clone_110:SetAttribute("EmoteProperty", true)
		table.insert(arg1_40, clone_110)
		local var630 = arg5
		if not var630 then
			var630 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var630 then
				var630 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_110, "emoteendstuff"..var630.Name)
		local lampheadm = clone_110.lampheadm
		lampheadm:SetAttribute("EmoteProperty", true)
		table.insert(arg1_40, lampheadm)
		local var632 = arg5
		if not var632 then
			var632 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var632 then
				var632 = arg2
			end
		end
		CollectionService_upvr:AddTag(lampheadm, "emoteendstuff"..var632.Name)
		clone_110.Name = "sign"
		lampheadm.Part0 = arg2.Head
		lampheadm.Part1 = clone_110.lamphead
		lampheadm.Parent = arg2.Head
		lampheadm.Name = "lamphead"
		clone_110.Parent = arg2
	end
	tbl_440.Startup = Startup
	tbl_440.Animation = 96185673945954
	tbl_440.HideWeapon = true
	tbl_440.Stun = "Freeze"
	tbl_440.Looped = true
	tbl_459.Disguise = tbl_440
	tbl_459["Fly Pose"] = {
		Sounds = {};
		Animation = 121381453450722;
		Stun = "Slowed";
		HideWeapon = true;
		StunAttribute = 1.5;
		Looped = true;
	}
	local tbl_1075 = {
		Sounds = {};
	}
	local function Startup(arg1_41, arg2_34, arg3_32, arg4_7, arg5_7) -- Line 1851
		--[[ Upvalues[5]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var93_upvr (copied, readonly)
		]]
		local clone_62 = script.Sleigh:Clone()
		clone_62:SetAttribute("EmoteProperty", true)
		table.insert(arg1_41, clone_62)
		local var640 = arg5
		if not var640 then
			var640 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var640 then
				var640 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_62, "emoteendstuff"..var640.Name)
		local class_Motor6D_18 = clone_62:FindFirstChildOfClass("Motor6D")
		class_Motor6D_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_41, class_Motor6D_18)
		local var642 = arg5
		if not var642 then
			var642 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var642 then
				var642 = arg2
			end
		end
		CollectionService_upvr:AddTag(class_Motor6D_18, "emoteendstuff"..var642.Name)
		class_Motor6D_18.Part0 = arg2.PrimaryPart
		class_Motor6D_18.Part1 = clone_62.Main
		class_Motor6D_18.Parent = arg2.PrimaryPart
		clone_62.Parent = arg2
		task.delay(0.65, function() -- Line 1864
			--[[ Upvalues[4]:
				[1]: arg5_7 (readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg1_41 (readonly)
			]]
			if arg5_7.interrupted then
			else
				local var93_upvr_result1_22 = var93_upvr({
					SoundId = "rbxassetid://103153234346526";
					Volume = 2;
					Looped = true;
					Parent = arg2.PrimaryPart;
				})
				var93_upvr_result1_22:Play()
				var93_upvr_result1_22:SetAttribute("EmoteProperty", true)
				table.insert(arg1_41, var93_upvr_result1_22)
			end
		end)
	end
	tbl_1075.Startup = Startup
	tbl_1075.Animation = 104031205817566
	tbl_1075.Idle = 119811670686735
	tbl_1075.HideWeapon = true
	tbl_1075.Stun = "Slowed"
	tbl_459.Sleigh = tbl_1075
	local tbl_1092 = {
		Sounds = {};
	}
	local function Startup(arg1_42, arg2_35, arg3_33) -- Line 1895
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg5 (readonly)
			[4]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		local clone_314_upvr = script.RockBig:Clone()
		clone_314_upvr.Parent = arg2
		clone_314_upvr.Anchored = true
		clone_314_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_42, clone_314_upvr)
		local var653 = arg5
		if not var653 then
			var653 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var653 then
				var653 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_314_upvr, "emoteendstuff"..var653.Name)
		spawn(function() -- Line 1902
			--[[ Upvalues[2]:
				[1]: clone_314_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			while task.wait() and 0.5 > tick() - tick() and clone_314_upvr do
				if not clone_314_upvr.Parent then return end
				clone_314_upvr.CFrame = arg2.PrimaryPart.CFrame * CFrame.new(0, -1.5, 4)
			end
		end)
	end
	tbl_1092.Startup = Startup
	tbl_1092.Animation = 78615192673057
	tbl_1092.Idle = 123794818363362
	tbl_1092.HideWeapon = true
	tbl_1092.Stun = "Freeze"
	tbl_1092.NoRotate = true
	tbl_459["Hunter Pose"] = tbl_1092
	local tbl_570 = {
		Sounds = {};
	}
	local function Startup(arg1_43, arg2_36, arg3_34) -- Line 1932
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_35 = script.Borgir:Clone()
		clone_35:SetAttribute("EmoteProperty", true)
		table.insert(arg1_43, clone_35)
		local var659 = arg5
		if not var659 then
			var659 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var659 then
				var659 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_35, "emoteendstuff"..var659.Name)
		local Motor_4 = clone_35.Motor
		Motor_4:SetAttribute("EmoteProperty", true)
		table.insert(arg1_43, Motor_4)
		local var661 = arg5
		if not var661 then
			var661 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var661 then
				var661 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor_4, "emoteendstuff"..var661.Name)
		Motor_4.Part0 = arg2["Right Arm"]
		Motor_4.Part1 = clone_35
		Motor_4.Parent = arg2["Right Arm"]
		Motor_4.Name = "Borgir"
		clone_35.Parent = arg2
	end
	tbl_570.Startup = Startup
	tbl_570.Animation = 127304623515480
	tbl_570.HideWeapon = true
	tbl_570.Stun = "Slowed"
	tbl_459.Borgir = tbl_570
	local tbl_558 = {
		Sounds = {};
	}
	local function Startup(arg1_44, arg2_37, arg3_35) -- Line 1961
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_264 = script.PlacaSoPraAnimar:Clone()
		clone_264:SetAttribute("EmoteProperty", true)
		table.insert(arg1_44, clone_264)
		local var666 = arg5
		if not var666 then
			var666 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var666 then
				var666 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_264, "emoteendstuff"..var666.Name)
		local PlacaSoPraAnimar = clone_264.PlacaSoPraAnimar
		PlacaSoPraAnimar:SetAttribute("EmoteProperty", true)
		table.insert(arg1_44, PlacaSoPraAnimar)
		local var668 = arg5
		if not var668 then
			var668 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var668 then
				var668 = arg2
			end
		end
		CollectionService_upvr:AddTag(PlacaSoPraAnimar, "emoteendstuff"..var668.Name)
		PlacaSoPraAnimar.Part0 = arg2["Right Arm"]
		PlacaSoPraAnimar.Part1 = clone_264
		PlacaSoPraAnimar.Parent = arg2["Right Arm"]
		clone_264.Parent = arg2
	end
	tbl_558.Startup = Startup
	tbl_558.Keyframes = {
		freeze = function(arg1_45, arg2_38, arg3_36) -- Line 1976
			arg3_36:AdjustSpeed(0)
		end;
	}
	tbl_558.Animation = 92883107669654
	tbl_558.HideWeapon = true
	tbl_558.Stun = "Freeze"
	tbl_459.EZ = tbl_558
	local tbl_126 = {
		Sounds = {};
	}
	local function Startup(arg1_46, arg2_39, arg3_37) -- Line 1995
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_289 = script.Maniac.MeshPart:Clone()
		clone_289:SetAttribute("EmoteProperty", true)
		table.insert(arg1_46, clone_289)
		local var675 = arg5
		if not var675 then
			var675 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var675 then
				var675 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_289, "emoteendstuff"..var675.Name)
		local Motor_5 = clone_289.Motor
		Motor_5:SetAttribute("EmoteProperty", true)
		table.insert(arg1_46, Motor_5)
		local var677 = arg5
		if not var677 then
			var677 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var677 then
				var677 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor_5, "emoteendstuff"..var677.Name)
		Motor_5.Part0 = arg2["Right Arm"]
		Motor_5.Part1 = clone_289.Handle
		Motor_5.Parent = arg2["Right Arm"]
		Motor_5.Name = "Handle"
		clone_289.Parent = arg2
	end
	tbl_126.Startup = Startup
	tbl_126.Looped = true
	tbl_126.Animation = 124337193780872
	tbl_126.HideWeapon = true
	tbl_126.Stun = "Slowed"
	tbl_459.Maniac = tbl_126
	local tbl_87 = {
		Sounds = {};
	}
	local function Startup(arg1_47, arg2_40, arg3_38) -- Line 2025
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone = script.Maniac.MeshPart:Clone()
		clone:SetAttribute("EmoteProperty", true)
		table.insert(arg1_47, clone)
		local var682 = arg5
		if not var682 then
			var682 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var682 then
				var682 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone, "emoteendstuff"..var682.Name)
		local Motor_2 = clone.Motor
		Motor_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_47, Motor_2)
		local var684 = arg5
		if not var684 then
			var684 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var684 then
				var684 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor_2, "emoteendstuff"..var684.Name)
		Motor_2.Part0 = arg2["Right Arm"]
		Motor_2.Part1 = clone.Handle
		Motor_2.Parent = arg2["Right Arm"]
		Motor_2.Name = "Handle"
		clone.Parent = arg2
	end
	tbl_87.Startup = Startup
	tbl_87.Animation = 78851551917642
	tbl_87.Idle = 71163641460855
	tbl_87.HideWeapon = true
	tbl_87.Stun = "Freeze"
	tbl_459["League Oath"] = tbl_87
	local tbl_321 = {
		Sounds = {};
		Animation = 84359348423275;
		Stun = "Slowed";
		StunAttribute = 1;
		HideWeapon = true;
	}
	local function Startup(arg1_48, arg2_41, arg3_39) -- Line 2062
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_321.Startup = Startup
	tbl_459.Mid = tbl_321
	local tbl_544 = {
		Sounds = {};
		Animation = 104956990421479;
		Stun = "Freeze";
		HideWeapon = true;
	}
	local function Startup(arg1_49, arg2_42, arg3_40) -- Line 2080
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_544.Startup = Startup
	tbl_459.Calculating = tbl_544
	local tbl_1071 = {
		Sounds = {};
		Animation = 110694817344709;
		Stun = "Slowed";
		StunAttribute = 1;
		HideWeapon = true;
	}
	local function Startup(arg1_50, arg2_43, arg3_41) -- Line 2100
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1071.Startup = Startup
	tbl_459["All Me"] = tbl_1071
	local tbl_186 = {
		Sounds = {};
		Animation = 133121061492478;
		Stun = "Freeze";
		HideWeapon = true;
	}
	local function Startup(arg1_51, arg2_44, arg3_42) -- Line 2118
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_186.Startup = Startup
	tbl_459["Clean Fight"] = tbl_186
	local tbl_997 = {
		Sounds = {};
		Animation = 85271812976018;
		Stun = "Slowed";
		StunAttribute = 1;
		HideWeapon = true;
	}
	local function Startup(arg1_52, arg2_45, arg3_43) -- Line 2137
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_997.Startup = Startup
	tbl_459.Yapper = tbl_997
	tbl_459["Self Hate"] = {
		Sounds = {};
		Animation = 98491634200850;
		Stun = "Slowed";
		StunAttribute = 1;
	}
	tbl_459["War Cry"] = {
		Sounds = {};
		Animation = 127113883473285;
		Stun = "Freeze";
	}
	tbl_459["Fire In Me"] = {
		Sounds = {};
		Animation = 92116312846822;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459.Delight = {
		Sounds = {};
		Animation = 134228716476620;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Triumphant Delight"] = {
		Sounds = {};
		Animation = 124645358602106;
		Stun = "Freeze";
	}
	tbl_459["Curl Up"] = {
		Sounds = {};
		Animation = 134273575464340;
		Idle = 85758455402628;
		Stun = "Freeze";
	}
	tbl_459.Crashout = {
		Sounds = {};
		Animation = 106400765698758;
		Idle = 103362214977039;
		Stun = "Freeze";
		Keyframes = {
			vfx = function(arg1_53, arg2_46, arg3_44) -- Line 2244
				--[[ Upvalues[5]:
					[1]: CollectionService_upvr (copied, readonly)
					[2]: arg5 (readonly)
					[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
					[4]: arg2 (readonly)
					[5]: var93_upvr (copied, readonly)
				]]
				local function _(arg1_56) -- Line 2246
					--[[ Upvalues[5]:
						[1]: arg1_53 (readonly)
						[2]: CollectionService_upvr (copied, readonly)
						[3]: arg5 (copied, readonly)
						[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
						[5]: arg2 (copied, readonly)
					]]
					arg1_56:SetAttribute("EmoteProperty", true)
					table.insert(arg1_53, arg1_56)
					local var751 = arg5
					if not var751 then
						var751 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var751 then
							var751 = arg2
						end
					end
					CollectionService_upvr:AddTag(arg1_56, "emoteendstuff"..var751.Name)
				end
				local clone_329_upvr = script.BackgroundCrashoutVfx:Clone()
				clone_329_upvr.Parent = arg2
				clone_329_upvr.Anchored = true
				clone_329_upvr:SetAttribute("EmoteProperty", true)
				table.insert(arg1_53, clone_329_upvr)
				local var753 = arg5
				if not var753 then
					var753 = any_GetPlayerFromCharacter_result1_2_upvr
					if not var753 then
						var753 = arg2
					end
				end
				CollectionService_upvr:AddTag(clone_329_upvr, "emoteendstuff"..var753.Name)
				clone_329_upvr.CFrame = arg2.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0)
				task.delay(0.1, function() -- Line 2256
					--[[ Upvalues[3]:
						[1]: clone_329_upvr (readonly)
						[2]: var93_upvr (copied, readonly)
						[3]: arg2 (copied, readonly)
					]]
					if clone_329_upvr and clone_329_upvr.Parent then
						var93_upvr({
							SoundId = "rbxassetid://94069267034673";
							Volume = 2;
							Looped = true;
							Parent = arg2.PrimaryPart;
						}):Play()
						var93_upvr({
							SoundId = "rbxassetid://85346361575494";
							Volume = 2;
							Looped = true;
							Parent = arg2.PrimaryPart;
						}):Play()
					end
				end)
				local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
				ColorCorrectionEffect.Enabled = true
				ColorCorrectionEffect.Parent = game.Lighting
				ColorCorrectionEffect:SetAttribute("EmoteProperty", true)
				table.insert(arg1_53, ColorCorrectionEffect)
				local var758 = arg5
				if not var758 then
					var758 = any_GetPlayerFromCharacter_result1_2_upvr
					if not var758 then
						var758 = arg2
					end
				end
				CollectionService_upvr:AddTag(ColorCorrectionEffect, "emoteendstuff"..var758.Name)
				if shared.p(arg2) then
					game.ReplicatedStorage.Replication:FireClient(game.Players:GetPlayerFromCharacter(arg2), {
						Type = "RageCcEmote";
						Cc = ColorCorrectionEffect;
					})
				end
				for _, v_24 in pairs({clone_329_upvr.Eye, clone_329_upvr.Shade}) do
					v_24.Parent = arg2.Head
					v_24:SetAttribute("EmoteProperty", true)
					table.insert(arg1_53, v_24)
					local var764 = arg5
					if not var764 then
						var764 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var764 then
							var764 = arg2
						end
					end
					CollectionService_upvr:AddTag(v_24, "emoteendstuff"..var764.Name)
				end
				local function var765(arg1_57) -- Line 2292
					--[[ Upvalues[1]:
						[1]: arg2 (copied, readonly)
					]]
					local any_GetPlayerFromCharacter_result1 = game.Players:GetPlayerFromCharacter(arg2)
					if any_GetPlayerFromCharacter_result1 then
						local tbl_471 = {
							Effect = "Camshake";
						}
						tbl_471.Intensity = arg1_57
						game.ReplicatedStorage.Replication:FireClient(any_GetPlayerFromCharacter_result1, tbl_471)
					end
				end
				var765(3)
				wait(0.1)
				while clone_329_upvr do
					if not clone_329_upvr.Parent then return end
					var765(1)
					task.wait(0.1)
				end
			end;
		};
	}
	tbl_459["Take Me On"] = {
		Sounds = {};
		Animation = 106128760138039;
		Idle = 128334295101396;
		Stun = "Freeze";
		End = {108557346368699, 0.35, {}};
	}
	tbl_459.Backwards = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863082627;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459["Side To Side"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861884104;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459.Celebration = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863041811;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Hitting It"] = {
		Sounds = {};
		Animation = 124040557048936;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Ohio Dance"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861841334;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459.Laughable = {
		Sounds = {{
			SoundId = "rbxassetid://9116239157";
			Volume = 2;
			Looped = false;
			ParentTorso = true;
		}};
		Keyframes = {};
		Infinite = true;
		HideWeapon = true;
		Animation = 18897661505;
		Stun = "Slowed";
		StunAttribute = 1.5;
	}
	tbl_459["You Hear This?"] = {
		Sounds = {};
		Keyframes = {};
		Infinite = true;
		HideWeapon = true;
		Animation = 18897631758;
		Stun = "Slowed";
		StunAttribute = 1.5;
	}
	tbl_459["Dramatic Kick"] = {
		Sounds = {};
		Keyframes = {};
		Animation = 18897648446;
		Stun = "Freeze";
	}
	tbl_459.Leg = {
		Sounds = {};
		Keyframes = {};
		Looped = true;
		Animation = 18897664299;
		Stun = "Slowed";
		StunAttribute = 1.75;
	}
	tbl_459.Dodge = {
		Sounds = {};
		Keyframes = {};
		Animation = 18897560632;
		Stun = "Freeze";
	}
	tbl_459.Emote = {
		Sounds = {};
		Keyframes = {};
		HideWeapon = true;
		Animation = 18897531388;
		Stun = "Slowed";
		StunAttribute = 1.5;
	}
	tbl_459["Exercise 2"] = {
		Sounds = {};
		Keyframes = {};
		HideWeapon = true;
		Animation = 18897643802;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459.Burpee = {
		Sounds = {};
		Keyframes = {};
		HideWeapon = true;
		Animation = 18897501714;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459.Forever = {
		Sounds = {};
		Keyframes = {};
		HideWeapon = true;
		Animation = 18897617695;
		Idle = 18897615186;
		Stun = "Freeze";
	}
	tbl_459.Unimpressed = {
		Sounds = {};
		Keyframes = {};
		Infinite = true;
		HideWeapon = true;
		Animation = 18897731065;
		Looped = true;
		Stun = "Slowed";
	}
	local tbl_951 = {
		Sounds = {};
		Keyframes = {};
	}
	local function Startup() -- Line 2634
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://1836270048";
			Volume = 1;
			TimePosition = 0.25;
			Looped = true;
			Parent = arg2.Head;
		}):Resume()
	end
	tbl_951.Startup = Startup
	tbl_951.HideWeapon = true
	tbl_951.Animation = 18897492506
	tbl_951.Looped = true
	tbl_951.Stun = "Freeze"
	tbl_459.Headbanger = tbl_951
	local tbl_1048 = {
		Sounds = {};
		Keyframes = {};
	}
	local function Startup() -- Line 2659
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://1842247841";
			Volume = 1;
			TimePosition = 5;
			Parent = arg2.Head;
		}):Resume()
	end
	tbl_1048.Startup = Startup
	tbl_1048.Infinite = true
	tbl_1048.HideWeapon = true
	tbl_1048.Animation = 18897563773
	tbl_1048.Looped = true
	tbl_1048.Stun = "Freeze"
	tbl_459.Daydream = tbl_1048
	local tbl_1060 = {
		Sounds = {};
		Keyframes = {};
	}
	local function Startup() -- Line 2683
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://18827980294";
			Volume = 1;
			TimePosition = 0.1;
			Parent = arg2.Head;
		}):Resume()
	end
	tbl_1060.Startup = Startup
	tbl_1060.HideWeapon = true
	tbl_1060.Animation = 18897628831
	tbl_1060.Looped = false
	tbl_1060.Stun = "Freeze"
	tbl_459["Clear My Head"] = tbl_1060
	tbl_459.Forwards = {
		Sounds = {};
		Keyframes = {
			clap = function() -- Line 2708
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://2704706975";
					Volume = 1;
					Parent = arg2.Head;
				}):Play()
			end;
		};
		Infinite = true;
		HideWeapon = true;
		Animation = 17862100862;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459.Kicks = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861870996;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459["Stepping Shuffle"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861898789;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Speedy Legs"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863047324;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459["Excited Shuffle"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863091228;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459["Arm Sway"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861898147;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Low Snaps"] = {
		Sounds = {};
		Animation = 17861881962;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Blood Swipe"] = {
		Sounds = {};
		Animation = 122647124825700;
		Stun = "Slowed";
	}
	tbl_459["Great Escape"] = {
		Sounds = {};
		Infinite = true;
		Animation = 17861862787;
		Looped = true;
		Stun = "Slowed";
		StunAttribute = 1.5;
	}
	local tbl_874 = {
		Keyframes = {
			clap = function() -- Line 2855
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://18835607404";
					Parent = arg2.Torso;
					Volume = 1;
					PlaybackSpeed = 1;
				}):Play()
			end;
		};
		Sounds = {};
	}
	local function Startup(arg1_58, arg2_47, arg3_45) -- Line 2870
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_13 = script.Sunflower:Clone()
		clone_13:SetAttribute("EmoteProperty", true)
		table.insert(arg1_58, clone_13)
		arg3_45.Handle = clone_13
		local Sunflower = clone_13.Sunflower
		Sunflower:SetAttribute("EmoteProperty", true)
		table.insert(arg1_58, Sunflower)
		arg3_45.md = Sunflower
		Sunflower.Part0 = arg2.PrimaryPart
		Sunflower.Part1 = clone_13
		Sunflower.Parent = arg2.PrimaryPart
		if math.random(1, 2) == 1 then
			clone_13.Handle:Destroy()
		else
			clone_13.Handle2:Destroy()
		end
		clone_13.Parent = arg2
	end
	tbl_874.Startup = Startup
	tbl_874.Infinite = true
	tbl_874.HideWeapon = true
	tbl_874.Animation = 18897695481
	tbl_874.Looped = true
	tbl_874.Stun = "Slowed"
	tbl_459.Beatdown = tbl_874
	local tbl_1057 = {
		Keyframes = {
			clap = function(arg1_59) -- Line 2893
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local var863
				if not arg1_59.x then
					arg1_59.x = 1
				end
				local tbl_148 = {}
				var863 = ({"rbxassetid://18844121515", "rbxassetid://18844121774", "rbxassetid://18844122004", "rbxassetid://18844122195"})[math.random(1, 4)]
				tbl_148.SoundId = var863
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var863 = arg2["Left Leg"]
					return var863
				end
				if arg1_59.x % 2 ~= 0 or not INLINED_2() then
					var863 = arg2["Right Leg"]
				end
				tbl_148.Parent = var863
				var863 = 0.3
				tbl_148.Volume = var863
				var863 = 1
				tbl_148.PlaybackSpeed = var863
				var93_upvr(tbl_148):Play()
				arg1_59.x += 1
			end;
		};
		Sounds = {};
	}
	local function Startup(arg1_60, arg2_48, arg3_46) -- Line 2911
	end
	tbl_1057.Startup = Startup
	tbl_1057.Infinite = true
	tbl_1057.Animation = 18897700236
	tbl_1057.Looped = true
	tbl_1057.Stun = "Slowed"
	tbl_1057.StunAttribute = 0.825
	tbl_459.Run = tbl_1057
	local tbl_721 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_61, arg2_49, arg3_47) -- Line 2935
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_145 = script.clock:Clone()
		clone_145:SetAttribute("EmoteProperty", true)
		table.insert(arg1_61, clone_145)
		arg3_47.Handle = clone_145
		local Rig_006 = clone_145["Rig.006"]
		Rig_006:SetAttribute("EmoteProperty", true)
		table.insert(arg1_61, Rig_006)
		arg3_47.md = Rig_006
		Rig_006.Part0 = arg2["Left Arm"]
		Rig_006.Part1 = clone_145
		Rig_006.Parent = arg2["Left Arm"]
		clone_145.Name = "Rig.006"
		clone_145.Parent = arg2
	end
	tbl_721.Startup = Startup
	tbl_721.Animation = 18897733312
	tbl_721.Looped = true
	tbl_721.Stun = "Freeze"
	tbl_459.Watch = tbl_721
	local tbl_826 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_62, arg2_50, arg3_48) -- Line 2959
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_211_upvr = script.dj_Pad:Clone()
		clone_211_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_62, clone_211_upvr)
		arg3_48.Handle = clone_211_upvr
		local Base = clone_211_upvr.Base.Base
		Base:SetAttribute("EmoteProperty", true)
		table.insert(arg1_62, Base)
		arg3_48.md = Base
		Base.Part0 = arg2.PrimaryPart
		Base.Part1 = clone_211_upvr.Base
		Base.Parent = arg2.PrimaryPart
		clone_211_upvr.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://18844058756";
			Parent = clone_211_upvr.Base;
			Volume = 1;
		}):Play()
		task.delay(1.2, function() -- Line 2973
			--[[ Upvalues[2]:
				[1]: clone_211_upvr (readonly)
				[2]: var93_upvr (copied, readonly)
			]]
			if not clone_211_upvr.Parent then
			else
				var93_upvr({
					SoundId = "rbxassetid://1836681160";
					Parent = clone_211_upvr.Base;
					Volume = 1;
					Looped = true;
				}):Play()
			end
		end)
	end
	tbl_826.Startup = Startup
	tbl_826.Animation = 18897558226
	tbl_826.Idle = 18897555962
	tbl_826.Stun = "Slowed"
	tbl_826.StunAttribute = 1.25
	tbl_459.DJ = tbl_826
	local tbl_1077 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_63, arg2_51, arg3_49) -- Line 3003
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_105 = script.horn:Clone()
		clone_105:SetAttribute("EmoteProperty", true)
		table.insert(arg1_63, clone_105)
		arg3_49.Handle = clone_105
		local horn = clone_105.horn
		horn:SetAttribute("EmoteProperty", true)
		table.insert(arg1_63, horn)
		arg3_49.md = horn
		horn.Part0 = arg2["Right Arm"]
		horn.Part1 = clone_105
		horn.Parent = arg2["Right Arm"]
		clone_105.Parent = arg2
	end
	tbl_1077.Startup = Startup
	tbl_1077.Animation = 18897636555
	tbl_1077.Stun = "Slowed"
	tbl_1077.StunAttribute = 1.5
	tbl_459.Horn = tbl_1077
	local tbl_354 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_64, arg2_52, arg3_50) -- Line 3032
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_296 = script["big shoe lol"]:Clone()
		clone_296:SetAttribute("EmoteProperty", true)
		table.insert(arg1_64, clone_296)
		arg3_50.Handle = clone_296
		local big_shoe_lol = clone_296["big shoe lol"]
		big_shoe_lol:SetAttribute("EmoteProperty", true)
		table.insert(arg1_64, big_shoe_lol)
		arg3_50.md = big_shoe_lol
		big_shoe_lol.Part0 = arg2["Right Leg"]
		big_shoe_lol.Part1 = clone_296
		big_shoe_lol.Parent = arg2["Right Leg"]
		clone_296.Parent = arg2["Right Leg"]
		var93_upvr({
			SoundId = "rbxassetid://18843835286";
			Parent = clone_296;
			Volume = 2;
			Looped = true;
		}):Play()
	end
	tbl_354.Startup = Startup
	tbl_354.Animation = 18897707539
	tbl_354.Looped = true
	tbl_354.Stun = "Freeze"
	tbl_459["Big Shoe"] = tbl_354
	local tbl_323 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_65, arg2_53, arg3_51) -- Line 3067
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_300 = script.Plane:Clone()
		clone_300:SetAttribute("EmoteProperty", true)
		table.insert(arg1_65, clone_300)
		arg3_51.Handle = clone_300
		local Plane = clone_300.Plane
		Plane:SetAttribute("EmoteProperty", true)
		table.insert(arg1_65, Plane)
		arg3_51.md = Plane
		Plane.Part0 = arg2["Right Arm"]
		Plane.Part1 = clone_300
		Plane.Parent = arg2["Right Arm"]
		clone_300.Parent = arg2
	end
	tbl_323.Startup = Startup
	tbl_323.Fix = true
	tbl_323.HideWeapon = true
	tbl_323.Looped = true
	tbl_323.Animation = 18897499721
	tbl_323.Stun = "Slowed"
	tbl_323.StunAttribute = 1
	tbl_459.Bhop = tbl_323
	local tbl_226 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_66, arg2_54, arg3_52) -- Line 3093
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_192 = script.LeftHandlecand:Clone()
		clone_192:SetAttribute("EmoteProperty", true)
		table.insert(arg1_66, clone_192)
		arg3_52.Handle = clone_192
		clone_192.Name = "LeftHandle"
		local LeftHandle_3 = clone_192.LeftHandle
		LeftHandle_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_66, LeftHandle_3)
		arg3_52.md = LeftHandle_3
		LeftHandle_3.Part0 = arg2["Left Arm"]
		LeftHandle_3.Part1 = clone_192
		LeftHandle_3.Parent = arg2["Left Arm"]
		clone_192.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://18844183460";
			Parent = clone_192;
			Volume = 1;
		}):Play()
	end
	tbl_226.Startup = Startup
	tbl_226.HideWeapon = true
	tbl_226.Animation = 18897505064
	tbl_226.Idle = 18897508344
	tbl_226.Stun = "Slowed"
	tbl_226.StunAttribute = 1.5
	tbl_459.Lollipop = tbl_226
	local tbl_1040 = {
		Keyframes = {
			clap = function(arg1_67) -- Line 3118
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				local var900
				if not arg1_67.x then
					arg1_67.x = 1
				end
				local tbl_1110 = {}
				var900 = ({"rbxassetid://18844324520", "rbxassetid://18844324837", "rbxassetid://18844325082"})[math.random(1, 3)]
				tbl_1110.SoundId = var900
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var900 = arg2["Left Leg"]
					return var900
				end
				if arg1_67.x % 2 ~= 0 or not INLINED_3() then
					var900 = arg2["Right Leg"]
				end
				tbl_1110.Parent = var900
				var900 = 0.85
				tbl_1110.Volume = var900
				var900 = var2_upvw
				tbl_1110.RollOffMaxDistance = var900
				var900 = 1
				tbl_1110.PlaybackSpeed = var900
				shared.sfx(tbl_1110):Play()
				arg1_67.x += 1
			end;
		};
		Sounds = {};
	}
	local function Startup(arg1_68, arg2_55, arg3_53) -- Line 3137
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: var130_upvw (read and write)
		]]
		local clone_131_upvr = script.Treadmill:Clone()
		clone_131_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_68, clone_131_upvr)
		arg3_53.Handle = clone_131_upvr
		local Treadmill = clone_131_upvr.Treadmill
		Treadmill:SetAttribute("EmoteProperty", true)
		table.insert(arg1_68, Treadmill)
		arg3_53.md = Treadmill
		Treadmill.Part0 = arg2.PrimaryPart
		Treadmill.Part1 = clone_131_upvr
		Treadmill.Parent = arg2.PrimaryPart
		clone_131_upvr.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://18844323927";
			Parent = clone_131_upvr;
			Volume = 1;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://18844324232";
			Parent = clone_131_upvr;
			Volume = 1;
			Looped = true;
		}):Play()
		task.spawn(function() -- Line 3158
			--[[ Upvalues[2]:
				[1]: var130_upvw (copied, read and write)
				[2]: clone_131_upvr (readonly)
			]]
			local var130_upvw_result1 = var130_upvw(18897724289)
			repeat
				task.wait()
				if var130_upvw_result1.IsPlaying then
					var130_upvw_result1:AdjustSpeed(math.clamp(1 + 0.000001, 0, 10))
				end
			until not clone_131_upvr.Parent
		end)
	end
	tbl_1040.Startup = Startup
	tbl_1040.IdleKeyframes = true
	tbl_1040.Infinite = true
	tbl_1040.HideWeapon = true
	tbl_1040.Animation = 18897726542
	tbl_1040.Idle = 18897724289
	tbl_1040.Stun = "Freeze"
	tbl_459.Treadmill = tbl_1040
	local tbl_861 = {
		Keyframes = {
			clap = function(arg1_69) -- Line 3180
				--[[ Upvalues[1]:
					[1]: var93_upvr (copied, readonly)
				]]
				local var912
				if not arg1_69.x then
					arg1_69.x = 1
				end
				local tbl_165 = {}
				var912 = ({"rbxassetid://18846632392", "rbxassetid://18846632707", "rbxassetid://18846633000", "rbxassetid://18846633359"})[math.random(1, 4)]
				tbl_165.SoundId = var912
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var912 = arg1_69.b["BRight Leg"]
					return var912
				end
				if arg1_69.x % 2 ~= 0 or not INLINED_4() then
					var912 = arg1_69.b["BLeft Leg"]
				end
				tbl_165.Parent = var912
				var912 = 0.3
				tbl_165.Volume = var912
				var912 = 1
				tbl_165.PlaybackSpeed = var912
				var93_upvr(tbl_165):Play()
				arg1_69.x += 1
				if arg1_69.x % 5 == 0 then
					local tbl_179 = {}
					var912 = ({"rbxassetid://18846691304", "rbxassetid://18846691736", "rbxassetid://18846692037"})[math.random(1, 3)]
					tbl_179.SoundId = var912
					var912 = arg1_69.b.Head
					tbl_179.Parent = var912
					var912 = 1
					tbl_179.Volume = var912
					var912 = 1
					tbl_179.PlaybackSpeed = var912
					var93_upvr(tbl_179):Play()
				end
			end;
		};
		Sounds = {};
	}
	local function Startup(arg1_70, arg2_56, arg3_54) -- Line 3206
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_72 = script.Bear:Clone()
		clone_72:SetAttribute("EmoteProperty", true)
		table.insert(arg1_70, clone_72)
		arg3_54.Handle = clone_72
		local Body = clone_72.Body.Body
		Body:SetAttribute("EmoteProperty", true)
		table.insert(arg1_70, Body)
		arg3_54.md = Body
		Body.Part0 = arg2.PrimaryPart
		Body.Part1 = clone_72.Body
		Body.Parent = arg2.PrimaryPart
		clone_72.Parent = arg2
		arg3_54.b = clone_72
		var93_upvr({
			SoundId = ({"rbxassetid://18846691304", "rbxassetid://18846691736", "rbxassetid://18846692037"})[math.random(1, 3)];
			Parent = arg3_54.b.Head;
			Volume = 1;
			PlaybackSpeed = 1;
		}):Play()
	end
	tbl_861.Startup = Startup
	tbl_861.Infinite = true
	tbl_861.HideWeapon = true
	tbl_861.Fix = true
	tbl_861.Animation = 18897495704
	tbl_861.Looped = true
	tbl_861.Stun = "Slowed"
	tbl_459.Bear = tbl_861
	local tbl_337 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_71, arg2_57, arg3_55) -- Line 3240
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_256 = script.PanTwo:Clone()
		clone_256:SetAttribute("EmoteProperty", true)
		table.insert(arg1_71, clone_256)
		arg3_55.Handle = clone_256
		local Pan = clone_256.Pan
		Pan:SetAttribute("EmoteProperty", true)
		table.insert(arg1_71, Pan)
		arg3_55.md = Pan
		Pan.Part0 = arg2["Right Arm"]
		Pan.Part1 = clone_256
		Pan.Parent = arg2["Right Arm"]
		clone_256.Name = "Pan"
		clone_256.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://18829100753";
			Parent = clone_256;
			Volume = 1;
			Looped = true;
		}):Play()
		local clone_38 = script.Pancake:Clone()
		clone_38:SetAttribute("EmoteProperty", true)
		table.insert(arg1_71, clone_38)
		arg3_55.Handle = clone_38
		local Meshes_Pancake = clone_256["Meshes/Pancake"]
		Meshes_Pancake:SetAttribute("EmoteProperty", true)
		table.insert(arg1_71, Meshes_Pancake)
		arg3_55.md = Meshes_Pancake
		Meshes_Pancake.Part0 = clone_256
		Meshes_Pancake.Part1 = clone_38
		Meshes_Pancake.Parent = clone_256
		clone_38.Parent = arg2
	end
	tbl_337.Startup = Startup
	tbl_337.HideWeapon = true
	tbl_337.Animation = 18897548874
	tbl_337.Looped = true
	tbl_337.Stun = "Freeze"
	tbl_459.Cooked = tbl_337
	local tbl_496 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_72, arg2_58, arg3_56) -- Line 3279
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		for _, v_25 in pairs({"English", "Spanish", "TextHandle"}) do
			local clone_266 = script[v_25]:Clone()
			clone_266:SetAttribute("EmoteProperty", true)
			table.insert(arg1_72, clone_266)
			arg3_56.Handle = clone_266
			local var935 = clone_266[v_25]
			var935:SetAttribute("EmoteProperty", true)
			table.insert(arg1_72, var935)
			arg3_56.md = var935
			var935.Part0 = arg2.PrimaryPart
			var935.Part1 = clone_266
			var935.Parent = arg2.PrimaryPart
			clone_266.Parent = arg2
		end
		var93_upvr({
			SoundId = "rbxassetid://18835721216";
			Parent = arg2.PrimaryPart;
			Volume = 1;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://9045031823";
			Parent = arg2.PrimaryPart;
			Looped = true;
			Volume = 0.3;
		}):Play()
	end
	tbl_496.Startup = Startup
	tbl_496.HideWeapon = true
	tbl_496.Animation = 18897604359
	tbl_496.Idle = 18897610765
	tbl_496.Stun = "Freeze"
	tbl_459["English or Spanish"] = tbl_496
	local tbl_930 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_73, arg2_59, arg3_57) -- Line 3318
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_282 = script.boombox:Clone()
		clone_282:SetAttribute("EmoteProperty", true)
		table.insert(arg1_73, clone_282)
		arg3_57.Handle = clone_282
		local m6d_39 = clone_282.m6d
		m6d_39:SetAttribute("EmoteProperty", true)
		table.insert(arg1_73, m6d_39)
		arg3_57.md = m6d_39
		m6d_39.Part0 = arg2.PrimaryPart
		m6d_39.Part1 = clone_282
		m6d_39.Parent = arg2.PrimaryPart
		m6d_39.Name = "Motor6D"
		clone_282.Name = "Part"
		clone_282.Parent = arg2.PrimaryPart
		var93_upvr({
			SoundId = "rbxassetid://1846329169";
			Parent = clone_282;
			Volume = 1;
			Looped = true;
		}):Play()
	end
	tbl_930.Startup = Startup
	tbl_930.HideWeapon = true
	tbl_930.Animation = 18897639790
	tbl_930.Looped = true
	tbl_930.Stun = "Freeze"
	tbl_459["Mad Skills"] = tbl_930
	local tbl_460 = {
		Keyframes = {};
		Sounds = {};
	}
	local function Startup(arg1_74, arg2_60, arg3_58) -- Line 3351
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg5 (readonly)
			[4]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[5]: var93_upvr (copied, readonly)
			[6]: var130_upvw (read and write)
		]]
		local clone_141_upvr = script.BoomBox:Clone()
		clone_141_upvr:SetAttribute("EmoteProperty", true)
		local BoomBox = clone_141_upvr.BoomBox
		BoomBox:SetAttribute("EmoteProperty", true)
		BoomBox.Part0 = arg2.PrimaryPart
		BoomBox.Part1 = clone_141_upvr
		BoomBox.Parent = arg2.PrimaryPart
		clone_141_upvr.Parent = arg2
		local var954 = arg5
		if not var954 then
			var954 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var954 then
				var954 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_141_upvr, "emoteendstuff"..var954.Name)
		task.delay(0.25, function() -- Line 3360
			--[[ Upvalues[2]:
				[1]: clone_141_upvr (readonly)
				[2]: var93_upvr (copied, readonly)
			]]
			if clone_141_upvr.Parent then
				var93_upvr({
					SoundId = "rbxassetid://18843532846";
					Parent = clone_141_upvr;
					Volume = 1;
				}):Play()
			end
		end)
		task.spawn(function() -- Line 3370
			--[[ Upvalues[3]:
				[1]: var130_upvw (copied, read and write)
				[2]: clone_141_upvr (readonly)
				[3]: var93_upvr (copied, readonly)
			]]
			local var130_result1 = var130_upvw(18897676267)
			repeat
				task.wait()
			until var130_result1.IsPlaying and not clone_141_upvr.Parent
			if var130_result1.IsPlaying then
				task.wait(2.51)
				if not clone_141_upvr.Parent then return end
				var93_upvr({
					SoundId = "rbxassetid://18843484198";
					CFrame = clone_141_upvr.CFrame;
					TimePosition = 2.51;
					Volume = 1;
				}):Resume()
			end
		end)
		var93_upvr({
			SoundId = "rbxassetid://1843676441";
			Parent = clone_141_upvr;
			Volume = 1;
			Looped = true;
		}):Play()
	end
	tbl_460.Startup = Startup
	tbl_460.HideWeapon = true
	tbl_460.End = {18897676267, 3.217, {
		SoundId = "rbxassetid://18843483804";
		Volume = 1;
		Looped = false;
	}}
	tbl_460.Idle = 18897673759
	tbl_460.Animation = 18897679922
	tbl_460.Looped = false
	tbl_460.Stun = "Freeze"
	tbl_459["Around My Way"] = tbl_460
	local tbl_81 = {
		Keyframes = {
			clap = function() -- Line 3412
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://17849634815";
					Parent = arg2.HumanoidRootPart;
					Volume = 1;
					PlaybackSpeed = 1;
				}):Play()
			end;
			claploop = function() -- Line 3424
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://17849634537";
					Parent = arg2.HumanoidRootPart;
					Volume = 1;
					PlaybackSpeed = 1;
				}):Play()
			end;
		};
		Sounds = {};
	}
	local function Startup(arg1_75, arg2_61, arg3_59) -- Line 3444
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_234 = script.Stick:Clone()
		clone_234:SetAttribute("EmoteProperty", true)
		table.insert(arg1_75, clone_234)
		arg3_59.Handle = clone_234
		local Stick = clone_234.Stick
		Stick:SetAttribute("EmoteProperty", true)
		table.insert(arg1_75, Stick)
		arg3_59.md = Stick
		Stick.Part0 = arg2["Right Arm"]
		Stick.Part1 = clone_234
		Stick.Parent = arg2["Right Arm"]
		clone_234.Parent = arg2
		local clone_77 = script.Bag:Clone()
		clone_77:SetAttribute("EmoteProperty", true)
		table.insert(arg1_75, clone_77)
		arg3_59.Handle = clone_77
		local Bag = clone_234.Bag
		Bag:SetAttribute("EmoteProperty", true)
		table.insert(arg1_75, Bag)
		arg3_59.md = Bag
		Bag.Part0 = clone_234
		Bag.Part1 = clone_77
		Bag.Parent = clone_234
		clone_77.Parent = arg2["Right Arm"]
	end
	tbl_81.Startup = Startup
	tbl_81.HideWeapon = true
	tbl_81.Animation = 17861837529
	tbl_81.Looped = true
	tbl_81.Infinite = true
	tbl_81.Stun = "Slowed"
	tbl_459.Bindle = tbl_81
	local tbl_669 = {
		Sounds = {};
	}
	local function Startup(arg1_76, arg2_62, arg3_60) -- Line 3481
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_305 = script.DemonParticles.RootAttachment:Clone()
		clone_305:SetAttribute("EmoteProperty", true)
		table.insert(arg1_76, clone_305)
		table.insert(arg3_60, clone_305)
		clone_305.Parent = arg2.HumanoidRootPart
		game:GetService("Debris"):AddItem(clone_305, 2)
		for _, v_26 in pairs(clone_305:GetChildren()) do
			v_26:Emit(1)
		end
	end
	tbl_669.Startup = Startup
	tbl_669.Animation = 17861844708
	tbl_669.Stun = "Freeze"
	tbl_669.HideWeapon = true
	tbl_459.Demon = tbl_669
	local tbl_843 = {
		Sounds = {};
		IdleSound = {
			SoundId = "rbxassetid://17842803226";
			Volume = 1;
			Looped = true;
		};
	}
	local function Startup(arg1_77, arg2_63, arg3_61) -- Line 3517
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_843.Startup = Startup
	tbl_843.Idle = 17862993552
	tbl_843.Animation = 17862992081
	tbl_843.Stun = "Freeze"
	tbl_843.HideWeapon = true
	tbl_459["Sacred Summoning"] = tbl_843
	local tbl_724 = {
		Sounds = {};
	}
	local function Startup(arg1_78, arg2_64, arg3_62) -- Line 3539
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_253 = script.Frisbee:Clone()
		clone_253:SetAttribute("EmoteProperty", true)
		table.insert(arg1_78, clone_253)
		arg3_62.Frisbee = clone_253
		local Frisbee = clone_253.Frisbee
		Frisbee:SetAttribute("EmoteProperty", true)
		table.insert(arg1_78, Frisbee)
		arg3_62.md = Frisbee
		Frisbee.Part0 = arg2["Right Arm"]
		Frisbee.Part1 = clone_253
		Frisbee.Parent = arg2["Right Arm"]
		clone_253.Parent = arg2
	end
	tbl_724.Startup = Startup
	tbl_724.Keyframes = {
		Toss = function(arg1_79) -- Line 3551
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			arg1_79.Frisbee.Transparency = 1
			local clone_140_upvr = script.Frisbee:Clone()
			CollectionService_upvr:AddTag(clone_140_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_140_upvr, 5)
			clone_140_upvr.CanCollide = true
			clone_140_upvr.CanTouch = true
			clone_140_upvr.CanQuery = false
			clone_140_upvr.Massless = false
			clone_140_upvr.CollisionGroup = "nocol"
			clone_140_upvr.CFrame = arg2:GetPivot() * CFrame.new(0, 0, -2.5)
			clone_140_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_140_upvr.Parent = workspace.Thrown
			clone_140_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_140_upvr.AssemblyAngularVelocity = Vector3.new(0, 480, 0)
			clone_140_upvr.AssemblyLinearVelocity = arg2:GetPivot().LookVector * 120 + arg2:GetPivot().UpVector * 40
			local var997_upvw = 0
			local any_Connect_result1_upvw_7 = clone_140_upvr.Touched:Connect(function(arg1_80) -- Line 3578
				--[[ Upvalues[3]:
					[1]: var997_upvw (read and write)
					[2]: clone_140_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_80:IsDescendantOf(workspace.Live) or tick() - var997_upvw < 0.075 then
				else
					if math.abs(clone_140_upvr.Velocity.Y) < 4 then return end
					var997_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://9114538213";
						Parent = clone_140_upvr;
						Volume = 1;
						PlaybackSpeed = Random.new():NextNumber(0.99, 2);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 3594
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_7 (read and write)
				]]
				any_Connect_result1_upvw_7:Disconnect()
			end)
		end;
	}
	tbl_724.HideWeapon = true
	tbl_724.Animation = 17862066234
	tbl_724.Looped = false
	tbl_724.Stun = "Slowed"
	tbl_459.Frisbee = tbl_724
	local tbl_839 = {
		Sounds = {};
	}
	local function Startup(arg1_81, arg2_65, arg3_63) -- Line 3616
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_76 = script.Controller:Clone()
		clone_76:SetAttribute("EmoteProperty", true)
		table.insert(arg1_81, clone_76)
		arg3_63.Handle = clone_76
		clone_76.Name = "Retopo_Cube.001"
		local Retopo_Cube_001 = clone_76["Retopo_Cube.001"]
		Retopo_Cube_001:SetAttribute("EmoteProperty", true)
		table.insert(arg1_81, Retopo_Cube_001)
		arg3_63.md = Retopo_Cube_001
		Retopo_Cube_001.Part0 = arg2.HumanoidRootPart
		Retopo_Cube_001.Part1 = clone_76
		Retopo_Cube_001.Parent = arg2.HumanoidRootPart
		clone_76.Parent = arg2
	end
	tbl_839.Startup = Startup
	tbl_839.HideWeapon = true
	tbl_839.Animation = 17861843594
	tbl_839.Looped = false
	tbl_839.Stun = "Freeze"
	tbl_459["Controller Rage"] = tbl_839
	local tbl_153 = {
		Sounds = {};
	}
	local function Startup(arg1_82, arg2_66, arg3_64) -- Line 3645
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_326 = script.SpareChangeCup:Clone()
		clone_326:SetAttribute("EmoteProperty", true)
		table.insert(arg1_82, clone_326)
		arg3_64.Handle = clone_326
		clone_326.Name = "Handle"
		local Handle_5 = clone_326.Handle
		Handle_5:SetAttribute("EmoteProperty", true)
		table.insert(arg1_82, Handle_5)
		arg3_64.md = Handle_5
		Handle_5.Part0 = arg2["Right Arm"]
		Handle_5.Part1 = clone_326
		Handle_5.Parent = arg2["Right Arm"]
		clone_326.Parent = arg2
		local clone_251 = script.Box:Clone()
		clone_251:SetAttribute("EmoteProperty", true)
		table.insert(arg1_82, clone_251)
		arg3_64.Handle = clone_251
		clone_251.Name = "RBX"
		local Cube_002 = clone_251["Cube.002"]["Cube.002"]
		Cube_002:SetAttribute("EmoteProperty", true)
		table.insert(arg1_82, Cube_002)
		arg3_64.md = Cube_002
		Cube_002.Part0 = arg2.HumanoidRootPart
		Cube_002.Part1 = clone_251["Cube.002"]
		Cube_002.Parent = arg2.HumanoidRootPart
		clone_251.Parent = arg2
	end
	tbl_153.Startup = Startup
	tbl_153.HideWeapon = true
	tbl_153.Animation = 17861773600
	tbl_153.Looped = true
	tbl_153.Stun = "Freeze"
	tbl_459["Spare Change"] = tbl_153
	local tbl_1035 = {
		Sounds = {};
	}
	local function Startup(arg1_83, arg2_67, arg3_65) -- Line 3681
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_286 = script.TSB_tomato:Clone()
		clone_286:SetAttribute("EmoteProperty", true)
		table.insert(arg1_83, clone_286)
		arg3_65.TSB_tomato = clone_286
		clone_286.Transparency = 1
		local TSB_tomato = clone_286.TSB_tomato
		TSB_tomato:SetAttribute("EmoteProperty", true)
		table.insert(arg1_83, TSB_tomato)
		arg3_65.md = TSB_tomato
		TSB_tomato.Part0 = arg2.HumanoidRootPart
		TSB_tomato.Part1 = clone_286
		TSB_tomato.Parent = arg2.HumanoidRootPart
		clone_286.Parent = arg2
	end
	tbl_1035.Startup = Startup
	tbl_1035.Keyframes = {
		TomatoAppear = function(arg1_84) -- Line 3694
			arg1_84.TSB_tomato.Transparency = 0
		end;
		Tomato = function(arg1_85) -- Line 3698
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			arg1_85.TSB_tomato.Transparency = 1
			local clone_104_upvr = script.TSB_tomato:Clone()
			CollectionService_upvr:AddTag(clone_104_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_104_upvr, 5)
			clone_104_upvr.CanCollide = true
			clone_104_upvr.CanTouch = true
			clone_104_upvr.CanQuery = false
			clone_104_upvr.Massless = false
			clone_104_upvr.CollisionGroup = "nocol"
			clone_104_upvr.CFrame = arg1_85.TSB_tomato.CFrame
			clone_104_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_104_upvr.Parent = workspace.Thrown
			clone_104_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_104_upvr.Velocity = ((arg2.PrimaryPart.CFrame + arg2.PrimaryPart.CFrame.lookVector * 40).Position - (arg2.PrimaryPart.CFrame * CFrame.new(0, 0, -2)).Position - 0.5 * Vector3.new(0, -workspace.Gravity + 70, 0) * 1 * 1) / 1
			local var1023_upvw = 0
			local any_Connect_result1_upvw_3 = clone_104_upvr.Touched:Connect(function(arg1_86) -- Line 3720
				--[[ Upvalues[3]:
					[1]: var1023_upvw (read and write)
					[2]: clone_104_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_86:IsDescendantOf(workspace.Live) or tick() - var1023_upvw < 0.075 then
				else
					if math.abs(clone_104_upvr.Velocity.Y) < 4 then return end
					var1023_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://9120112840";
						Parent = clone_104_upvr;
						Volume = 3;
						PlaybackSpeed = Random.new():NextNumber(1.5, 2);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 3737
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_3 (read and write)
				]]
				if any_Connect_result1_upvw_3 then
					any_Connect_result1_upvw_3:Disconnect()
				end
			end)
		end;
	}
	tbl_1035.HideWeapon = true
	tbl_1035.Animation = 17863116997
	tbl_1035.Looped = false
	tbl_1035.Stun = "Freeze"
	tbl_459["Boo! Tomato"] = tbl_1035
	local tbl_1061 = {
		Sounds = {};
	}
	local function Startup(arg1_87, arg2_68, arg3_66) -- Line 3761
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_106 = script.TSB_waterbottle:Clone()
		clone_106:SetAttribute("EmoteProperty", true)
		table.insert(arg1_87, clone_106)
		arg3_66.WaterBottle = clone_106
		local TSB_waterbottle = clone_106.TSB_waterbottle
		TSB_waterbottle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_87, TSB_waterbottle)
		arg3_66.md = TSB_waterbottle
		TSB_waterbottle.Part0 = arg2.HumanoidRootPart
		TSB_waterbottle.Part1 = clone_106
		TSB_waterbottle.Parent = arg2.HumanoidRootPart
		clone_106.Parent = arg2
	end
	tbl_1061.Startup = Startup
	tbl_1061.Keyframes = {
		Flip = function(arg1_88) -- Line 3773
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			arg1_88.WaterBottle.Transparency = 1
			local clone_56_upvr = script.TSB_waterbottle:Clone()
			CollectionService_upvr:AddTag(clone_56_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_56_upvr, 5)
			clone_56_upvr.CanCollide = true
			clone_56_upvr.CanTouch = true
			clone_56_upvr.CanQuery = false
			clone_56_upvr.Massless = false
			clone_56_upvr.CollisionGroup = "nocol"
			clone_56_upvr.CFrame = arg1_88.WaterBottle.CFrame
			clone_56_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_56_upvr.Parent = workspace.Thrown
			clone_56_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_56_upvr.Velocity = ((arg2.PrimaryPart.CFrame + arg2.PrimaryPart.CFrame.lookVector * 20).Position - arg2.PrimaryPart.CFrame * Vector3.new(0, 0, -2) - 0.5 * Vector3.new(0, -workspace.Gravity, 0) * 1 * 1) / 1
			clone_56_upvr.AssemblyAngularVelocity = Vector3.new(15, 0, 0)
			local var1036_upvw = 0
			local any_Connect_result1_upvw_6 = clone_56_upvr.Touched:Connect(function(arg1_89) -- Line 3796
				--[[ Upvalues[3]:
					[1]: var1036_upvw (read and write)
					[2]: clone_56_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_89:IsDescendantOf(workspace.Live) or tick() - var1036_upvw < 0.075 then
				else
					if math.abs(clone_56_upvr.Velocity.Y) < 4 then return end
					var1036_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://9125743366";
						Parent = clone_56_upvr;
						Volume = 3;
						PlaybackSpeed = Random.new():NextNumber(1.5, 2);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 3812
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_6 (read and write)
				]]
				any_Connect_result1_upvw_6:Disconnect()
			end)
		end;
	}
	tbl_1061.HideWeapon = true
	tbl_1061.Animation = 17863045150
	tbl_1061.Looped = false
	tbl_1061.Stun = "Freeze"
	tbl_459["Bottle Flip"] = tbl_1061
	local tbl_389 = {
		Sounds = {};
	}
	local function Startup(arg1_90, arg2_69, arg3_67) -- Line 3833
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_246 = script.golfball:Clone()
		clone_246:SetAttribute("EmoteProperty", true)
		table.insert(arg1_90, clone_246)
		arg3_67.GolfBall = clone_246
		local golfball = clone_246.golfball
		golfball:SetAttribute("EmoteProperty", true)
		table.insert(arg1_90, golfball)
		arg3_67.md = golfball
		golfball.Part0 = arg2.HumanoidRootPart
		golfball.Part1 = clone_246
		golfball.Parent = arg2.HumanoidRootPart
		clone_246.Parent = arg2
		local clone_50 = script.golfclub:Clone()
		clone_50:SetAttribute("EmoteProperty", true)
		table.insert(arg1_90, clone_50)
		arg3_67.Handle = clone_50
		local golfclub = clone_50.golfclub
		golfclub:SetAttribute("EmoteProperty", true)
		table.insert(arg1_90, golfclub)
		arg3_67.md = golfclub
		golfclub.Part0 = arg2["Right Arm"]
		golfclub.Part1 = clone_50
		golfclub.Parent = arg2["Right Arm"]
		clone_50.Parent = arg2
	end
	tbl_389.Startup = Startup
	tbl_389.Keyframes = {
		GolfBall = function(arg1_91) -- Line 3852
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			arg1_91.GolfBall.Transparency = 1
			local clone_32_upvr = script.golfball:Clone()
			CollectionService_upvr:AddTag(clone_32_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_32_upvr, 5)
			clone_32_upvr.CanCollide = true
			clone_32_upvr.CanTouch = true
			clone_32_upvr.CanQuery = false
			clone_32_upvr.Massless = false
			clone_32_upvr.CollisionGroup = "nocol"
			clone_32_upvr.CFrame = arg1_91.GolfBall.CFrame
			clone_32_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_32_upvr.Parent = workspace.Thrown
			clone_32_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_32_upvr.Velocity = ((arg2.PrimaryPart.CFrame + arg2.PrimaryPart.CFrame.lookVector * 50).Position - arg2.PrimaryPart.CFrame * Vector3.new(0, 0, -2) - 0.5 * Vector3.new(0, -workspace.Gravity, 0) * 1 * 1) / 1
			local var1051_upvw = 0
			local any_Connect_result1_upvw_4 = clone_32_upvr.Touched:Connect(function(arg1_92) -- Line 3874
				--[[ Upvalues[3]:
					[1]: var1051_upvw (read and write)
					[2]: clone_32_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_92:IsDescendantOf(workspace.Live) or tick() - var1051_upvw < 0.075 then
				else
					if math.abs(clone_32_upvr.Velocity.Y) < 4 then return end
					var1051_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://9114625926";
						Parent = clone_32_upvr;
						Volume = 3;
						PlaybackSpeed = Random.new():NextNumber(0.9, 1.1);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 3890
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_4 (read and write)
				]]
				any_Connect_result1_upvw_4:Disconnect()
			end)
		end;
	}
	tbl_389.HideWeapon = true
	tbl_389.Animation = 17863077772
	tbl_389.Looped = false
	tbl_389.Stun = "Freeze"
	tbl_459.Golfing = tbl_389
	tbl_459["Random Dance"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861893708;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Left n' Right"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861844224;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_1027 = {
		Sounds = {};
	}
	local function Startup(arg1_93, arg2_70, arg3_68) -- Line 3952
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_294 = script.KickChair:Clone()
		clone_294.Name = "Chair"
		clone_294:SetAttribute("EmoteProperty", true)
		table.insert(arg1_93, clone_294)
		arg3_68.Handle = clone_294
		local Chair = clone_294.Chair
		Chair:SetAttribute("EmoteProperty", true)
		table.insert(arg1_93, Chair)
		arg3_68.md = Chair
		Chair.Part0 = arg2.HumanoidRootPart
		Chair.Part1 = clone_294
		Chair.Parent = arg2.HumanoidRootPart
		clone_294.Parent = arg2
	end
	tbl_1027.Startup = Startup
	tbl_1027.Animation = 17861869602
	tbl_1027.HideWeapon = true
	tbl_1027.Looped = false
	tbl_1027.Stun = "Freeze"
	tbl_1027.Fix = true
	tbl_459["I WILL FEINT"] = tbl_1027
	tbl_459["Cat Dancey"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861842039;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459.Fresh = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863085690;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Cute Spin"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861849696;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Leapin'"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17863299880;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459["Clubbin'"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861870429;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_443 = {
		Sounds = {};
	}
	local function Startup(arg1_94, arg2_71, arg3_69) -- Line 4056
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_168 = script.LeftEyebrow:Clone()
		clone_168:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, clone_168)
		arg3_69.Handle = clone_168
		local LeftEyebrow = clone_168.LeftEyebrow
		LeftEyebrow:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, LeftEyebrow)
		arg3_69.md = LeftEyebrow
		LeftEyebrow.Part0 = arg2.Head
		LeftEyebrow.Part1 = clone_168
		LeftEyebrow.Parent = arg2.Head
		clone_168.Parent = arg2.Head
		local clone_7 = script.RightEyebrow:Clone()
		clone_7:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, clone_7)
		arg3_69.Handle = clone_7
		local RightEyebrow = clone_7.RightEyebrow
		RightEyebrow:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, RightEyebrow)
		arg3_69.md = RightEyebrow
		RightEyebrow.Part0 = arg2.Head
		RightEyebrow.Part1 = clone_7
		RightEyebrow.Parent = arg2.Head
		clone_7.Parent = arg2.Head
		local clone_319 = script.shades:Clone()
		clone_319:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, clone_319)
		arg3_69.Handle = clone_319
		local shades = clone_319.shades
		shades:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, shades)
		arg3_69.md = shades
		shades.Part0 = arg2.Head
		shades.Part1 = clone_319
		shades.Parent = arg2.Head
		clone_319.Parent = arg2
		local clone_167 = script.mic:Clone()
		clone_167:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, clone_167)
		arg3_69.Handle = clone_167
		local mic = clone_167.mic
		mic:SetAttribute("EmoteProperty", true)
		table.insert(arg1_94, mic)
		arg3_69.md = mic
		mic.Part0 = arg2["Left Arm"]
		mic.Part1 = clone_167
		mic.Parent = arg2["Left Arm"]
		clone_167.Parent = arg2
	end
	tbl_443.Startup = Startup
	tbl_443.HideWeapon = true
	tbl_443.Animation = 17862419034
	tbl_443.Looped = false
	tbl_443.Stun = "Slowed"
	tbl_459.Puzzled = tbl_443
	local tbl_530 = {
		Sounds = {};
	}
	local function Startup(arg1_95, arg2_72, arg3_70) -- Line 4104
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var1095 = false
		if arg2.Head:FindFirstChild("afro") then
			var1095 = true
		end
		local clone_34 = script.afro:Clone()
		if var1095 then
			clone_34:SetAttribute("EmoteProperty", true)
			table.insert(arg1_95, clone_34)
			arg3_70.Handle = clone_34
		end
		local afro = clone_34.afro
		if var1095 then
			afro:SetAttribute("EmoteProperty", true)
			table.insert(arg1_95, afro)
			arg3_70.md = afro
		end
		afro.Part0 = arg2.Head
		afro.Part1 = clone_34
		afro.Parent = arg2.Head
		clone_34.Parent = arg2.Head
		local clone_93 = script.HairDryer:Clone()
		clone_93:SetAttribute("EmoteProperty", true)
		table.insert(arg1_95, clone_93)
		arg3_70.Handle = clone_93
		local HairDryer = clone_93.HairDryer
		HairDryer:SetAttribute("EmoteProperty", true)
		table.insert(arg1_95, HairDryer)
		arg3_70.md = HairDryer
		HairDryer.Part0 = arg2["Left Arm"]
		HairDryer.Part1 = clone_93
		HairDryer.Parent = arg2["Left Arm"]
		clone_93.Parent = arg2
	end
	tbl_530.Startup = Startup
	tbl_530.HideWeapon = true
	tbl_530.Animation = 17862799431
	tbl_530.Looped = false
	tbl_530.Stun = "Slowed"
	tbl_459["Hair Dryer"] = tbl_530
	tbl_459["Club Dance"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861842605;
		Stun = "Freeze";
		Looped = true;
	}
	tbl_459["Signature Shuffle"] = {
		Sounds = {};
		HideWeapon = true;
		Looped = true;
		Animation = 17877281437;
		Stun = "Slowed";
	}
	tbl_459["Shoo!"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 120410055632356;
		Stun = "Slowed";
		StunAttribute = 1;
		Looped = true;
	}
	tbl_459["Sharp Shooter"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861840167;
		Stun = "Freeze";
	}
	tbl_459.Tornado = {
		Sounds = {};
		Animation = 18459285150;
		Stun = "Slowed";
		Looped = true;
	}
	tbl_459.Weakling = {
		Sounds = {};
		Animation = 18459317750;
		Stun = "Freeze";
		Looped = true;
	}
	local tbl_1018 = {
		Sounds = {};
	}
	local function Startup(arg1_96, arg2_73, arg3_71) -- Line 4233
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1018.Startup = Startup
	tbl_1018.IdleSound = {
		SoundId = "rbxassetid://18459227438";
		Volume = 0.5;
		Looped = true;
	}
	tbl_1018.Idle = 18459220516
	tbl_1018.Animation = 18459215845
	tbl_1018.Stun = "Slowed"
	tbl_1018.HideWeapon = true
	tbl_459.Kitchen = tbl_1018
	local tbl_121 = {
		Sounds = {};
	}
	local function Startup(arg1_97, arg2_74, arg3_72) -- Line 4258
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_121.Startup = Startup
	tbl_121.Idle = 18897705219
	tbl_121.Animation = 18897703230
	tbl_121.Stun = "Slowed"
	tbl_121.HideWeapon = true
	tbl_459.Shadow = tbl_121
	local tbl_400 = {
		Sounds = {};
	}
	local function Startup(arg1_98, arg2_75, arg3_73) -- Line 4283
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_400.Startup = Startup
	tbl_400.Idle = 18897669629
	tbl_400.Animation = 18897667042
	tbl_400.Stun = "Slowed"
	tbl_400.HideWeapon = true
	tbl_459.Luck = tbl_400
	local tbl_1055 = {
		Sounds = {};
	}
	local function Startup(arg1_99, arg2_76, arg3_74) -- Line 4302
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1055.Startup = Startup
	tbl_1055.IdleSound = {
		SoundId = "rbxassetid://18459159579";
		Volume = 0.5;
		Looped = true;
	}
	tbl_1055.Idle = 18459183268
	tbl_1055.Animation = 18459178353
	tbl_1055.Stun = "Slowed"
	tbl_1055.HideWeapon = true
	tbl_459.Void = tbl_1055
	local tbl_1065 = {
		Sounds = {};
	}
	local function Startup(arg1_100, arg2_77, arg3_75) -- Line 4328
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1065.Startup = Startup
	tbl_1065.Animation = 18897621181
	tbl_1065.Stun = "Slowed"
	tbl_1065.StunAttribute = 1.5
	tbl_1065.HideWeapon = true
	tbl_459.Four = tbl_1065
	local tbl_254 = {
		Sounds = {};
	}
	local function Startup(arg1_101, arg2_78, arg3_76) -- Line 4347
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_254.Startup = Startup
	tbl_254.Animation = 18897634229
	tbl_254.Stun = "Freeze"
	tbl_254.HideWeapon = true
	tbl_459["Heart Hands"] = tbl_254
	local tbl_283 = {
		Sounds = {};
	}
	local function Startup(arg1_102, arg2_79, arg3_77) -- Line 4365
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_283.Startup = Startup
	tbl_283.Animation = 18897523693
	tbl_283.Stun = "Freeze"
	tbl_283.HideWeapon = true
	tbl_459.Cheese = tbl_283
	local tbl_554 = {
		Sounds = {};
	}
	local function Startup(arg1_103, arg2_80, arg3_78) -- Line 4383
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_554.Startup = Startup
	tbl_554.Animation = 18450373829
	tbl_554.Stun = "Slowed"
	tbl_554.HideWeapon = true
	tbl_459["I love TSB"] = tbl_554
	local tbl_695 = {
		Sounds = {};
	}
	local function Startup(arg1_104, arg2_81, arg3_79) -- Line 4402
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		for i_31 = 1, 3 do
			local clone_30 = script.HmmDot:Clone()
			clone_30.Name = i_31
			clone_30.Parent = arg2
			local Motor6D_6 = Instance.new("Motor6D")
			Motor6D_6.C0 = CFrame.new(-1.493, 1.17, -0.086) * CFrame.Angles(0, math.pi, 0)
			Motor6D_6.Name = i_31
			Motor6D_6.Part0 = arg2.Torso
			Motor6D_6.Part1 = clone_30
			Motor6D_6.Parent = arg2.Torso
			clone_30:SetAttribute("EmoteProperty", true)
			Motor6D_6:SetAttribute("EmoteProperty", true)
			table.insert(arg1_104, clone_30)
			table.insert(arg1_104, Motor6D_6)
		end
	end
	tbl_695.Startup = Startup
	tbl_695.Animation = 17862470017
	tbl_695.Looped = true
	tbl_695.Stun = "Slowed"
	tbl_695.HideWeapon = true
	tbl_459.Thinking = tbl_695
	local tbl_518 = {
		Sounds = {};
	}
	local function Startup(arg1_105, arg2_82, arg3_80) -- Line 4446
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_283 = script.yoyorig:Clone()
		clone_283:SetAttribute("EmoteProperty", true)
		table.insert(arg1_105, clone_283)
		arg3_80.Handle = clone_283
		local m6d_11 = clone_283.m6d
		m6d_11:SetAttribute("EmoteProperty", true)
		table.insert(arg1_105, m6d_11)
		arg3_80.md = m6d_11
		m6d_11.Part0 = arg2.HumanoidRootPart
		m6d_11.Part1 = clone_283.main
		m6d_11.Name = "main"
		m6d_11.Parent = arg2.HumanoidRootPart
		local m6d2 = clone_283.m6d2
		m6d2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_105, m6d2)
		arg3_80.md = m6d2
		m6d2.Part0 = arg2.HumanoidRootPart
		m6d2.Part1 = clone_283.yoyostring
		m6d2.Name = "yoyostring"
		m6d2.Parent = arg2.HumanoidRootPart
		clone_283.Parent = arg2
	end
	tbl_518.Startup = Startup
	tbl_518.Animation = 18459518606
	tbl_518.Stun = "Slowed"
	tbl_518.HideWeapon = true
	tbl_518.Looped = true
	tbl_459.Stroll = tbl_518
	local tbl_203 = {
		Sounds = {};
	}
	local function Startup(arg1_106, arg2_83, arg3_81) -- Line 4472
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_321 = script.BlindGlasses:Clone()
		clone_321:SetAttribute("EmoteProperty", true)
		table.insert(arg1_106, clone_321)
		arg3_81.Handle = clone_321
		local BlindGlasses = clone_321.BlindGlasses
		BlindGlasses.Part0 = arg2.Head
		BlindGlasses.Part1 = clone_321
		clone_321.Parent = arg2
		local clone_299 = script.BlindWalkerThing:Clone()
		clone_299:SetAttribute("EmoteProperty", true)
		table.insert(arg1_106, clone_299)
		arg3_81.Handle = clone_299
		local BlindWalkerThing = clone_299.BlindWalkerThing
		BlindWalkerThing:SetAttribute("EmoteProperty", true)
		table.insert(arg1_106, BlindWalkerThing)
		arg3_81.md = BlindWalkerThing
		BlindWalkerThing.Part0 = arg2["Right Arm"]
		BlindWalkerThing.Part1 = clone_299
		BlindWalkerThing.Parent = arg2["Right Arm"]
		clone_299.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://18459664775";
			Volume = 1;
			Looped = true;
			Parent = clone_299;
		}):Play()
	end
	tbl_203.Startup = Startup
	tbl_203.Keyframes = {
		clap = function(arg1_107, arg2_84, arg3_82) -- Line 4495
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.8;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	tbl_203.Looped = true
	tbl_203.Animation = 18459646696
	tbl_203.Stun = "Slowed"
	tbl_203.HideWeapon = true
	tbl_459.Guided = tbl_203
	local tbl_1052 = {
		Sounds = {};
	}
	local function Startup(arg1_108, arg2_85, arg3_83) -- Line 4522
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_184 = script.catjello:Clone()
		clone_184:SetAttribute("EmoteProperty", true)
		table.insert(arg1_108, clone_184)
		arg3_83.Handle = clone_184
		local m6d_32 = clone_184.m6d
		m6d_32:SetAttribute("EmoteProperty", true)
		table.insert(arg1_108, m6d_32)
		arg3_83.md = m6d_32
		m6d_32.Part0 = arg2.HumanoidRootPart
		m6d_32.Part1 = clone_184.main
		m6d_32.Parent = arg2.HumanoidRootPart
		clone_184.Parent = arg2
	end
	tbl_1052.Startup = Startup
	tbl_1052.Animation = 18459402335
	tbl_1052.Stun = "Slowed"
	tbl_1052.HideWeapon = true
	tbl_459.Jello = tbl_1052
	local tbl_176 = {
		Sounds = {};
	}
	local function Startup(arg1_109, arg2_86, arg3_84) -- Line 4546
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_233 = script.Knife:Clone()
		clone_233:SetAttribute("EmoteProperty", true)
		table.insert(arg1_109, clone_233)
		arg3_84.Handle = clone_233
		local Knife = clone_233.Knife
		Knife:SetAttribute("EmoteProperty", true)
		table.insert(arg1_109, Knife)
		arg3_84.md = Knife
		Knife.Part0 = arg2.HumanoidRootPart
		Knife.Part1 = clone_233
		Knife.Parent = arg2.HumanoidRootPart
		clone_233.Parent = arg2
	end
	tbl_176.Startup = Startup
	tbl_176.Animation = 17862340094
	tbl_176.Looped = true
	tbl_176.Stun = "Slowed"
	tbl_176.HideWeapon = true
	tbl_459["Knife Trick"] = tbl_176
	local tbl_668 = {
		Sounds = {};
	}
	local function Startup(arg1_110, arg2_87, arg3_85) -- Line 4571
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_240 = script.Cube:Clone()
		clone_240:SetAttribute("EmoteProperty", true)
		table.insert(arg1_110, clone_240)
		arg3_85.Handle = clone_240
		local Cube = clone_240.Cube
		Cube:SetAttribute("EmoteProperty", true)
		table.insert(arg1_110, Cube)
		arg3_85.md = Cube
		clone_240.Name = "Cube"
		Cube.Part0 = arg2["Right Arm"]
		Cube.Part1 = clone_240
		Cube.Parent = arg2["Right Arm"]
		clone_240.Parent = arg2
	end
	tbl_668.Startup = Startup
	tbl_668.Animation = 17863040703
	tbl_668.Looped = false
	tbl_668.Stun = "Slowed"
	tbl_668.HideWeapon = true
	tbl_459.Awe = tbl_668
	local tbl_980 = {
		Sounds = {};
	}
	local function Startup(arg1_111, arg2_88, arg3_86) -- Line 4597
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_51 = script.Brick:Clone()
		clone_51:SetAttribute("EmoteProperty", true)
		table.insert(arg1_111, clone_51)
		arg3_86.Handle = clone_51
		local Handle_14 = clone_51.Handle
		Handle_14:SetAttribute("EmoteProperty", true)
		table.insert(arg1_111, Handle_14)
		arg3_86.md = Handle_14
		clone_51.Name = "Brick"
		Handle_14.Part0 = arg2["Right Arm"]
		Handle_14.Part1 = clone_51
		Handle_14.Parent = arg2["Right Arm"]
		clone_51.Parent = arg2
	end
	tbl_980.Startup = Startup
	tbl_980.Animation = 17862170658
	tbl_980.Looped = true
	tbl_980.Stun = "Slowed"
	tbl_980.HideWeapon = true
	tbl_459["Rough Snack"] = tbl_980
	local tbl_540 = {
		Sounds = {};
	}
	local function Startup(arg1_112, arg2_89, arg3_87) -- Line 4624
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_144 = script.Lightbulb:Clone()
		clone_144:SetAttribute("EmoteProperty", true)
		table.insert(arg1_112, clone_144)
		arg3_87.Handle = clone_144
		local Handle_28 = clone_144.Handle
		Handle_28:SetAttribute("EmoteProperty", true)
		table.insert(arg1_112, Handle_28)
		arg3_87.md = Handle_28
		clone_144.Name = "Lightbulb"
		Handle_28.Part0 = arg2.HumanoidRootPart
		Handle_28.Part1 = clone_144
		Handle_28.Parent = arg2.HumanoidRootPart
		clone_144.Parent = arg2
	end
	tbl_540.Startup = Startup
	tbl_540.HideWeapon = true
	tbl_540.Animation = 17861846501
	tbl_540.Looped = false
	tbl_540.Stun = "Freeze"
	tbl_459["Eureka!"] = tbl_540
	local tbl_942 = {
		Sounds = {};
		IdleSound = {
			SoundId = "rbxassetid://17862032072";
			Volume = 0.35;
			Looped = true;
		};
	}
	local function Startup(arg1_113, arg2_90, arg3_88) -- Line 4655
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_100 = script.Car:Clone()
		clone_100:SetAttribute("EmoteProperty", true)
		table.insert(arg1_113, clone_100)
		arg3_88.Handle = clone_100
		local Handle_40 = clone_100.Handle
		Handle_40:SetAttribute("EmoteProperty", true)
		table.insert(arg1_113, Handle_40)
		arg3_88.md = Handle_40
		clone_100.Name = "Car"
		Handle_40.Part0 = arg2.HumanoidRootPart
		Handle_40.Part1 = clone_100
		clone_100.Parent = arg2
	end
	tbl_942.Startup = Startup
	tbl_942.Idle = 17863104140
	tbl_942.Animation = 17861887753
	tbl_942.Stun = "Slowed"
	tbl_942.StunAttribute = 1
	tbl_942.HideWeapon = true
	tbl_459["Road Trip"] = tbl_942
	tbl_459["Point Shuffle"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17861883497;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_319 = {
		Sounds = {};
	}
	local function Startup(arg1_114, arg2_91, arg3_89) -- Line 4699
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_298 = script.WatermelonSpin:Clone()
		clone_298.Name = "WaterMelon"
		clone_298:SetAttribute("EmoteProperty", true)
		table.insert(arg1_114, clone_298)
		arg3_89.Handle = clone_298
		local Handle_36 = clone_298.Handle
		Handle_36:SetAttribute("EmoteProperty", true)
		table.insert(arg1_114, Handle_36)
		arg3_89.md = Handle_36
		clone_298.Name = "Watermelon"
		Handle_36.Part0 = arg2["Right Arm"]
		Handle_36.Part1 = clone_298
		Handle_36.Parent = arg2["Right Arm"]
		clone_298.Parent = arg2
	end
	tbl_319.Startup = Startup
	tbl_319.Animation = 17863063827
	tbl_319.Stun = "Slowed"
	tbl_319.Looped = true
	tbl_319.HideWeapon = true
	tbl_459["Watermelon Spin"] = tbl_319
	tbl_459.Livin = {
		Sounds = {};
		Animation = 17861873461;
		Stun = "Freeze";
		Looped = true;
		HideWeapon = true;
	}
	local tbl_239 = {
		Sounds = {};
	}
	local function Startup(arg1_115, arg2_92, arg3_90) -- Line 4748
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_295 = script.Purse:Clone()
		clone_295:SetAttribute("EmoteProperty", true)
		local var1218 = arg5
		if not var1218 then
			var1218 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1218 then
				var1218 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_295, "emoteendstuff"..var1218.Name)
		local Motor6D_5 = Instance.new("Motor6D")
		Motor6D_5:SetAttribute("EmoteProperty", true)
		local var1220 = arg5
		if not var1220 then
			var1220 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1220 then
				var1220 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor6D_5, "emoteendstuff"..var1220.Name)
		Motor6D_5.C0 = CFrame.new(0.011, -0.531, 0)
		Motor6D_5.Part0 = arg2["Left Arm"]
		Motor6D_5.Part1 = clone_295.PrimaryPart
		Motor6D_5.Parent = arg2["Left Arm"]
		clone_295.Parent = arg2
		table.insert(arg1_115, clone_295)
		table.insert(arg1_115, Motor6D_5)
	end
	tbl_239.Startup = Startup
	tbl_239.Animation = 17861893094
	tbl_239.Looped = true
	tbl_239.Stun = "Slowed"
	tbl_239.HideWeapon = true
	tbl_459.Sassy = tbl_239
	local tbl_142 = {
		Sounds = {};
	}
	local function Startup(arg1_116, arg2_93, arg3_91) -- Line 4779
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_14 = script.Rbx:Clone()
		clone_14:SetAttribute("EmoteProperty", true)
		local var1229 = arg5
		if not var1229 then
			var1229 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1229 then
				var1229 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_14, "emoteendstuff"..var1229.Name)
		clone_14.Parent = arg2
		local Motor6D_10 = Instance.new("Motor6D")
		Motor6D_10:SetAttribute("EmoteProperty", true)
		local var1231 = arg5
		if not var1231 then
			var1231 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1231 then
				var1231 = arg2
			end
		end
		CollectionService_upvr:AddTag(Motor6D_10, "emoteendstuff"..var1231.Name)
		Motor6D_10.C0 = CFrame.new(-0.325, -0.891, -0.064)
		Motor6D_10.C1 = CFrame.new(0, 0, 0.604)
		Motor6D_10.Part0 = arg2["Right Arm"]
		Motor6D_10.Part1 = clone_14.PrimaryPart
		Motor6D_10.Parent = arg2["Right Arm"]
		table.insert(arg1_116, clone_14)
		table.insert(arg1_116, Motor6D_10)
	end
	tbl_142.Startup = Startup
	tbl_142.Animation = 18418313278
	tbl_142.Stun = "Slowed"
	tbl_142.HideWeapon = true
	tbl_142.Looped = true
	tbl_459["Drum Major"] = tbl_142
	tbl_459.Helicopter = {
		Sounds = {};
		IdleSound = {
			SoundId = "rbxassetid://9100684862";
			Volume = 0.25;
			Looped = true;
		};
		Idle = 17862998594;
		Animation = 17862997402;
		Stun = "Slowed";
		HideWeapon = true;
	}
	tbl_459["Club Shuffle"] = {
		Sounds = {};
		Animation = 17861834531;
		Looped = true;
		Stun = "Slowed";
		HideWeapon = true;
	}
	tbl_459["Head Tap"] = {
		Sounds = {};
		Animation = 17863050431;
		Looped = true;
		Stun = "Freeze";
		HideWeapon = true;
	}
	tbl_459.Listen = {
		Sounds = {};
		Looped = true;
		Animation = 17861894459;
		Stun = "Slowed";
		HideWeapon = true;
	}
	local tbl_564 = {
		Sounds = {};
		HideWeapon = true;
	}
	local function Startup(arg1_117, arg2_94, arg3_92) -- Line 4881
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_564.Startup = Startup
	tbl_564.Animation = 17862366649
	tbl_564.Stun = "Slowed"
	tbl_459["Can't See Me"] = tbl_564
	tbl_459.Rest = {
		Sounds = {};
		End = {15443689801, 3.7, {
			SoundId = "rbxassetid://15443922202";
			Volume = 1;
			Looped = false;
		}};
		Idle = 15443688094;
		Animation = 15443682006;
		Stun = "Freeze";
	}
	tbl_459["Show 'Em"] = {
		Sounds = {};
		Looped = true;
		Animation = 137797933797894;
		Stun = "Slowed";
	}
	tbl_459.Groove = {
		Sounds = {};
		Looped = true;
		Animation = 16525536622;
		Stun = "Slowed";
	}
	tbl_459["Party Lover"] = {
		Sounds = {};
		Looped = true;
		Animation = 16528092313;
		Stun = "Freeze";
	}
	tbl_459.Giant = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_118) -- Line 4962
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://16526736324";
					Volume = 0.8;
					Parent = arg2.Torso;
				}):Play()
			end;
		};
		Infinite = true;
		Looped = true;
		Animation = 16526624122;
		Stun = "Slowed";
	}
	tbl_459.Phonk = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_119) -- Line 4989
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local tbl_147 = {}
				local var1272 = "rbxassetid://2704706975"
				tbl_147.SoundId = var1272
				if not arg1_119.first then
					var1272 = 1
				else
					var1272 = 0.65
				end
				tbl_147.Volume = var1272
				tbl_147.Parent = arg2.Head
				var93_upvr(tbl_147):Play()
				if not arg1_119.first then
					arg1_119.first = true
				end
			end;
		};
		Infinite = true;
		Looped = true;
		Animation = 16526164064;
		Stun = "Freeze";
	}
	local tbl_973 = {
		Sounds = {};
	}
	local function Startup(arg1_120, arg2_95, arg3_93) -- Line 5017
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_85 = script.untitled:Clone()
		clone_85:SetAttribute("EmoteProperty", true)
		local var1281 = arg5
		if not var1281 then
			var1281 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1281 then
				var1281 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_85, "emoteendstuff"..var1281.Name)
		local m6d_20 = clone_85.m6d
		m6d_20:SetAttribute("EmoteProperty", true)
		local var1283 = arg5
		if not var1283 then
			var1283 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1283 then
				var1283 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_20, "emoteendstuff"..var1283.Name)
		m6d_20.Name = "Cube.007"
		m6d_20.Part1 = clone_85["Cube.007"]
		m6d_20.Part0 = arg2.Torso
		m6d_20.Parent = arg2.Torso
		clone_85.Parent = arg2
	end
	tbl_973.Startup = Startup
	tbl_973.Keyframes = {
		clap = function() -- Line 5028
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = ({"rbxassetid://137024005187459", "rbxassetid://76278400824030", "rbxassetid://94509235587766"})[math.random(1, 3)];
				Volume = 0.4;
				PlaybackSpeed = 1.15;
				Parent = arg2.Torso;
			}):Play()
		end;
	}
	tbl_973.Animation = 136571320124330
	tbl_973.Looped = true
	tbl_973.Infinite = true
	tbl_973.Stun = "Slowed"
	tbl_973.StunAttribute = 1
	tbl_459.Angel = tbl_973
	local tbl_301 = {
		Sounds = {};
	}
	local function Startup(arg1_121, arg2_96, arg3_94) -- Line 5055
		--[[ Upvalues[5]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var2_upvw (copied, read and write)
		]]
		local clone_174 = script.soccer:Clone()
		clone_174:SetAttribute("EmoteProperty", true)
		local var1299 = arg5
		if not var1299 then
			var1299 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1299 then
				var1299 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_174, "emoteendstuff"..var1299.Name)
		local Ball_3 = clone_174.Handle.Ball
		Ball_3:SetAttribute("EmoteProperty", true)
		local var1301 = arg5
		if not var1301 then
			var1301 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1301 then
				var1301 = arg2
			end
		end
		CollectionService_upvr:AddTag(Ball_3, "emoteendstuff"..var1301.Name)
		Ball_3.Name = "Ball"
		Ball_3.Part0 = clone_174.Handle
		Ball_3.Part1 = clone_174.Ball
		local m6d_21 = clone_174.m6d
		m6d_21:SetAttribute("EmoteProperty", true)
		local var1303 = arg5
		if not var1303 then
			var1303 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1303 then
				var1303 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_21, "emoteendstuff"..var1303.Name)
		m6d_21.Name = "Handle"
		m6d_21.Part0 = arg2.Torso
		m6d_21.Part1 = clone_174.Handle
		m6d_21.Parent = arg2.Torso
		clone_174.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16592084595";
			Parent = clone_174.Ball;
			RollOffMaxDistance = var2_upvw;
			Volume = 1;
			Looped = true;
		}):Play()
	end
	tbl_301.Startup = Startup
	tbl_301.Animation = 16592100518
	tbl_301.Looped = true
	tbl_301.Stun = "Slowed"
	tbl_459.Soccer = tbl_301
	local tbl_538 = {
		Sounds = {};
	}
	local function Startup(arg1_122, arg2_97, arg3_95) -- Line 5093
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_114 = script.whistlecard:Clone()
		clone_114:SetAttribute("EmoteProperty", true)
		local var1309 = arg5
		if not var1309 then
			var1309 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1309 then
				var1309 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_114, "emoteendstuff"..var1309.Name)
		local m6d_13 = clone_114.m6d
		m6d_13:SetAttribute("EmoteProperty", true)
		local var1311 = arg5
		if not var1311 then
			var1311 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1311 then
				var1311 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_13, "emoteendstuff"..var1311.Name)
		m6d_13.Name = "Handle"
		m6d_13.Part0 = arg2["Left Arm"]
		m6d_13.Part1 = clone_114.Handle
		m6d_13.Parent = arg2["Left Arm"]
		clone_114.Parent = arg2["Left Arm"]
		arg3_95.whistle = clone_114.whistle
		arg3_95.card = clone_114.redcard
	end
	tbl_538.Startup = Startup
	tbl_538.Keyframes = {
		whistle = function(arg1_123, arg2_98, arg3_96) -- Line 5106
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(arg1_123.whistle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = Vector3.new();
			}):Play()
		end;
		card = function(arg1_124, arg2_99, arg3_97) -- Line 5112
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(arg1_124.card, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = Vector3.new();
			}):Play()
		end;
	}
	tbl_538.Animation = 16591707771
	tbl_538.HideWeapon = true
	tbl_538.Stun = "Freeze"
	tbl_459["Red Card"] = tbl_538
	local tbl_387 = {
		Sounds = {};
	}
	local function Startup(arg1_125, arg2_100, arg3_98) -- Line 5134
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_274 = script.Dig.Handle:Clone()
		clone_274:SetAttribute("EmoteProperty", true)
		table.insert(arg1_125, clone_274)
		local var1321 = arg5
		if not var1321 then
			var1321 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1321 then
				var1321 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_274, "emoteendstuff"..var1321.Name)
		local m6d_36 = clone_274.m6d
		m6d_36:SetAttribute("EmoteProperty", true)
		table.insert(arg1_125, m6d_36)
		local var1323 = arg5
		if not var1323 then
			var1323 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1323 then
				var1323 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_36, "emoteendstuff"..var1323.Name)
		m6d_36.Name = "Handle"
		m6d_36.Part0 = arg2["Right Arm"]
		m6d_36.Part1 = clone_274
		m6d_36.Parent = arg2["Right Arm"]
		clone_274.Parent = arg2
		local clone_196 = script.Dig.Grave:Clone()
		clone_196:SetAttribute("EmoteProperty", true)
		table.insert(arg1_125, clone_196)
		local Weld_3 = Instance.new("Weld")
		Weld_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_125, Weld_3)
		Weld_3.Part0 = arg2.PrimaryPart
		Weld_3.Part1 = clone_196.Headstone
		Weld_3.Parent = clone_196
		Weld_3.C0 = CFrame.new(1.59004211, -1.53838396, -5.02381897, -0.999934554, -0.0114461109, 0, -0.0114019588, 0.996077538, -0.0877478421, 0.00100437133, -0.0877420902, -0.996142864)
		clone_196.Parent = arg2
	end
	tbl_387.Startup = Startup
	tbl_387.Looped = true
	tbl_387.Animation = 16598916589
	tbl_387.HideWeapon = true
	tbl_387.Stun = "Freeze"
	tbl_459["Your Grave"] = tbl_387
	local tbl_1102 = {
		Sounds = {};
	}
	local function Startup(arg1_126, arg2_101, arg3_99) -- Line 5168
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_297 = script.slingshot:Clone()
		clone_297:SetAttribute("EmoteProperty", true)
		clone_297:SetAttribute("EmoteProperty", true)
		table.insert(arg1_126, clone_297)
		local var1334 = arg5
		if not var1334 then
			var1334 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1334 then
				var1334 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_297, "emoteendstuff"..var1334.Name)
		local m6d_23 = clone_297.m6d
		m6d_23:SetAttribute("EmoteProperty", true)
		m6d_23:SetAttribute("EmoteProperty", true)
		table.insert(arg1_126, m6d_23)
		local var1336 = arg5
		if not var1336 then
			var1336 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1336 then
				var1336 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_23, "emoteendstuff"..var1336.Name)
		m6d_23.Name = "Handle"
		m6d_23.Part0 = arg2["Right Arm"]
		m6d_23.Part1 = clone_297.Handle
		m6d_23.Parent = arg2["Right Arm"]
		clone_297.Parent = arg2["Right Arm"]
		arg3_99.rock = clone_297.rock
		arg3_99.rock.Trail.Enabled = false
	end
	tbl_1102.Startup = Startup
	tbl_1102.Keyframes = {
		go = function(arg1_127, arg2_102, arg3_100) -- Line 5181
			--[[ Upvalues[3]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			]]
			local clone_260 = arg1_127.rock:Clone()
			CollectionService_upvr:AddTag(clone_260, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_260, 5)
			clone_260.CanCollide = false
			clone_260.CanTouch = true
			clone_260.CanQuery = false
			clone_260.Massless = false
			clone_260.CollisionGroup = "nocol"
			clone_260.CFrame = arg1_127.rock.CFrame
			clone_260.Trail.Enabled = true
			arg1_127.rock:Destroy()
			clone_260.Parent = workspace.Thrown
			shared.sfx({
				SoundId = "rbxassetid://9120435415";
				Parent = clone_260;
				Volume = 2;
			}):Play()
			local Attachment_8 = Instance.new("Attachment", clone_260)
			Attachment_8.Position = Vector3.new(0, 0, 0)
			local LinearVelocity_2 = Instance.new("LinearVelocity", Attachment_8)
			LinearVelocity_2.MaxForce = 40000
			LinearVelocity_2.VectorVelocity = arg2.PrimaryPart.CFrame.lookVector * 200 + Vector3.new(0, 20, 0)
			LinearVelocity_2.Attachment0 = Attachment_8
			game:GetService("Debris"):AddItem(LinearVelocity_2, 0.15)
			clone_260:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
		end;
	}
	tbl_1102.Animation = 16598695404
	tbl_1102.HideWeapon = true
	tbl_1102.Stun = "Freeze"
	tbl_459.Slingshot = tbl_1102
	local tbl_76 = {
		Sounds = {};
	}
	local function Startup(arg1_128, arg2_103, arg3_101) -- Line 5232
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_99 = script.paddle:Clone()
		clone_99:SetAttribute("EmoteProperty", true)
		local var1348 = arg5
		if not var1348 then
			var1348 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1348 then
				var1348 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_99, "emoteendstuff"..var1348.Name)
		local m6d_34 = clone_99.m6d
		m6d_34:SetAttribute("EmoteProperty", true)
		local var1350 = arg5
		if not var1350 then
			var1350 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1350 then
				var1350 = arg2
			end
		end
		CollectionService_upvr:AddTag(m6d_34, "emoteendstuff"..var1350.Name)
		m6d_34.Name = "Wood"
		m6d_34.Part0 = arg2["Right Arm"]
		m6d_34.Part1 = clone_99.Wood
		m6d_34.Parent = arg2["Right Arm"]
		clone_99.Parent = arg2["Right Arm"]
	end
	tbl_76.Startup = Startup
	tbl_76.End = {16523235955, 1.583, {
		SoundId = "rbxassetid://16523118347";
		Volume = 1;
		Looped = false;
	}}
	tbl_76.Idle = 16523084292
	tbl_76.Animation = 16523080348
	tbl_76.HideWeapon = true
	tbl_76.Stun = "Slowed"
	tbl_459.Paddleball = tbl_76
	tbl_459["Show Me"] = {
		Sounds = {};
		Fix = true;
		Animation = 16039093008;
		Stun = "Freeze";
	}
	tbl_459.Sneak = {
		Sounds = {};
		Looped = true;
		Animation = 16746892678;
		Stun = "Slowed";
	}
	tbl_459["What'd You Say"] = {
		Sounds = {};
		Looped = true;
		Animation = 17266193826;
		Stun = "Freeze";
	}
	tbl_459.Robot = {
		Sounds = {};
		Looped = true;
		Animation = 17086754292;
		Stun = "Slowed";
	}
	local tbl_882 = {
		Sounds = {};
	}
	local function Startup(arg1_129, arg2_104, arg3_102) -- Line 5329
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_882.Startup = Startup
	tbl_882.Keyframes = {
		slow = function(arg1_130, arg2_105, arg3_103) -- Line 5335
			arg3_103:AdjustSpeed(0.135)
		end;
		back = function(arg1_131, arg2_106, arg3_104) -- Line 5339
			arg3_104:AdjustSpeed(1)
		end;
	}
	tbl_882.HideWeapon = true
	tbl_882.Animation = 16047480326
	tbl_882.Stun = "Slowed"
	tbl_459["Bye Bye"] = tbl_882
	local tbl_59 = {
		Sounds = {};
	}
	local function Startup(arg1_132, arg2_107, arg3_105) -- Line 5360
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var110_upvr("Left", arg1_132, arg2)
		var110_upvr("Right", arg1_132, arg2)
	end
	tbl_59.Startup = Startup
	tbl_59.Looped = true
	tbl_59.HideWeapon = true
	tbl_59.Animation = 16524848169
	tbl_59.Stun = "Slowed"
	tbl_459.Fidget = tbl_59
	local tbl_405 = {
		Sounds = {};
	}
	local function Startup(arg1_133, arg2_108, arg3_106) -- Line 5381
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_405.Startup = Startup
	tbl_405.HideWeapon = true
	tbl_405.Animation = 16524522673
	tbl_405.Stun = "Freeze"
	tbl_459["Thumbs Up"] = tbl_405
	local tbl_457 = {
		Sounds = {};
	}
	local function Startup(arg1_134, arg2_109, arg3_107) -- Line 5400
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_111 = script.dialogue:Clone()
		table.insert(arg1_134, clone_111)
		clone_111:SetAttribute("EmoteProperty", true)
		arg3_107.rock = clone_111
		clone_111.Name = "Handle"
		table.insert(arg1_134, clone_111)
		local m6d_24 = clone_111.m6d
		table.insert(arg1_134, m6d_24)
		m6d_24:SetAttribute("EmoteProperty", true)
		m6d_24.Name = "Handle"
		m6d_24.Part0 = arg2.HumanoidRootPart
		m6d_24.Part1 = clone_111
		m6d_24.Parent = arg2.HumanoidRootPart
		for _, v_27 in pairs(clone_111:GetDescendants()) do
			if v_27:IsA("BasePart") then
				v_27.Transparency = 1
			end
		end
		clone_111.Parent = arg2
	end
	tbl_457.Startup = Startup
	tbl_457.Keyframes = {
		visible = function(arg1_135, arg2_110, arg3_108) -- Line 5418
			if arg1_135.rock then
				for _, v_28 in pairs(arg1_135.rock:GetDescendants()) do
					if v_28:IsA("BasePart") then
						v_28.Transparency = 0
					end
				end
			end
		end;
	}
	tbl_457.Animation = 16746843881
	tbl_457.Stun = "Freeze"
	tbl_459["Nah, I'd win."] = tbl_457
	local tbl_637 = {
		Sounds = {};
	}
	local function Startup(arg1_136, arg2_111, arg3_109) -- Line 5443
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_637.Startup = Startup
	tbl_637.HideWeapon = true
	tbl_637.Animation = 16746824621
	tbl_637.Stun = "Slowed"
	tbl_459.Bang = tbl_637
	local tbl_183 = {
		Sounds = {};
	}
	local function Startup(arg1_137, arg2_112, arg3_110) -- Line 5463
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_183.Startup = Startup
	tbl_183.HideWeapon = true
	tbl_183.Animation = 16524478599
	tbl_183.Stun = "Freeze"
	tbl_459["Thumbs Down"] = tbl_183
	local tbl_1014 = {
		Sounds = {};
	}
	local function Startup(arg1_138, arg2_113, arg3_111) -- Line 5482
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_1014.Startup = Startup
	tbl_1014.Animation = 16054192884
	tbl_1014.Stun = "Slowed"
	tbl_459["Nuh uh"] = tbl_1014
	local tbl_913 = {
		Sounds = {};
	}
	local function Startup(arg1_139, arg2_114, arg3_112) -- Line 5501
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_913.Startup = Startup
	tbl_913.HideWeapon = true
	tbl_913.Idle = 124365816989281
	tbl_913.Animation = 136211118072154
	tbl_913.Stun = "Freeze"
	tbl_459["Found You"] = tbl_913
	local tbl_1049 = {
		Sounds = {};
	}
	local function Startup(arg1_140, arg2_115, arg3_113) -- Line 5522
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local RThumb2 = var110_upvr("Right", arg1_140, arg2):FindFirstChild("RThumb2", true)
		if RThumb2 then
			local clone_323 = script.QuickStar:Clone()
			clone_323.Parent = RThumb2
			arg3_113.p = clone_323
		end
	end
	tbl_1049.Startup = Startup
	tbl_1049.Keyframes = {
		star = function(arg1_141, arg2_116, arg3_114) -- Line 5535
			--[[ Upvalues[1]:
				[1]: var93_upvr (copied, readonly)
			]]
			if arg1_141.p then
				arg1_141.p:Emit(1)
				var93_upvr({
					SoundId = "rbxassetid://16039062716";
					Parent = arg1_141.p.Parent;
					Volume = 0.75;
				}):Play()
			end
		end;
	}
	tbl_1049.HideWeapon = true
	tbl_1049.Animation = 16039070113
	tbl_1049.Stun = "Freeze"
	tbl_459["I'll Win"] = tbl_1049
	local tbl_782 = {
		Sounds = {};
	}
	local function Startup(arg1_142, arg2_117, arg3_115) -- Line 5563
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_257 = script.Coffin:Clone()
		local var1423 = arg5
		if not var1423 then
			var1423 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1423 then
				var1423 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_257, "emoteendstuff"..var1423.Name)
		local Coffin = clone_257.Coffin
		local var1425 = arg5
		if not var1425 then
			var1425 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1425 then
				var1425 = arg2
			end
		end
		CollectionService_upvr:AddTag(Coffin, "emoteendstuff"..var1425.Name)
		Coffin.Part0 = arg2.PrimaryPart
		Coffin.Part1 = clone_257
		Coffin.Parent = arg2.PrimaryPart
		clone_257.Parent = arg2
	end
	tbl_782.Startup = Startup
	tbl_782.End = {16002450289, 1.767, {
		SoundId = "rbxassetid://16002440403";
		Volume = 2;
		Looped = false;
	}}
	tbl_782.HideWeapon = true
	tbl_782.Idle = 16002449836
	tbl_782.Animation = 16002448046
	tbl_782.FixRotation = true
	tbl_782.Stun = "Freeze"
	tbl_459["Am Dead"] = tbl_782
	local tbl_422 = {
		Sounds = {};
	}
	local function Startup(arg1_143, arg2_118, arg3_116) -- Line 5602
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_83 = script.hat:Clone()
		table.insert(arg1_143, clone_83)
		clone_83:SetAttribute("EmoteProperty", true)
		clone_83.Name = "Handle"
		local var1433 = arg5
		if not var1433 then
			var1433 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1433 then
				var1433 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_83, "emoteendstuff"..var1433.Name)
		local Handle_2 = clone_83.Handle
		table.insert(arg1_143, Handle_2)
		Handle_2:SetAttribute("EmoteProperty", true)
		Handle_2.Part0 = arg2["Left Arm"]
		Handle_2.Part1 = clone_83
		Handle_2.Parent = arg2["Left Arm"]
		clone_83.Parent = arg2
	end
	tbl_422.Startup = Startup
	tbl_422.Idle = 16599253604
	tbl_422.Animation = 16599248351
	tbl_422.Stun = "Slowed"
	tbl_422.StunAttribute = 2
	tbl_459.Footwork = tbl_422
	local tbl_83 = {
		Sounds = {};
	}
	local function Startup(arg1_144, arg2_119, arg3_117) -- Line 5629
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_244 = script.RockMesh:Clone()
		local var1439 = arg5
		if not var1439 then
			var1439 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1439 then
				var1439 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_244, "emoteendstuff"..var1439.Name)
		clone_244.Rock.Part0 = arg2.PrimaryPart
		clone_244.Rock.Part1 = clone_244
		clone_244.Parent = arg2
	end
	tbl_83.Startup = Startup
	tbl_83.End = {15968735423, 1.767, {
		SoundId = "rbxassetid://15968669594";
		Volume = 1;
		Looped = false;
	}}
	tbl_83.Idle = 15968655778
	tbl_83.Animation = 15968649951
	tbl_83.FixRotation = true
	tbl_83.Stun = "Freeze"
	tbl_459.Footrest = tbl_83
	tbl_459["Sit 4"] = {
		Sounds = {};
		End = {17121885697, 2.217, {
			SoundId = "rbxassetid://17122185340";
			Volume = 1;
			Looped = false;
		}};
		Idle = 17121883892;
		Animation = 17121881258;
		FixRotation = true;
		Stun = "Freeze";
	}
	tbl_459["Sit 3"] = {
		Sounds = {};
		End = {15443958574, 3.7, {
			SoundId = "rbxassetid://15443949954";
			Volume = 1;
			Looped = false;
		}};
		Idle = 15443956544;
		Animation = 15443954093;
		FixRotation = true;
		Stun = "Freeze";
	}
	local tbl_1019 = {
		Sounds = {};
	}
	local function Startup(arg1_145) -- Line 5707
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg5 (readonly)
			[4]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[5]: TweenService_upvr (copied, readonly)
		]]
		local shared_cfolder_result1_upvr_2 = shared.cfolder({
			Name = "Freeze";
		}, 2.067)
		table.insert(arg1_145, shared_cfolder_result1_upvr_2)
		shared_cfolder_result1_upvr_2:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_upvr_2:SetAttribute("NoStop", true)
		shared_cfolder_result1_upvr_2:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 5715
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_upvr_2 (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_upvr_2.Parent = arg2
		end)
		local clone_203 = script.chosenparticles:Clone()
		clone_203:SetAttribute("EmoteProperty", true)
		local var1487 = arg5
		if not var1487 then
			var1487 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var1487 then
				var1487 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_203, "emoteendstuff"..var1487.Name)
		for _, v_29 in pairs(clone_203:GetChildren()) do
			if v_29:IsA("Beam") and v_29.Enabled then
				table.insert({}, {v_29, v_29.Width1})
				v_29.Enabled = false
				v_29.Width1 = 0
			end
		end
		local Weld_20 = Instance.new("Weld")
		Weld_20.Part0 = arg2.PrimaryPart
		Weld_20.Part1 = clone_203
		Weld_20.C0 = CFrame.new(-1.32054138, 4.14816093, 1.88685989, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872)
		Weld_20.Parent = clone_203
		clone_203.Parent = arg2
		local tbl_305_upvr = {}
		task.delay(2, function() -- Line 5738
			--[[ Upvalues[2]:
				[1]: tbl_305_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
			]]
			for _, v_30 in pairs(tbl_305_upvr) do
				local _1 = v_30[1]
				_1.Enabled = true
				TweenService_upvr:Create(_1, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Width1 = v_30[2];
				}):Play()
			end
		end)
	end
	tbl_1019.Startup = Startup
	tbl_1019.Idle = 18897538537
	tbl_1019.Animation = 18897534746
	tbl_1019.FixAnimations = {18897538537, 18897534746, 18897540724}
	tbl_1019.End = {18897540724, 2.133, {
		SoundId = "rbxassetid://15443922202";
		Volume = 1;
		Looped = false;
	}}
	tbl_1019.Fix = true
	tbl_1019.Stun = "Slowed"
	tbl_459.Chosen = tbl_1019
	local tbl_90 = {
		Sounds = {};
	}
	local function Startup(arg1_146) -- Line 5771
	end
	tbl_90.Startup = Startup
	tbl_90.Idle = 18897713456
	tbl_90.Animation = 18897711135
	tbl_90.Stun = "Freeze"
	tbl_459.Attack = tbl_90
	local tbl_1123 = {
		Sounds = {-- : First try: runluau:11745: attempt to index nil with 't'
;
	}
	local function Startup(arg1_147) -- Line 5805
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_2_upvr = shared.cfolder({
			Name = "Freeze";
		}, 3.922)
		table.insert(arg1_147, shared_cfolder_result1_2_upvr)
		shared_cfolder_result1_2_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_2_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_2_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 5813
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_2_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_2_upvr.Parent = arg2
		end)
	end
	tbl_1123.Startup = Startup
	tbl_1123.Idle = 15503060948
	tbl_1123.Animation = 15503060232
	tbl_1123.Fix = true
	tbl_1123.Stun = "Slowed"
	tbl_459.Honored = tbl_1123
	local tbl_267 = {
		Sounds = {-- : First try: runluau:11745: attempt to index nil with 't'
;
	}
	local function Startup(arg1_148) -- Line 5841
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_upvr_3 = shared.cfolder({
			Name = "Freeze";
		}, 1.856)
		table.insert(arg1_148, shared_cfolder_result1_upvr_3)
		shared_cfolder_result1_upvr_3:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_upvr_3:SetAttribute("NoStop", true)
		shared_cfolder_result1_upvr_3:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 5849
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_upvr_3 (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_upvr_3.Parent = arg2
		end)
	end
	tbl_267.Startup = Startup
	tbl_267.Idle = 15507138928
	tbl_267.Animation = 15507137974
	tbl_267.Fix = true
	tbl_267.Stun = "Slowed"
	tbl_459.Disgraced = tbl_267
	tbl_459["360"] = {
		Sounds = {};
		HideWeapon = true;
		Animation = 16002726844;
		Looped = false;
		Stun = "Freeze";
	}
	tbl_459["Jumping Jacks"] = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_149, arg2_120, arg3_118) -- Line 5882
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://16002741222";
					Parent = arg2.Torso;
					Volume = 1;
				}):Play()
			end;
		};
		HideWeapon = true;
		Animation = 16002745906;
		Looped = true;
		Stun = "Freeze";
		Infinite = true;
	}
	tbl_459.Calculated = {
		Sounds = {};
		Keyframes = {
			start = function(arg1_150, arg2_121, arg3_119) -- Line 5909
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
				]]
				local Attachment = Instance.new("Attachment")
				Attachment:SetAttribute("EmoteProperty", true)
				table.insert(arg2_121, Attachment)
				Attachment.Parent = arg2.PrimaryPart
				Attachment.Position = Vector3.new(0.55400, 3.06900, -0.7440)
				local clone_191 = script.Iq:Clone()
				clone_191.Parent = Attachment
				clone_191:Emit(1)
				var93_upvr({
					SoundId = "rbxassetid://16002767572";
					Volume = 0.25;
					Parent = Attachment;
					Looped = false;
				}):Play()
			end;
		};
		HideWeapon = true;
		Animation = 16002681909;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_897 = {
		Sounds = {};
		Keyframes = {
			question = function(arg1_151, arg2_122, arg3_120) -- Line 5943
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
				]]
				local Attachment_9 = Instance.new("Attachment")
				Attachment_9:SetAttribute("EmoteProperty", true)
				table.insert(arg2_122, Attachment_9)
				Attachment_9.Parent = arg2.PrimaryPart
				Attachment_9.CFrame = CFrame.new(0.635131836, 1.59469604, -1.50006104, 0.873728812, 0.4864133, -0, -0.4864133, 0.873728812, 0, 0, 0, 0.99999994)
				local clone_28 = script.Question:Clone()
				clone_28.Parent = Attachment_9
				clone_28:Emit(1)
				var93_upvr({
					SoundId = "rbxassetid://16524026100";
					Volume = 0.75;
					Parent = Attachment_9;
					Looped = false;
				}):Play()
			end;
		};
	}
	local function Startup(arg1_152, arg2_123, arg3_121) -- Line 5960
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_46 = script.teacup:Clone()
		clone_46:SetAttribute("EmoteProperty", true)
		table.insert(arg1_152, clone_46)
		arg3_121.Handle = clone_46
		local clone_338 = clone_46.LeftHandle:Clone()
		clone_338:SetAttribute("EmoteProperty", true)
		table.insert(arg1_152, clone_338)
		clone_338["Meshes/teacup_Circle"].Part0 = clone_338
		clone_338["Meshes/teacup_Circle"].Part1 = clone_46["Meshes/teacup_Circle"]
		clone_338.Parent = arg2
		local m6d_28 = clone_46.m6d
		m6d_28:SetAttribute("EmoteProperty", true)
		table.insert(arg1_152, m6d_28)
		arg3_121.md = m6d_28
		m6d_28.Part0 = arg2["Left Arm"]
		m6d_28.Name = "LeftHandle"
		m6d_28.Part1 = clone_338
		m6d_28.Parent = arg2["Left Arm"]
		clone_46.Parent = arg2
	end
	tbl_897.Startup = Startup
	tbl_897.HideWeapon = true
	tbl_897.Animation = 16523856701
	tbl_897.Looped = false
	tbl_897.Stun = "Slowed"
	tbl_459["Huh?"] = tbl_897
	tbl_459["8 Bit"] = {
		Sounds = {};
		Keyframes = {
			shoot = function(arg1_153, arg2_124, arg3_122) -- Line 5994
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
				]]
				local Attachment_12 = Instance.new("Attachment")
				Attachment_12:SetAttribute("EmoteProperty", true)
				table.insert(arg2_124, Attachment_12)
				Attachment_12.Parent = arg2.PrimaryPart
				Attachment_12.Position = Vector3.new(1.75, 0.25, -3.75)
				local clone_39 = script.Shoot:Clone()
				clone_39.Parent = Attachment_12
				clone_39:Emit(1)
				var93_upvr({
					SoundId = "rbxassetid://15684595588";
					Volume = 1.85;
					Parent = arg2["Right Arm"];
					Looped = false;
				}):Play()
			end;
			heart = function(arg1_154, arg2_125, arg3_123) -- Line 6010
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
				]]
				local Attachment_7 = Instance.new("Attachment")
				Attachment_7:SetAttribute("EmoteProperty", true)
				table.insert(arg2_125, Attachment_7)
				Attachment_7.Parent = arg2.PrimaryPart
				Attachment_7.Position = Vector3.new(1.75, 0, -1.75)
				local clone_185 = script.Heart:Clone()
				clone_185.Parent = Attachment_7
				clone_185:Emit(1)
				var93_upvr({
					SoundId = "rbxassetid://15684812583";
					Volume = 0.75;
					Parent = Attachment_7;
					Looped = false;
				}):Play()
			end;
		};
		HideWeapon = true;
		Animation = 15684759074;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_102 = {
		Sounds = {-- : First try: runluau:11745: attempt to index nil with 't'
;
	}
	local function Startup(arg1_155) -- Line 6048
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_14_upvr = shared.cfolder({
			Name = "Freeze";
		}, 3.5)
		table.insert(arg1_155, shared_cfolder_result1_14_upvr)
		shared_cfolder_result1_14_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_14_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_14_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 6056
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_14_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_14_upvr.Parent = arg2
		end)
	end
	tbl_102.Startup = Startup
	tbl_102.Animation = 15684890301
	tbl_102.Idle = 15684902941
	tbl_102.IdleSound = {
		SoundId = "rbxassetid://15684953841";
		Volume = 1;
		Looped = true;
	}
	tbl_102.Stun = "Slowed"
	tbl_459.Car = tbl_102
	tbl_459.March = {
		Keyframes = {
			clap = function(arg1_156) -- Line 6073
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				local var1572
				if not arg1_156.turn then
					arg1_156.turn = 0
				end
				arg1_156.turn += 1
				local tbl_1108 = {}
				var1572 = ({"rbxassetid://15962454798", "rbxassetid://15962454626", "rbxassetid://15962454516"})[math.random(1, 3)]
				tbl_1108.SoundId = var1572
				local function INLINED_5() -- Internal function, doesn't exist in bytecode
					var1572 = arg2["Left Leg"]
					return var1572
				end
				if arg1_156.turn % 2 ~= 0 or not INLINED_5() then
					var1572 = arg2["Right Leg"]
				end
				tbl_1108.Parent = var1572
				var1572 = 1
				tbl_1108.PlaybackSpeed = var1572
				var1572 = 0.5
				tbl_1108.Volume = var1572
				var1572 = var2_upvw
				tbl_1108.RollOffMaxDistance = var1572
				var93_upvr(tbl_1108):Play()
				var1572 = game
				var1572 = {}
				var1572.Effect = "Ninja Sprint Step"
				local var1575 = true
				var1572.Emote = var1575
				if arg1_156.turn % 2 == 0 then
					var1575 = "Left"
				else
					var1575 = "Right"
				end
				var1572.Type = var1575
				var1572.Char = arg2
				var1572.Root = root
				var1572.ReplicatedStorage.Replication:FireAllClients(var1572)
			end;
		};
		Infinite = true;
		Animation = 15962443652;
		Looped = true;
		Stun = "Slowed";
		StunAttribute = 2;
	}
	tbl_459.Hunter = {
		Keyframes = {
			clap = function(arg1_157) -- Line 6109
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				local var1579
				if not arg1_157.turn then
					arg1_157.turn = 0
				end
				arg1_157.turn += 1
				local tbl_664 = {}
				var1579 = ({"rbxassetid://15962163599", "rbxassetid://15962163752", "rbxassetid://15962163891", "rbxassetid://15962164060"})[math.random(1, 4)]
				tbl_664.SoundId = var1579
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var1579 = arg2["Left Leg"]
					return var1579
				end
				if arg1_157.turn % 2 ~= 0 or not INLINED_6() then
					var1579 = arg2["Right Leg"]
				end
				tbl_664.Parent = var1579
				var1579 = 1
				tbl_664.PlaybackSpeed = var1579
				var1579 = 0.5
				tbl_664.Volume = var1579
				var1579 = var2_upvw
				tbl_664.RollOffMaxDistance = var1579
				var93_upvr(tbl_664):Play()
			end;
		};
		Infinite = true;
		Animation = 15962326593;
		Looped = true;
		Stun = "Slowed";
		StunAttribute = 2;
	}
	tbl_459.Hunted = {
		Sounds = {};
		Animation = 15958281277;
		Looped = true;
		Stun = "Slowed";
		StunAttribute = 2;
	}
	tbl_459.Cmere = {
		Sounds = {};
		Animation = 16746746641;
		Looped = false;
		Stun = "Slowed";
	}
	tbl_459.Come = {
		Sounds = {};
		Animation = 15958227342;
		Looped = false;
		Stun = "Freeze";
	}
	tbl_459.Fall = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17107937300;
		Stun = "Freeze";
	}
	tbl_459.Surge = {
		Sounds = {};
		Animation = 17120750680;
		Stun = "Freeze";
	}
	tbl_459.Celebrate = {
		Sounds = {};
		Animation = 17122171961;
		Stun = "Freeze";
	}
	tbl_459.Joy = {
		Sounds = {};
		Animation = 17120709682;
		Stun = "Freeze";
	}
	tbl_459.Dab = {
		Sounds = {};
		Animation = 17121243447;
		Stun = "Freeze";
	}
	tbl_459["Infinite Dabs"] = {
		Sounds = {};
		Animation = 17121290432;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459.Spin = {
		Sounds = {};
		Animation = 17120734491;
		Stun = "Freeze";
	}
	tbl_459["Rock n' Roll"] = {
		Sounds = {};
		Animation = 15992808444;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Party Is Life"] = {
		Sounds = {};
		Animation = 17121045260;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Cat Dance"] = {
		Sounds = {};
		Animation = 17121145590;
		Looped = true;
		Stun = "Freeze";
	}
	tbl_459["Hood Jam"] = {
		Sounds = {};
		Animation = 17096456977;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459.Wave = {
		Sounds = {};
		Animation = 15684011459;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_367 = {
		Sounds = {};
	}
	local function Startup(arg1_158) -- Line 6363
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_151 = script.Microphone:Clone()
		local Microphone = clone_151.Microphone
		Microphone:SetAttribute("EmoteProperty", true)
		clone_151:SetAttribute("EmoteProperty", true)
		table.insert(arg1_158, clone_151)
		table.insert(arg1_158, Microphone)
		Microphone.Part0 = arg2["Left Arm"]
		Microphone.Part1 = clone_151
		Microphone.Parent = arg2["Left Arm"]
		clone_151.Parent = arg2
	end
	tbl_367.Startup = Startup
	tbl_367.Keyframes = {
		clap = function(arg1_159) -- Line 6378
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
			arg1_159.turn = 0
			-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
			arg1_159.turn += 1
			;({}).SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)]
			-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
		end;
	}
	tbl_367.Infinite = true
	tbl_367.Animation = 15956876217
	tbl_367.Looped = true
	tbl_367.Stun = "Slowed"
	tbl_459["Gun Shot"] = tbl_367
	tbl_459.Flex = {
		Sounds = {};
		Animation = 15673779407;
		Stun = "Freeze";
	}
	tbl_459.Robotic = {
		Sounds = {};
		Looped = true;
		Animation = 17097794422;
		Stun = "Freeze";
	}
	tbl_459.Hurricane = {
		Sounds = {};
		Keyframes = {
			clap = function() -- Line 6435
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://17097894260";
					Volume = 1.2;
					Parent = arg2.Torso;
				}):Play()
			end;
		};
		Infinite = true;
		Looped = true;
		Animation = 17097909230;
		Stun = "Slowed";
	}
	tbl_459["All Around"] = {
		Sounds = {};
		Looped = true;
		HideWeapon = true;
		Animation = 17097820306;
		Stun = "Freeze";
	}
	tbl_459["Snow Angel"] = {
		Sounds = {};
		Looped = true;
		HideWeapon = true;
		Animation = 91705970671914;
		Stun = "Freeze";
	}
	tbl_459["Go Go Go"] = {
		Sounds = {};
		Looped = true;
		HideWeapon = true;
		Animation = 118364371117769;
		Stun = "Freeze";
	}
	tbl_459["Think!"] = {
		Sounds = {};
		Animation = 17097712387;
		Stun = "Freeze";
	}
	tbl_459["Knocked Out"] = {
		Sounds = {};
		Animation = 17097745294;
		Stun = "Freeze";
	}
	tbl_459.Respect = {
		Sounds = {};
		HideWeapon = true;
		Animation = 17106858586;
		Stun = "Freeze";
	}
	local tbl_652 = {}
	local tbl_244 = {}
	local tbl_438 = {
		SoundId = "rbxassetid://15673640988";
	}
	local var1669 = 1.5
	tbl_438.Volume = var1669
	tbl_244[0] = tbl_438
	local tbl_1015 = {}
	if math.random(1, 3) == 1 then
		var1669 = "rbxassetid://9114013375"
	else
		var1669 = "rbxassetid://9120974708"
	end
	tbl_1015.SoundId = var1669
	var1669 = 0.75
	tbl_1015.Volume = var1669
	tbl_244[0.1] = tbl_1015
	tbl_652.Sounds = tbl_244
	tbl_652.Animation = 15673641958
	tbl_652.Stun = "Freeze"
	tbl_459["Hunter Salute"] = tbl_652
	local tbl_29 = {}
	local tbl_347 = {}
	local tbl_1032 = {}
	var1669 = "rbxassetid://15673682013"
	tbl_1032.SoundId = var1669
	var1669 = 1.5
	tbl_1032.Volume = var1669
	tbl_347[0] = tbl_1032
	local tbl_896 = {}
	var1669 = "rbxassetid://9120973886"
	tbl_896.SoundId = var1669
	var1669 = 1
	tbl_896.Volume = var1669
	tbl_347[0.25] = tbl_896
	tbl_29.Sounds = tbl_347
	tbl_29.Animation = 15673683215
	tbl_29.Stun = "Freeze"
	tbl_459["Bow of Respect"] = tbl_29
	local tbl_1042 = {}
	local tbl_358 = {}
	local tbl_510 = {}
	var1669 = "rbxassetid://15673586398"
	tbl_510.SoundId = var1669
	var1669 = 1
	tbl_510.Volume = var1669
	tbl_358[0] = tbl_510
	local tbl_846 = {}
	var1669 = "rbxassetid://1841573938"
	tbl_846.SoundId = var1669
	var1669 = 1
	tbl_846.Volume = var1669
	var1669 = 0.5
	tbl_846.TimePosition = var1669
	tbl_358[0.01] = tbl_846
	tbl_1042.Sounds = tbl_358
	tbl_1042.Animation = 15673595096
	tbl_1042.Stun = "Freeze"
	tbl_459.Yay = tbl_1042
	local tbl_274 = {}
	local tbl_734 = {}
	local tbl_754 = {}
	var1669 = "rbxassetid://1845732793"
	tbl_754.SoundId = var1669
	var1669 = 0.5
	tbl_754.Volume = var1669
	var1669 = 0.35
	tbl_754.TimePosition = var1669
	var1669 = true
	tbl_754.Looped = var1669
	tbl_734[0] = tbl_754
	tbl_274.Sounds = tbl_734
	tbl_274.Animation = 15488510937
	tbl_274.Looped = true
	tbl_274.Stun = "Freeze"
	tbl_459.Expendable = tbl_274
	local tbl_919 = {}
	local tbl_824 = {}
	local tbl_957 = {}
	var1669 = "rbxassetid://9040601928"
	tbl_957.SoundId = var1669
	var1669 = 0.874
	tbl_957.Volume = var1669
	var1669 = true
	tbl_957.Looped = var1669
	tbl_824[0] = tbl_957
	tbl_919.Sounds = tbl_824
	tbl_919.Animation = 13715326691
	tbl_919.Looped = true
	tbl_919.Stun = "Slowed"
	tbl_459.Griddy = tbl_919
	local tbl_280 = {}
	local tbl_470 = {}
	local tbl_122 = {}
	var1669 = "rbxassetid://1837911163"
	tbl_122.SoundId = var1669
	var1669 = 0.1
	tbl_122.Volume = var1669
	var1669 = true
	tbl_122.Looped = var1669
	tbl_470[0] = tbl_122
	tbl_280.Sounds = tbl_470
	tbl_280.Fix = true
	tbl_280.Animation = 15099756132
	tbl_280.Looped = true
	tbl_280.Stun = "Slowed"
	tbl_459.Levitate = tbl_280
	local tbl_503 = {
		Sounds = {};
	}
	local function Startup() -- Line 6639
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://15290124285";
			Volume = 0.7;
			Parent = arg2["Right Arm"];
			Looped = false;
		}):Play()
	end
	tbl_503.Startup = Startup
	tbl_503.Animation = 15290114868
	tbl_503.Looped = false
	tbl_503.Stun = "Freeze"
	tbl_459["Stay Down"] = tbl_503
	local tbl_8 = {}
	local tbl_318 = {}
	local tbl_111 = {}
	var1669 = "rbxassetid://1847840594"
	tbl_111.SoundId = var1669
	var1669 = 0.4
	tbl_111.Volume = var1669
	var1669 = 0.15
	tbl_111.TimePosition = var1669
	var1669 = true
	tbl_111.Looped = var1669
	tbl_318[0] = tbl_111
	tbl_8.Sounds = tbl_318
	tbl_8.Animation = 15099686953
	tbl_8.Looped = true
	tbl_8.Stun = "Slowed"
	tbl_459.Energized = tbl_8
	local tbl_109 = {}
	local tbl_598 = {}
	local tbl_1098 = {}
	var1669 = "rbxassetid://14611894554"
	tbl_1098.SoundId = var1669
	var1669 = 4
	tbl_1098.Volume = var1669
	var1669 = false
	tbl_1098.Looped = var1669
	tbl_598[0] = tbl_1098
	tbl_109.Sounds = tbl_598
	tbl_109.Animation = 14611879113
	tbl_109.Looped = false
	tbl_109.Stun = "Freeze"
	tbl_459.Warmup = tbl_109
	local tbl_104 = {}
	local tbl_902 = {}
	local tbl_1103 = {}
	var1669 = "rbxassetid://17106165427"
	tbl_1103.SoundId = var1669
	var1669 = 1
	tbl_1103.Volume = var1669
	tbl_902[0] = tbl_1103
	tbl_104.Sounds = tbl_902
	tbl_104.Animation = 17106169665
	tbl_104.Stun = "Freeze"
	tbl_459.Gravity = tbl_104
	local tbl_910 = {}
	local tbl_972 = {}
	local tbl_309 = {}
	var1669 = "rbxassetid://1835906503"
	tbl_309.SoundId = var1669
	var1669 = 0.5
	tbl_309.Volume = var1669
	var1669 = true
	tbl_309.Looped = var1669
	tbl_972[0] = tbl_309
	tbl_910.Sounds = tbl_972
	tbl_910.Animation = 17096779665
	tbl_910.Looped = true
	tbl_910.Stun = "Slowed"
	tbl_459["Groovy Swing"] = tbl_910
	local tbl_287 = {}
	local tbl_386 = {}
	local tbl_199 = {}
	var1669 = "rbxassetid://17106185985"
	tbl_199.SoundId = var1669
	var1669 = 0.25
	tbl_199.Volume = var1669
	var1669 = true
	tbl_199.Looped = var1669
	tbl_386[0] = tbl_199
	tbl_287.Sounds = tbl_386
	tbl_287.Animation = 17106188784
	tbl_287.Looped = true
	tbl_287.Stun = "Slowed"
	tbl_459.Crawl = tbl_287
	local tbl_193 = {}
	local tbl_571 = {}
	local tbl_256 = {}
	var1669 = "rbxassetid://1840374054"
	tbl_256.SoundId = var1669
	var1669 = 0.7
	tbl_256.Volume = var1669
	var1669 = 0.25
	tbl_256.TimePosition = var1669
	var1669 = true
	tbl_256.Looped = var1669
	tbl_571[0] = tbl_256
	tbl_193.Sounds = tbl_571
	tbl_193.Animation = 17266358630
	tbl_193.Looped = true
	tbl_193.Stun = "Slowed"
	tbl_459["Get Down"] = tbl_193
	local tbl_986 = {}
	local tbl_722 = {}
	local tbl_994 = {}
	var1669 = "rbxassetid://1836256328"
	tbl_994.SoundId = var1669
	var1669 = 0.4
	tbl_994.Volume = var1669
	var1669 = true
	tbl_994.Looped = var1669
	tbl_722[0] = tbl_994
	tbl_986.Sounds = tbl_722
	tbl_986.Animation = 17266410350
	tbl_986.Looped = true
	tbl_986.Stun = "Slowed"
	tbl_986.StunAttribute = 1
	tbl_459.Tweak = tbl_986
	local tbl_584 = {}
	local tbl_93 = {}
	local tbl_430 = {}
	var1669 = "rbxassetid://1842976958"
	tbl_430.SoundId = var1669
	var1669 = 0.4
	tbl_430.Volume = var1669
	var1669 = true
	tbl_430.Looped = var1669
	tbl_93[0] = tbl_430
	tbl_584.Sounds = tbl_93
	tbl_584.Animation = 17266385960
	tbl_584.Looped = true
	tbl_584.Stun = "Slowed"
	tbl_459["Eyes On Me"] = tbl_584
	local tbl_723 = {}
	local tbl_50 = {}
	local tbl_200 = {}
	var1669 = "rbxassetid://9043114637"
	tbl_200.SoundId = var1669
	var1669 = 0.3
	tbl_200.Volume = var1669
	var1669 = true
	tbl_200.Looped = var1669
	tbl_50[0] = tbl_200
	tbl_723.Sounds = tbl_50
	tbl_723.Animation = 17266265770
	tbl_723.Looped = true
	tbl_723.Stun = "Freeze"
	tbl_459["Sigh."] = tbl_723
	local tbl_378 = {}
	local tbl_1088 = {}
	local tbl_383 = {}
	var1669 = "rbxassetid://1847479242"
	tbl_383.SoundId = var1669
	var1669 = 0.45
	tbl_383.Volume = var1669
	var1669 = true
	tbl_383.Looped = var1669
	tbl_1088[0] = tbl_383
	tbl_378.Sounds = tbl_1088
	tbl_378.Animation = 17266330796
	tbl_378.Looped = true
	tbl_378.Stun = "Freeze"
	tbl_459["Get It"] = tbl_378
	local tbl_423 = {}
	local tbl_436 = {}
	local tbl_1067 = {}
	var1669 = "rbxassetid://1847180622"
	tbl_1067.SoundId = var1669
	var1669 = 0.45
	tbl_1067.Volume = var1669
	var1669 = true
	tbl_1067.ParentTorso = var1669
	var1669 = true
	tbl_1067.Looped = var1669
	tbl_436[0] = tbl_1067
	tbl_423.Sounds = tbl_436
	tbl_423.Animation = 17268390209
	tbl_423.Looped = true
	tbl_423.Stun = "Slowed"
	tbl_459.Sway = tbl_423
	local tbl_1000 = {}
	local tbl_574 = {}
	local tbl_827 = {}
	var1669 = "rbxassetid://14145625078"
	tbl_827.SoundId = var1669
	var1669 = 0.45
	tbl_827.Volume = var1669
	var1669 = true
	tbl_827.Looped = var1669
	tbl_574[0] = tbl_827
	tbl_1000.Sounds = tbl_574
	tbl_1000.Animation = 17266311371
	tbl_1000.Looped = true
	tbl_1000.Stun = "Slowed"
	tbl_459.Wild = tbl_1000
	local tbl_446 = {}
	local tbl_1026 = {}
	local tbl_261 = {}
	var1669 = "rbxassetid://1840019043"
	tbl_261.SoundId = var1669
	var1669 = 0.5
	tbl_261.Volume = var1669
	var1669 = true
	tbl_261.Looped = var1669
	tbl_1026[0] = tbl_261
	tbl_446.Sounds = tbl_1026
	tbl_446.Animation = 17096590136
	tbl_446.Looped = true
	tbl_446.Stun = "Slowed"
	tbl_459["Cross Step"] = tbl_446
	local tbl_1016 = {}
	local tbl_524 = {}
	local tbl_1031 = {}
	var1669 = "rbxassetid://17086681497"
	tbl_1031.SoundId = var1669
	var1669 = 0.5
	tbl_1031.Volume = var1669
	var1669 = true
	tbl_1031.Looped = var1669
	tbl_524[0] = tbl_1031
	tbl_1016.Sounds = tbl_524
	tbl_1016.Animation = 17086698204
	tbl_1016.Looped = true
	tbl_1016.Stun = "Freeze"
	tbl_459["One Hand Pushup"] = tbl_1016
	local tbl_1058 = {}
	local tbl_688 = {}
	local tbl_1038 = {}
	var1669 = "rbxassetid://17086681649"
	tbl_1038.SoundId = var1669
	var1669 = 0.5
	tbl_1038.Volume = var1669
	var1669 = true
	tbl_1038.Looped = var1669
	tbl_688[0] = tbl_1038
	tbl_1058.Sounds = tbl_688
	tbl_1058.Animation = 17086696468
	tbl_1058.Looped = true
	tbl_1058.Stun = "Freeze"
	tbl_459["Two Hand Pushup"] = tbl_1058
	local tbl_344 = {}
	local tbl_1104 = {}
	local tbl_1121 = {}
	var1669 = "rbxassetid://14611940867"
	tbl_1121.SoundId = var1669
	var1669 = 1.75
	tbl_1121.Volume = var1669
	var1669 = false
	tbl_1121.Looped = var1669
	tbl_1104[0] = tbl_1121
	tbl_344.Sounds = tbl_1104
	tbl_344.Animation = 14611931363
	tbl_344.Looped = false
	tbl_344.Stun = "Freeze"
	tbl_459.Brush = tbl_344
	local tbl_282 = {}
	local tbl_284 = {}
	local tbl_753 = {}
	var1669 = "rbxassetid://17086521999"
	tbl_753.SoundId = var1669
	var1669 = 1
	tbl_753.Volume = var1669
	var1669 = 0.033
	tbl_753.TimePosition = var1669
	tbl_284[0] = tbl_753
	local tbl_1091 = {}
	var1669 = "rbxassetid://9113987614"
	tbl_1091.SoundId = var1669
	var1669 = 0.7
	tbl_1091.TimePosition = var1669
	var1669 = 2
	tbl_1091.Volume = var1669
	tbl_284[0.083] = tbl_1091
	tbl_282.Sounds = tbl_284
	tbl_282.Animation = 17086333563
	tbl_282.Stun = "Freeze"
	tbl_459.Mad = tbl_282
	local tbl_79 = {}
	local tbl_22 = {}
	local tbl_135 = {}
	var1669 = "rbxassetid://17086303118"
	tbl_135.SoundId = var1669
	var1669 = 0.5
	tbl_135.Volume = var1669
	tbl_22[0] = tbl_135
	local tbl_32 = {}
	var1669 = "rbxassetid://9125652432"
	tbl_32.SoundId = var1669
	var1669 = 0.9
	tbl_32.Volume = var1669
	tbl_22[0.01] = tbl_32
	tbl_79.Sounds = tbl_22
	tbl_79.Animation = 17086298638
	tbl_79.Stun = "Freeze"
	tbl_459.Jumpscared = tbl_79
	local tbl_35 = {}
	local tbl_998 = {}
	local tbl_1039 = {}
	var1669 = "rbxassetid://17086432258"
	tbl_1039.SoundId = var1669
	var1669 = 0.4
	tbl_1039.Volume = var1669
	tbl_998[0] = tbl_1039
	tbl_35.Sounds = tbl_998
	tbl_35.Animation = 17086423985
	tbl_35.Stun = "Freeze"
	tbl_459.Disconnect = tbl_35
	local tbl_592 = {}
	local tbl_464 = {}
	local tbl_912 = {}
	var1669 = "rbxassetid://17097072874"
	tbl_912.SoundId = var1669
	var1669 = 0.4
	tbl_912.Volume = var1669
	tbl_464[0.25] = tbl_912
	tbl_592.Sounds = tbl_464
	tbl_592.Animation = 17097068597
	tbl_592.Stun = "Slowed"
	tbl_459.Snap = tbl_592
	local tbl_180 = {}
	local tbl_112 = {}
	local tbl_343 = {}
	var1669 = "rbxassetid://17086541392"
	tbl_343.SoundId = var1669
	var1669 = 0.4
	tbl_343.Volume = var1669
	tbl_112[0] = tbl_343
	tbl_180.Sounds = tbl_112
	tbl_180.Animation = 17086544068
	tbl_180.Stun = "Freeze"
	tbl_459.Freaky = tbl_180
	local tbl_1120 = {}
	local tbl_938 = {}
	local tbl_223 = {}
	var1669 = "rbxassetid://17108871591"
	tbl_223.SoundId = var1669
	var1669 = 1.24
	tbl_223.Volume = var1669
	tbl_938[0] = tbl_223
	tbl_1120.Sounds = tbl_938
	tbl_1120.Animation = 17108883110
	tbl_1120.Stun = "Slowed"
	tbl_459.Shrug = tbl_1120
	local tbl_649 = {}
	local tbl_967 = {}
	local tbl_276 = {}
	var1669 = "rbxassetid://17108676936"
	tbl_276.SoundId = var1669
	var1669 = 1.24
	tbl_276.Volume = var1669
	tbl_967[0] = tbl_276
	tbl_649.Sounds = tbl_967
	tbl_649.Animation = 17108683768
	tbl_649.HideWeapon = true
	tbl_649.Stun = "Freeze"
	tbl_459["Gun Flex"] = tbl_649
	local tbl_563 = {}
	local tbl_750 = {}
	local tbl_928 = {}
	var1669 = "rbxassetid://17097152088"
	tbl_928.SoundId = var1669
	var1669 = 0.9
	tbl_928.Volume = var1669
	tbl_750[0] = tbl_928
	local tbl_946 = {}
	var1669 = "rbxassetid://7455246815"
	tbl_946.SoundId = var1669
	var1669 = 0.25
	tbl_946.Volume = var1669
	tbl_750[2.3] = tbl_946
	tbl_563.Sounds = tbl_750
	tbl_563.Animation = 17097146599
	tbl_563.Stun = "Freeze"
	tbl_459["Point Forward"] = tbl_563
	local tbl_956 = {}
	local tbl_568 = {}
	local tbl_288 = {}
	var1669 = "rbxassetid://17097111258"
	tbl_288.SoundId = var1669
	var1669 = 0.4
	tbl_288.Volume = var1669
	tbl_568[0] = tbl_288
	local tbl_1113 = {}
	var1669 = "rbxassetid://7455246815"
	tbl_1113.SoundId = var1669
	var1669 = 0.25
	tbl_1113.Volume = var1669
	tbl_568[6.4] = tbl_1113
	tbl_956.Sounds = tbl_568
	tbl_956.Animation = 17097114800
	tbl_956.Stun = "Freeze"
	tbl_459.Shiver = tbl_956
	local tbl_297 = {}
	local tbl_898 = {}
	local tbl_339 = {}
	var1669 = "rbxassetid://17086664493"
	tbl_339.SoundId = var1669
	var1669 = 0.8
	tbl_339.Volume = var1669
	var1669 = true
	tbl_339.Looped = var1669
	tbl_898[0] = tbl_339
	tbl_297.Sounds = tbl_898
	tbl_297.Keyframes = {
		clap = function() -- Line 7021
		end;
	}
	tbl_297.Infinite = true
	tbl_297.Looped = true
	tbl_297.Animation = 17086507535
	tbl_297.Stun = "Slowed"
	tbl_459["Shuffle Steps"] = tbl_297
	local tbl_409 = {}
	local tbl_251 = {}
	local tbl_228 = {}
	var1669 = "rbxassetid://9044565954"
	tbl_228.SoundId = var1669
	var1669 = 0.3
	tbl_228.Volume = var1669
	var1669 = true
	tbl_228.Looped = var1669
	tbl_251[0] = tbl_228
	tbl_409.Sounds = tbl_251
	tbl_409.Looped = true
	tbl_409.Animation = 17097177356
	tbl_409.Stun = "Freeze"
	tbl_459["Smooth Vibe"] = tbl_409
	local tbl_845 = {}
	local tbl_963 = {}
	local tbl_747 = {}
	var1669 = "rbxassetid://1842892976"
	tbl_747.SoundId = var1669
	var1669 = 0.45
	tbl_747.Volume = var1669
	var1669 = true
	tbl_747.Looped = var1669
	tbl_963[0] = tbl_747
	tbl_845.Sounds = tbl_963
	tbl_845.Looped = true
	tbl_845.Animation = 17097225104
	tbl_845.Stun = "Slowed"
	tbl_459["Trap Dance"] = tbl_845
	local tbl_716 = {}
	local tbl_1007 = {}
	local tbl_566 = {}
	var1669 = "rbxassetid://1837682925"
	tbl_566.SoundId = var1669
	var1669 = 0.45
	tbl_566.Volume = var1669
	var1669 = true
	tbl_566.Looped = var1669
	tbl_1007[0] = tbl_566
	tbl_716.Sounds = tbl_1007
	tbl_716.HideWeapon = true
	tbl_716.Looped = true
	tbl_716.Animation = 17097275344
	tbl_716.Stun = "Slowed"
	tbl_459.Breakdown = tbl_716
	local tbl_881 = {}
	local tbl_106 = {}
	local tbl_235 = {}
	var1669 = "rbxassetid://1835443210"
	tbl_235.SoundId = var1669
	var1669 = 0.45
	tbl_235.Volume = var1669
	var1669 = true
	tbl_235.Looped = var1669
	var1669 = 10
	tbl_235.TimePosition = var1669
	tbl_106[0] = tbl_235
	tbl_881.Sounds = tbl_106
	tbl_881.Looped = true
	tbl_881.Animation = 17097313490
	tbl_881.Stun = "Slowed"
	tbl_459.Worm = tbl_881
	local tbl_924 = {}
	local tbl_356 = {}
	local tbl_949 = {}
	var1669 = "rbxassetid://1847412527"
	tbl_949.SoundId = var1669
	var1669 = 0.75
	tbl_949.Volume = var1669
	var1669 = true
	tbl_949.Looped = var1669
	var1669 = 2
	tbl_949.TimePosition = var1669
	tbl_356[0] = tbl_949
	tbl_924.Sounds = tbl_356
	tbl_924.Keyframes = {
		clap = function() -- Line 7104
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://2704706975";
				Volume = 0.5;
				Parent = arg2.Head;
			}):Play()
		end;
	}
	tbl_924.Infinite = true
	tbl_924.Looped = true
	tbl_924.Animation = 17097370518
	tbl_924.Stun = "Slowed"
	tbl_459.Frenzy = tbl_924
	local tbl_995 = {}
	local tbl_632 = {}
	local tbl_259 = {}
	var1669 = "rbxassetid://17097078338"
	tbl_259.SoundId = var1669
	var1669 = 0.3
	tbl_259.Volume = var1669
	var1669 = true
	tbl_259.Looped = var1669
	tbl_632[0] = tbl_259
	tbl_995.Sounds = tbl_632
	tbl_995.Looped = true
	tbl_995.Animation = 17096931722
	tbl_995.Stun = "Freeze"
	tbl_459["Down Low"] = tbl_995
	local tbl_974 = {}
	local tbl_1028 = {}
	local tbl_831 = {}
	var1669 = "rbxassetid://9046189833"
	tbl_831.SoundId = var1669
	var1669 = 0.3
	tbl_831.Volume = var1669
	var1669 = true
	tbl_831.Looped = var1669
	tbl_1028[0] = tbl_831
	tbl_974.Sounds = tbl_1028
	tbl_974.Looped = true
	tbl_974.Animation = 17106937938
	tbl_974.Stun = "Slowed"
	tbl_459["Shake A Leg"] = tbl_974
	local tbl_211 = {}
	local tbl_903 = {}
	local tbl_1078 = {}
	var1669 = "rbxassetid://17097032574"
	tbl_1078.SoundId = var1669
	var1669 = 0.15
	tbl_1078.Volume = var1669
	var1669 = true
	tbl_1078.Looped = var1669
	tbl_903[0] = tbl_1078
	tbl_211.Sounds = tbl_903
	tbl_211.Looped = true
	tbl_211.Animation = 17097035602
	tbl_211.Stun = "Slowed"
	tbl_459.Crouch = tbl_211
	local tbl_218 = {}
	local tbl_535 = {}
	local tbl_981 = {}
	var1669 = "rbxassetid://9042785151"
	tbl_981.SoundId = var1669
	var1669 = 0.4
	tbl_981.Volume = var1669
	var1669 = true
	tbl_981.Looped = var1669
	tbl_535[0] = tbl_981
	tbl_218.Sounds = tbl_535
	tbl_218.Looped = true
	tbl_218.Animation = 17086440627
	tbl_218.Stun = "Slowed"
	tbl_459.Idk = tbl_218
	local tbl_4 = {}
	local tbl_1051 = {}
	local tbl_108 = {}
	var1669 = "rbxassetid://9048378262"
	tbl_108.SoundId = var1669
	var1669 = 0.4
	tbl_108.Volume = var1669
	var1669 = true
	tbl_108.Looped = var1669
	tbl_1051[0] = tbl_108
	tbl_4.Sounds = tbl_1051
	tbl_4.Looped = true
	tbl_4.Animation = 17086321064
	tbl_4.Stun = "Freeze"
	tbl_459.Vibe = tbl_4
	local tbl_205 = {}
	local tbl_923 = {}
	local tbl_964 = {}
	var1669 = "rbxassetid://1837528258"
	tbl_964.SoundId = var1669
	var1669 = 0.6
	tbl_964.Volume = var1669
	var1669 = 0.4
	tbl_964.TimePosition = var1669
	var1669 = true
	tbl_964.Looped = var1669
	tbl_923[0] = tbl_964
	tbl_205.Sounds = tbl_923
	tbl_205.Animation = 14496508275
	tbl_205.Looped = true
	tbl_205.Stun = "Slowed"
	tbl_459.Happy = tbl_205
	local tbl_129 = {}
	local tbl_164 = {}
	local tbl_1037 = {}
	var1669 = "rbxassetid://9043851073"
	tbl_1037.SoundId = var1669
	var1669 = 0.6
	tbl_1037.Volume = var1669
	var1669 = true
	tbl_1037.Looped = var1669
	tbl_164[0] = tbl_1037
	tbl_129.Sounds = tbl_164
	tbl_129.Animation = 17097940507
	tbl_129.Looped = true
	tbl_129.Stun = "Slowed"
	tbl_459.Cheery = tbl_129
	local tbl_128 = {}
	local tbl_1081 = {}
	local tbl_1079 = {}
	var1669 = "rbxassetid://1841647421"
	tbl_1079.SoundId = var1669
	var1669 = 1
	tbl_1079.Volume = var1669
	var1669 = 19
	tbl_1079.TimePosition = var1669
	var1669 = true
	tbl_1079.Looped = var1669
	tbl_1081[0] = tbl_1079
	tbl_128.Sounds = tbl_1081
	tbl_128.Fix = true
	tbl_128.Animation = 15089788940
	tbl_128.Looped = true
	tbl_128.Stun = "Freeze"
	tbl_459["Victory Dance"] = tbl_128
	local tbl_991 = {}
	local tbl_482 = {}
	local tbl_435 = {}
	var1669 = "rbxassetid://15089505622"
	tbl_435.SoundId = var1669
	var1669 = 1
	tbl_435.Volume = var1669
	var1669 = false
	tbl_435.Looped = var1669
	tbl_482[0] = tbl_435
	tbl_991.Sounds = tbl_482
	tbl_991.HideWeapon = true
	tbl_991.Fix = true
	tbl_991.Animation = 15089520783
	tbl_991.Looped = false
	tbl_991.Stun = "Freeze"
	tbl_459.Backflip = tbl_991
	local tbl_984 = {
		HideWeapon = true;
	}
	local tbl_379 = {}
	local tbl_873 = {}
	var1669 = "rbxassetid://15090130621"
	tbl_873.SoundId = var1669
	var1669 = 1
	tbl_873.Volume = var1669
	var1669 = true
	tbl_873.Looped = var1669
	tbl_379[0] = tbl_873
	tbl_984.Sounds = tbl_379
	tbl_984.Animation = 15090141089
	tbl_984.Looped = true
	tbl_984.Stun = "Slowed"
	tbl_459.Boxing = tbl_984
	local tbl_335 = {}
	local tbl_452 = {}
	local tbl_119 = {}
	var1669 = "rbxassetid://1836440339"
	tbl_119.SoundId = var1669
	var1669 = 0.75
	tbl_119.Volume = var1669
	var1669 = 0.35
	tbl_119.TimePosition = var1669
	var1669 = true
	tbl_119.Looped = var1669
	tbl_452[0] = tbl_119
	tbl_335.Sounds = tbl_452
	tbl_335.Animation = 15090301130
	tbl_335.Looped = true
	tbl_335.Stun = "Slowed"
	tbl_459.Comical = tbl_335
	local tbl_451 = {}
	local tbl_68 = {}
	local tbl_497 = {}
	var1669 = "rbxassetid://1845593645"
	tbl_497.SoundId = var1669
	var1669 = 0.75
	tbl_497.Volume = var1669
	var1669 = true
	tbl_497.Looped = var1669
	tbl_68[0] = tbl_497
	tbl_451.Sounds = tbl_68
	tbl_451.Animation = 18450480375
	tbl_451.Looped = true
	tbl_451.Stun = "Slowed"
	tbl_459.Jiggy = tbl_451
	local tbl_353 = {}
	local tbl_788 = {}
	local tbl_939 = {}
	var1669 = "rbxassetid://18450602521"
	tbl_939.SoundId = var1669
	var1669 = 0.75
	tbl_939.Volume = var1669
	var1669 = true
	tbl_939.Looped = var1669
	tbl_788[0] = tbl_939
	local tbl_954 = {}
	var1669 = "rbxassetid://1842122622"
	tbl_954.SoundId = var1669
	var1669 = 0.75
	tbl_954.Volume = var1669
	var1669 = 0
	tbl_954.TimePosition = var1669
	var1669 = true
	tbl_954.Looped = var1669
	tbl_788[0.01] = tbl_954
	tbl_353.Sounds = tbl_788
	tbl_353.Animation = 18450597765
	tbl_353.Looped = true
	tbl_353.Stun = "Slowed"
	tbl_459[":D"] = tbl_353
	local tbl_489 = {}
	local tbl_727 = {}
	local tbl_242 = {}
	var1669 = "rbxassetid://1841361703"
	tbl_242.SoundId = var1669
	var1669 = 0.75
	tbl_242.Volume = var1669
	var1669 = true
	tbl_242.Looped = var1669
	tbl_727[0] = tbl_242
	tbl_489.Sounds = tbl_727
	tbl_489.Animation = 18450531343
	tbl_489.Looped = true
	tbl_489.Stun = "Slowed"
	tbl_459["Free Flow"] = tbl_489
	local tbl_404 = {}
	local tbl_47 = {}
	local tbl_656 = {}
	var1669 = "rbxassetid://9045588592"
	tbl_656.SoundId = var1669
	var1669 = 0.75
	tbl_656.Volume = var1669
	var1669 = true
	tbl_656.Looped = var1669
	tbl_47[0] = tbl_656
	tbl_404.Sounds = tbl_47
	tbl_404.Keyframes = {
		clap = function() -- Line 7339
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://2704706975";
				Volume = 1;
				Parent = arg2.Head;
			}):Play()
		end;
	}
	tbl_404.Infinite = true
	tbl_404.Animation = 18450770138
	tbl_404.Looped = true
	tbl_404.Stun = "Slowed"
	tbl_459["Let's Go"] = tbl_404
	local tbl_456 = {}
	local tbl_391 = {}
	local tbl_691 = {}
	var1669 = "rbxassetid://1842922954"
	tbl_691.SoundId = var1669
	var1669 = 0.75
	tbl_691.Volume = var1669
	var1669 = true
	tbl_691.Looped = var1669
	tbl_391[0] = tbl_691
	tbl_456.Sounds = tbl_391
	tbl_456.Animation = 18450448457
	tbl_456.Looped = true
	tbl_456.Stun = "Slowed"
	tbl_459["Silly Dance"] = tbl_456
	local tbl_941 = {}
	local tbl_683 = {}
	local tbl_745 = {}
	var1669 = "rbxassetid://18450718148"
	tbl_745.SoundId = var1669
	var1669 = 1
	tbl_745.Volume = var1669
	var1669 = true
	tbl_745.ParentTorso = var1669
	tbl_683[0] = tbl_745
	local tbl_1070 = {}
	var1669 = "rbxassetid://18450718643"
	tbl_1070.SoundId = var1669
	var1669 = 0.4
	tbl_1070.Volume = var1669
	var1669 = true
	tbl_1070.ParentTorso = var1669
	var1669 = true
	tbl_1070.Looped = var1669
	tbl_683[0.65] = tbl_1070
	tbl_941.Sounds = tbl_683
	local function Startup(arg1_160, arg2_126, arg3_124) -- Line 7384
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_261 = script.Throne:Clone()
		clone_261:SetAttribute("EmoteProperty", true)
		table.insert(arg1_160, clone_261)
		local m6d_8 = clone_261.m6d
		m6d_8:SetAttribute("EmoteProperty", true)
		table.insert(arg1_160, m6d_8)
		m6d_8.Name = "Throne"
		m6d_8.Part0 = arg2.HumanoidRootPart
		m6d_8.Part1 = clone_261
		m6d_8.Parent = arg2.HumanoidRootPart
		clone_261.Parent = arg2
	end
	tbl_941.Startup = Startup
	tbl_941.Keyframes = {}
	tbl_941.HideWeapon = true
	tbl_941.Fix = true
	tbl_941.Idle = 18450698238
	tbl_941.Animation = 18450697195
	tbl_941.Stun = "Freeze"
	tbl_459.Throne = tbl_941
	local tbl_871 = {}
	local tbl_139 = {}
	local tbl_234 = {}
	var1669 = "rbxassetid://18450667599"
	tbl_234.SoundId = var1669
	var1669 = 1
	tbl_234.Volume = var1669
	var1669 = true
	tbl_234.ParentTorso = var1669
	tbl_139[0] = tbl_234
	tbl_871.Sounds = tbl_139
	local function Startup(arg1_161, arg2_127, arg3_125) -- Line 7414
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_70 = script["bad to the bone"]:Clone()
		clone_70:SetAttribute("EmoteProperty", true)
		table.insert(arg1_161, clone_70)
		local m6d_22 = clone_70.m6d
		m6d_22:SetAttribute("EmoteProperty", true)
		table.insert(arg1_161, m6d_22)
		m6d_22.Name = "Top"
		m6d_22.Part0 = arg2.HumanoidRootPart
		m6d_22.Part1 = clone_70.Top
		m6d_22.Parent = arg2.HumanoidRootPart
		clone_70.Parent = arg2
	end
	tbl_871.Startup = Startup
	tbl_871.Keyframes = {
		freeze = function(arg1_162, arg2_128, arg3_126) -- Line 7425
			arg3_126:AdjustSpeed(0)
		end;
	}
	tbl_871.Animation = 18450685221
	tbl_871.Stun = "Freeze"
	tbl_459.WHAT = tbl_871
	local tbl_113 = {}
	local tbl_324 = {}
	local tbl_420 = {}
	var1669 = "rbxassetid://18828870694"
	tbl_420.SoundId = var1669
	var1669 = 1
	tbl_420.Volume = var1669
	var1669 = true
	tbl_420.ParentTorso = var1669
	tbl_324[0] = tbl_420
	tbl_113.Sounds = tbl_324
	local function Startup(arg1_163, arg2_129, arg3_127) -- Line 7443
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_291 = script.Sword:Clone()
		clone_291:SetAttribute("EmoteProperty", true)
		table.insert(arg1_163, clone_291)
		local m6d_26 = clone_291.m6d
		m6d_26:SetAttribute("EmoteProperty", true)
		table.insert(arg1_163, m6d_26)
		m6d_26.Name = "Handle"
		m6d_26.Part0 = arg2["Right Arm"]
		m6d_26.Part1 = clone_291.Handle
		m6d_26.Parent = arg2["Right Arm"]
		clone_291.Parent = arg2
	end
	tbl_113.Startup = Startup
	tbl_113.Animation = 18897715873
	tbl_113.Stun = "Slowed"
	tbl_459["Stay Back"] = tbl_113
	local tbl_522 = {}
	local tbl_1008 = {}
	local tbl_371 = {}
	var1669 = "rbxassetid://18450418495"
	tbl_371.SoundId = var1669
	var1669 = 1
	tbl_371.Volume = var1669
	var1669 = true
	tbl_371.ParentTorso = var1669
	tbl_1008[0] = tbl_371
	tbl_522.Sounds = tbl_1008
	local function Startup(arg1_164, arg2_130, arg3_128) -- Line 7466
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_279 = script.Sword:Clone()
		clone_279:SetAttribute("EmoteProperty", true)
		table.insert(arg1_164, clone_279)
		local m6d_37 = clone_279.m6d
		m6d_37:SetAttribute("EmoteProperty", true)
		table.insert(arg1_164, m6d_37)
		m6d_37.Name = "Handle"
		m6d_37.Part0 = arg2["Right Arm"]
		m6d_37.Part1 = clone_279.Handle
		m6d_37.Parent = arg2["Right Arm"]
		clone_279.Parent = arg2
	end
	tbl_522.Startup = Startup
	tbl_522.Keyframes = {
		freeze = function(arg1_165, arg2_131, arg3_129) -- Line 7477
			arg3_129:AdjustSpeed(0)
		end;
	}
	tbl_522.Animation = 18450406917
	tbl_522.Stun = "Freeze"
	tbl_459["All Yours"] = tbl_522
	local tbl_249 = {}
	local tbl_638 = {}
	local tbl_182 = {}
	var1669 = "rbxassetid://17292863583"
	tbl_182.SoundId = var1669
	var1669 = 1
	tbl_182.Volume = var1669
	var1669 = 0.15
	tbl_182.TimePosition = var1669
	var1669 = true
	tbl_182.ParentTorso = var1669
	tbl_638[0] = tbl_182
	tbl_249.Sounds = tbl_638
	tbl_249.Keyframes = {
		freeze = function(arg1_166, arg2_132, arg3_130) -- Line 7497
			arg3_130:AdjustSpeed(0)
		end;
	}
	tbl_249.Fix = true
	tbl_249.FixRotation = true
	tbl_249.Animation = 17292855624
	tbl_249.Stun = "Freeze"
	tbl_459["Do A Flip"] = tbl_249
	local tbl_361 = {}
	local tbl_911 = {}
	local tbl_82 = {}
	var1669 = "rbxassetid://16746806682"
	tbl_82.SoundId = var1669
	var1669 = 1.25
	tbl_82.Volume = var1669
	var1669 = true
	tbl_82.ParentTorso = var1669
	tbl_911[0] = tbl_82
	tbl_361.Sounds = tbl_911
	tbl_361.Keyframes = {
		freeze = function(arg1_167, arg2_133, arg3_131) -- Line 7518
			arg3_131:AdjustSpeed(0)
		end;
	}
	tbl_361.Animation = 16746808371
	tbl_361.Stun = "Slowed"
	tbl_459["Slick Back"] = tbl_361
	local tbl_345 = {}
	local tbl_159 = {}
	local tbl_595 = {}
	var1669 = "rbxassetid://17292499081"
	tbl_595.SoundId = var1669
	var1669 = 1.25
	tbl_595.Volume = var1669
	var1669 = true
	tbl_595.ParentTorso = var1669
	tbl_159[0] = tbl_595
	tbl_345.Sounds = tbl_159
	tbl_345.Keyframes = {
		start = function(arg1_168, arg2_134, arg3_132) -- Line 7537
			--[[ Upvalues[2]:
				[1]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[2]: arg2 (readonly)
			]]
			local clone_96 = script.powerupaura.Attachment:Clone()
			clone_96:SetAttribute("EmoteProperty", true)
			table.insert(arg2_134, clone_96)
			arg1_168.att = clone_96
			local var1889
			if var1889 then
				var1889 = math.randomseed
				var1889(#any_GetPlayerFromCharacter_result1_2_upvr.Name)
			end
			var1889 = Color3.new(math.random(), math.random(), math.random())
			if arg2.Name == "Weakest Dummy" then
				var1889 = ({BrickColor.new("Bright red").Color, BrickColor.new("Bright yellow").Color, BrickColor.new("Electric blue").Color, BrickColor.new("White").Color})[math.random(1, 4)]
			end
			math.randomseed(tick())
			for _, v_31 in pairs(clone_96:GetChildren()) do
				v_31.Color = ColorSequence.new(var1889)
			end
			clone_96.Parent = arg2.PrimaryPart
			clone_96.big:Emit(5)
			clone_96.ParticleEmitter.Enabled = true
		end;
		["end"] = function(arg1_169, arg2_135, arg3_133) -- Line 7560
			arg1_169.att.ParticleEmitter.Enabled = false
		end;
	}
	tbl_345.Animation = 17292505729
	tbl_345.Stun = "Freeze"
	tbl_459["Power Up"] = tbl_345
	local tbl_500 = {}
	local tbl_63 = {}
	local tbl_1046 = {}
	var1669 = "rbxassetid://16522115283"
	tbl_1046.SoundId = var1669
	var1669 = 1.25
	tbl_1046.Volume = var1669
	var1669 = true
	tbl_1046.ParentTorso = var1669
	tbl_63[0] = tbl_1046
	tbl_500.Sounds = tbl_63
	tbl_500.Keyframes = {
		freeze = function(arg1_170, arg2_136, arg3_134) -- Line 7579
			arg3_134:AdjustSpeed(0)
		end;
	}
	tbl_500.FixRotation = true
	tbl_500.Animation = 16522110024
	tbl_500.Stun = "Freeze"
	tbl_459.Flop = tbl_500
	local tbl_331 = {}
	local tbl_1045 = {}
	local tbl_1029 = {}
	var1669 = "rbxassetid://1837934932"
	tbl_1029.SoundId = var1669
	var1669 = 0.5
	tbl_1029.Volume = var1669
	var1669 = true
	tbl_1029.Looped = var1669
	tbl_1045[0] = tbl_1029
	tbl_331.Sounds = tbl_1045
	tbl_331.Animation = 83257080238678
	tbl_331.Stun = "Freeze"
	tbl_331.Looped = true
	tbl_459.Shy = tbl_331
	local tbl_512 = {}
	local tbl_802 = {}
	local tbl_975 = {}
	var1669 = "rbxassetid://78377770965429"
	tbl_975.SoundId = var1669
	var1669 = 0.25
	tbl_975.Volume = var1669
	var1669 = 0.3
	tbl_975.TimePosition = var1669
	var1669 = true
	tbl_975.Looped = var1669
	tbl_802[0] = tbl_975
	tbl_512.Sounds = tbl_802
	tbl_512.Animation = 129232331588541
	tbl_512.Stun = "Slowed"
	tbl_512.Looped = true
	tbl_512.StunAttribute = 2
	tbl_459["Scary Crawl"] = tbl_512
	local tbl_893 = {}
	local tbl_403 = {}
	local tbl_840 = {}
	var1669 = "rbxassetid://15684856602"
	tbl_840.SoundId = var1669
	var1669 = 1.25
	tbl_840.Volume = var1669
	tbl_403[0] = tbl_840
	tbl_893.Sounds = tbl_403
	tbl_893.Keyframes = {
		freeze = function(arg1_171, arg2_137, arg3_135) -- Line 7628
			arg3_135:AdjustSpeed(0)
		end;
	}
	tbl_893.Animation = 15684849948
	tbl_893.Stun = "Slowed"
	tbl_893.StunAttribute = 1.5
	tbl_459.Relaxed = tbl_893
	local tbl_832 = {}
	local tbl_665 = {}
	local tbl_170 = {}
	var1669 = "rbxassetid://15674156835"
	tbl_170.SoundId = var1669
	var1669 = 0.65
	tbl_170.Volume = var1669
	tbl_665[0] = tbl_170
	tbl_832.Sounds = tbl_665
	tbl_832.Keyframes = {
		freeze = function(arg1_172, arg2_138, arg3_136) -- Line 7647
			arg3_136:AdjustSpeed(0)
		end;
	}
	tbl_832.Animation = 15674141176
	tbl_832.Stun = "Freeze"
	tbl_459.Salute = tbl_832
	local tbl_820 = {}
	local tbl_380 = {}
	local tbl_748 = {}
	var1669 = "rbxassetid://1842179370"
	tbl_748.SoundId = var1669
	var1669 = 0.65
	tbl_748.Volume = var1669
	var1669 = true
	tbl_748.Looped = var1669
	tbl_380[0] = tbl_748
	tbl_820.Sounds = tbl_380
	tbl_820.FixRotation = true
	tbl_820.Animation = 99277885325374
	tbl_820.Looped = true
	tbl_820.Stun = "Freeze"
	tbl_459["Angel Sit"] = tbl_820
	local tbl_855 = {
		Sounds = {};
	}
	local function Startup(arg1_173, arg2_139, arg3_137) -- Line 7676
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_18 = script.Pie:Clone()
		clone_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_173, clone_18)
		arg3_137.Handle = clone_18
		local Pie = clone_18.Pie
		Pie:SetAttribute("EmoteProperty", true)
		table.insert(arg1_173, Pie)
		arg3_137.md = Pie
		Pie.Part0 = arg2.PrimaryPart
		Pie.Part1 = clone_18
		Pie.Parent = Pie.Part0
		clone_18.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://102809211589234";
			Parent = clone_18;
			Volume = 2;
		}):Play()
	end
	tbl_855.Startup = Startup
	tbl_855.Keyframes = {
		show = function(arg1_174, arg2_140, arg3_138) -- Line 7691
			local Handle_41 = arg1_174.Handle
			for _, v_32 in pairs({Handle_41, Handle_41["Meshes/pie_Circle"]}) do
				v_32.Transparency = 0
			end
		end;
		["end"] = function(arg1_175, arg2_141, arg3_139) -- Line 7698
			arg1_175.Handle:Destroy()
		end;
	}
	tbl_855.Animation = 100120756694061
	tbl_855.Stun = "Slowed"
	tbl_459.Pie = tbl_855
	local tbl_308 = {}
	local tbl_473 = {}
	local tbl_817 = {}
	var1669 = "rbxassetid://72680012098533"
	tbl_817.SoundId = var1669
	var1669 = 0.8
	tbl_817.Volume = var1669
	var1669 = true
	tbl_817.ParentTorso = var1669
	var1669 = false
	tbl_817.Looped = var1669
	tbl_473[0] = tbl_817
	tbl_308.Sounds = tbl_473
	local function Startup(arg1_176, arg2_142, arg3_140) -- Line 7717
	end
	tbl_308.Startup = Startup
	tbl_308.Animation = 92009592408067
	tbl_308.Stun = "Freeze"
	tbl_459.ROFL = tbl_308
	local tbl_315 = {}
	local tbl_710 = {}
	local tbl_547 = {}
	var1669 = "rbxassetid://127734089249377"
	tbl_547.SoundId = var1669
	var1669 = 0.4
	tbl_547.Volume = var1669
	var1669 = true
	tbl_547.Looped = var1669
	tbl_710[0] = tbl_547
	tbl_315.Sounds = tbl_710
	local function Startup(arg1_177, arg2_143, arg3_141) -- Line 7739
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_330 = script["Hard Boiled Roadster"]:Clone()
		clone_330:SetAttribute("EmoteProperty", true)
		table.insert(arg1_177, clone_330)
		arg3_141.Handle = clone_330
		for _, v_33 in pairs({"1Wheel", "2Wheel", "3Wheel", "4Wheel", "Base"}) do
			local SOME_3 = clone_330:FindFirstChild(v_33):FindFirstChild(v_33)
			if SOME_3 then
				SOME_3:SetAttribute("EmoteProperty", true)
				table.insert(arg1_177, SOME_3)
				arg3_141.md = SOME_3
				SOME_3.Parent = arg2.PrimaryPart
				SOME_3.Part0 = arg2.PrimaryPart
				SOME_3.Part1 = clone_330:FindFirstChild(v_33)
			end
		end
		clone_330.Parent = arg2
	end
	tbl_315.Startup = Startup
	tbl_315.Animation = 136339706043215
	tbl_315.Stun = "Slowed"
	tbl_315.StunAttribute = 1
	tbl_459.Eggceleration = tbl_315
	local tbl_296 = {}
	local tbl_278 = {}
	local tbl_965 = {}
	var1669 = "rbxassetid://130102260263347"
	tbl_965.SoundId = var1669
	var1669 = 0.75
	tbl_965.Volume = var1669
	var1669 = false
	tbl_965.Looped = var1669
	tbl_278[0] = tbl_965
	local tbl_841 = {}
	var1669 = "rbxassetid://9112871516"
	tbl_841.SoundId = var1669
	var1669 = 0.1
	tbl_841.Volume = var1669
	var1669 = true
	tbl_841.Looped = var1669
	tbl_278[0.01] = tbl_841
	tbl_296.Sounds = tbl_278
	local function Startup(arg1_178, arg2_144, arg3_142) -- Line 7773
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_108 = script.Telescope:Clone()
		clone_108:SetAttribute("EmoteProperty", true)
		table.insert(arg1_178, clone_108)
		arg3_142.Handle = clone_108
		local Telescope = clone_108.Telescope
		Telescope:SetAttribute("EmoteProperty", true)
		table.insert(arg1_178, Telescope)
		arg3_142.md = Telescope
		Telescope.Part0 = arg2["Left Arm"]
		Telescope.Part1 = clone_108
		Telescope.Parent = Telescope.Part0
		clone_108.Parent = arg2
		local clone_238 = script.RockModel:Clone()
		clone_238:SetAttribute("EmoteProperty", true)
		table.insert(arg1_178, clone_238)
		arg3_142.Handle = clone_238
		local Motor6D_12 = Instance.new("Motor6D")
		Motor6D_12:SetAttribute("EmoteProperty", true)
		table.insert(arg1_178, Motor6D_12)
		arg3_142.md = Motor6D_12
		Motor6D_12.Part0 = arg2.PrimaryPart
		Motor6D_12.Part1 = clone_238.Rock
		Motor6D_12.C0 = CFrame.new(0.518783569, -2.77656937, -1.6493988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D_12.Parent = Motor6D_12.Part0
		clone_238.Parent = arg2
	end
	tbl_296.Startup = Startup
	tbl_296.Animation = 95188093937721
	tbl_296.Idle = 123472525620412
	tbl_296.Stun = "Freeze"
	tbl_459["Far Lands"] = tbl_296
	local tbl_1068 = {}
	local tbl_737 = {}
	local tbl_167 = {}
	var1669 = "rbxassetid://82109086143085"
	tbl_167.SoundId = var1669
	var1669 = 0.8
	tbl_167.Volume = var1669
	var1669 = true
	tbl_167.Looped = var1669
	tbl_737[0] = tbl_167
	tbl_1068.Sounds = tbl_737
	local function Startup(arg1_179, arg2_145, arg3_143) -- Line 7804
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local Part = Instance.new("Part")
		Part:SetAttribute("EmoteProperty", true)
		table.insert(arg1_179, Part)
		arg3_143.Handle = Part
		Part.Color = Color3.fromRGB(165, 91, 91)
		Part.Material = Enum.Material.Brick
		Part.CanCollide = false
		Part.CanTouch = false
		Part.CanQuery = false
		Part.Massless = true
		Part.Size = Vector3.new(14, 10, 2)
		local Weld_14 = Instance.new("Weld")
		Weld_14.Part0 = arg2.PrimaryPart
		Weld_14.Part1 = Part
		Weld_14.C0 = CFrame.new(-0.0000152587891, 1.99996948, -5.00027466, 1.00000024, -5.55111512e-17, 0.0000116825104, -5.55111645e-17, 1, -6.485096e-22, -0.0000116825104, 0, 1.00000024)
		Weld_14.Parent = Part
		Part.Parent = arg2
	end
	tbl_1068.Startup = Startup
	tbl_1068.HideWeapon = true
	tbl_1068.Looped = true
	tbl_1068.Animation = 82845057792209
	tbl_1068.Stun = "Freeze"
	tbl_459["Brick Wall"] = tbl_1068
	local tbl_439 = {}
	local tbl_80 = {}
	local tbl_944 = {}
	var1669 = "rbxassetid://73094641303819"
	tbl_944.SoundId = var1669
	var1669 = 0.5
	tbl_944.Volume = var1669
	var1669 = false
	tbl_944.Looped = var1669
	tbl_80[0] = tbl_944
	local tbl_847 = {}
	var1669 = "rbxassetid://80725552338935"
	tbl_847.SoundId = var1669
	var1669 = 0.2
	tbl_847.Volume = var1669
	var1669 = true
	tbl_847.Looped = var1669
	tbl_80[2.25] = tbl_847
	tbl_80[1] = {
		SoundId = "rbxassetid://1838577168";
		Volume = 0.8;
		Looped = true;
	}
	tbl_439.Sounds = tbl_80
	local function Startup(arg1_180, arg2_146, arg3_144) -- Line 7848
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_19 = script.poet.Book:Clone()
		clone_19:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, clone_19)
		arg3_144.Handle = clone_19
		local Handle_26 = clone_19.Handle.Handle
		Handle_26:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, Handle_26)
		arg3_144.md = Handle_26
		Handle_26.Part0 = arg2["Left Arm"]
		Handle_26.Part1 = clone_19.Handle
		Handle_26.Parent = Handle_26.Part0
		clone_19.Parent = arg2
		local clone_275 = script.poet.feather:Clone()
		clone_275:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, clone_275)
		arg3_144.Handle = clone_275
		local Handle_24 = clone_275.Handle.Handle
		Handle_24:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, Handle_24)
		arg3_144.md = Handle_24
		Handle_24.Part0 = arg2["Right Arm"]
		Handle_24.Part1 = clone_275.Handle
		Handle_24.Parent = Handle_24.Part0
		clone_275.Parent = arg2
		local clone_10 = script.poet["studious chair"]:Clone()
		clone_10:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, clone_10)
		arg3_144.Handle = clone_10
		local Motor6D_14 = Instance.new("Motor6D")
		Motor6D_14:SetAttribute("EmoteProperty", true)
		table.insert(arg1_180, Motor6D_14)
		arg3_144.md = Motor6D_14
		Motor6D_14.Part0 = arg2.PrimaryPart
		Motor6D_14.Part1 = clone_10.mainpiece
		Motor6D_14.C0 = CFrame.new(-1.39691925, 1.01877403, 1.46870232, 0.707105875, 0, -0.707105875, 0, 1, 0, 0.707105875, 0, 0.707105875)
		Motor6D_14.Parent = Motor6D_14.Part0
		clone_10.Parent = arg2
	end
	tbl_439.Startup = Startup
	tbl_439.Animation = 91228869240203
	tbl_439.Idle = 83196818755529
	tbl_439.Stun = "Freeze"
	tbl_459.Poet = tbl_439
	local tbl_455 = {}
	local tbl_726 = {}
	local tbl_822 = {}
	var1669 = "rbxassetid://122501421229323"
	tbl_822.SoundId = var1669
	var1669 = 1
	tbl_822.Volume = var1669
	var1669 = false
	tbl_822.Looped = var1669
	tbl_726[0] = tbl_822
	tbl_455.Sounds = tbl_726
	local function Startup(arg1_181, arg2_147, arg3_145) -- Line 7886
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_121 = script.vr:Clone()
		clone_121:SetAttribute("EmoteProperty", true)
		table.insert(arg1_181, clone_121)
		arg3_145.Handle = clone_121
		local Handle_39 = clone_121.Handle
		Handle_39:SetAttribute("EmoteProperty", true)
		table.insert(arg1_181, Handle_39)
		arg3_145.md = Handle_39
		Handle_39.Part0 = arg2.Head
		Handle_39.Part1 = clone_121
		Handle_39.Parent = arg2.Head
		clone_121.Name = "Handle"
		clone_121.Parent = arg2.Head
	end
	tbl_455.Startup = Startup
	tbl_455.Animation = 84734676175472
	tbl_455.Looped = false
	tbl_455.Stun = "Slowed"
	tbl_459["Virtual Reality"] = tbl_455
	local tbl_513 = {}
	local tbl_1114 = {}
	local tbl_289 = {}
	var1669 = "rbxassetid://1837571829"
	tbl_289.SoundId = var1669
	var1669 = 0.5
	tbl_289.Volume = var1669
	var1669 = true
	tbl_289.Looped = var1669
	tbl_1114[0] = tbl_289
	tbl_513.Sounds = tbl_1114
	local function Startup(arg1_182, arg2_148, arg3_146) -- Line 7910
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_6 = script.Lollipop:Clone()
		clone_6:SetAttribute("EmoteProperty", true)
		table.insert(arg1_182, clone_6)
		arg3_146.Handle = clone_6
		local Lollipop = clone_6.Lollipop
		Lollipop:SetAttribute("EmoteProperty", true)
		table.insert(arg1_182, Lollipop)
		arg3_146.md = Lollipop
		Lollipop.Part0 = arg2["Left Arm"]
		Lollipop.Part1 = clone_6
		Lollipop.Parent = arg2["Left Arm"]
		clone_6.Parent = arg2
	end
	tbl_513.Startup = Startup
	tbl_513.Animation = 136634205715198
	tbl_513.Looped = true
	tbl_513.Stun = "Freeze"
	tbl_459.Candy = tbl_513
	local tbl_401 = {}
	local tbl_527 = {}
	local tbl_131 = {}
	var1669 = "rbxassetid://121331882801594"
	tbl_131.SoundId = var1669
	var1669 = 1
	tbl_131.Volume = var1669
	var1669 = true
	tbl_131.ParentTorso = var1669
	tbl_527[0] = tbl_131
	local tbl_437 = {}
	var1669 = "rbxassetid://95578909033022"
	tbl_437.SoundId = var1669
	var1669 = 0.3
	tbl_437.Volume = var1669
	var1669 = true
	tbl_437.Looped = var1669
	var1669 = true
	tbl_437.ParentTorso = var1669
	tbl_527[1.167] = tbl_437
	tbl_401.Sounds = tbl_527
	local function Startup(arg1_183, arg2_149, arg3_147) -- Line 7940
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_8 = script.Laptop:Clone()
		clone_8:SetAttribute("EmoteProperty", true)
		table.insert(arg1_183, clone_8)
		arg3_147.Handle = clone_8
		local m6d_31 = clone_8.m6d
		m6d_31:SetAttribute("EmoteProperty", true)
		table.insert(arg1_183, m6d_31)
		arg3_147.md = m6d_31
		m6d_31.Part0 = arg2.PrimaryPart
		m6d_31.Name = "MainLaptop"
		m6d_31.Part1 = clone_8.MainLaptop
		m6d_31.Parent = arg2.PrimaryPart
		clone_8.Parent = arg2
	end
	tbl_401.Startup = Startup
	tbl_401.Animation = 122143558846408
	tbl_401.Idle = 135379415562839
	tbl_401.Looped = false
	tbl_401.FixRotation = true
	tbl_401.Stun = "Freeze"
	tbl_459["Kicking My Feet"] = tbl_401
	local tbl_1106 = {}
	local tbl_767 = {}
	local tbl_394 = {}
	var1669 = "rbxassetid://1839444520"
	tbl_394.SoundId = var1669
	var1669 = 0.5
	tbl_394.Volume = var1669
	var1669 = true
	tbl_394.Looped = var1669
	tbl_767[0] = tbl_394
	tbl_1106.Sounds = tbl_767
	tbl_1106.Animation = 126505536768184
	tbl_1106.HideWeapon = true
	tbl_1106.Looped = true
	tbl_1106.Stun = "Slowed"
	tbl_459["Dancey Dance"] = tbl_1106
	local tbl_763 = {}
	local tbl_363 = {}
	local tbl_769 = {}
	var1669 = "rbxassetid://94428920940989"
	tbl_769.SoundId = var1669
	var1669 = 1
	tbl_769.Volume = var1669
	var1669 = true
	tbl_769.ParentTorso = var1669
	tbl_363[0] = tbl_769
	tbl_763.Sounds = tbl_363
	local function Startup(arg1_184, arg2_150, arg3_148) -- Line 7981
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_179 = script.Watch:Clone()
		clone_179:SetAttribute("EmoteProperty", true)
		table.insert(arg1_184, clone_179)
		arg3_148.Handle = clone_179
		local Watch = clone_179.Watch
		Watch:SetAttribute("EmoteProperty", true)
		table.insert(arg1_184, Watch)
		arg3_148.md = Watch
		Watch.Part0 = arg2["Left Arm"]
		Watch.Part1 = clone_179
		Watch.Parent = arg2["Left Arm"]
		clone_179.Parent = arg2
	end
	tbl_763.Startup = Startup
	tbl_763.Keyframes = {
		disguise = function(arg1_185, arg2_151, arg3_149) -- Line 7991
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local clone_183 = script.CloneGlow:Clone()
			clone_183.Parent = arg2.PrimaryPart
			clone_183:Emit(10)
			local tbl_475 = {
				Name = "randomdisguise#";
			}
			tbl_475.Parent = arg2
			shared.cfolder(tbl_475, 0.2)
		end;
	}
	tbl_763.Cooldown = 5
	tbl_763.Animation = 95977571599797
	tbl_763.HideWeapon = true
	tbl_763.Stun = "Slowed"
	tbl_763.StunAttribute = 1.25
	tbl_459.Transform = tbl_763
	local tbl_487 = {
		Sounds = {};
	}
	local function Startup(arg1_186, arg2_152, arg3_150) -- Line 8013
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_284 = script["hypnotize coin"]:Clone()
		clone_284:SetAttribute("EmoteProperty", true)
		table.insert(arg1_186, clone_284)
		arg3_150.Handle = clone_284
		local rotate_2 = clone_284.rotate
		rotate_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_186, rotate_2)
		local rotate = rotate_2.rotate
		rotate:SetAttribute("EmoteProperty", true)
		table.insert(arg1_186, rotate)
		arg3_150.md = rotate
		rotate.Part0 = arg2["Right Arm"]
		rotate.Part1 = rotate_2
		rotate.Parent = arg2["Right Arm"]
		rotate_2.Parent = arg2["Right Arm"]
		rotate_2["hypnotize coin"].Part0 = rotate_2
		rotate_2["hypnotize coin"].Part1 = clone_284
		clone_284.Beam.Attachment0 = rotate_2.a
		clone_284.Beam.Attachment1 = clone_284.b
		clone_284.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://128826289918429";
			Parent = clone_284;
			Volume = 1;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://96767567204088";
			Parent = clone_284;
			Looped = true;
			Volume = 0.5;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://84603081336467";
			Parent = clone_284;
			Looped = true;
			Volume = 1;
		}):Play()
	end
	tbl_487.Startup = Startup
	tbl_487.Animation = 83122498060756
	tbl_487.Looped = true
	tbl_487.Fix = true
	tbl_487.HideWeapon = true
	tbl_487.Stun = "Slowed"
	tbl_487.StunAttribute = 1.25
	tbl_459.Hypnotize = tbl_487
	local tbl_914 = {}
	local tbl_270 = {}
	local tbl_952 = {}
	var1669 = "rbxassetid://85846521324149"
	tbl_952.SoundId = var1669
	var1669 = 0.6
	tbl_952.Volume = var1669
	tbl_270[0] = tbl_952
	tbl_914.Sounds = tbl_270
	local function Startup(arg1_187, arg2_153, arg3_151) -- Line 8063
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_43 = script.TongueThree:Clone()
		clone_43:SetAttribute("EmoteProperty", true)
		table.insert(arg1_187, clone_43)
		arg3_151.Handle = clone_43
		clone_43.Name = "Tongue"
		local Tongue = clone_43.Tongue
		Tongue:SetAttribute("EmoteProperty", true)
		table.insert(arg1_187, Tongue)
		arg3_151.md = Tongue
		Tongue.Part0 = arg2.Head
		Tongue.Part1 = clone_43
		Tongue.Parent = arg2.Head
		clone_43.Parent = arg2
	end
	tbl_914.Startup = Startup
	tbl_914.Animation = 126729542613743
	tbl_914.Looped = false
	tbl_914.Stun = "Slowed"
	tbl_914.StunAttribute = 1
	tbl_459.Anteater = tbl_914
	local tbl_236 = {}
	local tbl_241 = {}
	local tbl_1086 = {}
	var1669 = "rbxassetid://84584488257531"
	tbl_1086.SoundId = var1669
	var1669 = 0.6
	tbl_1086.Volume = var1669
	tbl_241[0] = tbl_1086
	local tbl_1069 = {}
	var1669 = "rbxassetid://107717554139419"
	tbl_1069.SoundId = var1669
	var1669 = 1
	tbl_1069.Volume = var1669
	tbl_241[0.01] = tbl_1069
	tbl_236.Sounds = tbl_241
	local function Startup(arg1_188, arg2_154, arg3_152) -- Line 8092
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_225 = script.Tongue:Clone()
		clone_225:SetAttribute("EmoteProperty", true)
		table.insert(arg1_188, clone_225)
		arg3_152.Handle = clone_225
		local Tongue_2 = clone_225.Tongue
		Tongue_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_188, Tongue_2)
		arg3_152.md = Tongue_2
		Tongue_2.Part0 = arg2.Head
		Tongue_2.Part1 = clone_225
		Tongue_2.Parent = arg2.Head
		clone_225.Parent = arg2
	end
	tbl_236.Startup = Startup
	tbl_236.Animation = 90429111193022
	tbl_236.Looped = false
	tbl_236.Stun = "Slowed"
	tbl_236.StunAttribute = 1
	tbl_459["Dolphin Laugh"] = tbl_236
	local tbl_53 = {}
	local tbl_480 = {}
	local tbl_265 = {}
	var1669 = "rbxassetid://136421083782203"
	tbl_265.SoundId = var1669
	var1669 = 0.75
	tbl_265.Volume = var1669
	var1669 = true
	tbl_265.ParentTorso = var1669
	tbl_480[0] = tbl_265
	local tbl_909 = {}
	var1669 = "rbxassetid://109487141252928"
	tbl_909.SoundId = var1669
	var1669 = 0.25
	tbl_909.Volume = var1669
	var1669 = true
	tbl_909.ParentTorso = var1669
	var1669 = true
	tbl_909.Looped = var1669
	tbl_480[0.667] = tbl_909
	tbl_53.Sounds = tbl_480
	local function Startup(arg1_189, arg2_155, arg3_153) -- Line 8123
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_13_upvr = shared.cfolder({
			Name = "Freeze";
		}, 0.6)
		table.insert(arg1_189, shared_cfolder_result1_13_upvr)
		shared_cfolder_result1_13_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_13_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_13_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 8131
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_13_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_13_upvr.Parent = arg2
		end)
	end
	tbl_53.Startup = Startup
	tbl_53.Keyframes = {}
	tbl_53.Infinite = true
	tbl_53.Animation = 95582164547526
	tbl_53.Idle = 129959128025296
	local tbl_272 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://101300402631347"
	var1669.Volume = 1
	tbl_272[1] = 97763083185838
	tbl_272[2] = 1.167
	tbl_272[3] = var1669
	tbl_53.End = tbl_272
	tbl_53.Looped = false
	tbl_53.Stun = "Slowed"
	tbl_53.StunAttribute = 1
	tbl_459["Tactical Roll"] = tbl_53
	local tbl_11 = {}
	local tbl_976 = {}
	local tbl_1050 = {}
	var1669 = "rbxassetid://123492905764821"
	tbl_1050.SoundId = var1669
	var1669 = true
	tbl_1050.ParentTorso = var1669
	var1669 = 1
	tbl_1050.Volume = var1669
	tbl_976[0] = tbl_1050
	tbl_11.Sounds = tbl_976
	local function Startup(arg1_190, arg2_156, arg3_154) -- Line 8167
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_293 = script.Snowball:Clone()
		clone_293:SetAttribute("EmoteProperty", true)
		table.insert(arg1_190, clone_293)
		arg3_154.Handle = clone_293
		local Snowball = clone_293.Snowball
		Snowball:SetAttribute("EmoteProperty", true)
		table.insert(arg1_190, Snowball)
		arg3_154.md = Snowball
		Snowball.Part0 = arg2.PrimaryPart
		Snowball.Part1 = clone_293
		Snowball.Parent = arg2.PrimaryPart
		clone_293.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://127749554517948";
			Parent = clone_293;
			Volume = 2;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://84849690170635";
			Parent = clone_293;
			Looped = true;
			Volume = 0.65;
		}):Play()
		local shared_cfolder_result1_11_upvr = shared.cfolder({
			Name = "Freeze";
		}, 0.567)
		table.insert(arg1_190, shared_cfolder_result1_11_upvr)
		shared_cfolder_result1_11_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_11_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_11_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 8195
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_11_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_11_upvr.Parent = arg2
		end)
	end
	tbl_11.Startup = Startup
	tbl_11.Keyframes = {}
	tbl_11.Infinite = true
	tbl_11.Animation = 93094222682042
	tbl_11.Idle = 108144977825967
	tbl_11.Looped = false
	tbl_11.Stun = "Slowed"
	tbl_11.StunAttribute = 1
	tbl_459.Snowball = tbl_11
	local tbl_1066 = {
		Sounds = {};
	}
	local function Startup(arg1_191, arg2_157, arg3_155) -- Line 8216
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_25 = script.bar:Clone()
		clone_25:SetAttribute("EmoteProperty", true)
		table.insert(arg1_191, clone_25)
		arg3_155.Handle = clone_25
		local bar = clone_25.bar
		bar:SetAttribute("EmoteProperty", true)
		table.insert(arg1_191, bar)
		arg3_155.md = bar
		bar.Part0 = arg2.PrimaryPart
		bar.Part1 = clone_25
		bar.Parent = arg2.PrimaryPart
		clone_25.Parent = arg2
	end
	tbl_1066.Startup = Startup
	tbl_1066.Keyframes = {
		clap = function(arg1_192, arg2_158, arg3_156) -- Line 8226
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var2_upvw (copied, read and write)
			]]
			shared.sfx({
				SoundId = "rbxassetid://77085840183045";
				Parent = arg2.Torso;
				RollOffMaxDistance = var2_upvw;
				Volume = 0.2;
			}):Play()
		end;
	}
	tbl_1066.Infinite = true
	tbl_1066.Animation = 75393073390365
	tbl_1066.Looped = true
	tbl_1066.Stun = "Freeze"
	tbl_459["Pull Ups"] = tbl_1066
	local tbl_491 = {}
	local tbl_836 = {}
	local tbl_67 = {}
	var1669 = "rbxassetid://98776091220732"
	tbl_67.SoundId = var1669
	var1669 = 2
	tbl_67.Volume = var1669
	var1669 = false
	tbl_67.Looped = var1669
	tbl_836[0] = tbl_67
	tbl_491.Sounds = tbl_836
	local function Startup(arg1_193, arg2_159, arg3_157) -- Line 8251
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_491.Startup = Startup
	tbl_491.Animation = 78773506399466
	tbl_491.Looped = false
	tbl_491.Stun = "Slowed"
	tbl_459["Crush His Skull"] = tbl_491
	local tbl_740 = {}
	local tbl_1099 = {}
	local tbl_884 = {}
	var1669 = "rbxassetid://82594146296970"
	tbl_884.SoundId = var1669
	var1669 = 0.65
	tbl_884.Volume = var1669
	var1669 = false
	tbl_884.Looped = var1669
	tbl_1099[0] = tbl_884
	tbl_740.Sounds = tbl_1099
	local function Startup(arg1_194, arg2_160, arg3_158) -- Line 8270
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_740.Startup = Startup
	tbl_740.Animation = 134468557091532
	tbl_740.Looped = false
	tbl_740.Stun = "Slowed"
	tbl_459["Tear To My Eye"] = tbl_740
	local tbl_883 = {}
	local tbl_69 = {}
	local tbl_810 = {}
	var1669 = "rbxassetid://104425695752871"
	tbl_810.SoundId = var1669
	var1669 = 0.65
	tbl_810.Volume = var1669
	var1669 = false
	tbl_810.Looped = var1669
	tbl_69[0] = tbl_810
	tbl_883.Sounds = tbl_69
	local function Startup(arg1_195, arg2_161, arg3_159) -- Line 8288
		--[[ Upvalues[2]:
			[1]: var110_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
	end
	tbl_883.Startup = Startup
	tbl_883.Animation = 80518687127249
	tbl_883.Looped = false
	tbl_883.Stun = "Slowed"
	tbl_883.StunAttribute = 1
	tbl_459["Iconic Salute"] = tbl_883
	local tbl_1009 = {}
	local tbl_516 = {}
	local tbl_499 = {}
	var1669 = "rbxassetid://76952189090658"
	tbl_499.SoundId = var1669
	var1669 = 0.3
	tbl_499.Volume = var1669
	var1669 = true
	tbl_499.Looped = var1669
	tbl_516[0] = tbl_499
	local tbl_1107 = {}
	var1669 = "rbxassetid://1846637439"
	tbl_1107.SoundId = var1669
	var1669 = 0.8
	tbl_1107.Volume = var1669
	var1669 = true
	tbl_1107.Looped = var1669
	tbl_516[0.1] = tbl_1107
	tbl_1009.Sounds = tbl_516
	tbl_1009.Animation = 137202650654919
	tbl_1009.Looped = true
	tbl_1009.Stun = "Slowed"
	tbl_1009.StunAttribute = 1.25
	tbl_459["Happy Run"] = tbl_1009
	local tbl_1005 = {}
	local tbl_210 = {}
	local tbl_245 = {}
	var1669 = "rbxassetid://119365921426629"
	tbl_245.SoundId = var1669
	var1669 = 1
	tbl_245.Volume = var1669
	var1669 = true
	tbl_245.ParentTorso = var1669
	tbl_210[0] = tbl_245
	tbl_1005.Sounds = tbl_210
	tbl_1005.Animation = 112380819900693
	tbl_1005.Stun = "Freeze"
	tbl_459["I HATE THIS"] = tbl_1005
	local tbl_89 = {}
	local tbl_34 = {}
	local tbl_567 = {}
	var1669 = "rbxassetid://109152804297772"
	tbl_567.SoundId = var1669
	var1669 = 1
	tbl_567.Volume = var1669
	var1669 = false
	tbl_567.Looped = var1669
	tbl_34[0] = tbl_567
	tbl_89.Sounds = tbl_34
	local function Startup(arg1_196, arg2_162, arg3_160) -- Line 8355
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_318 = script.mag:Clone()
		clone_318:SetAttribute("EmoteProperty", true)
		table.insert(arg1_196, clone_318)
		arg3_160.Handle = clone_318
		local Motor6D_2 = clone_318["Meshes/magnifying glass_Magnifying glass"].Motor6D
		Motor6D_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_196, Motor6D_2)
		arg3_160.md = Motor6D_2
		Motor6D_2.Part0 = arg2["Right Arm"]
		Motor6D_2.Part1 = clone_318["Meshes/magnifying glass_Magnifying glass"]
		Motor6D_2.Parent = arg2["Right Arm"]
		clone_318.Parent = arg2
	end
	tbl_89.Startup = Startup
	tbl_89.Animation = 110165153895915
	tbl_89.Stun = "Slowed"
	tbl_459["Closer Look"] = tbl_89
	local tbl_332 = {}
	local tbl_243 = {}
	local tbl_469 = {}
	var1669 = "rbxassetid://78427074444157"
	tbl_469.SoundId = var1669
	var1669 = 0.8
	tbl_469.Volume = var1669
	tbl_243[0] = tbl_469
	tbl_332.Sounds = tbl_243
	local function Startup(arg1_197, arg2_163, arg3_161) -- Line 8376
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_102 = script.burger:Clone()
		clone_102:SetAttribute("EmoteProperty", true)
		table.insert(arg1_197, clone_102)
		arg3_161.Handle = clone_102
		local burger = clone_102.burger
		burger:SetAttribute("EmoteProperty", true)
		table.insert(arg1_197, burger)
		arg3_161.md = burger
		burger.Part0 = arg2["Right Arm"]
		burger.Part1 = clone_102
		burger.Parent = arg2["Right Arm"]
		clone_102.Parent = arg2
	end
	tbl_332.Startup = Startup
	tbl_332.HideWeapon = true
	tbl_332.Animation = 118344836569256
	tbl_332.Stun = "Slowed"
	tbl_459["Wait what?"] = tbl_332
	local tbl_334 = {}
	local tbl_1002 = {}
	local tbl_1054 = {}
	var1669 = "rbxassetid://98010853317105"
	tbl_1054.SoundId = var1669
	var1669 = true
	tbl_1054.ParentTorso = var1669
	var1669 = 1
	tbl_1054.Volume = var1669
	tbl_1002[0] = tbl_1054
	local tbl_752 = {}
	var1669 = "rbxassetid://96737293385093"
	tbl_752.SoundId = var1669
	var1669 = true
	tbl_752.ParentTorso = var1669
	var1669 = 0.75
	tbl_752.Volume = var1669
	var1669 = true
	tbl_752.Looped = var1669
	tbl_1002[1.25] = tbl_752
	tbl_334.Sounds = tbl_1002
	local function Startup(arg1_198, arg2_164, arg3_162) -- Line 8406
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_3_upvr = shared.cfolder({
			Name = "Freeze";
		}, 1.25)
		table.insert(arg1_198, shared_cfolder_result1_3_upvr)
		shared_cfolder_result1_3_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_3_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_3_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 8414
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_3_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_3_upvr.Parent = arg2
		end)
		local clone_160 = script["Left Arm2"]:Clone()
		clone_160:SetAttribute("EmoteProperty", true)
		table.insert(arg1_198, clone_160)
		arg3_162.Handle = clone_160
		local class_Motor6D_10 = clone_160:FindFirstChildOfClass("Motor6D")
		class_Motor6D_10:SetAttribute("EmoteProperty", true)
		table.insert(arg1_198, class_Motor6D_10)
		arg3_162.md = class_Motor6D_10
		class_Motor6D_10.Part0 = arg2.Torso
		class_Motor6D_10.Part1 = clone_160
		class_Motor6D_10.Parent = arg2.Torso
		clone_160.Parent = arg2
		local clone_273 = script["Right Arm2"]:Clone()
		clone_273:SetAttribute("EmoteProperty", true)
		table.insert(arg1_198, clone_273)
		arg3_162.Handle = clone_273
		local class_Motor6D_16 = clone_273:FindFirstChildOfClass("Motor6D")
		class_Motor6D_16:SetAttribute("EmoteProperty", true)
		table.insert(arg1_198, class_Motor6D_16)
		arg3_162.md = class_Motor6D_16
		class_Motor6D_16.Part0 = arg2.Torso
		class_Motor6D_16.Part1 = clone_273
		class_Motor6D_16.Parent = arg2.Torso
		clone_273.Parent = arg2
		for _, v_34 in pairs({clone_160, clone_273}) do
			local Model = Instance.new("Model")
			Model:SetAttribute("EmoteProperty", true)
			table.insert(arg1_198, Model)
			Instance.new("Humanoid").Parent = Model
			local SOME = arg2:FindFirstChild(string.sub(v_34.Name, 0, #v_34.Name - 1))
			if SOME then
				local clone_44 = SOME:Clone()
				clone_44:ClearAllChildren()
				clone_44.Parent = Model
				local Weld_19 = Instance.new("Weld")
				Weld_19.Part0 = v_34
				Weld_19.Part1 = clone_44
				Weld_19.Parent = clone_44
			end
			for _, v_35 in pairs(arg2:GetChildren()) do
				if v_35:IsA("BodyColors") or v_35:IsA("Shirt") or v_35:IsA("CharacterMesh") then
					v_35:Clone().Parent = Model
				end
			end
			v_34.Transparency = 1
			Model.Parent = arg2
		end
	end
	tbl_334.Startup = Startup
	tbl_334.HideWeapon = true
	tbl_334.Animation = 84352551694194
	tbl_334.Idle = 116556793266735
	local tbl_198 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://136022219424831"
	var1669.Volume = 1
	tbl_198[1] = 128242451039706
	tbl_198[2] = 3.417
	tbl_198[3] = var1669
	tbl_334.End = tbl_198
	tbl_334.Stun = "Slowed"
	tbl_334.StunAttribute = 1
	tbl_459.Spider = tbl_334
	local tbl_56 = {}
	local tbl_85 = {}
	local tbl_408 = {}
	var1669 = "rbxassetid://130627465104635"
	tbl_408.SoundId = var1669
	var1669 = 0.8
	tbl_408.Volume = var1669
	tbl_85[0] = tbl_408
	tbl_56.Sounds = tbl_85
	local function Startup(arg1_199, arg2_165, arg3_163) -- Line 8478
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_232 = script.gun1:Clone()
		clone_232:SetAttribute("EmoteProperty", true)
		table.insert(arg1_199, clone_232)
		arg3_163.Handle = clone_232
		local Motor6D_8 = clone_232.Motor6D
		Motor6D_8:SetAttribute("EmoteProperty", true)
		table.insert(arg1_199, Motor6D_8)
		arg3_163.md = Motor6D_8
		Motor6D_8.Part0 = arg2["Right Arm"]
		Motor6D_8.Part1 = clone_232
		Motor6D_8.Parent = arg2["Right Arm"]
		clone_232.Parent = arg2
		local clone_340 = script.gun2:Clone()
		clone_340:SetAttribute("EmoteProperty", true)
		table.insert(arg1_199, clone_340)
		arg3_163.Handle = clone_340
		local Motor6D_9 = clone_340.Motor6D
		Motor6D_9:SetAttribute("EmoteProperty", true)
		table.insert(arg1_199, Motor6D_9)
		arg3_163.md = Motor6D_9
		Motor6D_9.Part0 = arg2.PrimaryPart
		Motor6D_9.Part1 = clone_340
		Motor6D_9.Parent = arg2.PrimaryPart
		clone_340.Parent = arg2
	end
	tbl_56.Startup = Startup
	tbl_56.HideWeapon = true
	tbl_56.Animation = 129722512665420
	tbl_56.Stun = "Freeze"
	tbl_459["Gun Safety"] = tbl_56
	local tbl_1115 = {}
	local tbl_399 = {}
	local tbl_348 = {}
	var1669 = "rbxassetid://76078643902403"
	tbl_348.SoundId = var1669
	var1669 = 1
	tbl_348.Volume = var1669
	tbl_399[0] = tbl_348
	tbl_1115.Sounds = tbl_399
	local function Startup(arg1_200, arg2_166, arg3_164) -- Line 8507
		--[[ Upvalues[2]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local clone_328 = script.Flag:Clone()
		clone_328:SetAttribute("EmoteProperty", true)
		table.insert(arg1_200, clone_328)
		arg3_164.Handle = clone_328
		local Flag = clone_328.Flag.Flag
		Flag:SetAttribute("EmoteProperty", true)
		CollectionService_upvr:AddTag(Flag, "emotestuff"..arg2.Name)
		game:GetService("Debris"):AddItem(Flag, 7.5)
		arg3_164.md = Flag
		Flag.Part0 = arg2.PrimaryPart
		Flag.Part1 = clone_328.Flag
		Flag.Parent = arg2.PrimaryPart
		clone_328.Parent = arg2
	end
	tbl_1115.Startup = Startup
	tbl_1115.Keyframes = {
		show = function(arg1_201, arg2_167, arg3_165) -- Line 8517
			for _, v_36 in pairs(arg1_201.Handle:GetChildren()) do
				v_36.Transparency = 0
			end
		end;
		place = function(arg1_202, arg2_168, arg3_166) -- Line 8524
			--[[ Upvalues[2]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			table.remove(arg2_168, table.find(arg2_168, arg1_202.Handle))
			local Handle_43 = arg1_202.Handle
			CollectionService_upvr:AddTag(Handle_43, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(Handle_43, 10)
			arg1_202.md:Destroy()
			for _, v_37 in pairs(Handle_43:GetChildren()) do
				v_37.Anchored = true
			end
			Handle_43.Parent = workspace.Thrown
		end;
	}
	tbl_1115.HideWeapon = true
	tbl_1115.Animation = 73523771913372
	tbl_1115.Stun = "Freeze"
	tbl_459["Our Hill"] = tbl_1115
	local tbl_333 = {}
	local tbl_776 = {}
	local tbl_246 = {}
	var1669 = "rbxassetid://127817333862539"
	tbl_246.SoundId = var1669
	var1669 = 0.4
	tbl_246.Volume = var1669
	var1669 = true
	tbl_246.Looped = var1669
	tbl_776[0] = tbl_246
	tbl_333.Sounds = tbl_776
	local function Startup(arg1_203, arg2_169, arg3_167) -- Line 8550
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_271 = script.Brush:Clone()
		clone_271:SetAttribute("EmoteProperty", true)
		table.insert(arg1_203, clone_271)
		arg3_167.Handle = clone_271
		local Brush = clone_271.Brush
		Brush:SetAttribute("EmoteProperty", true)
		table.insert(arg1_203, Brush)
		arg3_167.md = Brush
		Brush.Part0 = arg2["Right Arm"]
		Brush.Part1 = clone_271
		Brush.Parent = arg2["Right Arm"]
		clone_271.Parent = arg2
	end
	tbl_333.Startup = Startup
	tbl_333.Animation = 115179620616154
	tbl_333.Looped = true
	tbl_333.Stun = "Freeze"
	tbl_459["Cleaning The Dirt"] = tbl_333
	local tbl_900 = {}
	local tbl_216 = {}
	local tbl_14 = {}
	var1669 = "rbxassetid://80873338449533"
	tbl_14.SoundId = var1669
	var1669 = 0.25
	tbl_14.Volume = var1669
	var1669 = true
	tbl_14.Looped = var1669
	tbl_216[0] = tbl_14
	tbl_900.Sounds = tbl_216
	local function Startup(arg1_204, arg2_170, arg3_168) -- Line 8573
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_59 = script.Chest:Clone()
		clone_59:SetAttribute("EmoteProperty", true)
		table.insert(arg1_204, clone_59)
		arg3_168.Handle = clone_59
		local Motor6D_18 = clone_59.Motor6D
		Motor6D_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_204, Motor6D_18)
		arg3_168.md = Motor6D_18
		Motor6D_18.Part0 = arg2.PrimaryPart
		Motor6D_18.Part1 = clone_59
		Motor6D_18.Parent = arg2.PrimaryPart
		clone_59.Parent = arg2
	end
	tbl_900.Startup = Startup
	tbl_900.Animation = 122887697782216
	tbl_900.Looped = true
	tbl_900.Stun = "Slowed"
	tbl_900.StunAttribute = 1.6
	tbl_459.Greed = tbl_900
	local tbl_415 = {}
	local tbl_230 = {}
	local tbl_731 = {}
	var1669 = "rbxassetid://90191250272746"
	tbl_731.SoundId = var1669
	var1669 = 1
	tbl_731.Volume = var1669
	var1669 = false
	tbl_731.Looped = var1669
	tbl_230[0] = tbl_731
	tbl_415.Sounds = tbl_230
	local function Startup(arg1_205, arg2_171, arg3_169) -- Line 8597
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_341 = script.Map:Clone()
		clone_341:SetAttribute("EmoteProperty", true)
		table.insert(arg1_205, clone_341)
		arg3_169.Handle = clone_341
		local Map = clone_341.Map
		Map:SetAttribute("EmoteProperty", true)
		table.insert(arg1_205, Map)
		arg3_169.md = Map
		Map.Part0 = arg2["Left Arm"]
		Map.Part1 = clone_341
		Map.Parent = arg2["Left Arm"]
		clone_341.Parent = arg2
	end
	tbl_415.Startup = Startup
	tbl_415.Animation = 107071225742389
	tbl_415.Stun = "Slowed"
	tbl_459.Map = tbl_415
	local tbl_690 = {}
	local tbl_895 = {}
	local tbl_397 = {}
	var1669 = "rbxassetid://136499300928500"
	tbl_397.SoundId = var1669
	var1669 = 1.5
	tbl_397.Volume = var1669
	var1669 = false
	tbl_397.Looped = var1669
	tbl_895[0] = tbl_397
	tbl_690.Sounds = tbl_895
	local function Startup(arg1_206, arg2_172, arg3_170) -- Line 8619
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_209 = script.compass:Clone()
		clone_209:SetAttribute("EmoteProperty", true)
		table.insert(arg1_206, clone_209)
		arg3_170.Handle = clone_209
		local compass = clone_209.compass
		compass:SetAttribute("EmoteProperty", true)
		table.insert(arg1_206, compass)
		arg3_170.md = compass
		compass.Name = "compass"
		compass.Part0 = arg2["Left Arm"]
		compass.Part1 = clone_209
		compass.Parent = arg2["Left Arm"]
		clone_209.Parent = arg2
	end
	tbl_690.Startup = Startup
	tbl_690.Animation = 80768814436661
	tbl_690.Stun = "Freeze"
	tbl_459.Compass = tbl_690
	local tbl_771 = {}
	local tbl_940 = {}
	local tbl_222 = {}
	var1669 = "rbxassetid://84400761601453"
	tbl_222.SoundId = var1669
	var1669 = 1.5
	tbl_222.Volume = var1669
	var1669 = true
	tbl_222.Looped = var1669
	tbl_940[0] = tbl_222
	tbl_771.Sounds = tbl_940
	local function Startup(arg1_207, arg2_173, arg3_171) -- Line 8642
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_335 = script.gameboi:Clone()
		clone_335:SetAttribute("EmoteProperty", true)
		table.insert(arg1_207, clone_335)
		arg3_171.Handle = clone_335
		local gameboi = clone_335.gameboi
		gameboi:SetAttribute("EmoteProperty", true)
		table.insert(arg1_207, gameboi)
		arg3_171.md = gameboi
		gameboi.Part0 = arg2["Left Arm"]
		gameboi.Part1 = clone_335
		gameboi.Parent = arg2["Left Arm"]
		clone_335.Parent = arg2
	end
	tbl_771.Startup = Startup
	tbl_771.Animation = 135067453512312
	tbl_771.Stun = "Slowed"
	tbl_771.Looped = true
	tbl_459.Gamer = tbl_771
	local tbl_360 = {}
	local tbl_1089 = {}
	local tbl_428 = {}
	var1669 = "rbxassetid://1845480621"
	tbl_428.SoundId = var1669
	var1669 = 1.5
	tbl_428.Volume = var1669
	var1669 = true
	tbl_428.Looped = var1669
	tbl_1089[0] = tbl_428
	tbl_360.Sounds = tbl_1089
	tbl_360.FixRotation = true
	tbl_360.Animation = 80454258581844
	tbl_360.Idle = 75040627398852
	tbl_360.Stun = "Slowed"
	tbl_459["Fancy Spin"] = tbl_360
	local tbl_144 = {}
	local tbl_31 = {}
	local tbl_237 = {}
	var1669 = "rbxassetid://106095843660280"
	tbl_237.SoundId = var1669
	var1669 = 1
	tbl_237.Volume = var1669
	var1669 = false
	tbl_237.Looped = var1669
	tbl_31[0] = tbl_237
	local tbl_1063 = {}
	var1669 = "rbxassetid://129084829698643"
	tbl_1063.SoundId = var1669
	var1669 = 0.75
	tbl_1063.Volume = var1669
	var1669 = true
	tbl_1063.Looped = var1669
	tbl_31[0.35] = tbl_1063
	tbl_144.Sounds = tbl_31
	tbl_144.Keyframes = {
		freeze = function(arg1_208, arg2_174, arg3_172) -- Line 8687
			arg3_172:AdjustSpeed(0)
		end;
	}
	tbl_144.FixRotation = true
	tbl_144.Animation = 78259177692699
	tbl_144.Idle = 120789866363939
	tbl_144.Looped = false
	tbl_144.Stun = "Freeze"
	tbl_459["Those Who Know"] = tbl_144
	local tbl_801 = {}
	local tbl_905 = {}
	local tbl_890 = {}
	var1669 = "rbxassetid://15090067278"
	tbl_890.SoundId = var1669
	var1669 = 0.65
	tbl_890.Volume = var1669
	var1669 = 0.125
	tbl_890.TimePosition = var1669
	var1669 = false
	tbl_890.Looped = var1669
	tbl_905[0] = tbl_890
	tbl_801.Sounds = tbl_905
	tbl_801.Keyframes = {
		freeze = function(arg1_209, arg2_175, arg3_173) -- Line 8710
			arg3_173:AdjustSpeed(0)
		end;
	}
	tbl_801.FixRotation = true
	tbl_801.Animation = 15090101157
	tbl_801.Looped = false
	tbl_801.Stun = "Freeze"
	tbl_459.Sit = tbl_801
	local tbl_1130 = {
		Sounds = {};
	}
	local function Startup() -- Line 8726
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://15285526846";
			Volume = 0.65;
			Parent = arg2["Right Arm"];
			Looped = false;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://1840489462";
			Volume = 0.4;
			Parent = arg2.Torso;
			TimePosition = 0.5;
			Looped = true;
		}):Resume()
	end
	tbl_1130.Startup = Startup
	tbl_1130.Keyframes = {
		freeze = function(arg1_210, arg2_176, arg3_174) -- Line 8744
			arg3_174:AdjustSpeed(0)
		end;
	}
	tbl_1130.Fix = true
	tbl_1130.Animation = 15285521399
	tbl_1130.Looped = false
	tbl_1130.Stun = "Freeze"
	tbl_459["WHY?"] = tbl_1130
	local tbl_44 = {}
	local tbl_18 = {}
	local tbl_572 = {}
	var1669 = "rbxassetid://15099895974"
	tbl_572.SoundId = var1669
	var1669 = 0.785
	tbl_572.Volume = var1669
	var1669 = 0
	tbl_572.TimePosition = var1669
	var1669 = false
	tbl_572.Looped = var1669
	tbl_18[0] = tbl_572
	tbl_44.Sounds = tbl_18
	tbl_44.Keyframes = {
		freeze = function(arg1_211, arg2_177, arg3_175) -- Line 8766
			arg3_175:AdjustSpeed(0)
		end;
	}
	tbl_44.Animation = 15099893403
	tbl_44.Looped = false
	tbl_44.Stun = "Freeze"
	tbl_459["Sit 2"] = tbl_44
	local tbl_643 = {}
	local tbl_865 = {}
	local tbl_54 = {}
	var1669 = "rbxassetid://15503011741"
	tbl_54.SoundId = var1669
	var1669 = 0.4
	tbl_54.Volume = var1669
	var1669 = 0
	tbl_54.TimePosition = var1669
	var1669 = false
	tbl_54.Looped = var1669
	tbl_865[0] = tbl_54
	tbl_643.Sounds = tbl_865
	tbl_643.Keyframes = {
		freeze = function(arg1_212, arg2_178, arg3_176) -- Line 8787
			arg3_176:AdjustSpeed(0)
		end;
	}
	tbl_643.Animation = 15503004900
	tbl_643.Looped = false
	tbl_643.Stun = "Slowed"
	tbl_459.T = tbl_643
	local tbl_98 = {}
	local tbl_292 = {}
	local tbl_123 = {}
	var1669 = "rbxassetid://15453955288"
	tbl_123.SoundId = var1669
	var1669 = 0.785
	tbl_123.Volume = var1669
	var1669 = 0
	tbl_123.TimePosition = var1669
	var1669 = false
	tbl_123.Looped = var1669
	tbl_292[0] = tbl_123
	tbl_98.Sounds = tbl_292
	tbl_98.Animation = 15446959450
	tbl_98.Looped = false
	tbl_98.Stun = "Freeze"
	tbl_459["Point Down"] = tbl_98
	local tbl_290 = {}
	local tbl_760 = {}
	local tbl_730 = {}
	var1669 = "rbxassetid://15089965760"
	tbl_730.SoundId = var1669
	var1669 = 0.65
	tbl_730.Volume = var1669
	var1669 = false
	tbl_730.Looped = var1669
	tbl_760[0] = tbl_730
	tbl_290.Sounds = tbl_760
	tbl_290.Keyframes = {
		start = function() -- Line 8822
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://1846628770";
				Volume = 0.65;
				TimePosition = 25.55;
				Looped = false;
				Parent = arg2.PrimaryPart;
			}):Resume()
		end;
	}
	tbl_290.Animation = 15090032390
	tbl_290.Looped = false
	tbl_290.Stun = "Freeze"
	tbl_459["Head Spin"] = tbl_290
	local tbl_187 = {}
	local tbl_696 = {}
	local tbl_1090 = {}
	var1669 = "rbxassetid://15090888419"
	tbl_1090.SoundId = var1669
	var1669 = 2.5
	tbl_1090.Volume = var1669
	var1669 = true
	tbl_1090.Looped = var1669
	tbl_696[0] = tbl_1090
	tbl_187.Sounds = tbl_696
	local function Startup(arg1_213, arg2_179, arg3_177) -- Line 8847
		--[[ Upvalues[2]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		for _, v_38 in pairs(script.Hologram:GetChildren()) do
			if v_38:IsA("Model") then
				local clone_84 = v_38:Clone()
				table.insert(arg1_213, clone_84)
				CollectionService_upvr:AddTag(clone_84, "emotestuff"..arg2.Name)
				for _, v_39 in pairs(clone_84:GetChildren()) do
					v_39:SetAttribute("EmoteProperty", true)
					table.insert(arg1_213, v_39)
					CollectionService_upvr:AddTag(v_39, "emotestuff"..arg2.Name)
					local SOME_2 = script.Hologram:FindFirstChild(v_39.Name)
					v_39.Material = Enum.Material.Glass
					v_39:SetAttribute("Exempt", true)
					v_39.Transparency = 0.25
					v_39.Size = Vector3.new(1.20000, 1.14999, 0)
					v_39.Parent = workspace.Thrown
					if SOME_2 then
						local clone_316 = SOME_2:Clone()
						table.insert(arg1_213, clone_316)
						clone_316:SetAttribute("EmoteProperty", true)
						clone_316.Part0 = arg2.PrimaryPart
						clone_316.Part1 = v_39
						clone_316.Parent = arg2.PrimaryPart
						local tbl_75 = {15090670461, 15090671388, 15090674168, 15090675904, 15090677327, 15090678837, 15090680066, 15090681663}
						for i_45 = 1, 2 do
							local Decal = Instance.new("Decal")
							Decal.Color3 = Color3.fromRGB(450, 450, 450)
							Decal.Transparency = 0.35
							Decal.Texture = "https://www.roblox.com/asset-thumbnail/image?assetId="..tbl_75[math.random(#tbl_75)].."&width=420&height=420&format=png"
							local var2207
							local function INLINED_7() -- Internal function, doesn't exist in bytecode
								var2207 = Enum.NormalId.Front
								return var2207
							end
							if i_45 ~= 1 or not INLINED_7() then
								var2207 = Enum.NormalId.Back
							end
							Decal.Face = var2207
							Decal.Parent = v_39
						end
					end
				end
				clone_84:SetAttribute("EmoteProperty", true)
				clone_84.Parent = arg2
			end
		end
	end
	tbl_187.Startup = Startup
	tbl_187.Animation = 15090734317
	tbl_187.Looped = true
	tbl_187.Stun = "Slowed"
	tbl_459.Hologram = tbl_187
	local tbl_143 = {}
	local tbl_838 = {}
	local tbl_828 = {}
	var1669 = "rbxassetid://15503358454"
	tbl_828.SoundId = var1669
	var1669 = 2
	tbl_828.Volume = var1669
	var1669 = false
	tbl_828.Looped = var1669
	tbl_838[0] = tbl_828
	local tbl_729 = {}
	var1669 = "rbxassetid://1842247132"
	tbl_729.SoundId = var1669
	var1669 = 0.15
	tbl_729.Volume = var1669
	var1669 = true
	tbl_729.Looped = var1669
	tbl_838[0.01] = tbl_729
	tbl_143.Sounds = tbl_838
	tbl_143.Keyframes = {
		clap = function(arg1_214, arg2_180, arg3_178) -- Line 8919
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			task.delay(0.2, function() -- Line 8920
				--[[ Upvalues[2]:
					[1]: arg3_178 (readonly)
					[2]: arg1_214 (readonly)
				]]
				if not arg3_178.IsPlaying then
				else
					for _, v_121 in pairs({arg1_214.stickRight, arg1_214.stickLeft}) do
						if v_121:GetAttribute("OG4") then
							v_121.Attachment1.Position = v_121:GetAttribute("OG")
							v_121.Attachment0.Position = v_121:GetAttribute("OG4")
						end
					end
					arg1_214.stickRight.Enabled = true
					arg1_214.stickLeft.Enabled = true
				end
			end)
			task.delay(1.15, function() -- Line 8935
				--[[ Upvalues[3]:
					[1]: arg3_178 (readonly)
					[2]: arg1_214 (readonly)
					[3]: TweenService_upvr (copied, readonly)
				]]
				if not arg3_178.IsPlaying then
				else
					for _, v_122 in pairs({arg1_214.stickRight, arg1_214.stickLeft}) do
						if not v_122:GetAttribute("OG") then
							v_122:SetAttribute("OG", v_122.Attachment1.Position)
						end
						if not v_122:GetAttribute("OG4") then
							v_122:SetAttribute("OG4", v_122.Attachment0.Position)
						end
						v_122.Attachment1.Position = v_122:GetAttribute("OG")
						v_122.Attachment0.Position = v_122:GetAttribute("OG4")
						v_122.Enabled = true
						TweenService_upvr:Create(v_122.Attachment1, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							WorldPosition = v_122.Attachment0.WorldPosition;
						}):Play()
						if not v_122:GetAttribute("OG2") then
							v_122:SetAttribute("OG2", v_122.Width1)
						end
						if not v_122:GetAttribute("OG3") then
							v_122:SetAttribute("OG3", v_122.Width0)
						end
						TweenService_upvr:Create(v_122, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Width1 = 0;
							Width0 = 0;
						}):Play()
					end
				end
			end)
			var93_upvr({
				SoundId = "rbxassetid://15503358374";
				Parent = arg2.PrimaryPart;
				Volume = 2;
			}):Play()
		end;
		claploop = function(arg1_215, arg2_181, arg3_179) -- Line 8975
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			task.delay(0.4, function() -- Line 8976
				--[[ Upvalues[4]:
					[1]: arg3_179 (readonly)
					[2]: arg1_215 (readonly)
					[3]: TweenService_upvr (copied, readonly)
					[4]: var93_upvr (copied, readonly)
				]]
				if not arg3_179.IsPlaying then
				else
					for _, v_123 in pairs({arg1_215.stickRight, arg1_215.stickLeft}) do
						TweenService_upvr:Create(v_123.Attachment1, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Position = v_123:GetAttribute("OG");
						}):Play()
						TweenService_upvr:Create(v_123, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Width1 = v_123:GetAttribute("OG2");
							Width0 = v_123:GetAttribute("OG3");
						}):Play()
					end
					task.delay(2.89, function() -- Line 8992
						--[[ Upvalues[4]:
							[1]: arg3_179 (copied, readonly)
							[2]: arg1_215 (copied, readonly)
							[3]: TweenService_upvr (copied, readonly)
							[4]: var93_upvr (copied, readonly)
						]]
						if not arg3_179.IsPlaying then
						else
							for _, v_129_upvr in pairs({arg1_215.stickRight, arg1_215.stickLeft}) do
								TweenService_upvr:Create(v_129_upvr.Attachment0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									WorldPosition = v_129_upvr.Attachment1.WorldPosition;
								}):Play()
								var93_upvr({
									SoundId = "rbxassetid://344167846";
									Parent = arg1_215.Handle;
									Volume = 0.08;
								}):Play()
								task.delay(0.5, function() -- Line 9008
									--[[ Upvalues[2]:
										[1]: arg3_179 (copied, readonly)
										[2]: v_129_upvr (readonly)
									]]
									if not arg3_179.IsPlaying then
									else
										v_129_upvr.Enabled = false
									end
								end)
							end
						end
					end)
				end
			end)
			arg1_215.stickRight.Enabled = true
			arg1_215.stickLeft.Enabled = true
			var93_upvr({
				SoundId = "rbxassetid://15503358531";
				Parent = arg2.PrimaryPart;
				Volume = 2;
			}):Play()
		end;
	}
	local function Startup(arg1_216, arg2_182, arg3_180) -- Line 9030
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_146 = script.Ramen.Handle:Clone()
		clone_146:SetAttribute("EmoteProperty", true)
		table.insert(arg1_216, clone_146)
		arg3_180.Handle = clone_146
		local Handle_3 = clone_146.Handle
		Handle_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_216, Handle_3)
		arg3_180.md = Handle_3
		Handle_3.Part0 = arg2["Left Arm"]
		Handle_3.Part1 = clone_146
		Handle_3.Parent = arg2["Left Arm"]
		clone_146.Parent = arg2
		for _, v_40 in pairs({"stickLeft", "stickRight"}) do
			local clone_55 = script.Ramen[v_40]:Clone()
			clone_55:SetAttribute("EmoteProperty", true)
			table.insert(arg1_216, clone_55)
			clone_55.Parent = arg2["Right Arm"]
			local var2263 = clone_55[v_40]
			var2263:SetAttribute("EmoteProperty", true)
			table.insert(arg1_216, var2263)
			var2263.Part0 = arg2["Right Arm"]
			var2263.Part1 = clone_55
			var2263.Parent = arg2["Right Arm"]
			clone_55.Beam.Attachment0 = clone_55.Attachment
			clone_55.Beam.Attachment1 = clone_146.Bowl.Noodles[string.gsub(clone_55.Name, "stick", "")]
			clone_55.Beam.Enabled = false
			arg3_180[v_40] = clone_55.Beam
		end
	end
	tbl_143.Startup = Startup
	tbl_143.HideWeapon = true
	tbl_143.Infinite = true
	tbl_143.IdleKeyframes = true
	tbl_143.Idle = 15503362953
	tbl_143.Animation = 15503201875
	tbl_143.Looped = false
	tbl_143.Stun = "Freeze"
	tbl_459.Ramen = tbl_143
	local tbl_441 = {}
	local tbl_608 = {}
	local tbl_615 = {}
	var1669 = "rbxassetid://16592761699"
	tbl_615.SoundId = var1669
	var1669 = 2
	tbl_615.Volume = var1669
	var1669 = false
	tbl_615.Looped = var1669
	tbl_608[0] = tbl_615
	tbl_441.Sounds = tbl_608
	local function Startup(arg1_217, arg2_183, arg3_181) -- Line 9072
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_79 = script.wollet:Clone()
		clone_79:SetAttribute("EmoteProperty", true)
		table.insert(arg1_217, clone_79)
		arg3_181.Handle = clone_79
		local clone_182 = clone_79.LeftHandle:Clone()
		clone_182:SetAttribute("EmoteProperty", true)
		table.insert(arg1_217, clone_182)
		clone_182.Cube.Part0 = clone_182
		clone_182.Cube.Part1 = clone_79.Cube
		local m6d = clone_79.m6d
		m6d:SetAttribute("EmoteProperty", true)
		table.insert(arg1_217, m6d)
		arg3_181.md = m6d
		m6d.Part0 = arg2["Left Arm"]
		m6d.Part1 = clone_182
		m6d.Name = "LeftHandle"
		clone_182.Parent = arg2
		clone_79.Parent = arg2
		m6d.Parent = arg2["Left Arm"]
	end
	tbl_441.Startup = Startup
	tbl_441.HideWeapon = true
	tbl_441.Animation = 16592787958
	tbl_441.Stun = "Slowed"
	tbl_459["Wallet Check"] = tbl_441
	local tbl_70 = {}
	local tbl_224 = {}
	local tbl_208 = {}
	var1669 = "rbxassetid://15502973035"
	tbl_208.SoundId = var1669
	var1669 = 1
	tbl_208.Volume = var1669
	var1669 = false
	tbl_208.Looped = var1669
	tbl_224[0] = tbl_208
	tbl_70.Sounds = tbl_224
	local function Startup(arg1_218, arg2_184, arg3_182) -- Line 9102
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_120 = script.Clipboard.LeftHandle:Clone()
		clone_120:SetAttribute("EmoteProperty", true)
		table.insert(arg1_218, clone_120)
		arg3_182.Handle = clone_120
		local LeftHandle = clone_120.LeftHandle
		LeftHandle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_218, LeftHandle)
		arg3_182.md = LeftHandle
		LeftHandle.Part0 = arg2["Left Arm"]
		LeftHandle.Part1 = clone_120
		LeftHandle.Parent = arg2["Left Arm"]
		clone_120:FindFirstChild("Decal", true).Texture = "rbxassetid://"..({15114667107, 15124465439, 15143528856, 15114672498, 15143529209, 15143528539, 16136325038})[math.random(1, 7)]
		clone_120.Parent = arg2
		local clone_307 = script.Clipboard.RightHandle:Clone()
		clone_307:SetAttribute("EmoteProperty", true)
		table.insert(arg1_218, clone_307)
		arg3_182.Handle = clone_307
		local RightHandle = clone_307.RightHandle
		RightHandle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_218, RightHandle)
		arg3_182.md = RightHandle
		RightHandle.Part0 = arg2["Right Arm"]
		RightHandle.Part1 = clone_307
		RightHandle.Parent = arg2["Right Arm"]
		clone_307.Parent = arg2
	end
	tbl_70.Startup = Startup
	tbl_70.HideWeapon = true
	tbl_70.Idle = 15502977193
	tbl_70.Animation = 15502978256
	tbl_70.Looped = False
	tbl_70.Stun = "Slowed"
	tbl_459["Nerf This"] = tbl_70
	local tbl_395 = {}
	local tbl_1041 = {}
	local tbl_158 = {}
	var1669 = "rbxassetid://12332077418"
	tbl_158.SoundId = var1669
	var1669 = 1
	tbl_158.Volume = var1669
	tbl_1041[0] = tbl_158
	tbl_395.Sounds = tbl_1041
	local function Startup(arg1_219, arg2_185, arg3_183) -- Line 9136
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_216 = script.blower:Clone()
		clone_216:SetAttribute("EmoteProperty", true)
		table.insert(arg1_219, clone_216)
		arg3_183.Handle = clone_216
		local Cylinder = clone_216.Cylinder.Cylinder
		Cylinder:SetAttribute("EmoteProperty", true)
		table.insert(arg1_219, Cylinder)
		arg3_183.md = Cylinder
		Cylinder.Part0 = arg2.Head
		Cylinder.Part1 = clone_216.Cylinder
		Cylinder.Name = "Cylinder"
		Cylinder.Parent = arg2.Head
		clone_216.Parent = arg2
	end
	tbl_395.Startup = Startup
	tbl_395.Keyframes = {
		clap = function() -- Line 9147
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://16599449151";
				Parent = arg2.Head;
				Volume = 1.5;
			}):Play()
		end;
	}
	tbl_395.IdleKeyframes = true
	tbl_395.Infinite = true
	tbl_395.Idle = 16599398107
	tbl_395.Animation = 16599412902
	tbl_395.Stun = "Slowed"
	tbl_395.StunAttribute = 1
	tbl_459["Party Blower"] = tbl_395
	local tbl_1084 = {
		HideWeapon = true;
	}
	local tbl_958 = {}
	local tbl_521 = {}
	var1669 = "rbxassetid://17097414525"
	tbl_521.SoundId = var1669
	var1669 = 1
	tbl_521.Volume = var1669
	var1669 = true
	tbl_521.ParentTorso = var1669
	var1669 = true
	tbl_521.Looped = var1669
	tbl_958[0] = tbl_521
	tbl_1084.Sounds = tbl_958
	local function Startup(arg1_220, arg2_186, arg3_184) -- Line 9175
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_312 = script.Leye1:Clone()
		clone_312:SetAttribute("EmoteProperty", true)
		table.insert(arg1_220, clone_312)
		arg3_184.Handle = clone_312
		local m6d_41 = clone_312.m6d
		m6d_41:SetAttribute("EmoteProperty", true)
		table.insert(arg1_220, m6d_41)
		arg3_184.md = m6d_41
		m6d_41.Part0 = arg2.Head
		m6d_41.Part1 = clone_312
		m6d_41.Name = "Leye1"
		m6d_41.Parent = arg2.Head
		clone_312.Parent = arg2
		local clone_113 = script.Reye1:Clone()
		clone_113:SetAttribute("EmoteProperty", true)
		table.insert(arg1_220, clone_113)
		arg3_184.Handle = clone_113
		local m6d_19 = clone_113.m6d
		m6d_19:SetAttribute("EmoteProperty", true)
		table.insert(arg1_220, m6d_19)
		arg3_184.md = m6d_19
		m6d_19.Part0 = arg2.Head
		m6d_19.Part1 = clone_113
		m6d_19.Name = "Reye1"
		m6d_19.Parent = arg2.Head
		clone_113.Parent = arg2
	end
	tbl_1084.Startup = Startup
	tbl_1084.Fix = true
	tbl_1084.Animation = 17097409396
	tbl_1084.Stun = "Freeze"
	tbl_459["Eye Pop"] = tbl_1084
	local tbl_141 = {
		HideWeapon = true;
	}
	local tbl_709 = {}
	local tbl_114 = {}
	var1669 = "rbxassetid://15297645043"
	tbl_114.SoundId = var1669
	var1669 = 1
	tbl_114.Volume = var1669
	var1669 = true
	tbl_114.Looped = var1669
	tbl_709[0] = tbl_114
	tbl_141.Sounds = tbl_709
	local function Startup(arg1_221, arg2_187, arg3_185) -- Line 9208
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_127 = script.Broom:Clone()
		clone_127:SetAttribute("EmoteProperty", true)
		table.insert(arg1_221, clone_127)
		arg3_185.Handle = clone_127
		local m6d_6 = clone_127.m6d
		m6d_6:SetAttribute("EmoteProperty", true)
		table.insert(arg1_221, m6d_6)
		arg3_185.md = m6d_6
		clone_127.Name = "Part"
		m6d_6.Part0 = arg2["Left Arm"]
		m6d_6.Part1 = clone_127
		m6d_6.Name = "Part"
		m6d_6.Parent = arg2["Left Arm"]
		clone_127.Parent = arg2
	end
	tbl_141.Startup = Startup
	tbl_141.Infinite = true
	tbl_141.Animation = 15297647499
	tbl_141.Looped = true
	tbl_141.Stun = "Slowed"
	tbl_459.Brooming = tbl_141
	local tbl_161 = {
		HideWeapon = true;
	}
	local tbl_133 = {}
	local tbl_1047 = {}
	var1669 = "rbxassetid://15099918372"
	tbl_1047.SoundId = var1669
	var1669 = 0.35
	tbl_1047.Volume = var1669
	var1669 = true
	tbl_1047.Looped = var1669
	tbl_133[0] = tbl_1047
	tbl_161.Sounds = tbl_133
	local function Startup(arg1_222, arg2_188, arg3_186) -- Line 9235
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_60 = script.Maxwell:Clone()
		clone_60:SetAttribute("EmoteProperty", true)
		table.insert(arg1_222, clone_60)
		arg3_186.Handle = clone_60
		local m6d_40 = clone_60.m6d
		m6d_40:SetAttribute("EmoteProperty", true)
		table.insert(arg1_222, m6d_40)
		arg3_186.md = m6d_40
		m6d_40.Part0 = arg2["Left Arm"]
		m6d_40.Part1 = clone_60.maxwell
		m6d_40.Name = "maxwell"
		m6d_40.Parent = arg2["Left Arm"]
		clone_60.Parent = arg2
	end
	tbl_161.Startup = Startup
	local tbl_150 = {}
	local function clap() -- Line 9246
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		if math.random(1, 3) == 1 then
			var93_upvr({
				SoundId = ({"rbxassetid://15099947619", "rbxassetid://15099947876", "rbxassetid://15099948214"})[math.random(1, 3)];
				Parent = arg2.PrimaryPart;
				Volume = 0.4;
			}):Play()
		end
	end
	tbl_150.clap = clap
	tbl_161.Keyframes = tbl_150
	tbl_161.Infinite = true
	tbl_161.Animation = 15099900787
	tbl_161.Looped = true
	tbl_161.Stun = "Slowed"
	tbl_459["Kitty Cat"] = tbl_161
	local tbl_662 = {
		HideWeapon = true;
	}
	local tbl_154 = {}
	local tbl_40 = {}
	var1669 = "rbxassetid://15438805005"
	tbl_40.SoundId = var1669
	var1669 = 1
	tbl_40.Volume = var1669
	var1669 = false
	tbl_40.Looped = var1669
	tbl_154[0] = tbl_40
	tbl_662.Sounds = tbl_154
	local function Startup(arg1_223, arg2_189, arg3_187) -- Line 9273
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_221 = script.Guitar:Clone()
		clone_221:SetAttribute("EmoteProperty", true)
		table.insert(arg1_223, clone_221)
		arg3_187.Handle = clone_221
		local Handle_37 = clone_221.Handle
		Handle_37:SetAttribute("EmoteProperty", true)
		table.insert(arg1_223, Handle_37)
		arg3_187.md = Handle_37
		clone_221.Name = "Handle"
		Handle_37.Part0 = arg2["Left Arm"]
		Handle_37.Part1 = clone_221
		Handle_37.Parent = arg2["Left Arm"]
		clone_221.Parent = arg2
	end
	tbl_662.Startup = Startup
	tbl_662.Keyframes = {
		["end"] = function(arg1_224) -- Line 9284
			arg1_224.Handle:Destroy()
		end;
	}
	tbl_662.Infinite = true
	tbl_662.Animation = 15438891684
	tbl_662.Looped = false
	tbl_662.Stun = "Freeze"
	tbl_459["The Strongest Rocks"] = tbl_662
	local tbl_507 = {}
	local tbl_1020 = {}
	local tbl_862 = {}
	var1669 = "rbxassetid://15100051516"
	tbl_862.SoundId = var1669
	var1669 = 1
	tbl_862.Volume = var1669
	var1669 = false
	tbl_862.Looped = var1669
	tbl_1020[0] = tbl_862
	tbl_507.Sounds = tbl_1020
	local function Startup(arg1_225, arg2_190, arg3_188) -- Line 9304
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_320 = script.Popper:Clone()
		clone_320:SetAttribute("EmoteProperty", true)
		table.insert(arg1_225, clone_320)
		arg3_188.Handle = clone_320
		local Handle_12 = clone_320.Handle
		Handle_12:SetAttribute("EmoteProperty", true)
		table.insert(arg1_225, Handle_12)
		arg3_188.md = Handle_12
		clone_320.Name = "Handle"
		Handle_12.Part0 = arg2["Left Arm"]
		Handle_12.Part1 = clone_320
		Handle_12.Parent = arg2["Left Arm"]
		clone_320.Parent = arg2
	end
	tbl_507.Startup = Startup
	tbl_507.Keyframes = {
		pop = function(arg1_226, arg2_191, arg3_189) -- Line 9315
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local Attachment_20 = arg1_226.Handle.Attachment
			Attachment_20:SetAttribute("EmoteProperty", true)
			Attachment_20.Parent = arg2.PrimaryPart
			table.insert(arg2_191, Attachment_20)
			for _, v_41 in pairs(Attachment_20:GetChildren()) do
				shared.resizeparticle(v_41, 1.25)
				v_41:Emit(25 / #Attachment_20:GetChildren())
			end
		end;
		["end"] = function(arg1_227) -- Line 9326
			arg1_227.Handle:Destroy()
		end;
	}
	tbl_507.Animation = 15100081900
	tbl_507.Looped = false
	tbl_507.Stun = "Slowed"
	tbl_459.Party = tbl_507
	local tbl_916 = {}
	local tbl_982 = {}
	local tbl_60 = {}
	var1669 = "rbxassetid://15271585302"
	tbl_60.SoundId = var1669
	var1669 = 0.4
	tbl_60.Volume = var1669
	var1669 = false
	tbl_60.Looped = var1669
	tbl_982[0] = tbl_60
	tbl_916.Sounds = tbl_982
	local function Startup(arg1_228, arg2_192, arg3_190) -- Line 9345
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_130 = script.Skull:Clone()
		clone_130:SetAttribute("EmoteProperty", true)
		table.insert(arg1_228, clone_130)
		arg3_190.Handle = clone_130
		local Handle_42 = clone_130.Handle
		Handle_42:SetAttribute("EmoteProperty", true)
		table.insert(arg1_228, Handle_42)
		arg3_190.md = Handle_42
		clone_130.Name = "Handle"
		Handle_42.Part0 = arg2["Left Arm"]
		Handle_42.Part1 = clone_130
		Handle_42.Parent = arg2["Left Arm"]
		clone_130.Parent = arg2
	end
	tbl_916.Startup = Startup
	tbl_916.Keyframes = {
		["end"] = function(arg1_229) -- Line 9356
			arg1_229.Handle:Destroy()
		end;
	}
	tbl_916.Animation = 15271569844
	tbl_916.Looped = false
	tbl_916.Stun = "Freeze"
	tbl_459.Skull = tbl_916
	local tbl_878 = {}
	local tbl_340 = {}
	local tbl_157 = {}
	var1669 = "rbxassetid://16524227044"
	tbl_157.SoundId = var1669
	var1669 = 2
	tbl_157.Volume = var1669
	var1669 = false
	tbl_157.Looped = var1669
	tbl_340[0] = tbl_157
	tbl_878.Sounds = tbl_340
	tbl_878.HideWeapon = true
	tbl_878.Idle = 16524243757
	tbl_878.Animation = 16524237104
	tbl_878.Looped = false
	tbl_878.Stun = "Freeze"
	tbl_459.Cross = tbl_878
	local tbl_1034 = {}
	local tbl_606 = {}
	local tbl_369 = {}
	var1669 = "rbxassetid://18828346536"
	tbl_369.SoundId = var1669
	var1669 = 1.25
	tbl_369.Volume = var1669
	var1669 = false
	tbl_369.Looped = var1669
	tbl_606[0] = tbl_369
	tbl_1034.Sounds = tbl_606
	tbl_1034.HideWeapon = true
	tbl_1034.Idle = 18897553669
	tbl_1034.Animation = 18897551628
	tbl_1034.Looped = false
	tbl_1034.Stun = "Freeze"
	tbl_459["Cross 2"] = tbl_1034
	local tbl_465 = {}
	local tbl_252 = {}
	local tbl_1133 = {}
	var1669 = "rbxassetid://15673857335"
	tbl_1133.SoundId = var1669
	var1669 = 2
	tbl_1133.Volume = var1669
	var1669 = false
	tbl_1133.Looped = var1669
	tbl_252[0] = tbl_1133
	tbl_465.Sounds = tbl_252
	tbl_465.HideWeapon = true
	tbl_465.Infinite = true
	tbl_465.Idle = 15674164857
	tbl_465.IdleSound = {
		SoundId = "rbxassetid://15674129833";
		Volume = 1;
		Looped = true;
	}
	tbl_465.Animation = 15674077481
	tbl_465.Looped = false
	tbl_465.Stun = "Freeze"
	tbl_459.Situp = tbl_465
	local tbl_172 = {}
	local tbl_866 = {}
	local tbl_818 = {}
	var1669 = "rbxassetid://9042798921"
	tbl_818.SoundId = var1669
	var1669 = 1
	tbl_818.TimePosition = var1669
	var1669 = 1
	tbl_818.Volume = var1669
	tbl_866[0] = tbl_818
	local tbl_107 = {}
	var1669 = "rbxassetid://17109047369"
	tbl_107.SoundId = var1669
	var1669 = 1
	tbl_107.Volume = var1669
	tbl_866[0.01] = tbl_107
	tbl_172.Sounds = tbl_866
	local tbl_146 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://17109047546"
	var1669.Volume = 1
	tbl_146[1] = 17109013631
	tbl_146[2] = 0.933
	tbl_146[3] = var1669
	tbl_172.End = tbl_146
	tbl_172.IdleSound = {
		SoundId = "rbxassetid://9114663740";
		Volume = 0.25;
		Looped = true;
	}
	tbl_172.HideWeapon = true
	tbl_172.Idle = 17109012516
	tbl_172.Animation = 17109009771
	tbl_172.Looped = false
	tbl_172.Stun = "Freeze"
	tbl_459.Superhero = tbl_172
	local tbl_253 = {}
	local tbl_869 = {}
	local tbl_202 = {}
	var1669 = "rbxassetid://17108967672"
	tbl_202.SoundId = var1669
	var1669 = 1
	tbl_202.Volume = var1669
	tbl_869[0] = tbl_202
	tbl_253.Sounds = tbl_869
	tbl_253.HideWeapon = true
	local tbl_569 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://17108967908"
	var1669.Volume = 1
	tbl_569[1] = 17108974875
	tbl_569[2] = 2.533
	tbl_569[3] = var1669
	tbl_253.End = tbl_569
	tbl_253.IdleSound = {
		SoundId = "rbxassetid://9114663740";
		Volume = 0.25;
		Looped = true;
	}
	tbl_253.FixRotation = true
	tbl_253.Idle = 17108973561
	tbl_253.Animation = 17108971736
	tbl_253.Looped = false
	tbl_253.Stun = "Freeze"
	tbl_459.Sleep = tbl_253
	local tbl_561 = {}
	local tbl_431 = {}
	local tbl_116 = {}
	var1669 = "rbxassetid://17086578816"
	tbl_116.SoundId = var1669
	var1669 = 1
	tbl_116.Volume = var1669
	var1669 = 0.1
	tbl_116.TimePosition = var1669
	var1669 = false
	tbl_116.Looped = var1669
	tbl_431[0] = tbl_116
	tbl_561.Sounds = tbl_431
	tbl_561.HideWeapon = true
	local tbl_733 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://17086578943"
	var1669.Volume = 1
	var1669.Looped = false
	tbl_733[1] = 17086594393
	tbl_733[2] = 1.183
	tbl_733[3] = var1669
	tbl_561.End = tbl_733
	tbl_561.Idle = 17086601693
	tbl_561.Animation = 17086569715
	tbl_561.Looped = false
	tbl_561.Stun = "Freeze"
	tbl_459["Stylish Flip"] = tbl_561
	local tbl_1126 = {}
	local tbl_212 = {}
	local tbl_162 = {}
	var1669 = "rbxassetid://76131937398399"
	tbl_162.SoundId = var1669
	var1669 = 1
	tbl_162.Volume = var1669
	var1669 = true
	tbl_162.ParentTorso = var1669
	var1669 = false
	tbl_162.Looped = var1669
	tbl_212[0] = tbl_162
	tbl_1126.Sounds = tbl_212
	tbl_1126.HideWeapon = true
	tbl_1126.Idle = 131394881582474
	tbl_1126.Animation = 118382652729061
	tbl_1126.Stun = "Freeze"
	tbl_459["Sincere Apology"] = tbl_1126
	local tbl_719 = {}
	local tbl_118 = {}
	local tbl_575 = {}
	var1669 = "rbxassetid://15673857335"
	tbl_575.SoundId = var1669
	var1669 = 2
	tbl_575.Volume = var1669
	var1669 = false
	tbl_575.Looped = var1669
	tbl_118[0] = tbl_575
	tbl_719.Sounds = tbl_118
	tbl_719.HideWeapon = true
	tbl_719.Infinite = true
	tbl_719.Idle = 15673865087
	tbl_719.IdleSound = {
		SoundId = "rbxassetid://15673857667";
		Volume = 1;
		Looped = true;
	}
	tbl_719.Animation = 15673860575
	tbl_719.Looped = false
	tbl_719.Stun = "Freeze"
	tbl_459.Pushup = tbl_719
	local tbl_1128 = {
		Sounds = {};
	}
	local function Startup(arg1_230, arg2_193, arg3_191) -- Line 9547
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_1006 = {
			Name = "SBind";
		}
		tbl_1006.Parent = arg2
		local shared_cfolder_result1_6 = shared.cfolder(tbl_1006)
		shared_cfolder_result1_6:SetAttribute("EmoteProperty", true)
		table.insert(arg1_230, shared_cfolder_result1_6)
		local var93_upvr_result1_14, var93_upvr_result2_5 = var93_upvr({
			SoundId = "rbxassetid://83080858871410";
			Volume = 1;
			Parent = arg2.Torso;
			Looped = false;
		})
		var93_upvr_result1_14:Play()
		if any_GetPlayerFromCharacter_result1_2_upvr then
			local function iterPageItems(arg1_231) -- Line 9569
				return coroutine.wrap(function() -- Line 9570
					--[[ Upvalues[1]:
						[1]: arg1_231 (readonly)
					]]
					local var2392 = 1
					while true do
						for _, v_42 in ipairs(arg1_231:GetCurrentPage()) do
							coroutine.yield(v_42, var2392)
						end
						if arg1_231.IsFinished then break end
						arg1_231:AdvanceToNextPageAsync()
						var2392 += 1
					end
				end)
			end
			local any_GetFriendsAsync_result1_upvr_2 = game:GetService("Players"):GetFriendsAsync(any_GetPlayerFromCharacter_result1_2_upvr.UserId)
			for i_50, _ in coroutine.wrap(function() -- Line 9570
				--[[ Upvalues[1]:
					[1]: any_GetFriendsAsync_result1_upvr_2 (readonly)
				]]
				local var2402 = 1
				while true do
					for _, v_43 in ipairs(any_GetFriendsAsync_result1_upvr_2:GetCurrentPage()) do
						coroutine.yield(v_43, var2402)
					end
					if any_GetFriendsAsync_result1_upvr_2.IsFinished then break end
					any_GetFriendsAsync_result1_upvr_2:AdvanceToNextPageAsync()
					var2402 += 1
				end
			end) do
				table.insert({}, i_50.Id)
				local var2409
			end
			for _ = 1, 4 do
				if 0 < #var2409 then
					table.insert({}, var2409[math.random(#var2409)])
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.remove(var2409, math.random(#var2409))
				end
			end
			local tbl_196 = {
				Effect = "GANG";
			}
			tbl_196.Character = arg2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_196.Friends = {}
			tbl_196.Bind = shared_cfolder_result1_6
			tbl_196.Music = var93_upvr_result2_5
			game.ReplicatedStorage.Replication:FireAllClients(tbl_196)
		end
	end
	tbl_1128.Startup = Startup
	tbl_1128.Cooldown = 5
	tbl_1128.HideWeapon = true
	tbl_1128.Infinite = true
	tbl_1128.Idle = 112138009997034
	tbl_1128.Animation = 119293848229043
	tbl_1128.Looped = false
	tbl_1128.Stun = "Freeze"
	tbl_459.Gang = tbl_1128
	local tbl_728 = {
		Sounds = {};
	}
	local function Startup(arg1_232, arg2_194, arg3_192) -- Line 9622
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_1129 = {
			Name = "SBind";
		}
		tbl_1129.Parent = arg2
		local shared_cfolder_result1 = shared.cfolder(tbl_1129)
		shared_cfolder_result1:SetAttribute("EmoteProperty", true)
		table.insert(arg1_232, shared_cfolder_result1)
		local var93_upvr_result1_34, _ = var93_upvr({
			SoundId = "rbxassetid://83119347007476";
			Volume = 0.5;
			Parent = arg2.PrimaryPart;
			Looped = true;
		})
		local Attachment_16 = Instance.new("Attachment")
		Attachment_16.Parent = arg2.PrimaryPart
		Attachment_16.Position = Vector3.new(-2.4430, 0, 0)
		var93_upvr_result1_34.Parent = Attachment_16
		table.insert(arg1_232, var93_upvr_result1_34)
		var93_upvr_result1_34:Play()
		if any_GetPlayerFromCharacter_result1_2_upvr then
			local function _(arg1_233) -- Line 9648, Named "iterPageItems"
				return coroutine.wrap(function() -- Line 9649
					--[[ Upvalues[1]:
						[1]: arg1_233 (readonly)
					]]
					local var2436 = 1
					while true do
						for _, v_45 in ipairs(arg1_233:GetCurrentPage()) do
							coroutine.yield(v_45, var2436)
						end
						if arg1_233.IsFinished then break end
						arg1_233:AdvanceToNextPageAsync()
						var2436 += 1
					end
				end)
			end
			local any_GetFriendsAsync_result1_upvr = game:GetService("Players"):GetFriendsAsync(any_GetPlayerFromCharacter_result1_2_upvr.UserId)
			for i_54, _ in coroutine.wrap(function() -- Line 9649
				--[[ Upvalues[1]:
					[1]: any_GetFriendsAsync_result1_upvr (readonly)
				]]
				local var2446 = 1
				while true do
					for _, v_46 in ipairs(any_GetFriendsAsync_result1_upvr:GetCurrentPage()) do
						coroutine.yield(v_46, var2446)
					end
					if any_GetFriendsAsync_result1_upvr.IsFinished then break end
					any_GetFriendsAsync_result1_upvr:AdvanceToNextPageAsync()
					var2446 += 1
				end
			end) do
				table.insert({}, i_54.Id)
				local var2453
			end
			for _ = 1, 3 do
				if 0 < #var2453 then
					table.insert({}, var2453[math.random(#var2453)])
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.remove(var2453, math.random(#var2453))
				end
			end
			local tbl_64 = {
				Effect = "BFFS";
			}
			tbl_64.Character = arg2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_64.Friends = {}
			tbl_64.Bind = shared_cfolder_result1
			tbl_64.Music = Attachment_16
			game.ReplicatedStorage.Replication:FireAllClients(tbl_64)
		end
	end
	tbl_728.Startup = Startup
	tbl_728.Cooldown = 5
	tbl_728.HideWeapon = true
	tbl_728.Infinite = true
	tbl_728.Animation = 105494624349321
	tbl_728.Looped = true
	tbl_728.Stun = "Slowed"
	tbl_459["Best Friends"] = tbl_728
	local tbl_6 = {}
	local tbl_229 = {}
	local tbl_549 = {}
	var1669 = "rbxassetid://15503520699"
	tbl_549.SoundId = var1669
	var1669 = 1.85
	tbl_549.Volume = var1669
	var1669 = false
	tbl_549.Looped = var1669
	tbl_229[0] = tbl_549
	tbl_6.Sounds = tbl_229
	local function Startup(arg1_234, arg2_195, arg3_193) -- Line 9704
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		local tbl_247 = {
			Name = "SBind";
		}
		tbl_247.Parent = arg2
		local shared_cfolder_result1_18 = shared.cfolder(tbl_247)
		shared_cfolder_result1_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_234, shared_cfolder_result1_18)
		local var93_upvr_result1_9, _ = var93_upvr({
			SoundId = "rbxassetid://1837904676";
			Volume = 0.25;
			Parent = root;
			Looped = true;
		})
		local Attachment_6 = Instance.new("Attachment")
		Attachment_6.Parent = arg2.PrimaryPart
		var93_upvr_result1_9.Parent = Attachment_6
		table.insert(arg1_234, var93_upvr_result1_9)
		var93_upvr_result1_9:Play()
		local clone_20 = script.ColaFight:Clone()
		clone_20:SetAttribute("EmoteProperty", true)
		table.insert(arg1_234, clone_20)
		arg3_193.Handle = clone_20
		local Handle_7 = clone_20.Handle
		Handle_7:SetAttribute("EmoteProperty", true)
		table.insert(arg1_234, Handle_7)
		arg3_193.md = Handle_7
		clone_20.Name = "Handle"
		Handle_7.Part0 = arg2["Right Arm"]
		Handle_7.Part1 = clone_20
		Handle_7.Parent = arg2["Right Arm"]
		clone_20.Parent = arg2
		if any_GetPlayerFromCharacter_result1_2_upvr then
			local tbl_94 = {
				Effect = "FightC";
			}
			tbl_94.Character = arg2
			tbl_94.Bind = shared_cfolder_result1_18
			tbl_94.Music = Attachment_6
			game.ReplicatedStorage.Replication:FireClient(any_GetPlayerFromCharacter_result1_2_upvr, tbl_94)
		end
	end
	tbl_6.Startup = Startup
	tbl_6.Keyframes = {
		claploop = function() -- Line 9744
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://15503520430";
				Parent = arg2.PrimaryPart;
				Volume = 1.5;
			}):Play()
		end;
	}
	tbl_6.HideWeapon = true
	tbl_6.Infinite = true
	tbl_6.Idle = 15503546989
	tbl_6.IdleKeyframes = true
	tbl_6.Animation = 15503532950
	tbl_6.Looped = false
	tbl_6.Stun = "Freeze"
	tbl_459["First Rule"] = tbl_6
	local tbl_325 = {}
	local tbl_1074 = {}
	local tbl_1105 = {}
	var1669 = "rbxassetid://15283152008"
	tbl_1105.SoundId = var1669
	var1669 = 1.85
	tbl_1105.Volume = var1669
	var1669 = false
	tbl_1105.Looped = var1669
	tbl_1074[0] = tbl_1105
	local tbl_413 = {}
	var1669 = "rbxassetid://15283155687"
	tbl_413.SoundId = var1669
	var1669 = 5
	tbl_413.Volume = var1669
	var1669 = false
	tbl_413.Looped = var1669
	tbl_1074[4.033] = tbl_413
	tbl_325.Sounds = tbl_1074
	local function Startup(arg1_235, arg2_196, arg3_194) -- Line 9777
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local var93_upvr_result1_35 = var93_upvr({
			SoundId = "rbxassetid://1842188426";
			Volume = 0.4;
			Parent = arg2.PrimaryPart;
		})
		var93_upvr_result1_35:Play()
		arg3_194.ok = var93_upvr_result1_35
		for _, v_48 in pairs(script.Revolvers:GetChildren()) do
			if v_48.Name == "Handle" then
				local clone_40 = v_48:Clone()
				clone_40:SetAttribute("EmoteProperty", true)
				table.insert(arg1_235, clone_40)
				arg3_194[clone_40.Name] = clone_40
				local Handle_35 = clone_40.Handle
				Handle_35:SetAttribute("EmoteProperty", true)
				table.insert(arg1_235, Handle_35)
				arg3_194.md = Handle_35
				clone_40.Name = "Handle"
				Handle_35.Part0 = arg2["Left Arm"]
				Handle_35.Part1 = clone_40
				Handle_35.Parent = arg2["Left Arm"]
				clone_40.Parent = arg2
			end
		end
	end
	tbl_325.Startup = Startup
	tbl_325.Keyframes = {
		shoot = function(arg1_236) -- Line 9801
			--[[ Upvalues[2]:
				[1]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
			]]
			if any_GetPlayerFromCharacter_result1_2_upvr then
				game.ReplicatedStorage.Replication:FireClient(any_GetPlayerFromCharacter_result1_2_upvr, {
					Effect = "Camshake";
					Intensity = 8;
				})
			end
			TweenService_upvr:Create(arg1_236.ok, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Volume = 0;
			}):Play()
			arg1_236.Handle.Gun.Attachment.ParticleEmitter:Emit(2)
		end;
		["end"] = function(arg1_237) -- Line 9816
			arg1_237.Handle:Destroy()
		end;
	}
	tbl_325.Animation = 15284324734
	tbl_325.Looped = false
	tbl_325.Stun = "Slowed"
	tbl_459.Countdown = tbl_325
	local tbl_86 = {}
	local tbl_934 = {}
	local tbl_414 = {}
	var1669 = "rbxassetid://15311093430"
	tbl_414.SoundId = var1669
	var1669 = 1.5
	tbl_414.Volume = var1669
	var1669 = false
	tbl_414.Looped = var1669
	tbl_934[0] = tbl_414
	local tbl_124 = {}
	var1669 = "rbxassetid://1842190166"
	tbl_124.SoundId = var1669
	var1669 = 0.3
	tbl_124.Volume = var1669
	var1669 = false
	tbl_124.Looped = var1669
	tbl_934[0.1] = tbl_124
	local tbl_445 = {}
	var1669 = "rbxassetid://9114701864"
	tbl_445.SoundId = var1669
	var1669 = 0.5
	tbl_445.Volume = var1669
	var1669 = false
	tbl_445.Looped = var1669
	tbl_934[4.2] = tbl_445
	local tbl_263 = {}
	var1669 = "rbxassetid://9113593647"
	tbl_263.SoundId = var1669
	var1669 = 3.6
	tbl_263.Volume = var1669
	tbl_934[2.49] = tbl_263
	tbl_86.Sounds = tbl_934
	local function Startup(arg1_238, arg2_197, arg3_195) -- Line 9852
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_262 = script.Revolver:Clone()
		clone_262:SetAttribute("EmoteProperty", true)
		table.insert(arg1_238, clone_262)
		arg3_195[clone_262.Name] = clone_262
		local Handle_16 = clone_262.Handle
		Handle_16:SetAttribute("EmoteProperty", true)
		table.insert(arg1_238, Handle_16)
		arg3_195.md = Handle_16
		clone_262.Name = "Handle"
		Handle_16.Part0 = arg2["Right Arm"]
		Handle_16.Part1 = clone_262
		Handle_16.Parent = arg2["Right Arm"]
		clone_262.Parent = arg2
	end
	tbl_86.Startup = Startup
	tbl_86.Keyframes = {
		shoot = function(arg1_239) -- Line 9864
			--[[ Upvalues[3]:
				[1]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			local var2506
			if any_GetPlayerFromCharacter_result1_2_upvr then
				var2506 = game
				var2506 = any_GetPlayerFromCharacter_result1_2_upvr
				var2506.ReplicatedStorage.Replication:FireClient(var2506, {
					Effect = "Camshake";
					Intensity = 8;
				})
			end
			local tbl_20 = {}
			var2506 = "rbxassetid://15310981185"
			tbl_20.SoundId = var2506
			var2506 = arg2.PrimaryPart
			tbl_20.Parent = var2506
			var2506 = 0.11
			tbl_20.TimePosition = var2506
			var2506 = 2.5
			tbl_20.Volume = var2506
			var93_upvr(tbl_20):Resume()
			var2506 = arg1_239.Revolver
			local pairs_result1_97, pairs_result2_20, pairs_result3_9 = pairs(var2506.Shoot:GetChildren())
			for i_57, v_49 in pairs_result1_97, pairs_result2_20, pairs_result3_9 do
				v_49.Enabled = true
			end
			function pairs_result3_9() -- Line 9882
				--[[ Upvalues[1]:
					[1]: arg1_239 (readonly)
				]]
				arg1_239.Revolver.Shoot:Destroy()
			end
			task.delay(0.05, pairs_result3_9)
			if not hitbox then
				i_57 = game
				pairs_result3_9 = i_57.ServerStorage
				hitbox = require(pairs_result3_9.Hitbox) -- Setting global
			end
			if not force then
				i_57 = game
				pairs_result3_9 = i_57.ServerStorage
				force = require(pairs_result3_9.Force) -- Setting global
			end
			pairs_result3_9 = any_GetPlayerFromCharacter_result1_2_upvr or true
			pairs_result3_9 = nil
			for _, v_50 in pairs(hitbox:GetHit(pairs_result3_9, 7, {
				side = 5;
			}, false, -3)) do
				if (v_50.PrimaryPart.Position - arg2.PrimaryPart.Position).magnitude < 2000000000 and v_50.Humanoid.Health <= 0 then
					pairs_result3_9 = v_50
				end
			end
			local tbl_523_upvw = {pairs_result3_9}
			task.delay(0.045, function() -- Line 9905
				--[[ Upvalues[2]:
					[1]: tbl_523_upvw (read and write)
					[2]: arg2 (copied, readonly)
				]]
				for _, v_51 in pairs(tbl_523_upvw) do
					local tbl_901 = {}
					tbl_901.char = arg2
					tbl_901.hit = v_51
					tbl_901.pushback = 0
					tbl_901.up = Vector3.new(0, 1.75, 0)
					force:CreateForce(tbl_901)
					shared.sfx({
						SoundId = "rbxassetid://15311018533";
						Parent = v_51.PrimaryPart;
						Volume = 3;
					}):Play()
				end
			end)
		end;
		["end"] = function(arg1_240) -- Line 9923
			arg1_240.Revolver:Destroy()
		end;
	}
	tbl_86.HideWeapon = true
	tbl_86.Animation = 15310973900
	tbl_86.Looped = false
	tbl_86.Stun = "Freeze"
	tbl_459["New Sheriff"] = tbl_86
	local tbl_807 = {}
	local tbl_526 = {}
	local tbl_630 = {}
	var1669 = "rbxassetid://15283205480"
	tbl_630.SoundId = var1669
	var1669 = 1.85
	tbl_630.Volume = var1669
	var1669 = false
	tbl_630.Looped = var1669
	tbl_526[0] = tbl_630
	local tbl_447 = {}
	var1669 = "rbxassetid://1842188443"
	tbl_447.SoundId = var1669
	var1669 = 0.6
	tbl_447.Volume = var1669
	var1669 = false
	tbl_447.Looped = var1669
	tbl_526[0.01] = tbl_447
	local tbl_204 = {}
	var1669 = "rbxassetid://15283205587"
	tbl_204.SoundId = var1669
	var1669 = 1.85
	tbl_204.Volume = var1669
	var1669 = false
	tbl_204.Looped = var1669
	tbl_526[6.62] = tbl_204
	tbl_807.Sounds = tbl_526
	local function Startup(arg1_241, arg2_198, arg3_196) -- Line 9955
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		for _, v_52 in pairs(script.Revolvers:GetChildren()) do
			if v_52.Name == "Handle2" then
				local clone_322 = v_52:Clone()
				clone_322:SetAttribute("EmoteProperty", true)
				table.insert(arg1_241, clone_322)
				arg3_196[clone_322.Name] = clone_322
				local Handle_38 = clone_322.Handle
				Handle_38:SetAttribute("EmoteProperty", true)
				table.insert(arg1_241, Handle_38)
				arg3_196.md = Handle_38
				Handle_38.C0 = CFrame.new(-0.0250015259, -0.999999762, 0.00322246552, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Handle_38.C1 = CFrame.new(-0.0500030518, -0.0202150345, 0.0032453537, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				clone_322.Name = "Handle"
				Handle_38.Part0 = arg2["Right Arm"]
				Handle_38.Part1 = clone_322
				Handle_38.Parent = arg2["Right Arm"]
				clone_322.Parent = arg2
			end
		end
	end
	tbl_807.Startup = Startup
	tbl_807.Keyframes = {
		["end"] = function(arg1_242) -- Line 9973
			arg1_242.Handle2:Destroy()
		end;
	}
	tbl_807.HideWeapon = true
	tbl_807.Animation = 15283197429
	tbl_807.Looped = false
	tbl_807.Stun = "Freeze"
	tbl_459.Fool = tbl_807
	local tbl_988 = {}
	local tbl_478 = {}
	local tbl_277 = {}
	var1669 = "rbxassetid://15271610757"
	tbl_277.SoundId = var1669
	var1669 = 1.85
	tbl_277.Volume = var1669
	var1669 = false
	tbl_277.Looped = var1669
	tbl_478[0] = tbl_277
	local tbl_429 = {}
	var1669 = "rbxassetid://1842190005"
	tbl_429.SoundId = var1669
	var1669 = 0.6
	tbl_429.Volume = var1669
	var1669 = false
	tbl_429.Looped = var1669
	tbl_478[0.01] = tbl_429
	tbl_988.Sounds = tbl_478
	local function Startup(arg1_243, arg2_199, arg3_197) -- Line 9999
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		for _, v_53 in pairs(script.Revolvers:GetChildren()) do
			local var2553 = "Left Arm"
			if v_53.Name == "Handle2" then
				var2553 = "Right Arm"
			end
			local clone_285 = v_53:Clone()
			clone_285:SetAttribute("EmoteProperty", true)
			table.insert(arg1_243, clone_285)
			arg3_197[clone_285.Name] = clone_285
			local Handle_4 = clone_285.Handle
			Handle_4:SetAttribute("EmoteProperty", true)
			table.insert(arg1_243, Handle_4)
			arg3_197.md = Handle_4
			clone_285.Name = "Handle"
			Handle_4.Part0 = arg2[var2553]
			Handle_4.Part1 = clone_285
			Handle_4.Parent = arg2[var2553]
			clone_285.Parent = arg2
		end
	end
	tbl_988.Startup = Startup
	tbl_988.Keyframes = {
		["end"] = function(arg1_244) -- Line 10016
			arg1_244.Handle:Destroy()
			arg1_244.Handle2:Destroy()
		end;
		slow = function(arg1_245, arg2_200, arg3_198) -- Line 10021
			arg3_198:AdjustSpeed(0.4)
		end;
		away = function(arg1_246, arg2_201, arg3_199) -- Line 10025
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			arg3_199:AdjustSpeed(1)
			var93_upvr({
				SoundId = "rbxassetid://15271610473";
				Volume = 1.85;
				Looped = false;
				Parent = arg2.PrimaryPart;
			}):Play()
		end;
	}
	tbl_988.Animation = 15271677861
	tbl_988.Looped = false
	tbl_988.Stun = "Slowed"
	tbl_988.HideWeapon = true
	tbl_459.Snake = tbl_988
	local tbl_1094 = {
		Sounds = {};
	}
	local function Startup(arg1_247, arg2_202, arg3_200) -- Line 10047
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_325 = script.CHAIR:Clone()
		clone_325:SetAttribute("EmoteProperty", true)
		table.insert(arg1_247, clone_325)
		arg3_200.Handle = clone_325
		local Handle_8 = clone_325.Handle
		Handle_8:SetAttribute("EmoteProperty", true)
		table.insert(arg1_247, Handle_8)
		arg3_200.md = Handle_8
		clone_325.Name = "CHAIR"
		Handle_8.Part0 = arg2.Torso
		Handle_8.Part1 = clone_325
		Handle_8.Parent = arg2.Torso
		clone_325.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17106914725";
			Parent = arg2.Torso;
			Volume = 1;
		}):Play()
	end
	tbl_1094.Startup = Startup
	tbl_1094.Fix = true
	tbl_1094.Animation = 17106924052
	tbl_1094.Stun = "Freeze"
	tbl_459["Lean Back"] = tbl_1094
	local tbl_432 = {}
	local tbl_1064 = {}
	local tbl_1112 = {}
	var1669 = "rbxassetid://1846971107"
	tbl_1112.SoundId = var1669
	var1669 = 0.4
	tbl_1112.Volume = var1669
	var1669 = true
	tbl_1112.Looped = var1669
	var1669 = 0.1
	tbl_1112.TimePosition = var1669
	var1669 = true
	tbl_1112.ParentTorso = var1669
	tbl_1064[0] = tbl_1112
	tbl_432.Sounds = tbl_1064
	local function Startup(arg1_248, arg2_203, arg3_201) -- Line 10079
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_268 = script.TACO1:Clone()
		clone_268:SetAttribute("EmoteProperty", true)
		table.insert(arg1_248, clone_268)
		arg3_201.Handle = clone_268
		local TACO1 = clone_268.TACO1
		TACO1:SetAttribute("EmoteProperty", true)
		table.insert(arg1_248, TACO1)
		arg3_201.md = TACO1
		TACO1.Part0 = arg2["Right Arm"]
		TACO1.Part1 = clone_268
		TACO1.Parent = arg2["Right Arm"]
		clone_268.Parent = arg2
		local clone_133 = script.TACO2:Clone()
		clone_133:SetAttribute("EmoteProperty", true)
		table.insert(arg1_248, clone_133)
		arg3_201.Handle = clone_133
		local TACO2 = clone_133.TACO2
		TACO2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_248, TACO2)
		arg3_201.md = TACO2
		TACO2.Part0 = arg2["Left Arm"]
		TACO2.Part1 = clone_133
		TACO2.Parent = arg2["Left Arm"]
		clone_133.Parent = arg2
	end
	tbl_432.Startup = Startup
	tbl_432.Looped = true
	tbl_432.HideWeapon = true
	tbl_432.Animation = 17107076756
	tbl_432.Stun = "Freeze"
	tbl_459["Taco Time"] = tbl_432
	local tbl_1023 = {
		Sounds = {};
	}
	local function Startup(arg1_249, arg2_204, arg3_202) -- Line 10106
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_336 = script["Meshes/cARD"]:Clone()
		clone_336:SetAttribute("EmoteProperty", true)
		table.insert(arg1_249, clone_336)
		arg3_202.Handle = clone_336
		local Meshes_cARD = clone_336["Meshes/cARD"]
		Meshes_cARD:SetAttribute("EmoteProperty", true)
		table.insert(arg1_249, Meshes_cARD)
		arg3_202.md = Meshes_cARD
		Meshes_cARD.Part0 = arg2["Right Arm"]
		Meshes_cARD.Part1 = clone_336
		Meshes_cARD.Parent = arg2["Right Arm"]
		clone_336.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17120974824";
			Parent = clone_336;
			Volume = 1;
		}):Play()
	end
	tbl_1023.Startup = Startup
	tbl_1023.HideWeapon = true
	tbl_1023.Animation = 17120966975
	tbl_1023.Stun = "Freeze"
	tbl_459.Card = tbl_1023
	local tbl_1003 = {
		Sounds = {};
	}
	local function Startup(arg1_250, arg2_205, arg3_203) -- Line 10131
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_177 = script.Plank:Clone()
		clone_177:SetAttribute("EmoteProperty", true)
		table.insert(arg1_250, clone_177)
		arg3_203.Handle = clone_177
		clone_177.Name = "Handle"
		local Handle_15 = clone_177.Handle
		Handle_15:SetAttribute("EmoteProperty", true)
		table.insert(arg1_250, Handle_15)
		arg3_203.md = Handle_15
		clone_177.Name = "Handle"
		Handle_15.Part0 = arg2["Right Arm"]
		Handle_15.Part1 = clone_177
		Handle_15.Parent = arg2["Right Arm"]
		clone_177.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17107178506";
			Parent = clone_177;
			Volume = 1;
		}):Play()
	end
	tbl_1003.Startup = Startup
	tbl_1003.Idle = 17107199838
	tbl_1003.IdleSound = {
		SoundId = "rbxassetid://17107178615";
		Volume = 1;
		Looped = true;
	}
	tbl_1003.HideWeapon = true
	tbl_1003.Animation = 17107197570
	tbl_1003.Stun = "Slowed"
	tbl_459.Plank = tbl_1003
	local tbl_368 = {
		Sounds = {};
	}
	local function Startup(arg1_251, arg2_206, arg3_204) -- Line 10165
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_166 = script.ColaTwo:Clone()
		clone_166:SetAttribute("EmoteProperty", true)
		table.insert(arg1_251, clone_166)
		arg3_204.Handle = clone_166
		local Handle_31 = clone_166.Handle
		Handle_31:SetAttribute("EmoteProperty", true)
		table.insert(arg1_251, Handle_31)
		arg3_204.md = Handle_31
		clone_166.Name = "Handle"
		Handle_31.Part0 = arg2["Right Arm"]
		Handle_31.Part1 = clone_166
		Handle_31.Parent = arg2["Right Arm"]
		clone_166.Parent = arg2
		arg3_204.mesh = clone_166.Mesh
		var93_upvr({
			SoundId = "rbxassetid://17120785426";
			Parent = clone_166;
			Volume = 1;
		}):Play()
	end
	tbl_368.Startup = Startup
	tbl_368.Keyframes = {
		["end"] = function(arg1_252, arg2_207) -- Line 10183
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(arg1_252.mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Scale = Vector3.new();
			}):Play()
		end;
	}
	tbl_368.HideWeapon = true
	tbl_368.Animation = 17120842242
	tbl_368.Stun = "Slowed"
	tbl_459.Cola = tbl_368
	local tbl_635 = {
		Sounds = {};
	}
	local function Startup(arg1_253, arg2_208, arg3_205) -- Line 10200
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		arg3_205.breads = {}
		for i_62, v_54 in pairs({
			Bread1 = CFrame.new(-0.9290413856506348, -0.3216838836669922, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Bread2 = CFrame.new(-0.9290413856506348, -0.41446352005004883, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Bread3 = CFrame.new(-0.9290413856506348, -0.5068368911743164, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Bread4 = CFrame.new(-0.9290413856506348, -0.599616527557373, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		}) do
			local clone_118 = script.Bread1:Clone()
			clone_118:SetAttribute("EmoteProperty", true)
			table.insert(arg1_253, clone_118)
			arg3_205.Handle = clone_118
			clone_118.Name = i_62
			local Motor6D_16 = Instance.new("Motor6D")
			Motor6D_16:SetAttribute("EmoteProperty", true)
			table.insert(arg1_253, Motor6D_16)
			arg3_205.md = Motor6D_16
			clone_118.Name = i_62
			Motor6D_16.Part0 = arg2.Torso
			Motor6D_16.Part1 = clone_118
			Motor6D_16.Parent = arg2.Torso
			Motor6D_16.C0 = v_54
			clone_118.Parent = arg2
			table.insert(arg3_205.breads, clone_118)
		end
		var93_upvr({
			SoundId = "rbxassetid://17121814784";
			Parent = arg2["Right Arm"];
			Volume = 1;
		}):Play()
	end
	tbl_635.Startup = Startup
	tbl_635.Keyframes = {
		["end"] = function(arg1_254, arg2_209) -- Line 10228
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			for _, v_55 in pairs(arg1_254.breads) do
				for _, v_56 in pairs({v_55, v_55.Crust}) do
					TweenService_upvr:Create(v_56, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = Vector3.new();
					}):Play()
				end
			end
		end;
	}
	tbl_635.HideWeapon = true
	tbl_635.Animation = 17121769642
	tbl_635.Stun = "Slowed"
	tbl_459.Bread = tbl_635
	local tbl_646 = {
		Sounds = {};
	}
	local function Startup(arg1_255, arg2_210, arg3_206) -- Line 10249
		--[[ Upvalues[5]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var93_upvr (copied, readonly)
		]]
		local clone_226 = script.Flashlight:Clone()
		local var2614 = arg5
		if not var2614 then
			var2614 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var2614 then
				var2614 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_226, "emoteendstuff"..var2614.Name)
		local Handle_23 = clone_226.Handle
		local var2616 = arg5
		if not var2616 then
			var2616 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var2616 then
				var2616 = arg2
			end
		end
		CollectionService_upvr:AddTag(Handle_23, "emoteendstuff"..var2616.Name)
		clone_226.Name = "Handle"
		Handle_23.Part0 = arg2["Right Arm"]
		Handle_23.Part1 = clone_226
		Handle_23.Parent = arg2["Right Arm"]
		clone_226.Parent = arg2
		arg3_206.mesh = clone_226.SurfaceLight
		var93_upvr({
			SoundId = "rbxassetid://17120880738";
			Parent = clone_226;
			Volume = 1;
		}):Play()
	end
	tbl_646.Startup = Startup
	tbl_646.Keyframes = {
		start = function(arg1_256, arg2_211) -- Line 10267
			arg1_256.mesh.Enabled = true
		end;
	}
	tbl_646.HideWeapon = true
	tbl_646.Idle = 17120870445
	local tbl_553 = {}
	var1669 = {}
	var1669.SoundId = "rbxassetid://12981981352"
	var1669.Volume = 1
	var1669.Looped = false
	tbl_553[1] = 17120873919
	tbl_553[2] = 0.983
	tbl_553[3] = var1669
	tbl_646.End = tbl_553
	tbl_646.Animation = 17120866178
	tbl_646.Stun = "Slowed"
	tbl_459.Flashlight = tbl_646
	local tbl_993 = {
		Sounds = {};
	}
	local function Startup(arg1_257, arg2_212, arg3_207) -- Line 10288
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_37 = script.Cloud:Clone()
		clone_37:SetAttribute("EmoteProperty", true)
		table.insert(arg1_257, clone_37)
		arg3_207.Handle = clone_37
		local Weld = Instance.new("Weld")
		Weld.Part0 = arg2.PrimaryPart
		Weld.Part1 = clone_37
		Weld.C0 = CFrame.new(0, 6.6855607, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Weld.Parent = clone_37
		clone_37.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17121715447";
			Parent = clone_37;
			Volume = 1;
			Looped = true;
		}):Play()
	end
	tbl_993.Startup = Startup
	tbl_993.Looped = true
	tbl_993.HideWeapon = true
	tbl_993.Animation = 17121695329
	tbl_993.Stun = "Freeze"
	tbl_459.Rainy = tbl_993
	local tbl_88 = {
		Sounds = {};
	}
	local function Startup(arg1_258, arg2_213, arg3_208, arg4_8, arg5_8) -- Line 10316
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: var130_upvw (read and write)
		]]
		local clone_302_upvr = script.Carboard:Clone()
		clone_302_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_258, clone_302_upvr)
		arg3_208.Handle = clone_302_upvr
		local Handle_33 = clone_302_upvr.Handle
		Handle_33:SetAttribute("EmoteProperty", true)
		table.insert(arg1_258, Handle_33)
		arg3_208.md = Handle_33
		clone_302_upvr.Name = "Base"
		Handle_33.Part0 = arg2.PrimaryPart
		Handle_33.Part1 = clone_302_upvr.Base
		Handle_33.Parent = arg2.PrimaryPart
		clone_302_upvr.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17122337086";
			Parent = clone_302_upvr.Base;
			Volume = 1;
			TimePosition = 0.25;
		}):Resume()
		task.spawn(function() -- Line 10332
			--[[ Upvalues[6]:
				[1]: var130_upvw (copied, read and write)
				[2]: arg1_258 (readonly)
				[3]: var93_upvr (copied, readonly)
				[4]: clone_302_upvr (readonly)
				[5]: arg5_8 (readonly)
				[6]: arg2 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local var130_upvw_result1_2 = var130_upvw(17122265672)
			var130_upvw_result1_2:AdjustWeight(35)
			table.insert(arg1_258, var130_upvw_result1_2)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [83] 61. Error Block 16 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [83] 61. Error Block 16 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 24. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 24. Error Block 2 end (CF ANALYSIS FAILED)
		end)
	end
	tbl_88.Startup = Startup
	tbl_88.HideWeapon = true
	tbl_88.Idle = 17122254184
	tbl_88.Animation = 17122214043
	tbl_88.Stun = "Slowed"
	tbl_459.Box = tbl_88
	local tbl_145 = {}
	local tbl_641 = {}
	local tbl_327 = {}
	var1669 = "rbxassetid://17292689498"
	tbl_327.SoundId = var1669
	var1669 = true
	tbl_327.ParentTorso = var1669
	var1669 = 1
	tbl_327.Volume = var1669
	tbl_641[0] = tbl_327
	tbl_145.Sounds = tbl_641
	local function Startup(arg1_259, arg2_214, arg3_209) -- Line 10383
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_173 = script.Airhorn:Clone()
		clone_173:SetAttribute("EmoteProperty", true)
		table.insert(arg1_259, clone_173)
		arg3_209.Handle = clone_173
		local handle = clone_173.handle
		handle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_259, handle)
		arg3_209.md = handle
		handle.Name = "Airhorn"
		handle.Part0 = arg2["Right Arm"]
		handle.Part1 = clone_173.Airhorn
		handle.Parent = arg2["Right Arm"]
		clone_173.Parent = arg2
	end
	tbl_145.Startup = Startup
	tbl_145.HideWeapon = true
	tbl_145.Animation = 17292579443
	tbl_145.Stun = "Slowed"
	tbl_459["Air Horn"] = tbl_145
	local tbl_885 = {}
	local tbl_169 = {}
	local tbl_1004 = {}
	var1669 = "rbxassetid://17292555531"
	tbl_1004.SoundId = var1669
	var1669 = true
	tbl_1004.ParentTorso = var1669
	var1669 = 1
	tbl_1004.Volume = var1669
	tbl_169[0] = tbl_1004
	tbl_885.Sounds = tbl_169
	tbl_885.HideWeapon = true
	tbl_885.Animation = 17292549897
	tbl_885.Stun = "Freeze"
	tbl_459.Owl = tbl_885
	local tbl_78 = {
		Sounds = {};
	}
	local function Startup(arg1_260, arg2_215, arg3_210) -- Line 10417
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_124 = script.MIC:Clone()
		clone_124:SetAttribute("EmoteProperty", true)
		table.insert(arg1_260, clone_124)
		arg3_210.Handle = clone_124
		local Handle_20 = clone_124.Handle
		Handle_20:SetAttribute("EmoteProperty", true)
		table.insert(arg1_260, Handle_20)
		arg3_210.md = Handle_20
		clone_124.Name = "MIC"
		Handle_20.Part0 = arg2.PrimaryPart
		Handle_20.Part1 = clone_124
		Handle_20.Parent = arg2.PrimaryPart
		clone_124.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17106346778";
			Parent = clone_124;
			Volume = 1;
		}):Play()
	end
	tbl_78.Startup = Startup
	tbl_78.HideWeapon = true
	tbl_78.Animation = 17106365733
	tbl_78.Stun = "Freeze"
	tbl_459["Mic Drop"] = tbl_78
	local tbl_175 = {
		Sounds = {};
	}
	local function Startup(arg1_261, arg2_216, arg3_211) -- Line 10443
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_255 = script.HeartTSB:Clone()
		clone_255:SetAttribute("EmoteProperty", true)
		table.insert(arg1_261, clone_255)
		arg3_211.Handle = clone_255
		local Main2 = clone_255.Main2
		Main2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_261, Main2)
		arg3_211.md = Main2
		Main2.Name = "Main"
		Main2.Part0 = arg2.PrimaryPart
		Main2.Part1 = clone_255.Main
		Main2.Parent = arg2.PrimaryPart
		clone_255.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17269138016";
			Parent = arg2.PrimaryPart;
			Volume = 1;
		}):Play()
	end
	tbl_175.Startup = Startup
	tbl_175.HideWeapon = true
	tbl_175.Animation = 17269134625
	tbl_175.Stun = "Slowed"
	tbl_459["Luv This Game"] = tbl_175
	local tbl_552 = {
		Sounds = {};
	}
	local function Startup(arg1_262, arg2_217, arg3_212) -- Line 10469
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_258 = script.MangoFork:Clone()
		clone_258:SetAttribute("EmoteProperty", true)
		table.insert(arg1_262, clone_258)
		arg3_212.Handle = clone_258
		local Fork2 = clone_258.Fork2
		Fork2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_262, Fork2)
		arg3_212.md = Fork2
		Fork2.Name = "Fork"
		Fork2.Part0 = arg2["Right Arm"]
		Fork2.Part1 = clone_258.Fork
		Fork2.Parent = arg2["Right Arm"]
		clone_258.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17269071380";
			Parent = clone_258.Fork;
			Volume = 1;
		}):Play()
	end
	tbl_552.Startup = Startup
	tbl_552.Keyframes = {
		dead = function(arg1_263, arg2_218, arg3_213) -- Line 10486
			arg1_263.Handle.Mango:Destroy()
			arg1_263.Handle.mangopart:Destroy()
		end;
	}
	tbl_552.HideWeapon = true
	tbl_552.Animation = 17269079177
	tbl_552.Stun = "Slowed"
	tbl_459.Mango = tbl_552
	local tbl_17 = {
		Sounds = {};
	}
	local function Startup(arg1_264, arg2_219, arg3_214) -- Line 10502
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_331 = script.Clapboard:Clone()
		clone_331:SetAttribute("EmoteProperty", true)
		table.insert(arg1_264, clone_331)
		arg3_214.Handle = clone_331
		local Handle_9 = clone_331.Handle
		Handle_9:SetAttribute("EmoteProperty", true)
		table.insert(arg1_264, Handle_9)
		arg3_214.md = Handle_9
		Handle_9.Name = "Bottom"
		Handle_9.Part0 = arg2["Left Arm"]
		Handle_9.Part1 = clone_331.Bottom
		Handle_9.Parent = arg2["Left Arm"]
		clone_331.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17268545081";
			Parent = clone_331.Bottom;
			Volume = 1;
		}):Play()
	end
	tbl_17.Startup = Startup
	tbl_17.HideWeapon = true
	tbl_17.Animation = 17268549637
	tbl_17.Stun = "Slowed"
	tbl_459.Action = tbl_17
	local tbl_531 = {}
	local tbl_654 = {}
	local tbl_192 = {}
	var1669 = "rbxassetid://1836112668"
	tbl_192.SoundId = var1669
	var1669 = true
	tbl_192.ParentTorso = var1669
	var1669 = 0.175
	tbl_192.Volume = var1669
	tbl_654[2.5] = tbl_192
	tbl_531.Sounds = tbl_654
	local function Startup(arg1_265, arg2_220, arg3_215) -- Line 10532
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_52 = script.Phone2:Clone()
		clone_52:SetAttribute("EmoteProperty", true)
		table.insert(arg1_265, clone_52)
		arg3_215.Handle = clone_52
		local Phone2 = clone_52.Phone2
		Phone2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_265, Phone2)
		arg3_215.md = Phone2
		Phone2.Name = "Phone"
		clone_52.Name = "Phone"
		Phone2.Part0 = arg2["Right Arm"]
		Phone2.Part1 = clone_52.Phone
		Phone2.Parent = arg2["Right Arm"]
		clone_52.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://17268986804";
			Parent = clone_52.Phone;
			Volume = 1;
		}):Play()
	end
	tbl_531.Startup = Startup
	tbl_531.Keyframes = {
		clap = function() -- Line 10550
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.2;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	tbl_531.HideWeapon = true
	tbl_531.Animation = 17268991944
	tbl_531.Idle = 17269023470
	tbl_531.IdleKeyframes = true
	tbl_531.Stun = "Slowed"
	tbl_459["Sad Times"] = tbl_531
	local tbl_178 = {
		Sounds = {};
	}
	local function Startup(arg1_266, arg2_221, arg3_216) -- Line 10573
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_86 = script.Bookk:Clone()
		clone_86:SetAttribute("EmoteProperty", true)
		table.insert(arg1_266, clone_86)
		arg3_216.Handle = clone_86
		local Bookk = clone_86.Bookk
		Bookk:SetAttribute("EmoteProperty", true)
		table.insert(arg1_266, Bookk)
		arg3_216.md = Bookk
		clone_86.Name = "Book"
		Bookk.Name = "Base"
		Bookk.Part0 = arg2.PrimaryPart
		Bookk.Part1 = clone_86.Base
		Bookk.Parent = arg2.PrimaryPart
		clone_86.Parent = arg2
		arg3_216.handle = clone_86
		var93_upvr({
			SoundId = "rbxassetid://17268616635";
			Parent = clone_86.Base;
			Volume = 1;
		}):Play()
		shared.s = var93_upvr({
			SoundId = "rbxassetid://9043379206";
			Parent = arg2.Torso;
			Volume = 1;
		})
		shared.s:Play()
	end
	tbl_178.Startup = Startup
	tbl_178.Keyframes = {
		stop = function(arg1_267, arg2_222, arg3_217) -- Line 10599
			shared.s:Stop()
		end;
		freeze = function(arg1_268, arg2_223, arg3_218) -- Line 10603
			arg3_218:AdjustSpeed(0)
		end;
	}
	tbl_178.Fix = true
	tbl_178.HideWeapon = true
	tbl_178.Looped = true
	tbl_178.Animation = 17268619636
	tbl_178.Stun = "Freeze"
	tbl_459["Me Reading The Book That"] = tbl_178
	local tbl_279 = {}
	local tbl_370 = {}
	local tbl_644 = {}
	var1669 = "rbxassetid://1835904215"
	tbl_644.SoundId = var1669
	var1669 = 0.5
	tbl_644.Volume = var1669
	var1669 = true
	tbl_644.ParentTorso = var1669
	var1669 = true
	tbl_644.Looped = var1669
	tbl_370[0] = tbl_644
	tbl_279.Sounds = tbl_370
	local function Startup(arg1_269, arg2_224, arg3_219) -- Line 10625
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_64 = script.UFO:Clone()
		clone_64:SetAttribute("EmoteProperty", true)
		table.insert(arg1_269, clone_64)
		arg3_219.Handle = clone_64
		local UFO = clone_64.UFO
		UFO:SetAttribute("EmoteProperty", true)
		table.insert(arg1_269, UFO)
		arg3_219.md = UFO
		UFO.Part0 = arg2.PrimaryPart
		UFO.Part1 = clone_64
		UFO.Parent = arg2.PrimaryPart
		clone_64.Parent = arg2
		arg3_219.handle = clone_64
	end
	tbl_279.Startup = Startup
	tbl_279.HideWeapon = true
	tbl_279.Looped = true
	tbl_279.Animation = 17268633540
	tbl_279.Stun = "Slowed"
	tbl_279.StunAttribute = 1
	tbl_459.UFO = tbl_279
	local tbl_921 = {}
	local tbl_220 = {}
	local tbl_396 = {}
	var1669 = "rbxassetid://122292723"
	tbl_396.SoundId = var1669
	var1669 = 0.5
	tbl_396.Volume = var1669
	var1669 = true
	tbl_396.ParentTorso = var1669
	var1669 = true
	tbl_396.Looped = var1669
	tbl_220[0] = tbl_396
	tbl_921.Sounds = tbl_220
	local function Startup(arg1_270, arg2_225, arg3_220) -- Line 10652
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_310 = script.Pizza:Clone()
		clone_310:SetAttribute("EmoteProperty", true)
		table.insert(arg1_270, clone_310)
		arg3_220.Handle = clone_310
		local Pizza = clone_310.Pizza
		Pizza:SetAttribute("EmoteProperty", true)
		table.insert(arg1_270, Pizza)
		arg3_220.md = Pizza
		Pizza.Part0 = arg2.PrimaryPart
		Pizza.Name = "Base"
		Pizza.Part1 = clone_310.Base
		Pizza.Parent = arg2.PrimaryPart
		clone_310.Parent = arg2
		arg3_220.handle = clone_310
	end
	tbl_921.Startup = Startup
	tbl_921.HideWeapon = true
	tbl_921.Looped = true
	tbl_921.Animation = 17268742277
	tbl_921.Stun = "Slowed"
	tbl_921.StunAttribute = 1
	tbl_459["Pizza Delivery"] = tbl_921
	local tbl_657 = {}
	local tbl_619 = {}
	local tbl_48 = {}
	var1669 = "rbxassetid://1836019934"
	tbl_48.SoundId = var1669
	var1669 = 1
	tbl_48.Volume = var1669
	var1669 = true
	tbl_48.ParentTorso = var1669
	var1669 = true
	tbl_48.Looped = var1669
	tbl_619[0] = tbl_48
	tbl_657.Sounds = tbl_619
	local function Startup(arg1_271, arg2_226, arg3_221) -- Line 10680
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_263 = script.Guitar2:Clone()
		clone_263:SetAttribute("EmoteProperty", true)
		table.insert(arg1_271, clone_263)
		arg3_221.Handle = clone_263
		local Guitar = clone_263.Guitar
		Guitar:SetAttribute("EmoteProperty", true)
		table.insert(arg1_271, Guitar)
		arg3_221.md = Guitar
		Guitar.Part0 = arg2["Right Arm"]
		Guitar.Part1 = clone_263
		clone_263.Name = "Guitar"
		Guitar.Parent = arg2["Right Arm"]
		clone_263.Parent = arg2
		arg3_221.handle = clone_263
	end
	tbl_657.Startup = Startup
	tbl_657.HideWeapon = true
	tbl_657.Looped = true
	tbl_657.Animation = 17268926242
	tbl_657.Stun = "Slowed"
	tbl_459["Angry Riff"] = tbl_657
	local tbl_864 = {}
	local tbl_316 = {}
	local tbl_672 = {}
	var1669 = "rbxassetid://1838868548"
	tbl_672.SoundId = var1669
	var1669 = 1
	tbl_672.Volume = var1669
	var1669 = true
	tbl_672.ParentTorso = var1669
	var1669 = true
	tbl_672.Looped = var1669
	tbl_316[0] = tbl_672
	tbl_864.Sounds = tbl_316
	local function Startup(arg1_272, arg2_227, arg3_222) -- Line 10707
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_267 = script.flute:Clone()
		clone_267:SetAttribute("EmoteProperty", true)
		table.insert(arg1_272, clone_267)
		arg3_222.Handle = clone_267
		local Handle_27 = clone_267.Handle
		Handle_27:SetAttribute("EmoteProperty", true)
		table.insert(arg1_272, Handle_27)
		arg3_222.md = Handle_27
		Handle_27.Part0 = arg2["Right Arm"]
		Handle_27.Part1 = clone_267
		clone_267.Name = "Handle"
		Handle_27.Parent = arg2["Right Arm"]
		clone_267.Parent = arg2
		arg3_222.handle = clone_267
	end
	tbl_864.Startup = Startup
	tbl_864.Keyframes = {
		clap = function() -- Line 10719
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.15;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	tbl_864.HideWeapon = true
	tbl_864.Looped = true
	tbl_864.Animation = 17268859608
	tbl_864.Stun = "Slowed"
	tbl_459.Flute = tbl_864
	local tbl_43 = {}
	local tbl_870 = {}
	local tbl_969 = {}
	var1669 = "rbxassetid://1837365487"
	tbl_969.SoundId = var1669
	var1669 = 0.5
	tbl_969.Volume = var1669
	var1669 = 0.5
	tbl_969.TimePosition = var1669
	var1669 = true
	tbl_969.ParentTorso = var1669
	var1669 = true
	tbl_969.Looped = var1669
	tbl_870[0] = tbl_969
	tbl_43.Sounds = tbl_870
	local function Startup(arg1_273, arg2_228, arg3_223) -- Line 10747
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_87 = script.carpet:Clone()
		clone_87:SetAttribute("EmoteProperty", true)
		table.insert(arg1_273, clone_87)
		arg3_223.Handle = clone_87
		local carpet = clone_87.carpet
		carpet:SetAttribute("EmoteProperty", true)
		table.insert(arg1_273, carpet)
		arg3_223.md = carpet
		carpet.Part0 = arg2.PrimaryPart
		carpet.Part1 = clone_87
		carpet.Parent = arg2.PrimaryPart
		clone_87.Parent = arg2
		arg3_223.handle = clone_87
	end
	tbl_43.Startup = Startup
	tbl_43.HideWeapon = true
	tbl_43.Looped = true
	tbl_43.Animation = 17268716692
	tbl_43.Stun = "Slowed"
	tbl_43.StunAttribute = 1
	tbl_459["Magic Carpet"] = tbl_43
	local tbl_648 = {
		Sounds = {};
	}
	local function Startup(arg1_274, arg2_229, arg3_224) -- Line 10769
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_122 = script.basklektball:Clone()
		clone_122:SetAttribute("EmoteProperty", true)
		table.insert(arg1_274, clone_122)
		arg3_224.Handle = clone_122
		local basklektball = clone_122.basklektball
		basklektball:SetAttribute("EmoteProperty", true)
		table.insert(arg1_274, basklektball)
		arg3_224.md = basklektball
		basklektball.Part0 = arg2.PrimaryPart
		basklektball.Part1 = clone_122
		basklektball.Parent = arg2.PrimaryPart
		clone_122.Parent = arg2
		arg3_224.handle = clone_122
	end
	tbl_648.Startup = Startup
	tbl_648.Keyframes = {
		clap = function(arg1_275, arg2_230, arg3_225) -- Line 10780
			--[[ Upvalues[1]:
				[1]: var2_upvw (copied, read and write)
			]]
			shared.sfx({
				SoundId = "rbxassetid://14404844095";
				PlaybackSpeed = Random.new():NextNumber(0.9, 1.1);
				Parent = arg1_275.handle;
				RollOffMaxDistance = var2_upvw;
				Volume = 1;
			}):Play()
		end;
	}
	tbl_648.HideWeapon = true
	tbl_648.Looped = true
	tbl_648.Infinite = true
	tbl_648.Animation = 17268369862
	tbl_648.Stun = "Slowed"
	tbl_648.StunAttribute = 1
	tbl_459.Dribble = tbl_648
	local tbl_41 = {
		Sounds = {};
	}
	local function Startup(arg1_276, arg2_231, arg3_226) -- Line 10805
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://17268447339";
			Parent = arg2.Head;
			Volume = 1;
			Looped = true;
		}):Play()
		local clone_78 = script.watermelon:Clone()
		clone_78:SetAttribute("EmoteProperty", true)
		table.insert(arg1_276, clone_78)
		arg3_226.Handle = clone_78
		local Watermelon = clone_78.Watermelon
		Watermelon:SetAttribute("EmoteProperty", true)
		table.insert(arg1_276, Watermelon)
		arg3_226.md = Watermelon
		Watermelon.Part0 = arg2["Right Arm"]
		clone_78.Name = "Watermelon"
		Watermelon.Part1 = clone_78
		Watermelon.Parent = arg2["Right Arm"]
		clone_78.Parent = arg2
		arg3_226.handle = clone_78
	end
	tbl_41.Startup = Startup
	tbl_41.HideWeapon = true
	tbl_41.Looped = true
	tbl_41.Infinite = true
	tbl_41.Animation = 17268468485
	tbl_41.Stun = "Freeze"
	tbl_459["Yummy Watermelon"] = tbl_41
	local tbl_812 = {}
	local tbl_28 = {}
	local tbl_320 = {}
	var1669 = "rbxassetid://9120086770"
	tbl_320.SoundId = var1669
	var1669 = 0.25
	tbl_320.Volume = var1669
	tbl_28[0.7330000000000001] = tbl_320
	local tbl_424 = {}
	var1669 = "rbxassetid://9120087000"
	tbl_424.SoundId = var1669
	var1669 = 0.25
	tbl_424.Volume = var1669
	tbl_28[2.017] = tbl_424
	tbl_812.Sounds = tbl_28
	local function Startup(arg1_277, arg2_232, arg3_227) -- Line 10843
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_303 = script.tang:Clone()
		clone_303:SetAttribute("EmoteProperty", true)
		table.insert(arg1_277, clone_303)
		arg3_227.Handle = clone_303
		local Part_3 = clone_303.Part
		Part_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_277, Part_3)
		arg3_227.md = Part_3
		clone_303.Name = "Part"
		Part_3.Part0 = arg2.Head
		Part_3.Part1 = clone_303
		Part_3.Parent = arg2.Head
		clone_303.Parent = arg2
	end
	tbl_812.Startup = Startup
	tbl_812.Animation = 104081288316829
	tbl_812.StunAttribute = 1.5
	tbl_812.Stun = "Slowed"
	tbl_459["Dry Lips"] = tbl_812
	local tbl_504 = {}
	local tbl_52 = {}
	local tbl_195 = {}
	var1669 = "rbxassetid://17106985996"
	tbl_195.SoundId = var1669
	var1669 = 0.85
	tbl_195.Volume = var1669
	tbl_52[0] = tbl_195
	tbl_504.Sounds = tbl_52
	local function Startup(arg1_278, arg2_233, arg3_228) -- Line 10867
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_142 = script.surrender_Flag:Clone()
		clone_142:SetAttribute("EmoteProperty", true)
		table.insert(arg1_278, clone_142)
		arg3_228.Handle = clone_142
		local Handle_45 = clone_142.Handle
		Handle_45:SetAttribute("EmoteProperty", true)
		table.insert(arg1_278, Handle_45)
		arg3_228.md = Handle_45
		Handle_45.Name = "Pole"
		Handle_45.Part0 = arg2["Right Arm"]
		Handle_45.Part1 = clone_142.Pole
		Handle_45.Parent = arg2["Right Arm"]
		clone_142.Parent = arg2
	end
	tbl_504.Startup = Startup
	tbl_504.HideWeapon = true
	tbl_504.Animation = 17107015056
	tbl_504.Idle = 17107016598
	tbl_504.IdleSound = {
		SoundId = "rbxassetid://17106985885";
		Volume = 0.35;
		Looped = true;
	}
	tbl_504.Stun = "Slowed"
	tbl_459.Surrender = tbl_504
	local tbl_219 = {}
	local tbl_303 = {}
	local tbl_130 = {}
	var1669 = "rbxassetid://17105975829"
	tbl_130.SoundId = var1669
	var1669 = 0.065
	tbl_130.Volume = var1669
	var1669 = true
	tbl_130.Looped = var1669
	tbl_303[0] = tbl_130
	local tbl_725 = {}
	var1669 = "rbxassetid://1841061037"
	tbl_725.SoundId = var1669
	var1669 = 0.3
	tbl_725.Volume = var1669
	var1669 = true
	tbl_725.Looped = var1669
	tbl_303[0.01] = tbl_725
	tbl_219.Sounds = tbl_303
	local function Startup(arg1_279, arg2_234, arg3_229) -- Line 10904
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_157 = script.Watermelon:Clone()
		clone_157:SetAttribute("EmoteProperty", true)
		table.insert(arg1_279, clone_157)
		arg3_229.Handle = clone_157
		local Handle_11 = clone_157.Handle
		Handle_11:SetAttribute("EmoteProperty", true)
		table.insert(arg1_279, Handle_11)
		arg3_229.md = Handle_11
		clone_157.Name = "Watermelon"
		Handle_11.Part0 = arg2["Right Arm"]
		Handle_11.Part1 = clone_157
		Handle_11.Parent = arg2["Right Arm"]
		clone_157.Parent = arg2
	end
	tbl_219.Startup = Startup
	tbl_219.HideWeapon = true
	tbl_219.Animation = 17105983229
	tbl_219.Looped = true
	tbl_219.Stun = "Slowed"
	tbl_459.Watermelon = tbl_219
	local tbl_407 = {}
	local tbl_955 = {}
	local tbl_74 = {}
	var1669 = "rbxassetid://9045473815"
	tbl_74.SoundId = var1669
	var1669 = 0.4
	tbl_74.Volume = var1669
	var1669 = true
	tbl_74.Looped = var1669
	tbl_955[0] = tbl_74
	tbl_407.Sounds = tbl_955
	local function Startup(arg1_280, arg2_235, arg3_230) -- Line 10929
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_161 = script.Watermelon2:Clone()
		clone_161:SetAttribute("EmoteProperty", true)
		table.insert(arg1_280, clone_161)
		arg3_230.Handle = clone_161
		local Handle_19 = clone_161.Handle
		Handle_19:SetAttribute("EmoteProperty", true)
		table.insert(arg1_280, Handle_19)
		arg3_230.md = Handle_19
		clone_161.Name = "Watermelon"
		Handle_19.Part0 = arg2.HumanoidRootPart
		Handle_19.Part1 = clone_161
		Handle_19.Parent = arg2.HumanoidRootPart
		clone_161.Parent = arg2
	end
	tbl_407.Startup = Startup
	tbl_407.Animation = 17137575195
	tbl_407.Looped = true
	tbl_407.Stun = "Slowed"
	tbl_459["WATERMELON "] = tbl_407
	local tbl_7 = {
		Sounds = {};
	}
	local function Startup(arg1_281, arg2_236, arg3_231) -- Line 10948
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_11 = script.Log:Clone()
		clone_11:SetAttribute("EmoteProperty", true)
		table.insert(arg1_281, clone_11)
		arg3_231.Handle = clone_11
		local Handle_10 = clone_11.Handle
		Handle_10:SetAttribute("EmoteProperty", true)
		table.insert(arg1_281, Handle_10)
		arg3_231.md = Handle_10
		clone_11.Name = "Handle"
		Handle_10.Part0 = arg2["Right Arm"]
		Handle_10.Part1 = clone_11
		Handle_10.Parent = arg2["Right Arm"]
		clone_11.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://9120937669";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://9120823421";
			Parent = arg2.PrimaryPart;
			Volume = 0.075;
			Looped = true;
		}):Play()
	end
	tbl_7.Startup = Startup
	local tbl_434 = {}
	local function clap() -- Line 10972
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://15090365735";
			Parent = arg2.PrimaryPart;
			Volume = 0.75;
		}):Play()
	end
	tbl_434.clap = clap
	tbl_7.Keyframes = tbl_434
	tbl_7.Infinite = true
	tbl_7.Animation = 15090459593
	tbl_7.Looped = true
	tbl_7.Stun = "Slowed"
	tbl_459.Log = tbl_7
	local tbl_551 = {
		Sounds = {};
	}
	local function Startup(arg1_282, arg2_237, arg3_232) -- Line 10991
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_327 = script.Film:Clone()
		clone_327:SetAttribute("EmoteProperty", true)
		table.insert(arg1_282, clone_327)
		arg3_232.Handle = clone_327
		local Handle_29 = clone_327.Handle
		Handle_29:SetAttribute("EmoteProperty", true)
		table.insert(arg1_282, Handle_29)
		arg3_232.md = Handle_29
		clone_327.Name = "Handle"
		Handle_29.Part0 = arg2["Right Arm"]
		Handle_29.Part1 = clone_327
		Handle_29.Parent = arg2["Right Arm"]
		clone_327.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://15310783637";
			Parent = clone_327;
			Volume = 0.5;
			Looped = true;
		}):Play()
	end
	tbl_551.Startup = Startup
	local tbl_720 = {}
	local function claploop() -- Line 11009
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://15310800059";
			Parent = arg2.PrimaryPart;
			Volume = 1.5;
		}):Play()
	end
	tbl_720.claploop = claploop
	tbl_551.Keyframes = tbl_720
	tbl_551.HideWeapon = true
	tbl_551.Infinite = true
	tbl_551.Animation = 15310866392
	tbl_551.Looped = true
	tbl_551.Stun = "Slowed"
	tbl_459.Rolling = tbl_551
	local tbl_936 = {
		Sounds = {};
	}
	local function Startup(arg1_283, arg2_238, arg3_233) -- Line 11029
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_36 = script.Pan:Clone()
		clone_36:SetAttribute("EmoteProperty", true)
		table.insert(arg1_283, clone_36)
		arg3_233.Handle = clone_36
		local Handle_17 = clone_36.Handle
		Handle_17:SetAttribute("EmoteProperty", true)
		table.insert(arg1_283, Handle_17)
		arg3_233.md = Handle_17
		clone_36.Name = "Handle"
		Handle_17.Part0 = arg2["Left Arm"]
		Handle_17.Part1 = clone_36
		Handle_17.Parent = arg2["Left Arm"]
		clone_36.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://15283317649";
			Parent = clone_36;
			Looped = true;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://160247625";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
		}):Play()
	end
	tbl_936.Startup = Startup
	local tbl_749 = {}
	local function clap() -- Line 11052
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://15283317709";
			Parent = arg2.PrimaryPart;
			Volume = 2;
		}):Play()
	end
	tbl_749.clap = clap
	tbl_936.Keyframes = tbl_749
	tbl_936.Infinite = true
	tbl_936.Animation = 15283329867
	tbl_936.Looped = true
	tbl_936.Stun = "Slowed"
	tbl_459.Cook = tbl_936
	local tbl_275 = {
		Sounds = {};
	}
	local function Startup(arg1_284, arg2_239, arg3_234) -- Line 11071
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_90 = script.Coffee:Clone()
		clone_90:SetAttribute("EmoteProperty", true)
		table.insert(arg1_284, clone_90)
		arg3_234.Handle = clone_90
		local m6d_30 = clone_90.m6d
		m6d_30:SetAttribute("EmoteProperty", true)
		table.insert(arg1_284, m6d_30)
		arg3_234.md = m6d_30
		clone_90.Name = "Handle"
		m6d_30.Part0 = arg2["Left Arm"]
		m6d_30.Part1 = clone_90
		m6d_30.Parent = arg2["Left Arm"]
		clone_90.Parent = arg2
	end
	tbl_275.Startup = Startup
	tbl_275.Keyframes = {
		claploop = function() -- Line 11082, Named "claploop"
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://15487197007";
				Parent = arg2.PrimaryPart;
				Volume = 1;
			}):Play()
		end;
	}
	tbl_275.Infinite = true
	tbl_275.Animation = 15487200157
	tbl_275.Looped = true
	tbl_275.Stun = "Slowed"
	tbl_459.Coffee = tbl_275
	local tbl_416 = {}
	local tbl_273 = {}
	local tbl_484 = {}
	var1669 = "rbxassetid://17292925358"
	tbl_484.SoundId = var1669
	var1669 = 0.1
	tbl_484.Volume = var1669
	var1669 = true
	tbl_484.Looped = var1669
	tbl_273[0] = tbl_484
	tbl_416.Sounds = tbl_273
	local function Startup(arg1_285, arg2_240, arg3_235) -- Line 11106
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_126 = script.Scooter:Clone()
		clone_126:SetAttribute("EmoteProperty", true)
		table.insert(arg1_285, clone_126)
		arg3_235.Handle = clone_126
		local Motor6D_4 = clone_126.Motor6D
		Motor6D_4:SetAttribute("EmoteProperty", true)
		table.insert(arg1_285, Motor6D_4)
		arg3_235.md = Motor6D_4
		Motor6D_4.Part0 = arg2.PrimaryPart
		Motor6D_4.Part1 = clone_126.Base
		Motor6D_4.Parent = arg2.PrimaryPart
		clone_126.Parent = arg2
		local class_ForceField_2 = arg2:FindFirstChildOfClass("ForceField")
		if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
			local var2769
		end
		if class_ForceField_2 and class_ForceField_2:GetAttribute("Emote") then
			var2769 = false
		end
		if var2769 then
			local BodyVelocity_2 = Instance.new("BodyVelocity")
			BodyVelocity_2:SetAttribute("EmoteProperty", true)
			table.insert(arg1_285, BodyVelocity_2)
			arg3_235.BV = BodyVelocity_2
			BodyVelocity_2.Name = "moveme"
			BodyVelocity_2.MaxForce = Vector3.new(10000, 0, 10000)
			BodyVelocity_2:SetAttribute("Speed", 12)
			BodyVelocity_2:SetAttribute("Goto", 12)
			BodyVelocity_2:SetAttribute("RayCheck", true)
			BodyVelocity_2:SetAttribute("End", 1)
			BodyVelocity_2:SetAttribute("Fallout", 0.991)
			BodyVelocity_2.Parent = arg2.PrimaryPart
		end
	end
	tbl_416.Startup = Startup
	local tbl_213 = {}
	local function clap(arg1_286) -- Line 11137
		--[[ Upvalues[3]:
			[1]: random_state_upvr (copied, readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		task.delay(0.417, function() -- Line 11138
			--[[ Upvalues[2]:
				[1]: arg1_286 (readonly)
				[2]: random_state_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if arg1_286.BV then
				local var2774
				if arg1_286.BV.Parent then
					var2774 = -0.01
					if not 0.01 then
						if var2774 then
							var2774 = 1
						end
					end
					if not var2774 then
						if not var2774 then
							var2774 = 0
						end
					end
					arg1_286.BV:SetAttribute("Speed", 45 + random_state_upvr:NextNumber(var2774, 1))
				end
			end
		end)
		var93_upvr({
			SoundId = "rbxassetid://17292932603";
			Parent = arg2.PrimaryPart;
			Volume = 0.3;
		}):Play()
	end
	tbl_213.clap = clap
	tbl_416.Keyframes = tbl_213
	tbl_416.Infinite = true
	tbl_416.Animation = 17292934579
	tbl_416.Looped = true
	tbl_416.Stun = "Slowed"
	tbl_459.Scooter = tbl_416
	local tbl_188 = {}
	local tbl_232 = {}
	local tbl_658 = {}
	var1669 = "rbxassetid://15090263539"
	tbl_658.SoundId = var1669
	var1669 = 0.825
	tbl_658.Volume = var1669
	var1669 = true
	tbl_658.Looped = var1669
	tbl_232[0] = tbl_658
	tbl_188.Sounds = tbl_232
	local function Startup(arg1_287, arg2_241, arg3_236) -- Line 11167
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_304 = script.Skateboard:Clone()
		clone_304:SetAttribute("EmoteProperty", true)
		table.insert(arg1_287, clone_304)
		arg3_236.Handle = clone_304
		local m6d_38 = clone_304.m6d
		m6d_38:SetAttribute("EmoteProperty", true)
		table.insert(arg1_287, m6d_38)
		arg3_236.md = m6d_38
		m6d_38.Name = "Handle"
		m6d_38.Part0 = arg2.PrimaryPart
		m6d_38.Part1 = clone_304.Handle
		m6d_38.Parent = arg2.PrimaryPart
		clone_304.Parent = arg2
		local class_ForceField = arg2:FindFirstChildOfClass("ForceField")
		local var2782
		if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
			var2782 = true
		end
		if class_ForceField then
			if class_ForceField:GetAttribute("Emote") then
				var2782 = false
			end
		end
		if var2782 then
			local BodyVelocity_3 = Instance.new("BodyVelocity")
			BodyVelocity_3:SetAttribute("EmoteProperty", true)
			table.insert(arg1_287, BodyVelocity_3)
			arg3_236.BV = BodyVelocity_3
			BodyVelocity_3.Name = "moveme"
			BodyVelocity_3.MaxForce = Vector3.new(10000, 0, 10000)
			BodyVelocity_3:SetAttribute("Speed", 12)
			BodyVelocity_3:SetAttribute("Goto", 12)
			BodyVelocity_3:SetAttribute("RayCheck", true)
			BodyVelocity_3:SetAttribute("End", 1)
			BodyVelocity_3:SetAttribute("Fallout", 0.991)
			BodyVelocity_3.Parent = arg2.PrimaryPart
		end
	end
	tbl_188.Startup = Startup
	tbl_188.Keyframes = {
		clap = function(arg1_288) -- Line 11199, Named "clap"
			--[[ Upvalues[3]:
				[1]: random_state_upvr (copied, readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			task.delay(2.184, function() -- Line 11200
				--[[ Upvalues[2]:
					[1]: arg1_288 (readonly)
					[2]: random_state_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				if arg1_288.BV then
					local var2786
					if arg1_288.BV.Parent then
						var2786 = -0.01
						if not 0.01 then
							if var2786 then
								var2786 = 1
							end
						end
						if not var2786 then
							if not var2786 then
								var2786 = 0
							end
						end
						arg1_288.BV:SetAttribute("Speed", 45 + random_state_upvr:NextNumber(var2786, 1))
					end
				end
			end)
			var93_upvr({
				SoundId = "rbxassetid://15090244072";
				Parent = arg2.PrimaryPart;
				Volume = 0.75;
			}):Play()
		end;
	}
	tbl_188.Infinite = true
	tbl_188.Animation = 15090273850
	tbl_188.Looped = true
	tbl_188.Stun = "Slowed"
	tbl_459.Skateboard = tbl_188
	local tbl_132 = {
		Sounds = {};
	}
	local function Startup(arg1_289, arg2_242, arg3_237) -- Line 11224
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_230 = script.Sign:Clone()
		clone_230:SetAttribute("EmoteProperty", true)
		table.insert(arg1_289, clone_230)
		arg3_237.Handle = clone_230
		local Handle_18 = clone_230.Handle
		Handle_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_289, Handle_18)
		arg3_237.md = Handle_18
		clone_230.Name = "Handle"
		Handle_18.Part0 = arg2["Left Arm"]
		Handle_18.Part1 = clone_230
		Handle_18.Parent = arg2["Left Arm"]
		clone_230.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://9126280354";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
		}):Play()
	end
	tbl_132.Startup = Startup
	tbl_132.Keyframes = {
		clap = function() -- Line 11241
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://15092688139";
				Parent = arg2.PrimaryPart;
				Volume = 0.1;
			}):Play()
		end;
		claploop = function() -- Line 11249
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://15092688069";
				Parent = arg2.PrimaryPart;
				Volume = 0.1;
			}):Play()
		end;
		snap = function() -- Line 11257
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://15092714389";
				Parent = arg2.PrimaryPart;
				Volume = 0.1;
			}):Play()
		end;
	}
	tbl_132.Infinite = true
	tbl_132.Animation = 15092699174
	tbl_132.Looped = true
	tbl_132.Stun = "Slowed"
	tbl_459.Pls = tbl_132
	local tbl_906 = {}
	local tbl_663 = {}
	local tbl_899 = {}
	var1669 = "rbxassetid://72334795012520"
	tbl_899.SoundId = var1669
	var1669 = 1
	tbl_899.Volume = var1669
	var1669 = false
	tbl_899.Looped = var1669
	tbl_663[0] = tbl_899
	tbl_906.Sounds = tbl_663
	tbl_906.Keyframes = {
		freeze = function(arg1_290, arg2_243, arg3_238) -- Line 11282
			arg3_238:AdjustSpeed(0)
		end;
	}
	local function Startup(arg1_291) -- Line 11287
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local shared_cfolder_result1_22_upvr = shared.cfolder({
			Name = "Freeze";
		}, 1.75)
		table.insert(arg1_291, shared_cfolder_result1_22_upvr)
		shared_cfolder_result1_22_upvr:SetAttribute("DontInterrupt", true)
		shared_cfolder_result1_22_upvr:SetAttribute("NoStop", true)
		shared_cfolder_result1_22_upvr:SetAttribute("EmoteProperty", true)
		task.delay(0, function() -- Line 11295
			--[[ Upvalues[2]:
				[1]: shared_cfolder_result1_22_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			shared_cfolder_result1_22_upvr.Parent = arg2
		end)
	end
	tbl_906.Startup = Startup
	tbl_906.HideWeapon = true
	tbl_906.Fix = true
	tbl_906.Animation = 89673412896825
	tbl_906.Stun = "Slowed"
	tbl_459["Square Up"] = tbl_906
	local tbl_712 = {}
	local tbl_299 = {}
	local tbl_580 = {}
	var1669 = "rbxassetid://17097492489"
	tbl_580.SoundId = var1669
	var1669 = 1
	tbl_580.Volume = var1669
	var1669 = 0.1
	tbl_580.TimePosition = var1669
	var1669 = false
	tbl_580.Looped = var1669
	tbl_299[0] = tbl_580
	tbl_712.Sounds = tbl_299
	tbl_712.Keyframes = {
		freeze = function(arg1_292, arg2_244, arg3_239) -- Line 11317
			arg3_239:AdjustSpeed(0)
		end;
	}
	tbl_712.HideWeapon = true
	tbl_712.Animation = 17097486020
	tbl_712.Stun = "Freeze"
	tbl_459["Heartful Salute"] = tbl_712
	local tbl_156 = {}
	local tbl_917 = {}
	local tbl_304 = {}
	var1669 = "rbxassetid://121999038626924"
	tbl_304.SoundId = var1669
	var1669 = 1
	tbl_304.Volume = var1669
	var1669 = true
	tbl_304.Looped = var1669
	tbl_917[0] = tbl_304
	tbl_156.Sounds = tbl_917
	local function Startup(arg1_293, arg2_245, arg3_240) -- Line 11337
		--[[ Upvalues[2]:
			[1]: var68_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		for _, v_57 in pairs(script.Juggling:GetChildren()) do
			local tbl_376 = {}
			tbl_376.cleanup = arg1_293
			tbl_376.char = arg2
			tbl_376.object = v_57
			tbl_376.part0 = arg2.Torso
			tbl_376.part1 = tostring(v_57)
			tbl_376.mind = arg3_240
			tbl_376.parent = arg2.Torso
			var68_upvr(tbl_376)
		end
	end
	tbl_156.Startup = Startup
	tbl_156.Animation = 119367166308066
	tbl_156.Looped = true
	tbl_156.Stun = "Slowed"
	tbl_156.StunAttribute = 1
	tbl_459.Juggler = tbl_156
	local tbl_1025 = {}
	local tbl_322 = {}
	local tbl_151 = {}
	var1669 = "rbxassetid://15090345405"
	tbl_151.SoundId = var1669
	var1669 = 1
	tbl_151.Volume = var1669
	var1669 = false
	tbl_151.Looped = var1669
	tbl_322[0] = tbl_151
	local tbl_1100 = {}
	var1669 = "rbxassetid://1841319934"
	tbl_1100.SoundId = var1669
	var1669 = 0.65
	tbl_1100.Volume = var1669
	var1669 = true
	tbl_1100.Looped = var1669
	tbl_322[0.01] = tbl_1100
	tbl_1025.Sounds = tbl_322
	tbl_1025.Keyframes = {
		freeze = function(arg1_294, arg2_246, arg3_241) -- Line 11374
			arg3_241:AdjustSpeed(0)
		end;
	}
	local function Startup(arg1_295, arg2_247, arg3_242) -- Line 11379
		--[[ Upvalues[2]:
			[1]: var68_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local tbl_181 = {}
		tbl_181.cleanup = arg1_295
		tbl_181.char = arg2
		tbl_181.object = script.Rock
		tbl_181.part0 = arg2.PrimaryPart
		tbl_181.part1 = tostring(script.Rock)
		tbl_181.mind = arg3_242
		var68_upvr(tbl_181)
	end
	tbl_1025.Startup = Startup
	tbl_1025.Animation = 15089930092
	tbl_1025.Looped = true
	tbl_1025.Stun = "Freeze"
	tbl_459.Thinker = tbl_1025
	tbl_459["Look!"] = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_296) -- Line 11400
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: var2_upvw (copied, read and write)
					[3]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://17086269758";
					RollOffMaxDistance = var2_upvw;
					Parent = arg2.Head;
					Volume = 0.85;
				}):Play()
			end;
		};
		Infinite = true;
		Animation = 17086291067;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_57 = {}
	local tbl_1118 = {}
	local tbl_24 = {}
	var1669 = "rbxassetid://15018666363"
	tbl_24.SoundId = var1669
	var1669 = 1.5
	tbl_24.Volume = var1669
	var1669 = false
	tbl_24.Looped = var1669
	tbl_1118[0] = tbl_24
	tbl_57.Sounds = tbl_1118
	local function Startup(arg1_297, arg2_248, arg3_243) -- Line 11425
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_58 = script.Steak:Clone()
		clone_58:SetAttribute("EmoteProperty", true)
		table.insert(arg1_297, clone_58)
		arg3_243.Handle = clone_58
		local Handle_22 = clone_58.Handle
		Handle_22:SetAttribute("EmoteProperty", true)
		table.insert(arg1_297, Handle_22)
		arg3_243.md = Handle_22
		clone_58.Name = "Handle"
		Handle_22.Name = "Handle"
		Handle_22.Part0 = arg2["Left Arm"]
		Handle_22.Part1 = clone_58
		Handle_22.Parent = arg2["Left Arm"]
		local Attachment_18 = clone_58.Attachment
		Attachment_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_297, Attachment_18)
		arg3_243.att = Attachment_18
		clone_58.Parent = arg2
	end
	tbl_57.Startup = Startup
	tbl_57.Keyframes = {
		["end"] = function(arg1_298) -- Line 11439
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			arg1_298.Handle["Meshes/steak2_Cube"].Transparency = 1
			arg1_298.att.Popcorn.Enabled = false
			task.delay(0.3, function() -- Line 11443
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://9113414870";
					Parent = arg2.Head;
					Volume = 1;
				}):Play()
			end)
		end;
		start = function(arg1_299) -- Line 11452
			arg1_299.att.Popcorn.Enabled = true
		end;
	}
	tbl_57.Animation = 15018688063
	tbl_57.Looped = false
	tbl_57.Stun = "Slowed"
	tbl_459.Munch = tbl_57
	local tbl_770 = {}
	local tbl_433 = {}
	local tbl_920 = {}
	var1669 = "rbxassetid://17086202883"
	tbl_920.SoundId = var1669
	var1669 = 0.85
	tbl_920.Volume = var1669
	var1669 = 0.2
	tbl_920.TimePosition = var1669
	var1669 = false
	tbl_920.Looped = var1669
	tbl_433[0] = tbl_920
	local tbl_1062 = {}
	var1669 = "rbxassetid://14065053293"
	tbl_1062.SoundId = var1669
	var1669 = 0.4
	tbl_1062.Volume = var1669
	tbl_433[2.45] = tbl_1062
	tbl_770.Sounds = tbl_433
	local function Startup(arg1_300, arg2_249, arg3_244) -- Line 11477
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local Attachment_4 = Instance.new("Attachment")
		table.insert(arg1_300, Attachment_4)
		Attachment_4:SetAttribute("EmoteProperty", true)
		Attachment_4.Parent = arg2["Right Arm"]
		Attachment_4.Position = Vector3.new(-0.4070, -0.8999, 0)
		local clone_287 = script.Salt:Clone()
		clone_287.Enabled = false
		clone_287.Parent = Attachment_4
		arg3_244.salt = clone_287
	end
	tbl_770.Startup = Startup
	tbl_770.Keyframes = {
		["end"] = function(arg1_301) -- Line 11489
			arg1_301.salt.Enabled = false
		end;
		start = function(arg1_302) -- Line 11493
			arg1_302.salt.Enabled = true
		end;
	}
	tbl_770.HideWeapon = true
	tbl_770.Animation = 17086225519
	tbl_770.Looped = false
	tbl_770.Stun = "Freeze"
	tbl_459.Salt = tbl_770
	local tbl_977 = {}
	local tbl_762 = {-- : First try: runluau:11745: attempt to index nil with 't'

	local tbl_773 = {}
	var1669 = "rbxassetid://12981981352"
	tbl_773.SoundId = var1669
	var1669 = 0.35
	tbl_773.Volume = var1669
	tbl_762[0.8] = tbl_773
	local tbl_19 = {}
	var1669 = "rbxassetid://12982203916"
	tbl_19.SoundId = var1669
	var1669 = 0.5
	tbl_19.Volume = var1669
	tbl_762[0] = tbl_19
	tbl_977.Sounds = tbl_762
	local function Startup(arg1_303, arg2_250, arg3_245) -- Line 11523
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://7244593699";
			Parent = arg2.PrimaryPart;
			Volume = 0.75;
		}):Play()
		var93_upvr({
			SoundId = "rbxassetid://13726870246";
			Parent = arg2.PrimaryPart;
			Volume = 0.75;
		}):Play()
		local clone_180 = script.Camera.Handle:Clone()
		clone_180:SetAttribute("EmoteProperty", true)
		table.insert(arg1_303, clone_180)
		arg3_245.camera = clone_180
		local Handle_6 = clone_180.Handle
		Handle_6:SetAttribute("EmoteProperty", true)
		table.insert(arg1_303, Handle_6)
		arg3_245.md = Handle_6
		clone_180.Name = "Handle"
		Handle_6.Name = "Handle"
		Handle_6.Part0 = arg2["Left Arm"]
		Handle_6.Part1 = clone_180
		Handle_6.Parent = arg2["Left Arm"]
		clone_180.Parent = arg2
		local clone_132 = script.Camera.SmallHandle:Clone()
		clone_132:SetAttribute("EmoteProperty", true)
		table.insert(arg1_303, clone_132)
		arg3_245.picture = clone_132
		local SmallHandle = clone_132.SmallHandle
		SmallHandle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_303, SmallHandle)
		arg3_245.md = SmallHandle
		SmallHandle.Part0 = arg2["Right Arm"]
		SmallHandle.Part1 = clone_132
		SmallHandle.Parent = arg2["Right Arm"]
		clone_132.Parent = arg2
		for _, v_58 in pairs(arg3_245.picture.Photo:GetDescendants()) do
			if v_58:IsA("BasePart") or v_58:IsA("Decal") then
				v_58.Transparency = 1
			end
		end
	end
	tbl_977.Startup = Startup
	tbl_977.Keyframes = {
		flash = function(arg1_304) -- Line 11560
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var107_upvr (copied, readonly)
				[4]: random_state_upvr (copied, readonly)
			]]
			local Attachment_19 = Instance.new("Attachment")
			CollectionService_upvr:AddTag(Attachment_19, "emotestuff"..arg2.Name)
			Attachment_19.Parent = arg1_304.camera.Camera["Camera Low"].Lends
			game:GetService("Debris"):AddItem(Attachment_19, 5)
			local clone_176 = script.ImpactGlow:Clone()
			clone_176.Parent = Attachment_19
			shared.resizeparticle(clone_176, var107_upvr(1, 1.2))
			clone_176:Emit(1)
			local tbl_384 = {
				Position = Attachment_19.WorldPosition;
				Color = Color3.new(1, 1, 1);
			}
			local var2873 = 7
			local var2874 = 10
			if not var2874 then
				if var2873 then
					var2874 = var2873
					var2873 = 1
				end
			end
			if not var2874 and not var2873 then
				var2873 = 0
				var2874 = 1
			end
			tbl_384.Brightness = random_state_upvr:NextNumber(var2873, var2874)
			var2873 = 0.3
			var2874 = 0.5
			if not var2874 and var2873 then
				var2874 = var2873
				var2873 = 1
			end
			if not var2874 and not var2873 then
				var2873 = 0
				var2874 = 1
			end
			tbl_384.Fade = random_state_upvr:NextNumber(var2873, var2874)
			var2873 = 10
			var2874 = 12
			if not var2874 and var2873 then
				var2874 = var2873
				var2873 = 1
			end
			if not var2874 and not var2873 then
				var2873 = 0
				var2874 = 1
			end
			tbl_384.Range = random_state_upvr:NextNumber(var2873, var2874)
			shared.createlight(tbl_384)
		end;
		visible = function(arg1_305) -- Line 11579
			for _, v_59 in pairs(arg1_305.picture.Photo:GetDescendants()) do
				if v_59:IsA("BasePart") or v_59:IsA("Decal") then
					v_59.Transparency = 0
				end
			end
		end;
		end1 = function(arg1_306) -- Line 11587
			arg1_306.camera:Destroy()
		end;
		end2 = function(arg1_307) -- Line 11591
			arg1_307.picture:Destroy()
		end;
	}
	tbl_977.HideWeapon = true
	tbl_977.Animation = 15310466614
	tbl_977.Looped = false
	tbl_977.Stun = "Slowed"
	tbl_459.Smile = tbl_977
	local tbl_9 = {}
	local tbl_943 = {}
	local tbl_382 = {}
	var1669 = "rbxassetid://14678100852"
	tbl_382.SoundId = var1669
	var1669 = 1.25
	tbl_382.Volume = var1669
	var1669 = false
	tbl_382.Looped = var1669
	tbl_943[0] = tbl_382
	tbl_9.Sounds = tbl_943
	tbl_9.Keyframes = {
		freeze = function(arg1_308, arg2_251, arg3_246) -- Line 11612
			arg3_246:AdjustSpeed(0)
		end;
		score = function(arg1_309, arg2_252, arg3_247) -- Line 11616
			--[[ Upvalues[1]:
				[1]: CollectionService_upvr (copied, readonly)
			]]
			local var2896
			for i_68, v_60 in pairs(CollectionService_upvr:GetTagged("notepad")) do
				if v_60 ~= arg1_309.Handle and (v_60.pages.Position - arg1_309.Handle.pages.Position).magnitude <= 25 then
					local class_TextLabel = v_60:FindFirstChildWhichIsA("TextLabel", true)
					if class_TextLabel then
					end
				end
			end
			local SurfaceGui = arg1_309.Handle.pages.SurfaceGui
			local var2899 = nil
			if not var2899 then
				var2899 = math.random
				i_68 = -1
				v_60 = 10
				var2899 = var2899(i_68, v_60)
			end
			SurfaceGui.TextLabel.Text = var2899
			SurfaceGui.Enabled = true
		end;
	}
	local function Startup(arg1_310, arg2_253, arg3_248) -- Line 11632
		--[[ Upvalues[2]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local clone_115 = script.Notepad.Model:Clone()
		clone_115:SetAttribute("EmoteProperty", true)
		table.insert(arg1_310, clone_115)
		arg3_248.Handle = clone_115
		CollectionService_upvr:AddTag(clone_115, "notepad")
		for _, v_61 in pairs(script.Notepad:GetChildren()) do
			if v_61:IsA("Motor6D") then
				local clone_172 = v_61:Clone()
				clone_172:SetAttribute("EmoteProperty", true)
				table.insert(arg1_310, clone_172)
				arg3_248.md = clone_172
				clone_172.Part0 = arg2["Left Arm"]
				clone_172.Part1 = clone_115[v_61.Name]
				clone_172.Parent = arg2["Left Arm"]
			end
		end
		clone_115.Parent = arg2
	end
	tbl_9.Startup = Startup
	tbl_9.Animation = 14678167232
	tbl_9.Looped = false
	tbl_9.Stun = "Slowed"
	tbl_459.Score = tbl_9
	local tbl_329 = {}
	local tbl_120 = {}
	local tbl_388 = {}
	var1669 = "rbxassetid://14697227297"
	tbl_388.SoundId = var1669
	var1669 = 1.5
	tbl_388.Volume = var1669
	var1669 = 0
	tbl_388.TimePosition = var1669
	var1669 = true
	tbl_388.Looped = var1669
	tbl_120[0] = tbl_388
	tbl_329.Sounds = tbl_120
	local function Startup(arg1_311, arg2_254, arg3_249) -- Line 11663
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_306 = script.crowbar:Clone()
		clone_306:SetAttribute("EmoteProperty", true)
		table.insert(arg1_311, clone_306)
		arg3_249.Handle = clone_306
		local M6D = clone_306.M6D
		M6D:SetAttribute("EmoteProperty", true)
		table.insert(arg1_311, M6D)
		arg3_249.md = M6D
		M6D.Name = "Handle"
		M6D.Part0 = arg2["Left Arm"]
		M6D.Part1 = clone_306.Handle
		M6D.Parent = arg2["Left Arm"]
		clone_306.Parent = arg2
	end
	tbl_329.Startup = Startup
	tbl_329.Animation = 14697228259
	tbl_329.Looped = true
	tbl_329.Stun = "Freeze"
	tbl_459.Crowbar = tbl_329
	local tbl_932 = {
		HideWeapon = true;
	}
	local tbl_10 = {}
	local tbl_679 = {}
	var1669 = "rbxassetid://15018377297"
	tbl_679.SoundId = var1669
	var1669 = 3
	tbl_679.Volume = var1669
	var1669 = 0
	tbl_679.TimePosition = var1669
	var1669 = true
	tbl_679.Looped = var1669
	tbl_10[0] = tbl_679
	tbl_932.Sounds = tbl_10
	local function Startup(arg1_312, arg2_255, arg3_250) -- Line 11689
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_63 = script.Popcorn:Clone()
		clone_63:SetAttribute("EmoteProperty", true)
		table.insert(arg1_312, clone_63)
		arg3_250.Handle = clone_63
		local Handle_44 = clone_63.Handle
		Handle_44:SetAttribute("EmoteProperty", true)
		table.insert(arg1_312, Handle_44)
		arg3_250.md = Handle_44
		clone_63.Name = "Handle"
		Handle_44.Name = "Handle"
		Handle_44.Part0 = arg2["Left Arm"]
		Handle_44.Part1 = clone_63
		Handle_44.Parent = arg2["Left Arm"]
		local Attachment_11 = clone_63.Attachment
		Attachment_11.Popcorn.Enabled = true
		Attachment_11:SetAttribute("EmoteProperty", true)
		table.insert(arg1_312, Attachment_11)
		arg3_250.att = Attachment_11
		Attachment_11.Parent = arg2["Right Arm"]
		clone_63.Parent = arg2
	end
	tbl_932.Startup = Startup
	tbl_932.Animation = 15018466007
	tbl_932.Looped = true
	tbl_932.Stun = "Slowed"
	tbl_459.Popcorn = tbl_932
	local tbl_645 = {
		HideWeapon = true;
	}
	local tbl_427 = {}
	local tbl_1082 = {}
	var1669 = "rbxassetid://14520228185"
	tbl_1082.SoundId = var1669
	var1669 = 0.9
	tbl_1082.Volume = var1669
	var1669 = 0
	tbl_1082.TimePosition = var1669
	var1669 = true
	tbl_1082.Looped = var1669
	tbl_427[0] = tbl_1082
	tbl_645.Sounds = tbl_427
	local function Startup(arg1_313, arg2_256, arg3_251) -- Line 11720
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_94 = script.Mop.Handle:Clone()
		clone_94:SetAttribute("EmoteProperty", true)
		table.insert(arg1_313, clone_94)
		arg3_251.Handle = clone_94
		local clone_332 = script.Mop.M6D:Clone()
		clone_332:SetAttribute("EmoteProperty", true)
		table.insert(arg1_313, clone_332)
		arg3_251.md = clone_332
		clone_332.Name = "Handle"
		clone_332.Part0 = arg2["Left Arm"]
		clone_332.Part1 = clone_94
		clone_332.Parent = arg2["Left Arm"]
		clone_94.Parent = arg2
	end
	tbl_645.Startup = Startup
	tbl_645.Animation = 14520410356
	tbl_645.Looped = true
	tbl_645.Stun = "Slowed"
	tbl_459.Mop = tbl_645
	local tbl_55 = {}
	local tbl_875 = {}
	local tbl_562 = {}
	var1669 = "rbxassetid://14659137741"
	tbl_562.SoundId = var1669
	var1669 = 0.9
	tbl_562.Volume = var1669
	var1669 = 0
	tbl_562.TimePosition = var1669
	var1669 = true
	tbl_562.Looped = var1669
	tbl_875[0] = tbl_562
	tbl_55.Sounds = tbl_875
	local function Startup(arg1_314, arg2_257, arg3_252) -- Line 11745
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_89 = script.Bounce.Sphere:Clone()
		clone_89:SetAttribute("EmoteProperty", true)
		table.insert(arg1_314, clone_89)
		arg3_252.Handle = clone_89
		clone_89.BrickColor = BrickColor.Random()
		local class_Motor6D_23 = clone_89:FindFirstChildOfClass("Motor6D")
		class_Motor6D_23:SetAttribute("EmoteProperty", true)
		table.insert(arg1_314, class_Motor6D_23)
		arg3_252.md = class_Motor6D_23
		class_Motor6D_23.Name = "Sphere"
		class_Motor6D_23.Part0 = arg2.PrimaryPart
		class_Motor6D_23.Part1 = clone_89
		class_Motor6D_23.Parent = arg2.PrimaryPart
		clone_89.Parent = arg2
	end
	tbl_55.Startup = Startup
	tbl_55.Fix = true
	tbl_55.Animation = 14659143045
	tbl_55.Looped = true
	tbl_55.Stun = "Slowed"
	tbl_459.Bouncy = tbl_55
	local tbl_867 = {}
	local tbl_1053 = {}
	local tbl_1117 = {}
	var1669 = "rbxassetid://1835606556"
	tbl_1117.SoundId = var1669
	var1669 = 0.3
	tbl_1117.Volume = var1669
	var1669 = 0.25
	tbl_1117.TimePosition = var1669
	var1669 = true
	tbl_1117.Looped = var1669
	tbl_1053[0] = tbl_1117
	tbl_867.Sounds = tbl_1053
	tbl_867.Animation = 14495337027
	tbl_867.Looped = true
	tbl_867.Stun = "Slowed"
	tbl_459.Wiggle = tbl_867
	local tbl_285 = {}
	local tbl_888 = {}
	local tbl_125 = {}
	var1669 = "rbxassetid://109463610060222"
	tbl_125.SoundId = var1669
	var1669 = 1
	tbl_125.Volume = var1669
	var1669 = true
	tbl_125.Looped = var1669
	tbl_888[0] = tbl_125
	tbl_285.Sounds = tbl_888
	tbl_285.Animation = 136460538117500
	tbl_285.Looped = true
	tbl_285.Stun = "Slowed"
	tbl_285.StunAttribute = 1.15
	tbl_459["Gleeful Jumping"] = tbl_285
	local tbl_425 = {}
	local tbl_1109 = {}
	local tbl_966 = {}
	var1669 = "rbxassetid://14492925439"
	tbl_966.SoundId = var1669
	var1669 = 2.75
	tbl_966.Volume = var1669
	var1669 = false
	tbl_966.Looped = var1669
	tbl_1109[0] = tbl_966
	tbl_425.Sounds = tbl_1109
	tbl_425.Keyframes = {
		start = function(arg1_315, arg2_258) -- Line 11805
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local clone_45 = script.Confused:Clone()
			local Weld_22 = Instance.new("Weld")
			arg1_315.crazy = clone_45
			arg1_315.particle = clone_45.Attachment.Swirl
			for _, v_62 in pairs({clone_45, Weld_22}) do
				v_62:SetAttribute("EmoteProperty", true)
				table.insert(arg2_258, v_62)
			end
			Weld_22.Parent = clone_45
			Weld_22.Part0 = arg2.PrimaryPart
			Weld_22.Part1 = clone_45
			Weld_22.C0 = CFrame.new(0, 2.75, 0)
			clone_45.Transparency = 1
			clone_45.Parent = workspace.Thrown
			game.ReplicatedStorage.Replication:FireAllClients({
				Effect = "Rotate";
				Weld = Weld_22;
				Crazy = clone_45;
			})
		end;
		["end"] = function(arg1_316, arg2_259) -- Line 11830
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			local crazy = arg1_316.crazy
			crazy.Transparency = 0
			TweenService_upvr:Create(crazy, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			local particle_upvr = arg1_316.particle
			task.spawn(function() -- Line 11839
				--[[ Upvalues[1]:
					[1]: particle_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				for _ = 1, 25 do
					if not particle_upvr.Parent then break end
					for _, v_63 in pairs(particle_upvr.Transparency.Keypoints) do
						table.insert({}, NumberSequenceKeypoint.new(v_63.Time, v_63.Value * 1.1, v_63.Envelope))
						local var2969
					end
					particle_upvr.Transparency = NumberSequence.new(var2969)
					task.wait()
				end
			end)
		end;
	}
	tbl_425.Animation = 14494902453
	tbl_425.Looped = false
	tbl_425.Stun = "Slowed"
	tbl_459.Crazy = tbl_425
	local tbl_185 = {
		Keyframes = {
			ready = function(arg1_317, arg2_260) -- Line 11861
				--[[ Upvalues[4]:
					[1]: var93_upvr (copied, readonly)
					[2]: random_state_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: TweenService_upvr (copied, readonly)
				]]
				local tbl_26 = {
					SoundId = "rbxassetid://15502708435";
				}
				local var2978 = 1.9
				local var2979
				if not var2979 and var2978 then
					var2979 = var2978
					var2978 = 1
					local var2980
				end
				if not var2979 and not var2980 then
					var2980 = 0
					var2979 = 1
				end
				tbl_26.Volume = random_state_upvr:NextNumber(var2980, var2979)
				var2980 = arg2
				tbl_26.Parent = var2980.Torso
				var93_upvr(tbl_26):Play()
				for _, v_64 in pairs(arg2_260) do
					if typeof(v_64) == "Instance" and v_64:IsA("Sound") then
						if v_64.SoundId == "rbxassetid://1843699308" then
							TweenService_upvr:Create(v_64, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
								Volume = 0;
							}):Play()
						end
					end
				end
			end;
			shoot = function(arg1_318) -- Line 11876
				for _, v_65 in pairs(arg1_318.Revolver.Shoot:GetChildren()) do
					v_65.Enabled = true
				end
				task.delay(0.05, function() -- Line 11880
					--[[ Upvalues[1]:
						[1]: arg1_318 (readonly)
					]]
					arg1_318.Revolver.Shoot:Destroy()
				end)
			end;
			away = function(arg1_319) -- Line 11885
				--[[ Upvalues[1]:
					[1]: TweenService_upvr (copied, readonly)
				]]
				TweenService_upvr:Create(arg1_319.Revolver.Gun.Mesh, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Scale = Vector3.new();
				}):Play()
			end;
		};
	}
	local function Startup(arg1_320, arg2_261, arg3_253) -- Line 11892
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_116 = script.Revolver:Clone()
		clone_116:SetAttribute("EmoteProperty", true)
		table.insert(arg1_320, clone_116)
		arg3_253[clone_116.Name] = clone_116
		local Handle_30 = clone_116.Handle
		Handle_30:SetAttribute("EmoteProperty", true)
		table.insert(arg1_320, Handle_30)
		arg3_253.md = Handle_30
		clone_116.Name = "Handle"
		Handle_30.Part0 = arg2["Right Arm"]
		Handle_30.Part1 = clone_116
		Handle_30.C0 = CFrame.new(0, -1, -0.01)
		Handle_30.C1 = CFrame.new(0, 0, 0)
		clone_116:FindFirstChildOfClass("Weld").C0 = CFrame.new(-0.245002747, -0.67500329, 0.100135803, 1, 0, -0, 0, 0, 1, 0, -1, 0)
		Handle_30.Parent = arg2["Right Arm"]
		clone_116.Parent = arg2
	end
	tbl_185.Startup = Startup
	local tbl_466 = {
		DoBoth = false;
		Dist = 16;
		NoRotate = 10.3;
	}
	local function Callback(arg1_321, arg2_262, arg3_254, arg4_9) -- Line 11910
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local _, _ = var93_upvr({
			SoundId = "rbxassetid://15502708235";
			Parent = arg1_321.Torso;
			Volume = 1;
		}):Play()
		local _, _ = var93_upvr({
			SoundId = "rbxassetid://15502708235";
			Parent = arg2_262.Torso;
			Volume = 1;
		}):Play()
		local var93_upvr_result1_36, var93_upvr_result2_4 = var93_upvr({
			SoundId = "rbxassetid://1843699308";
			CFrame = CFrame.new();
			Volume = 1;
		})
		table.insert(arg3_254, var93_upvr_result1_36)
		var93_upvr_result1_36:Play()
		var93_upvr_result2_4.Parent = arg1_321.PrimaryPart
		var93_upvr_result2_4.WorldPosition = (arg1_321.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_9 / 2)).Position
		var93_upvr({
			SoundId = "rbxassetid://1842188393";
			Parent = var93_upvr_result2_4;
			Volume = 1;
		}):Play()
	end
	tbl_466.Callback = Callback
	tbl_185.Dual = tbl_466
	tbl_185.HideWeapon = true
	tbl_185.FixRotation = true
	tbl_185.Fix = true
	tbl_185.Tag = "duelgun"
	tbl_185.Animation = 15502751480
	tbl_185.Looped = false
	tbl_185.Stun = "Freeze"
	tbl_459["Traditional Duel"] = tbl_185
	local tbl_805 = {
		Keyframes = {
			clap = function(arg1_322, arg2_263, arg3_255) -- Line 11953
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				if not arg1_322.speed then
					arg1_322.speed = 1
				end
				arg3_255:AdjustSpeed(math.clamp(arg1_322.speed, 1, 10))
				arg1_322.speed += 0.025
				shared.sfx({
					SoundId = "rbxassetid://9099667351";
					Parent = arg2.PrimaryPart;
					RollOffMaxDistance = var2_upvw;
					Volume = 0.2;
				}):Play()
			end;
			claploop = function() -- Line 11969
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				shared.sfx({
					SoundId = "rbxassetid://16038515606";
					Parent = arg2.PrimaryPart;
					RollOffMaxDistance = var2_upvw;
					Volume = 0.2;
				}):Play()
			end;
			snap = function() -- Line 11978
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				shared.sfx({
					SoundId = "rbxassetid://9099667351";
					Parent = arg2.PrimaryPart;
					Volume = 0.2;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
		};
	}
	local function Startup() -- Line 11988
	end
	tbl_805.Startup = Startup
	local tbl_406 = {
		DoBoth = false;
		Dist = 3.5;
	}
	local function Callback(arg1_323, arg2_264, arg3_256, arg4_10) -- Line 11995
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local _, var93_upvr_result2_10 = var93_upvr({
			SoundId = "rbxassetid://14519690317";
			CFrame = CFrame.new();
			Volume = 1.5;
		})
		var93_upvr_result2_10.Parent = arg1_323.PrimaryPart
		var93_upvr_result2_10.WorldPosition = (arg1_323.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_10 / 2)).Position
	end
	tbl_406.Callback = Callback
	tbl_805.Dual = tbl_406
	tbl_805.HideWeapon = true
	tbl_805.Infinite = true
	tbl_805.Tag = "ptycake"
	tbl_805.Animation = 16038562573
	tbl_805.Looped = true
	tbl_805.Stun = "Freeze"
	tbl_459["Clap Clap"] = tbl_805
	local tbl_37 = {
		Keyframes = {
			show = function(arg1_324, arg2_265) -- Line 12017
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: TweenService_upvr (copied, readonly)
				]]
				local clone_235_upvr = script.RPS:Clone()
				clone_235_upvr:SetAttribute("EmoteProperty", true)
				table.insert(arg2_265, clone_235_upvr)
				clone_235_upvr.ImageLabel.Image = ({"rbxassetid://14519869178", "rbxassetid://14519869488", "rbxassetid://14519869787"})[math.random(1, 3)]
				clone_235_upvr.Parent = arg2["Left Arm"]
				clone_235_upvr.Enabled = true
				task.delay(1, function() -- Line 12029
					--[[ Upvalues[2]:
						[1]: TweenService_upvr (copied, readonly)
						[2]: clone_235_upvr (readonly)
					]]
					TweenService_upvr:Create(clone_235_upvr.ImageLabel, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
						Size = UDim2.new(0, 0, 0, 0);
					}):Play()
				end)
			end;
		};
	}
	local function Startup() -- Line 12037
	end
	tbl_37.Startup = Startup
	local tbl_904 = {
		DoBoth = false;
		Dist = 7.2;
	}
	local function Callback(arg1_325, arg2_266, arg3_257, arg4_11) -- Line 12044
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_10_upvr, var93_upvr_result2_3 = var93_upvr({
			SoundId = "rbxassetid://14519690317";
			CFrame = CFrame.new();
			Volume = 1.5;
		})
		task.delay(0.15, function() -- Line 12051
			--[[ Upvalues[1]:
				[1]: var93_upvr_result1_10_upvr (readonly)
			]]
			if var93_upvr_result1_10_upvr.Parent then
				var93_upvr_result1_10_upvr:Play()
			end
		end)
		var93_upvr_result2_3.Parent = arg1_325.PrimaryPart
		var93_upvr_result2_3.WorldPosition = (arg1_325.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_11 / 2)).Position
	end
	tbl_904.Callback = Callback
	tbl_37.Dual = tbl_904
	tbl_37.Tag = "rps"
	tbl_37.Animation = 14519894954
	tbl_37.Looped = false
	tbl_37.Stun = "Freeze"
	tbl_459["Rock Paper Scissor"] = tbl_37
	local tbl_177 = {}
	local tbl_468 = {
		DoBoth = false;
		Dist = 8;
		NoRotate = 18.3;
	}
	local function Callback(arg1_326, arg2_267, arg3_258, arg4_12) -- Line 12073
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		if not arg3_258.done then
			arg3_258.done = true
		else
			return
		end
		local module_upvr_35 = require(arg1_326.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function _(arg1_327) -- Line 12083
			--[[ Upvalues[2]:
				[1]: module_upvr_35 (readonly)
				[2]: arg1_326 (readonly)
			]]
			return module_upvr_35.playAnimation(arg1_326:FindFirstChild("Humanoid"), arg1_327)
		end
		module_upvr_35 = _(15963617746)
		local var3035 = module_upvr_35
		var3035.Priority = Enum.AnimationPriority.Action4
		var3035:AdjustWeight(1)
		var3035:Play()
		table.insert(arg3_258, var3035)
		local var93_upvr_result1_8, var93_upvr_result2 = var93_upvr({
			SoundId = "rbxassetid://15963599920";
			CFrame = CFrame.new();
			Volume = 1;
		})
		table.insert(arg3_258, var93_upvr_result1_8)
		var93_upvr_result1_8:Play()
		var93_upvr_result2.Parent = arg1_326["Left Arm"]
	end
	tbl_468.Callback = Callback
	tbl_177.Dual = tbl_468
	local function Startup() -- Line 12106
	end
	tbl_177.Startup = Startup
	tbl_177.Fix = true
	tbl_177.HideWeapon = true
	tbl_177.Tag = "steel"
	tbl_177.Animation = 15963602367
	tbl_177.AnimationTwo = 15963617746
	tbl_177.Stun = "Freeze"
	tbl_459.Steel = tbl_177
	local tbl_171 = {}
	local function Startup(arg1_328, arg2_268, arg3_259, arg4_13) -- Line 12119
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_171.Startup = Startup
	local tbl_514 = {}
	local tbl_1116 = {}
	var1669 = "rbxassetid://17097669113"
	tbl_1116.SoundId = var1669
	var1669 = 1
	tbl_1116.Volume = var1669
	tbl_514[0] = tbl_1116
	tbl_171.Sounds = tbl_514
	local tbl_557 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		RotateCheck = true;
	}
	local function Callback(arg1_329, arg2_269, arg3_260, arg4_14) -- Line 12138
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
		]]
		if not arg3_260.done then
			arg3_260.done = true
		else
			return
		end
		local shared_cfolder_result1_9_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_9_upvr.Parent = arg1_329
		table.insert(arg3_260, shared_cfolder_result1_9_upvr)
		local var3098 = arg5
		if not var3098 then
			var3098 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3098 then
				var3098 = arg1_329
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_9_upvr, "RemoveOnLeave"..var3098.Name)
		local tbl_upvr = {}
		local tbl_714_upvr = {}
		local tbl_1043 = {}
		tbl_1043[1] = arg1_329
		for _, v_66 in pairs(tbl_1043) do
			table.insert(tbl_714_upvr, v_66.DescendantAdded:connect(function(arg1_333) -- Line 12156
				--[[ Upvalues[1]:
					[1]: tbl_upvr (readonly)
				]]
				if arg1_333:IsA("BasePart") then
					arg1_333.CollisionGroup = "nocol"
					table.insert(tbl_upvr, arg1_333)
				end
			end))
			for _, v_67_upvr in pairs(v_66:GetDescendants()) do
				if v_67_upvr:IsA("BasePart") then
					v_67_upvr.CollisionGroup = "nocol"
					local any_Connect_result1_upvw_2 = v_67_upvr:GetPropertyChangedSignal("CollisionGroup"):Connect(function() -- Line 12167
						--[[ Upvalues[1]:
							[1]: v_67_upvr (readonly)
						]]
						if v_67_upvr.CollisionGroup ~= "nocol" then
							v_67_upvr.CollisionGroup = "nocol"
						end
					end)
					table.insert(tbl_714_upvr, any_Connect_result1_upvw_2)
					task.delay(2, function() -- Line 12174
						--[[ Upvalues[1]:
							[1]: any_Connect_result1_upvw_2 (read and write)
						]]
						if any_Connect_result1_upvw_2 then
							return any_Connect_result1_upvw_2:Disconnect()
						end
					end)
					table.insert(tbl_upvr, v_67_upvr)
				end
			end
		end
		shared_cfolder_result1_9_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 12185
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_9_upvr (readonly)
				[2]: tbl_714_upvr (readonly)
				[3]: tbl_upvr (readonly)
			]]
			if not shared_cfolder_result1_9_upvr.Parent then
				for _, v_68 in pairs(tbl_714_upvr) do
					v_68:Disconnect()
				end
				for _, v_69 in pairs(tbl_upvr) do
					v_69.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_9_upvr, arg2_269.Name.."carry")
		local module_upvr = require(arg1_329.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr(arg1_335) -- Line 12209
			--[[ Upvalues[2]:
				[1]: module_upvr_27 (readonly)
				[2]: arg2_269 (readonly)
			]]
			return module_upvr_27.playAnimation(arg2_269:FindFirstChild("Humanoid"), arg1_335)
		end
		local module_upvr_27 = require(arg2_269.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3126_upvr = module_upvr
		module_upvr_27 = var3126_upvr(17097648428)
		local var3128 = module_upvr_27
		var3128.Priority = Enum.AnimationPriority.Action4
		var3128:AdjustWeight(1)
		var3128:Play()
		table.insert(arg3_260, var3128)
		var3126_upvr(17096821069):AdjustWeight(0.01)
		table.insert(arg3_260, var3128.Stopped:Once(function() -- Line 12220
			--[[ Upvalues[1]:
				[1]: var3126_upvr (readonly)
			]]
			var3126_upvr(17097627771):Stop()
		end))
		local var3123_result1 = (function(arg1_334) -- Line 12200
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: arg1_329 (readonly)
			]]
			return module_upvr.playAnimation(arg1_329:FindFirstChild("Humanoid"), arg1_334)
		end)(17097651485)
		var3123_result1.Priority = Enum.AnimationPriority.Action4
		var3123_result1:AdjustWeight(1)
		var3123_result1:Play()
		table.insert(arg3_260, var3123_result1)
		var93_upvr({
			SoundId = "rbxassetid://17097669243";
			Parent = arg2_269.Torso;
			Volume = 1;
		}):Play()
		local tbl_1017 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_1017.Hit = arg1_329
		tbl_1017.StartOffset = arg1_329.PrimaryPart.CFrame
		tbl_1017.From = arg2_269.PrimaryPart
		tbl_1017.Offset = CFrame.new(0, 0, -3)
		tbl_1017.Anchor = shared_cfolder_result1_9_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_1017)
	end
	tbl_557.Callback = Callback
	tbl_171.Dual = tbl_557
	tbl_171.Keyframes = {
		freeze = function(arg1_336, arg2_270, arg3_261) -- Line 12249
			arg3_261:AdjustSpeed(0)
		end;
	}
	tbl_171.HideWeapon = true
	tbl_171.Fix = true
	tbl_171.Looped = true
	tbl_171.Tag = "hug1"
	tbl_171.Animation = 17097627771
	tbl_171.AnimationTwo = 17097651485
	tbl_171.Stun = "Freeze"
	tbl_459["Friendly Hug"] = tbl_171
	local tbl_545 = {}
	local function Startup(arg1_337, arg2_271, arg3_262, arg4_15) -- Line 12264
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		if arg5 then
		else
			var93_upvr({
				SoundId = "rbxassetid://17106578615";
				Parent = arg2.PrimaryPart;
				Volume = 1;
			}):Play()
			local clone_22 = script.CHAIRBASE:Clone()
			clone_22:SetAttribute("EmoteProperty", true)
			table.insert(arg1_337, clone_22)
			arg3_262.Handle = clone_22
			local Handle_34 = clone_22.Handle
			Handle_34:SetAttribute("EmoteProperty", true)
			table.insert(arg1_337, Handle_34)
			arg3_262.md = Handle_34
			clone_22.Name = "CHAIRBASE"
			Handle_34.Part0 = arg2.PrimaryPart
			Handle_34.Part1 = clone_22
			Handle_34.Parent = arg2.PrimaryPart
			clone_22.Parent = arg2
			local clone_107 = script.Clipper:Clone()
			clone_107:SetAttribute("EmoteProperty", true)
			table.insert(arg1_337, clone_107)
			arg3_262.Handle = clone_107
			local Handle_13 = clone_107.Handle
			Handle_13:SetAttribute("EmoteProperty", true)
			table.insert(arg1_337, Handle_13)
			arg3_262.md = Handle_13
			clone_107.Name = "Clipper"
			Handle_13.Part0 = arg2["Right Arm"]
			Handle_13.Part1 = clone_107
			Handle_13.Parent = arg2["Right Arm"]
			clone_107.Parent = arg2
		end
	end
	tbl_545.Startup = Startup
	local tbl_1122 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		RotateCheck = true;
	}
	local function Callback(arg1_338, arg2_272, arg3_263, arg4_16) -- Line 12298
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
		]]
		if not arg3_263.done then
			arg3_263.done = true
		else
			return
		end
		local shared_cfolder_result1_8_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_8_upvr.Parent = arg1_338
		table.insert(arg3_263, shared_cfolder_result1_8_upvr)
		local var3152 = arg5
		if not var3152 then
			var3152 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3152 then
				var3152 = arg1_338
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_8_upvr, "RemoveOnLeave"..var3152.Name)
		local tbl_350_upvr = {}
		local tbl_191_upvr = {}
		local tbl_1096 = {}
		tbl_1096[1] = arg1_338
		for _, v_70 in pairs(tbl_1096) do
			table.insert(tbl_191_upvr, v_70.DescendantAdded:connect(function(arg1_339) -- Line 12315
				--[[ Upvalues[1]:
					[1]: tbl_350_upvr (readonly)
				]]
				if arg1_339:IsA("BasePart") then
					arg1_339.CollisionGroup = "nocol"
					table.insert(tbl_350_upvr, arg1_339)
				end
			end))
			for _, v_71 in pairs(v_70:GetDescendants()) do
				if v_71:IsA("BasePart") then
					v_71.CollisionGroup = "nocol"
					table.insert(tbl_350_upvr, v_71)
				end
			end
		end
		shared_cfolder_result1_8_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 12330
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_8_upvr (readonly)
				[2]: tbl_191_upvr (readonly)
				[3]: tbl_350_upvr (readonly)
			]]
			if not shared_cfolder_result1_8_upvr.Parent then
				for _, v_72 in pairs(tbl_191_upvr) do
					v_72:Disconnect()
				end
				for _, v_73 in pairs(tbl_350_upvr) do
					v_73.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_8_upvr, arg2_272.Name.."barber")
		var93_upvr({
			SoundId = "rbxassetid://17106662871";
			Parent = arg1_338.Head;
			TimePosition = 0.15;
			Volume = 0.5;
		}):Resume()
		local module_upvr_18 = require(arg1_338.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3175_upvr(arg1_340) -- Line 12352
			--[[ Upvalues[2]:
				[1]: module_upvr_18 (readonly)
				[2]: arg1_338 (readonly)
			]]
			return module_upvr_18.playAnimation(arg1_338:FindFirstChild("Humanoid"), arg1_340)
		end
		function module_upvr_18(arg1_341) -- Line 12360
			--[[ Upvalues[2]:
				[1]: module_upvr_34 (readonly)
				[2]: arg2_272 (readonly)
			]]
			return module_upvr_34.playAnimation(arg2_272:FindFirstChild("Humanoid"), arg1_341)
		end
		local module_upvr_34 = require(arg2_272.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3178_upvr = module_upvr_18
		module_upvr_34 = var3178_upvr(17106475377)
		local var3180_upvr = module_upvr_34
		var3180_upvr.Priority = Enum.AnimationPriority.Action4
		var3180_upvr:AdjustWeight(1)
		var3180_upvr:Play(0)
		table.insert(arg3_263, var3180_upvr)
		var3178_upvr(17106466215):AdjustWeight(0.001)
		var3175_upvr(17106466215):AdjustWeight(0.001)
		local var3181_upvw = false
		table.insert(arg3_263, var3180_upvr.Stopped:Once(function() -- Line 12374
			--[[ Upvalues[3]:
				[1]: var3178_upvr (readonly)
				[2]: var3175_upvr (readonly)
				[3]: var3181_upvw (read and write)
			]]
			var3178_upvr(17106466215):Stop(0)
			var3175_upvr(17106466215):Stop(0)
			var3181_upvw = true
		end))
		task.delay(9.3, function() -- Line 12380
			--[[ Upvalues[3]:
				[1]: var3181_upvw (read and write)
				[2]: var3180_upvr (readonly)
				[3]: arg1_338 (readonly)
			]]
			if var3181_upvw or not var3180_upvr.IsPlaying then
			else
				for _, v_124 in pairs(arg1_338:GetDescendants()) do
					if v_124:IsA("Accessory") and v_124:FindFirstChild("HairAttachment", true) then
						v_124:Destroy()
					end
				end
				local children = game.ReplicatedStorage.Emotes.Hairs:GetChildren()
				arg1_338.Humanoid:AddAccessory(children[math.random(#children)]:Clone())
			end
		end)
		local var3175_result1 = var3175_upvr(17106484670)
		var3175_result1.Priority = Enum.AnimationPriority.Action4
		var3175_result1:AdjustWeight(1)
		var3175_result1:Play(0)
		table.insert(arg3_263, var3175_result1)
		local tbl_373 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_373.Hit = arg1_338
		tbl_373.StartOffset = arg1_338.PrimaryPart.CFrame
		tbl_373.From = arg2_272.PrimaryPart
		tbl_373.NoLook = true
		tbl_373.Offset = CFrame.new(-3, 0, 0)
		tbl_373.Anchor = shared_cfolder_result1_8_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_373)
	end
	tbl_1122.Callback = Callback
	tbl_545.Dual = tbl_1122
	tbl_545.Keyframes = {
		freeze = function(arg1_342, arg2_273, arg3_264) -- Line 12413
			arg3_264:AdjustSpeed(0)
		end;
	}
	tbl_545.HideWeapon = true
	tbl_545.Fix = true
	tbl_545.Looped = true
	tbl_545.Tag = "barber1"
	tbl_545.Animation = 17106466215
	tbl_545.AnimationTwo = 17106475377
	tbl_545.Stun = "Freeze"
	tbl_459["Fresh Cut"] = tbl_545
	local tbl_1080 = {}
	local function Startup(arg1_343, arg2_274, arg3_265, arg4_17) -- Line 12428
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_95 = script.Racket:Clone()
		clone_95:SetAttribute("EmoteProperty", true)
		table.insert(arg1_343, clone_95)
		arg3_265.Handle = clone_95
		local m6d_35 = clone_95.m6d
		m6d_35:SetAttribute("EmoteProperty", true)
		table.insert(arg1_343, m6d_35)
		arg3_265.md = m6d_35
		m6d_35.Name = "Handle"
		m6d_35.Part0 = arg2["Right Arm"]
		m6d_35.Part1 = clone_95.Handle
		m6d_35.Parent = arg2["Right Arm"]
		clone_95.Parent = arg2
	end
	tbl_1080.Startup = Startup
	local tbl_39 = {
		DoBoth = false;
		NoRotate = 0;
		Attach = true;
		RotateCheck = true;
	}
	local function Callback(arg1_344, arg2_275, arg3_266, arg4_18, arg5_9) -- Line 12443
		--[[ Upvalues[5]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
			[5]: var2_upvw (copied, read and write)
		]]
		if not arg3_266.done then
			arg3_266.done = true
		else
			return
		end
		local shared_cfolder_result1_10_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_10_upvr.Parent = arg1_344
		table.insert(arg3_266, shared_cfolder_result1_10_upvr)
		local var3208 = arg5
		if not var3208 then
			var3208 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3208 then
				var3208 = arg1_344
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_10_upvr, "RemoveOnLeave"..var3208.Name)
		local clone_117 = script.TablePP:Clone()
		clone_117:SetAttribute("EmoteProperty", true)
		table.insert(arg3_266, clone_117)
		arg5_9.Handle = clone_117
		clone_117.Name = "Table"
		CollectionService_upvr:AddTag(clone_117, "RemoveOnLeave"..arg2_275.Name)
		local Table = clone_117.Table
		Table:SetAttribute("EmoteProperty", true)
		table.insert(arg3_266, Table)
		arg5_9.md = Table
		Table.Part0 = arg2_275.PrimaryPart
		Table.Part1 = clone_117
		Table.Parent = arg2_275.PrimaryPart
		CollectionService_upvr:AddTag(Table, "RemoveOnLeave"..arg2_275.Name)
		clone_117.Parent = arg2_275
		var93_upvr({
			SoundId = "rbxassetid://1837226630";
			Parent = clone_117;
			Volume = 0.5;
		}):Play()
		local clone_31_upvr = script.Ball:Clone()
		clone_31_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg3_266, clone_31_upvr)
		arg5_9.Handle = clone_31_upvr
		CollectionService_upvr:AddTag(clone_31_upvr, "RemoveOnLeave"..arg2_275.Name)
		local Ball_2 = clone_31_upvr.Ball
		Ball_2:SetAttribute("EmoteProperty", true)
		table.insert(arg3_266, Ball_2)
		arg5_9.md = Ball_2
		Ball_2.Part0 = arg2_275.PrimaryPart
		Ball_2.Part1 = clone_31_upvr
		Ball_2.Parent = arg2_275.PrimaryPart
		CollectionService_upvr:AddTag(Ball_2, "RemoveOnLeave"..arg2_275.Name)
		clone_31_upvr.Parent = arg2_275
		local tbl_674_upvr = {}
		local tbl_979_upvr = {}
		local tbl_25 = {}
		tbl_25[1] = arg1_344
		for _, v_74 in pairs(tbl_25) do
			table.insert(tbl_979_upvr, v_74.DescendantAdded:connect(function(arg1_345) -- Line 12485
				--[[ Upvalues[1]:
					[1]: tbl_674_upvr (readonly)
				]]
				if arg1_345:IsA("BasePart") then
					arg1_345.CollisionGroup = "nocol"
					table.insert(tbl_674_upvr, arg1_345)
				end
			end))
			for _, v_75 in pairs(v_74:GetDescendants()) do
				if v_75:IsA("BasePart") then
					v_75.CollisionGroup = "nocol"
					table.insert(tbl_674_upvr, v_75)
				end
			end
		end
		shared_cfolder_result1_10_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 12500
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_10_upvr (readonly)
				[2]: tbl_979_upvr (readonly)
				[3]: tbl_674_upvr (readonly)
			]]
			if not shared_cfolder_result1_10_upvr.Parent then
				for _, v_76 in pairs(tbl_979_upvr) do
					v_76:Disconnect()
				end
				for _, v_77 in pairs(tbl_674_upvr) do
					v_77.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_10_upvr, arg2_275.Name.."barber")
		local module_upvr_8 = require(arg1_344.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3235_upvr(arg1_346) -- Line 12515
			--[[ Upvalues[2]:
				[1]: module_upvr_8 (readonly)
				[2]: arg1_344 (readonly)
			]]
			return module_upvr_8.playAnimation(arg1_344:FindFirstChild("Humanoid"), arg1_346)
		end
		function module_upvr_8(arg1_347) -- Line 12523
			--[[ Upvalues[2]:
				[1]: module_upvr_33 (readonly)
				[2]: arg2_275 (readonly)
			]]
			return module_upvr_33.playAnimation(arg2_275:FindFirstChild("Humanoid"), arg1_347)
		end
		local module_upvr_33 = require(arg2_275.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3238_upvr = module_upvr_8
		module_upvr_33 = var3238_upvr(17108522793)
		local var3240 = module_upvr_33
		local var3242_upvw = 1
		table.insert(arg3_266, var3240:GetMarkerReachedSignal("clap"):Connect(function() -- Line 12530
			--[[ Upvalues[5]:
				[1]: clone_31_upvr (readonly)
				[2]: var2_upvw (copied, read and write)
				[3]: var3242_upvw (read and write)
				[4]: var3238_upvr (readonly)
				[5]: var3235_upvr (readonly)
			]]
			shared.sfx({
				SoundId = ({"rbxassetid://17108510911", "rbxassetid://17108511010", "rbxassetid://17108511153"})[math.random(1, 3)];
				Volume = 0.75;
				Parent = clone_31_upvr;
				RollOffMaxDistance = var2_upvw;
			}):Play()
			var3242_upvw = math.clamp(var3242_upvw + 0.005, 1, 10)
			var3238_upvr(17108522793):AdjustSpeed(var3242_upvw)
			var3235_upvr(17108399691):AdjustSpeed(var3242_upvw)
		end))
		var3240.Priority = Enum.AnimationPriority.Action4
		var3240:AdjustWeight(1)
		var3240:Play(0)
		table.insert(arg3_266, var3240)
		var3238_upvr(17108345170):AdjustWeight(0.001)
		var3235_upvr(17108345170):AdjustWeight(0.001)
		local var3235_result1 = var3235_upvr(17108399691)
		var3235_result1.Priority = Enum.AnimationPriority.Action4
		var3235_result1:AdjustWeight(1)
		var3235_result1:Play(0)
		table.insert(arg3_266, var3235_result1)
		local tbl_385 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_385.Hit = arg1_344
		tbl_385.StartOffset = arg1_344.PrimaryPart.CFrame
		tbl_385.From = arg2_275.PrimaryPart
		tbl_385.Offset = CFrame.new(0, 0, -11.304)
		tbl_385.Anchor = shared_cfolder_result1_10_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_385)
	end
	tbl_39.Callback = Callback
	tbl_1080.Dual = tbl_39
	tbl_1080.HideWeapon = true
	tbl_1080.Fix = true
	tbl_1080.Looped = true
	tbl_1080.Tag = "pingpong1"
	tbl_1080.Animation = 17108345170
	tbl_1080.AnimationTwo = 17108399691
	tbl_1080.Stun = "Freeze"
	tbl_459["Ping Pong"] = tbl_1080
	local tbl_1101 = {}
	local function Startup(arg1_348, arg2_276, arg3_267, arg4_19) -- Line 12579
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_1101.Startup = Startup
	local tbl_612 = {}
	local tbl_708 = {}
	if arg5 then
		var1669 = "rbxassetid://17466175687"
	else
		var1669 = "rbxassetid://17466175395"
	end
	tbl_708.SoundId = var1669
	var1669 = true
	tbl_708.ParentTorso = var1669
	var1669 = 1.5
	tbl_708.Volume = var1669
	tbl_612[0] = tbl_708
	tbl_1101.Sounds = tbl_612
	tbl_1101.Keyframes = {
		freeze = function(arg1_349, arg2_277, arg3_268) -- Line 12594
			arg3_268:AdjustSpeed(0)
		end;
	}
	local tbl_778 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		CallOnAccept = true;
		RotateCheck = true;
	}
	local function Callback(arg1_350, arg2_278, arg3_269, arg4_20) -- Line 12606
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
		]]
		if not arg3_269.done then
			arg3_269.done = true
		else
			return
		end
		local shared_cfolder_result1_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_upvr.Parent = arg1_350
		table.insert(arg3_269, shared_cfolder_result1_upvr)
		local var3263 = arg5
		if not var3263 then
			var3263 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3263 then
				var3263 = arg1_350
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_upvr, "RemoveOnLeave"..var3263.Name)
		local tbl_926_upvr = {}
		local tbl_501_upvr = {}
		local tbl_372 = {}
		tbl_372[1] = arg1_350
		for _, v_78 in pairs(tbl_372) do
			table.insert(tbl_501_upvr, v_78.DescendantAdded:connect(function(arg1_351) -- Line 12623
				--[[ Upvalues[1]:
					[1]: tbl_926_upvr (readonly)
				]]
				if arg1_351:IsA("BasePart") then
					arg1_351.CollisionGroup = "nocol"
					table.insert(tbl_926_upvr, arg1_351)
				end
			end))
			for _, v_79 in pairs(v_78:GetDescendants()) do
				if v_79:IsA("BasePart") then
					v_79.CollisionGroup = "nocol"
					table.insert(tbl_926_upvr, v_79)
				end
			end
		end
		shared_cfolder_result1_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 12638
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_upvr (readonly)
				[2]: tbl_501_upvr (readonly)
				[3]: tbl_926_upvr (readonly)
			]]
			if not shared_cfolder_result1_upvr.Parent then
				for _, v_80 in pairs(tbl_501_upvr) do
					v_80:Disconnect()
				end
				for _, v_81 in pairs(tbl_926_upvr) do
					v_81.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_upvr, arg2_278.Name.."carry")
		local module_upvr_10 = require(arg1_350.CharacterHandler:WaitForChild("AnimationPlayer"))
		local module_upvr_36 = require(arg2_278.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_10(arg1_353) -- Line 12661
			--[[ Upvalues[2]:
				[1]: module_upvr_36 (readonly)
				[2]: arg2_278 (readonly)
			]]
			return module_upvr_36.playAnimation(arg2_278:FindFirstChild("Humanoid"), arg1_353)
		end
		module_upvr_36 = module_upvr_10(17465453123)
		local var3289_upvr = module_upvr_36
		var3289_upvr.Priority = Enum.AnimationPriority.Action4
		var3289_upvr:AdjustWeight(1)
		var3289_upvr:Play()
		table.insert(arg3_269, var3289_upvr)
		task.delay(1.2, function() -- Line 12672
			--[[ Upvalues[3]:
				[1]: var3289_upvr (readonly)
				[2]: arg1_350 (readonly)
				[3]: arg2_278 (readonly)
			]]
			if var3289_upvr.IsPlaying then
				shared.sfx({
					SoundId = "rbxassetid://17466175248";
					CFrame = CFrame.new((arg1_350.PrimaryPart.Position + arg2_278.PrimaryPart.Position) / 2);
					Volume = 2;
				}):Play()
			end
		end)
		local var3285_result1_upvr = (function(arg1_352) -- Line 12653
			--[[ Upvalues[2]:
				[1]: module_upvr_10 (readonly)
				[2]: arg1_350 (readonly)
			]]
			return module_upvr_10.playAnimation(arg1_350:FindFirstChild("Humanoid"), arg1_352)
		end)(17465871318)
		var3285_result1_upvr.Priority = Enum.AnimationPriority.Action4
		var3285_result1_upvr:AdjustWeight(1)
		var3285_result1_upvr:Play()
		table.insert(arg3_269, var3285_result1_upvr)
		task.delay(2.833, function() -- Line 12688
			--[[ Upvalues[4]:
				[1]: arg3_269 (readonly)
				[2]: var3289_upvr (readonly)
				[3]: var3285_result1_upvr (readonly)
				[4]: TweenService_upvr (copied, readonly)
			]]
			local NumberValue_upvr = Instance.new("NumberValue")
			NumberValue_upvr.Value = 1
			table.insert(arg3_269, NumberValue_upvr)
			table.insert(arg3_269, NumberValue_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 12692
				--[[ Upvalues[3]:
					[1]: var3289_upvr (copied, readonly)
					[2]: NumberValue_upvr (readonly)
					[3]: var3285_result1_upvr (copied, readonly)
				]]
				var3289_upvr:AdjustSpeed(NumberValue_upvr.Value)
				var3285_result1_upvr:AdjustSpeed(NumberValue_upvr.Value)
			end))
			TweenService_upvr:Create(NumberValue_upvr, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Value = 0;
			}):Play()
		end)
		local tbl_66 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_66.Hit = arg1_350
		tbl_66.StartOffset = arg1_350.PrimaryPart.CFrame
		tbl_66.From = arg2_278.PrimaryPart
		tbl_66.Offset = CFrame.new(0, 0, -4.5)
		tbl_66.Anchor = shared_cfolder_result1_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_66)
	end
	tbl_778.Callback = Callback
	tbl_1101.Dual = tbl_778
	tbl_1101.HideWeapon = true
	tbl_1101.Fix = true
	tbl_1101.Looped = true
	tbl_1101.Tag = "duelreq"
	tbl_1101.Animation = 17464923657
	tbl_1101.AnimationTwo = 17465871318
	tbl_1101.Stun = "Freeze"
	tbl_459["Duel Request"] = tbl_1101
	local tbl_992 = {}
	local function Startup(arg1_354, arg2_279, arg3_270, arg4_21) -- Line 12724
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_992.Startup = Startup
	local tbl_1022 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		Distance = 3;
		RotateCheck = true;
	}
	local function Callback(arg1_355, arg2_280, arg3_271, arg4_22) -- Line 12737
		--[[ Upvalues[2]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		if not arg3_271.done then
			arg3_271.done = true
		else
			return
		end
		CollectionService_upvr:AddTag(anchor, arg2_280.Name.."carry")
		local module_upvr_5 = require(arg1_355.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3300(arg1_356) -- Line 12756
			--[[ Upvalues[2]:
				[1]: module_upvr_5 (readonly)
				[2]: arg1_355 (readonly)
			]]
			return module_upvr_5.playAnimation(arg1_355:FindFirstChild("Humanoid"), arg1_356)
		end
		function module_upvr_5(arg1_357) -- Line 12764
			--[[ Upvalues[2]:
				[1]: module_upvr_31 (readonly)
				[2]: arg2_280 (readonly)
			]]
			return module_upvr_31.playAnimation(arg2_280:FindFirstChild("Humanoid"), arg1_357)
		end
		local module_upvr_31 = require(arg2_280.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3303_upvr = module_upvr_5
		module_upvr_31 = var3303_upvr(72439513503134)
		local var3305 = module_upvr_31
		var3305.Priority = Enum.AnimationPriority.Action4
		var3305:AdjustWeight(1)
		var3305:Play()
		table.insert(arg3_271, var3305)
		var3300(83001379083977):AdjustWeight(0.01)
		var3303_upvr(83001379083977):AdjustWeight(0.01)
		table.insert(arg3_271, var3305.Stopped:Once(function() -- Line 12777
			--[[ Upvalues[1]:
				[1]: var3303_upvr (readonly)
			]]
			var3303_upvr(83001379083977):Stop(0)
		end))
		local var3300_result1 = var3300(90129590700134)
		var3300_result1.Priority = Enum.AnimationPriority.Action4
		var3300_result1:AdjustWeight(1)
		var3300_result1:Play()
		table.insert(arg3_271, var3300_result1)
		var93_upvr({
			SoundId = "rbxassetid://94760577993598";
			Parent = arg2_280.Torso;
			Volume = 1;
		}):Play()
	end
	tbl_1022.Callback = Callback
	tbl_992.Dual = tbl_1022
	tbl_992.HideWeapon = true
	tbl_992.Fix = true
	tbl_992.Looped = true
	tbl_992.Tag = "swerveee"
	tbl_992.Animation = 83001379083977
	tbl_992.AnimationTwo = 17096829509
	tbl_992.Stun = "Freeze"
	tbl_459.Swerve = tbl_992
	local tbl_61 = {}
	local function Startup(arg1_358, arg2_281, arg3_272, arg4_23) -- Line 12805
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_61.Startup = Startup
	local tbl_1013 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
	}
	var1669 = 0
	tbl_1013.Dist = CFrame.new(3.75712967, var1669, 0.85508728)
	tbl_1013.NoLook = true
	tbl_1013.Attach = true
	tbl_1013.RotateCheck = true
	local function Callback(arg1_359, arg2_282, arg3_273, arg4_24, arg5_10, arg6_2) -- Line 12819
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		if not arg3_273.done then
			arg3_273.done = true
		else
			return
		end
		local module_upvr_2 = require(arg1_359.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3311_upvr(arg1_360) -- Line 12829
			--[[ Upvalues[2]:
				[1]: module_upvr_2 (readonly)
				[2]: arg1_359 (readonly)
			]]
			return module_upvr_2.playAnimation(arg1_359:FindFirstChild("Humanoid"), arg1_360)
		end
		function module_upvr_2(arg1_361) -- Line 12837
			--[[ Upvalues[2]:
				[1]: module_upvr_6 (readonly)
				[2]: arg2_282 (readonly)
			]]
			return module_upvr_6.playAnimation(arg2_282:FindFirstChild("Humanoid"), arg1_361)
		end
		local module_upvr_6 = require(arg2_282.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3314_upvr = module_upvr_2
		module_upvr_6 = var3314_upvr(114351492594331)
		local var3316 = module_upvr_6
		var3316.Priority = Enum.AnimationPriority.Action4
		var3316:AdjustWeight(1)
		var3316:Play()
		table.insert(arg3_273, var3316)
		var3311_upvr(109864108341281):AdjustWeight(0.01)
		var3314_upvr(109864108341281):AdjustWeight(0.01)
		table.insert(arg3_273, var3316.Stopped:Once(function() -- Line 12849
			--[[ Upvalues[3]:
				[1]: var3314_upvr (readonly)
				[2]: arg3_273 (readonly)
				[3]: var3311_upvr (readonly)
			]]
			local var3314_result1 = var3314_upvr(114307604981653)
			table.insert(arg3_273, var3314_result1)
			var3314_result1:Play()
			local var3311_result1 = var3311_upvr(119026456567237)
			table.insert(arg3_273, var3311_result1)
			var3311_result1:Play()
		end))
		local var3311_result1_2 = var3311_upvr(136739918287439)
		var3311_result1_2.Priority = Enum.AnimationPriority.Action4
		var3311_result1_2:AdjustWeight(1)
		var3311_result1_2:Play()
		table.insert(arg3_273, var3311_result1_2)
		task.delay(0.917, function() -- Line 12862
			--[[ Upvalues[3]:
				[1]: arg6_2 (readonly)
				[2]: arg3_273 (readonly)
				[3]: arg2_282 (readonly)
			]]
			if arg6_2.interrupted then
			else
				local Attachment_17 = Instance.new("Attachment")
				Attachment_17:SetAttribute("EmoteProperty", true)
				table.insert(arg3_273, Attachment_17)
				Attachment_17.Parent = arg2_282["Right Arm"]
				Attachment_17.Position = Vector3.new(0.5, -1, -0)
				for _, v_125 in pairs(script.FistTouch:GetChildren()) do
					v_125:Clone().Parent = Attachment_17
					local var3334
				end
				for _, v_126 in pairs(var3334:GetChildren()) do
					v_126:Emit(v_126:GetAttribute("EmitCount"))
				end
			end
		end)
		task.delay(1.667, function() -- Line 12875
			--[[ Upvalues[3]:
				[1]: arg6_2 (readonly)
				[2]: arg3_273 (readonly)
				[3]: arg2_282 (readonly)
			]]
			if arg6_2.interrupted then
			else
				local clone_23 = script.Menacing:Clone()
				clone_23:SetAttribute("EmoteProperty", true)
				table.insert(arg3_273, clone_23)
				local Weld_8 = Instance.new("Weld")
				Weld_8.Part0 = arg2_282.PrimaryPart
				Weld_8.Part1 = clone_23
				Weld_8.C0 = CFrame.new(1.75713348, 0.5, 1.35508728)
				Weld_8.Parent = clone_23
				clone_23.Parent = arg2_282
				for _, v_127 in pairs(clone_23:GetDescendants()) do
					if v_127:IsA("ParticleEmitter") then
						v_127:Emit(v_127:GetAttribute("EmitCount"))
					end
				end
			end
		end)
		local Attachment_2 = Instance.new("Attachment")
		Attachment_2:SetAttribute("EmoteProperty", true)
		table.insert(arg3_273, Attachment_2)
		Attachment_2.Parent = arg2_282.PrimaryPart
		Attachment_2.Position = Vector3.new(2.32500, 0, 0.20900)
		var93_upvr({
			SoundId = "rbxassetid://76338639500620";
			Parent = Attachment_2;
			Volume = 0.5;
		}):Play()
	end
	tbl_1013.Callback = Callback
	tbl_61.Dual = tbl_1013
	tbl_61.HideWeapon = true
	tbl_61.Fix = true
	tbl_61.Looped = true
	tbl_61.Tag = "dance1"
	tbl_61.Animation = 109864108341281
	tbl_61.AnimationTwo = 1
	tbl_61.Stun = "Freeze"
	tbl_459["Bizarre Duo"] = tbl_61
	local tbl_915 = {}
	local function Startup(arg1_362, arg2_283, arg3_274, arg4_25) -- Line 12914
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_915.Startup = Startup
	local tbl_953 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		RotateCheck = true;
	}
	local function Callback(arg1_363, arg2_284, arg3_275, arg4_26) -- Line 12926
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
		]]
		if not arg3_275.done then
			arg3_275.done = true
		else
			return
		end
		local shared_cfolder_result1_12_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_12_upvr.Parent = arg1_363
		table.insert(arg3_275, shared_cfolder_result1_12_upvr)
		local var3360 = arg5
		if not var3360 then
			var3360 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3360 then
				var3360 = arg1_363
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_12_upvr, "RemoveOnLeave"..var3360.Name)
		local tbl_317_upvr = {}
		local tbl_642_upvr = {}
		local tbl_298 = {}
		tbl_298[1] = arg1_363
		for _, v_82 in pairs(tbl_298) do
			table.insert(tbl_642_upvr, v_82.DescendantAdded:connect(function(arg1_364) -- Line 12943
				--[[ Upvalues[1]:
					[1]: tbl_317_upvr (readonly)
				]]
				if arg1_364:IsA("BasePart") then
					arg1_364.CollisionGroup = "nocol"
					table.insert(tbl_317_upvr, arg1_364)
				end
			end))
			for _, v_83 in pairs(v_82:GetDescendants()) do
				if v_83:IsA("BasePart") then
					v_83.CollisionGroup = "nocol"
					table.insert(tbl_317_upvr, v_83)
				end
			end
		end
		shared_cfolder_result1_12_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 12958
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_12_upvr (readonly)
				[2]: tbl_642_upvr (readonly)
				[3]: tbl_317_upvr (readonly)
			]]
			if not shared_cfolder_result1_12_upvr.Parent then
				for _, v_84 in pairs(tbl_642_upvr) do
					v_84:Disconnect()
				end
				for _, v_85 in pairs(tbl_317_upvr) do
					v_85.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_12_upvr, arg2_284.Name.."carry")
		var93_upvr({
			SoundId = "rbxassetid://17096532969";
			Parent = arg2_284.PrimaryPart;
			Looped = true;
			Volume = 0.5;
		}):Play()
		local module_upvr_7 = require(arg1_363.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3383(arg1_365) -- Line 12980
			--[[ Upvalues[2]:
				[1]: module_upvr_7 (readonly)
				[2]: arg1_363 (readonly)
			]]
			return module_upvr_7.playAnimation(arg1_363:FindFirstChild("Humanoid"), arg1_365)
		end
		function module_upvr_7(arg1_366) -- Line 12988
			--[[ Upvalues[2]:
				[1]: module_upvr_22 (readonly)
				[2]: arg2_284 (readonly)
			]]
			return module_upvr_22.playAnimation(arg2_284:FindFirstChild("Humanoid"), arg1_366)
		end
		local module_upvr_22 = require(arg2_284.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3386_upvr = module_upvr_7
		module_upvr_22 = var3386_upvr(17096828632)
		local var3388 = module_upvr_22
		var3388.Priority = Enum.AnimationPriority.Action4
		var3388:AdjustWeight(1)
		var3388:Play()
		table.insert(arg3_275, var3388)
		var3383(17096821069):AdjustWeight(0.01)
		var3386_upvr(17096821069):AdjustWeight(0.01)
		table.insert(arg3_275, var3388.Stopped:Once(function() -- Line 13000
			--[[ Upvalues[1]:
				[1]: var3386_upvr (readonly)
			]]
			var3386_upvr(17096821069):Stop(0)
		end))
		local var3383_result1 = var3383(17096829509)
		var3383_result1.Priority = Enum.AnimationPriority.Action4
		var3383_result1:AdjustWeight(1)
		var3383_result1:Play()
		table.insert(arg3_275, var3383_result1)
		var93_upvr({
			SoundId = "rbxassetid://17096893930";
			Parent = arg2_284.Torso;
			Volume = 1;
		}):Play()
		local tbl_515 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_515.Hit = arg1_363
		tbl_515.StartOffset = arg1_363.PrimaryPart.CFrame
		tbl_515.From = arg2_284.PrimaryPart
		tbl_515.Offset = CFrame.new(0, 0, -3)
		tbl_515.Anchor = shared_cfolder_result1_12_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_515)
	end
	tbl_953.Callback = Callback
	tbl_915.Dual = tbl_953
	tbl_915.HideWeapon = true
	tbl_915.Fix = true
	tbl_915.Looped = true
	tbl_915.Tag = "dance1"
	tbl_915.Animation = 17096821069
	tbl_915.AnimationTwo = 17096829509
	tbl_915.Stun = "Freeze"
	tbl_459.Dance = tbl_915
	local tbl_417 = {}
	local function Startup(arg1_367, arg2_285, arg3_276, arg4_27) -- Line 13038
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		if arg5 then
		else
			local shared_cfolder_result1_20_upvr = shared.cfolder({
				Name = "Freeze";
			})
			if not arg3_276.stun then
				arg3_276.stun = {}
			end
			table.insert(arg3_276.stun, shared_cfolder_result1_20_upvr)
			table.insert(arg1_367, shared_cfolder_result1_20_upvr)
			shared_cfolder_result1_20_upvr:SetAttribute("DontInterrupt", true)
			shared_cfolder_result1_20_upvr:SetAttribute("NoStop", true)
			shared_cfolder_result1_20_upvr:SetAttribute("EmoteProperty", true)
			CollectionService_upvr:AddTag(shared_cfolder_result1_20_upvr, "Startupstun"..arg2.Name)
			task.delay(0, function() -- Line 13056
				--[[ Upvalues[2]:
					[1]: shared_cfolder_result1_20_upvr (readonly)
					[2]: arg2 (copied, readonly)
				]]
				shared_cfolder_result1_20_upvr.Parent = arg2
			end)
		end
	end
	tbl_417.Startup = Startup
	local tbl_73 = {
		DoBoth = false;
		NoRotate = 0;
		CanRotate = 0;
		Attach = true;
		Dead = true;
		RotateCheck = true;
	}
	local function Callback(arg1_368, arg2_286, arg3_277, arg4_28, arg5_11) -- Line 13068
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
		]]
		task.delay(0.03, function() -- Line 13069
			--[[ Upvalues[2]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2_286 (readonly)
			]]
			for _, v_86 in pairs(CollectionService_upvr:GetTagged("Startupstun"..arg2_286.Name)) do
				game:GetService("Debris"):AddItem(v_86, 0)
			end
		end)
		if not arg3_277.done then
			arg3_277.done = true
		else
			return
		end
		local shared_cfolder_result1_5_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_5_upvr.Parent = arg1_368
		table.insert(arg3_277, shared_cfolder_result1_5_upvr)
		local var3458 = arg5
		if not var3458 then
			var3458 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3458 then
				var3458 = arg1_368
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_5_upvr, "RemoveOnLeave"..var3458.Name)
		local tbl_889_upvr = {}
		local tbl_214_upvr = {}
		local tbl_1083 = {}
		tbl_1083[1] = arg1_368
		for _, v_87 in pairs(tbl_1083) do
			table.insert(tbl_214_upvr, v_87.DescendantAdded:connect(function(arg1_371) -- Line 13091
				--[[ Upvalues[1]:
					[1]: tbl_889_upvr (readonly)
				]]
				if arg1_371:IsA("BasePart") then
					arg1_371.CollisionGroup = "nocol"
					table.insert(tbl_889_upvr, arg1_371)
				end
			end))
			for _, v_88 in pairs(v_87:GetDescendants()) do
				if v_88:IsA("BasePart") then
					v_88.CollisionGroup = "nocol"
					table.insert(tbl_889_upvr, v_88)
				end
			end
		end
		shared_cfolder_result1_5_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 13106
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_5_upvr (readonly)
				[2]: tbl_214_upvr (readonly)
				[3]: tbl_889_upvr (readonly)
			]]
			if not shared_cfolder_result1_5_upvr.Parent then
				for _, v_89 in pairs(tbl_214_upvr) do
					v_89:Disconnect()
				end
				for _, v_90 in pairs(tbl_889_upvr) do
					v_90.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_5_upvr, arg2_286.Name.."carry")
		local var93_upvr_result1_33 = var93_upvr({
			SoundId = "rbxassetid://17120622268";
			Parent = arg1_368.Torso;
			Looped = true;
			Volume = 0.2;
		})
		var93_upvr_result1_33:Play()
		CollectionService_upvr:AddTag(var93_upvr_result1_33, "RemoveOnLeave"..arg1_368.Name)
		CollectionService_upvr:AddTag(var93_upvr_result1_33, "RemoveOnLeave"..arg2_286.Name)
		local module_upvr_29 = require(arg1_368.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function _(arg1_372) -- Line 13130
			--[[ Upvalues[2]:
				[1]: module_upvr_29 (readonly)
				[2]: arg1_368 (readonly)
			]]
			return module_upvr_29.playAnimation(arg1_368:FindFirstChild("Humanoid"), arg1_372)
		end
		module_upvr_29 = _(17120643504)
		local var3484 = module_upvr_29
		var3484.Priority = Enum.AnimationPriority.Action4
		var3484:AdjustWeight(1)
		var3484:Play()
		table.insert(arg3_277, var3484)
		local tbl_310 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_310.Hit = arg1_368
		tbl_310.NoLook = true
		tbl_310.From = arg2_286.PrimaryPart
		tbl_310.Offset = CFrame.new(-0.5, 0, -0.025)
		tbl_310.Anchor = shared_cfolder_result1_5_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_310)
	end
	tbl_73.Callback = Callback
	tbl_417.Dual = tbl_73
	tbl_417.Keyframes = {
		clap = function() -- Line 13154
			--[[ Upvalues[3]:
				[1]: arg5 (readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			if not arg5 then
			else
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg5["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.6;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end
		end;
	}
	tbl_417.HideWeapon = true
	tbl_417.Fix = true
	tbl_417.Tag = "drag1"
	tbl_417.Animation = 17120635926
	tbl_417.AnimationTwo = 17120643504
	tbl_417.Infinite = true
	tbl_417.Looped = true
	tbl_417.Stun = "Slowed"
	tbl_417.StunAttribute = 1.5
	tbl_459.Drag = tbl_417
	local tbl_887 = {}
	local function Startup(arg1_373, arg2_287, arg3_278, arg4_29) -- Line 13180
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		if arg5 then
		else
			local shared_cfolder_result1_19_upvr = shared.cfolder({
				Name = "Freeze";
			})
			if not arg3_278.stun then
				arg3_278.stun = {}
			end
			table.insert(arg3_278.stun, shared_cfolder_result1_19_upvr)
			table.insert(arg1_373, shared_cfolder_result1_19_upvr)
			shared_cfolder_result1_19_upvr:SetAttribute("DontInterrupt", true)
			shared_cfolder_result1_19_upvr:SetAttribute("NoStop", true)
			shared_cfolder_result1_19_upvr:SetAttribute("EmoteProperty", true)
			CollectionService_upvr:AddTag(shared_cfolder_result1_19_upvr, "Startupstun"..arg2.Name)
			print(arg2)
			task.delay(0, function() -- Line 13198
				--[[ Upvalues[2]:
					[1]: shared_cfolder_result1_19_upvr (readonly)
					[2]: arg2 (copied, readonly)
				]]
				shared_cfolder_result1_19_upvr.Parent = arg2
			end)
		end
	end
	tbl_887.Startup = Startup
	local tbl_925 = {
		DoBoth = false;
		NoRotate = 0;
		CanRotate = 0;
		Attach = true;
		Dead = true;
		RotateCheck = true;
	}
	local function Callback(arg1_374, arg2_288, arg3_279, arg4_30, arg5_12) -- Line 13210
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: var93_upvr (copied, readonly)
		]]
		task.delay(0.03, function() -- Line 13211
			--[[ Upvalues[2]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2_288 (readonly)
			]]
			for _, v_91 in pairs(CollectionService_upvr:GetTagged("Startupstun"..arg2_288.Name)) do
				game:GetService("Debris"):AddItem(v_91, 0)
			end
		end)
		if not arg3_279.done then
			arg3_279.done = true
		else
			return
		end
		local shared_cfolder_result1_15_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_15_upvr.Parent = arg1_374
		table.insert(arg3_279, shared_cfolder_result1_15_upvr)
		local var3511 = arg5
		if not var3511 then
			var3511 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3511 then
				var3511 = arg1_374
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_15_upvr, "RemoveOnLeave"..var3511.Name)
		local tbl_517_upvr = {}
		local tbl_746_upvr = {}
		local tbl_589 = {}
		tbl_589[1] = arg1_374
		for _, v_92 in pairs(tbl_589) do
			table.insert(tbl_746_upvr, v_92.DescendantAdded:connect(function(arg1_375) -- Line 13233
				--[[ Upvalues[1]:
					[1]: tbl_517_upvr (readonly)
				]]
				if arg1_375:IsA("BasePart") then
					arg1_375.CollisionGroup = "nocol"
					table.insert(tbl_517_upvr, arg1_375)
				end
			end))
			for _, v_93 in pairs(v_92:GetDescendants()) do
				if v_93:IsA("BasePart") then
					v_93.CollisionGroup = "nocol"
					table.insert(tbl_517_upvr, v_93)
				end
			end
		end
		shared_cfolder_result1_15_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 13248
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_15_upvr (readonly)
				[2]: tbl_746_upvr (readonly)
				[3]: tbl_517_upvr (readonly)
			]]
			if not shared_cfolder_result1_15_upvr.Parent then
				for _, v_94 in pairs(tbl_746_upvr) do
					v_94:Disconnect()
				end
				for _, v_95 in pairs(tbl_517_upvr) do
					v_95.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_15_upvr, arg2_288.Name.."carry")
		var93_upvr({
			SoundId = "rbxassetid://17096532969";
			Parent = arg2_288.PrimaryPart;
			Looped = true;
			Volume = 0.5;
		}):Play()
		local module_upvr_16 = require(arg1_374.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function _(arg1_376) -- Line 13270
			--[[ Upvalues[2]:
				[1]: module_upvr_16 (readonly)
				[2]: arg1_374 (readonly)
			]]
			return module_upvr_16.playAnimation(arg1_374:FindFirstChild("Humanoid"), arg1_376)
		end
		module_upvr_16 = _(17096487990)
		local var3536 = module_upvr_16
		var3536.Priority = Enum.AnimationPriority.Action4
		var3536:AdjustWeight(1)
		var3536:Play()
		table.insert(arg3_279, var3536)
		local tbl_479 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_479.Hit = arg1_374
		tbl_479.From = arg2_288.PrimaryPart
		tbl_479.Offset = CFrame.new(0, 0, -3)
		tbl_479.Anchor = shared_cfolder_result1_15_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_479)
	end
	tbl_925.Callback = Callback
	tbl_887.Dual = tbl_925
	tbl_887.Keyframes = {}
	tbl_887.HideWeapon = true
	tbl_887.Fix = true
	tbl_887.Tag = "carry1"
	tbl_887.Animation = 17096486393
	tbl_887.AnimationTwo = 17096487990
	tbl_887.Infinite = true
	tbl_887.Looped = true
	tbl_887.Stun = "Slowed"
	tbl_887.StunAttribute = 1.5
	tbl_459.Carry = tbl_887
	local tbl_294 = {}
	local function Startup(arg1_377, arg2_289, arg3_280, arg4_31) -- Line 13308
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: arg2 (readonly)
			[3]: var2_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		local clone_12 = script.cart:Clone()
		clone_12:SetAttribute("EmoteProperty", true)
		table.insert(arg1_377, clone_12)
		arg3_280.Handle = clone_12
		local cart = clone_12.cart
		cart:SetAttribute("EmoteProperty", true)
		table.insert(arg1_377, cart)
		arg3_280.md = cart
		clone_12.Name = "cart"
		cart.Part0 = arg2.PrimaryPart
		cart.Part1 = clone_12
		cart.Parent = arg2.PrimaryPart
		clone_12.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://15989599068";
			Parent = clone_12;
			Looped = true;
			Volume = 0.5;
			RollOffMaxDistance = var2_upvw;
		}):Play()
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end
	tbl_294.Startup = Startup
	local tbl_705 = {
		DoBoth = false;
		NoRotate = 0;
		Freeze = false;
		Attach = true;
		RotateCheck = true;
	}
	local function Callback(arg1_378, arg2_290, arg3_281, arg4_32) -- Line 13357
		--[[ Upvalues[3]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		if not arg3_281.done then
			arg3_281.done = true
		else
			return
		end
		local shared_cfolder_result1_16_upvr = shared.cfolder({
			Name = "RootAnchor";
		})
		shared_cfolder_result1_16_upvr.Parent = arg1_378
		table.insert(arg3_281, shared_cfolder_result1_16_upvr)
		local var3553 = arg5
		if not var3553 then
			var3553 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3553 then
				var3553 = arg1_378
			end
		end
		CollectionService_upvr:AddTag(shared_cfolder_result1_16_upvr, "RemoveOnLeave"..var3553.Name)
		local tbl_15_upvr = {}
		local tbl_519_upvr = {}
		local tbl_362 = {}
		tbl_362[1] = arg1_378
		for _, v_96 in pairs(tbl_362) do
			table.insert(tbl_519_upvr, v_96.DescendantAdded:connect(function(arg1_379) -- Line 13374
				--[[ Upvalues[1]:
					[1]: tbl_15_upvr (readonly)
				]]
				if arg1_379:IsA("BasePart") then
					arg1_379.CollisionGroup = "nocol"
					table.insert(tbl_15_upvr, arg1_379)
				end
			end))
			for _, v_97 in pairs(v_96:GetDescendants()) do
				if v_97:IsA("BasePart") then
					v_97.CollisionGroup = "nocol"
					table.insert(tbl_15_upvr, v_97)
				end
			end
		end
		shared_cfolder_result1_16_upvr:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 13389
			--[[ Upvalues[3]:
				[1]: shared_cfolder_result1_16_upvr (readonly)
				[2]: tbl_519_upvr (readonly)
				[3]: tbl_15_upvr (readonly)
			]]
			if not shared_cfolder_result1_16_upvr.Parent then
				for _, v_98 in pairs(tbl_519_upvr) do
					v_98:Disconnect()
				end
				for _, v_99 in pairs(tbl_15_upvr) do
					v_99.CollisionGroup = "playercol"
				end
			end
		end)
		CollectionService_upvr:AddTag(shared_cfolder_result1_16_upvr, arg2_290.Name.."cartride")
		local module_upvr_20 = require(arg1_378.CharacterHandler:WaitForChild("AnimationPlayer"))
		module_upvr_20 = (function(arg1_380) -- Line 13404
			--[[ Upvalues[2]:
				[1]: module_upvr_20 (readonly)
				[2]: arg1_378 (readonly)
			]]
			return module_upvr_20.playAnimation(arg1_378:FindFirstChild("Humanoid"), arg1_380)
		end)(15685170827)
		local var3577 = module_upvr_20
		var3577.Priority = Enum.AnimationPriority.Core
		var3577:AdjustWeight(0.001)
		table.insert(arg3_281, var3577)
		local var3575_result1 = (function(arg1_380) -- Line 13404
			--[[ Upvalues[2]:
				[1]: module_upvr_20 (readonly)
				[2]: arg1_378 (readonly)
			]]
			return module_upvr_20.playAnimation(arg1_378:FindFirstChild("Humanoid"), arg1_380)
		end)(15685307415)
		var3575_result1.Priority = Enum.AnimationPriority.Action4
		var3575_result1:AdjustWeight(1)
		var3575_result1:Play()
		table.insert(arg3_281, var3575_result1)
		local tbl_546 = {
			Effect = "Smooth Grab";
			CanBypass = true;
		}
		tbl_546.Hit = arg1_378
		tbl_546.From = arg2_290.PrimaryPart
		tbl_546.NoLook = true
		tbl_546.Offset = CFrame.new(0, 0, 0)
		tbl_546.Anchor = shared_cfolder_result1_16_upvr
		game.ReplicatedStorage.Replication:FireAllClients(tbl_546)
	end
	tbl_705.Callback = Callback
	tbl_294.Dual = tbl_705
	tbl_294.Keyframes = {
		clap = function(arg1_381) -- Line 13432
			--[[ Upvalues[5]:
				[1]: arg5 (readonly)
				[2]: var93_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: CollectionService_upvr (copied, readonly)
				[5]: random_state_upvr (copied, readonly)
			]]
			if arg5 then
			else
				var93_upvr({
					SoundId = "rbxassetid://15685183097";
					Parent = arg2.Torso;
					Volume = 1;
				}):Play()
				if arg1_381.first == 0 then
					arg1_381.first += 1
					return
				end
				local any_GetTagged_result1 = CollectionService_upvr:GetTagged(arg2.Name.."cartride")
				if 0 < #any_GetTagged_result1 then
					var93_upvr({
						SoundId = "rbxassetid://15685183294";
						Parent = any_GetTagged_result1[1].Parent.Torso;
						Volume = 1;
					}):Play()
				end
				if arg1_381.BV then
					if arg1_381.BV.Parent then
						local BV = arg1_381.BV
						BV:SetAttribute("Goto", 12)
						local var3586 = -0.01
						local var3587
						if not var3587 and var3586 then
							var3587 = var3586
							var3586 = 1
							local var3588
						end
						if not var3587 and not var3588 then
							var3588 = 0
							var3587 = 1
						end
						BV:SetAttribute("Speed", 45 + random_state_upvr:NextNumber(var3588, var3587))
					end
				end
			end
		end;
	}
	tbl_294.HideWeapon = true
	tbl_294.Tag = "cartride"
	tbl_294.Animation = 15685170827
	tbl_294.AnimationTwo = 15685307415
	tbl_294.Infinite = true
	tbl_294.Looped = true
	tbl_294.Stun = "Freeze"
	tbl_459["Cart Ride"] = tbl_294
	local tbl_996 = {}
	local tbl_1059 = {}
	local tbl_585 = {}
	var1669 = "rbxassetid://1839643165"
	tbl_585.SoundId = var1669
	var1669 = 0.3
	tbl_585.Volume = var1669
	tbl_1059[0] = tbl_585
	tbl_996.Sounds = tbl_1059
	local function Startup(arg1_382, arg2_291, arg3_282, arg4_33, arg5_13) -- Line 13482
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: random_state_upvr (copied, readonly)
			[3]: var107_upvr (copied, readonly)
		]]
		local tbl_1033_upvr = {}
		for i_109 = 1, 2 do
			local var3595 = 1
			if i_109 == 2 then
				var3595 = -1
			end
			local Attachment_3 = Instance.new("Attachment")
			table.insert(arg1_382, Attachment_3)
			Attachment_3:SetAttribute("EmoteProperty", true)
			local clone_80 = script.eye:Clone()
			clone_80.Parent = Attachment_3
			Attachment_3.Parent = arg2.Head
			clone_80.Enabled = true
			Attachment_3.Position = Vector3.new(var3595 * 0.23, 0.164, -0.75)
			table.insert(tbl_1033_upvr, clone_80)
		end
		task.spawn(function() -- Line 13497
			--[[ Upvalues[5]:
				[1]: arg2_291 (readonly)
				[2]: arg5_13 (readonly)
				[3]: tbl_1033_upvr (readonly)
				[4]: random_state_upvr (copied, readonly)
				[5]: var107_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
		end)
	end
	tbl_996.Startup = Startup
	tbl_996.Animation = 16584277208
	tbl_996.Looped = true
	tbl_996.Stun = "Slowed"
	tbl_459["Pretty Please"] = tbl_996
	local tbl_886 = {}
	local function Startup() -- Line 13521
	end
	tbl_886.Startup = Startup
	local tbl_493 = {
		DoBoth = false;
		Dist = 1.85;
		Attach = true;
		NoRotate = math.huge;
		RotateCheck = true;
	}
	local function Callback(arg1_383, arg2_292, arg3_283, arg4_34) -- Line 13531
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_4, _ = var93_upvr({
			SoundId = "rbxassetid://18829223347";
			Parent = arg1_383.Head;
			Looped = false;
			Volume = 1.5;
		})
		var93_upvr_result1_4:Play()
		local module_upvr_17 = require(arg1_383.CharacterHandler:WaitForChild("AnimationPlayer"))
		local module_upvr_11 = require(arg2_292.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_17(arg1_385) -- Line 13551
			--[[ Upvalues[2]:
				[1]: module_upvr_11 (readonly)
				[2]: arg2_292 (readonly)
			]]
			return module_upvr_11.playAnimation(arg2_292:FindFirstChild("Humanoid"), arg1_385)
		end
		module_upvr_11 = module_upvr_17(18897624255)
		local var3604_result1_upvr = (function(arg1_384) -- Line 13543
			--[[ Upvalues[2]:
				[1]: module_upvr_17 (readonly)
				[2]: arg1_383 (readonly)
			]]
			return module_upvr_17.playAnimation(arg1_383:FindFirstChild("Humanoid"), arg1_384)
		end)(18897625847)
		var3604_result1_upvr.Priority = Enum.AnimationPriority.Action4
		var3604_result1_upvr.Looped = true
		var3604_result1_upvr:AdjustWeight(1)
		var3604_result1_upvr:Play()
		table.insert(arg3_283, var3604_result1_upvr)
		task.spawn(function() -- Line 13563
			--[[ Upvalues[2]:
				[1]: var3604_result1_upvr (readonly)
				[2]: module_upvr_11 (readonly)
			]]
			repeat
				task.wait()
			until 4.117 < tick() - tick() and not var3604_result1_upvr.IsPlaying
			if not var3604_result1_upvr.IsPlaying then
			else
				for _, v_128 in pairs({module_upvr_11, var3604_result1_upvr}) do
					if v_128.IsPlaying then
						v_128:AdjustSpeed(0)
					end
				end
			end
		end)
	end
	tbl_493.Callback = Callback
	tbl_886.Dual = tbl_493
	tbl_886.Tag = "grabface"
	tbl_886.HideWeapon = true
	tbl_886.Animation = 18897624255
	tbl_886.AnimationFixes = {18897624255, 18897625847}
	tbl_886.Looped = true
	tbl_886.Stun = "Freeze"
	tbl_459["Face Grab"] = tbl_886
	local tbl_474 = {}
	local function Startup(arg1_386, arg2_293, arg3_284, arg4_35) -- Line 13585
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: arg2 (readonly)
			[3]: var93_upvr (copied, readonly)
		]]
		if arg5 then
			local clone_109 = script.Sandwich:Clone()
			clone_109:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, clone_109)
			arg3_284.Handle = clone_109
			local Sandwich = clone_109.Sandwich
			Sandwich:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, Sandwich)
			arg3_284.md = Sandwich
			Sandwich.Part0 = arg2["Right Arm"]
			Sandwich.Part1 = clone_109
			Sandwich.Parent = arg2["Right Arm"]
			clone_109.Parent = arg2
		else
			local clone_204 = script.Blanket:Clone()
			clone_204:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, clone_204)
			arg3_284.Handle = clone_204
			local Blanket = clone_204.Blanket
			Blanket:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, Blanket)
			arg3_284.md = Blanket
			Blanket.Part0 = arg2.PrimaryPart
			Blanket.Part1 = clone_204
			Blanket.Parent = arg2.PrimaryPart
			clone_204.Parent = arg2
			var93_upvr({
				SoundId = "rbxassetid://1841681029";
				Parent = clone_204;
				Looped = true;
				Volume = 0.5;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://83896975323570";
				Parent = arg2.Torso;
				Looped = false;
				Volume = 0.75;
			}):Play()
			local clone_175 = script.Picnick:Clone()
			clone_175:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, clone_175)
			arg3_284.Handle = clone_175
			clone_175.Name = "Model"
			local Base_2 = clone_175.Base
			Base_2:SetAttribute("EmoteProperty", true)
			table.insert(arg1_386, Base_2)
			arg3_284.md = Base_2
			Base_2.Part0 = arg2["Right Arm"]
			Base_2.Part1 = clone_175.PicnicBasket.Base
			Base_2.Parent = arg2["Right Arm"]
			clone_175.Parent = arg2
		end
	end
	tbl_474.Startup = Startup
	local tbl_918 = {
		DoBoth = false;
	}
	var1669 = 0
	tbl_918.Dist = CFrame.new(0, var1669, -5)
	tbl_918.Attach = true
	tbl_918.Freeze = false
	tbl_918.NoRotate = math.huge
	tbl_918.RotateCheck = true
	local function Callback(arg1_387, arg2_294, arg3_285, arg4_36) -- Line 13633
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local module_upvr_15 = require(arg1_387.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3627_upvr(arg1_388) -- Line 13645
			--[[ Upvalues[2]:
				[1]: module_upvr_15 (readonly)
				[2]: arg1_387 (readonly)
			]]
			return module_upvr_15.playAnimation(arg1_387:FindFirstChild("Humanoid"), arg1_388)
		end
		function module_upvr_15(arg1_389) -- Line 13653
			--[[ Upvalues[2]:
				[1]: module_upvr_9 (readonly)
				[2]: arg2_294 (readonly)
			]]
			return module_upvr_9.playAnimation(arg2_294:FindFirstChild("Humanoid"), arg1_389)
		end
		local module_upvr_9 = require(arg2_294.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3630_upvr = module_upvr_15
		module_upvr_9 = var3630_upvr(139619595225529)
		module_upvr_9:AdjustWeight(0.001)
		var93_upvr({
			SoundId = "rbxassetid://120033833303346";
			Parent = arg2_294["Right Arm"];
			Volume = 1;
		}):Play()
		local var3630_result1 = var3630_upvr(114257381413858)
		var3630_result1.Priority = Enum.AnimationPriority.Action4
		var3630_result1:AdjustWeight(1)
		var3630_result1:Play()
		table.insert(arg3_285, var3630_result1.Stopped:Once(function() -- Line 13671
			--[[ Upvalues[4]:
				[1]: var3630_upvr (readonly)
				[2]: arg3_285 (readonly)
				[3]: var93_upvr (copied, readonly)
				[4]: arg2_294 (readonly)
			]]
			local var3630_upvr_result1 = var3630_upvr(114413870666811)
			table.insert(arg3_285, var3630_upvr_result1)
			var3630_upvr_result1.Priority = Enum.AnimationPriority.Action4
			var3630_upvr_result1.Looped = true
			var3630_upvr_result1:AdjustWeight(1)
			table.insert(arg3_285, var3630_upvr_result1:GetMarkerReachedSignal("clap"):Connect(function() -- Line 13676
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2_294 (copied, readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://109123564480693";
					Parent = arg2_294["Right Arm"];
					Volume = 1;
				}):Play()
			end))
			var3630_upvr_result1:Play()
		end))
		table.insert(arg3_285, var3630_result1)
		var93_upvr({
			SoundId = "rbxassetid://111931707991797";
			Parent = arg1_387["Right Arm"];
			Volume = 1;
		}):Play()
		local var3627_upvr_result1_2 = var3627_upvr(111355299827059)
		var3627_upvr_result1_2.Priority = Enum.AnimationPriority.Action4
		var3627_upvr_result1_2:AdjustWeight(1)
		var3627_upvr_result1_2:Play()
		table.insert(arg3_285, var3627_upvr_result1_2.Stopped:Once(function() -- Line 13698
			--[[ Upvalues[4]:
				[1]: var3627_upvr (readonly)
				[2]: arg3_285 (readonly)
				[3]: var93_upvr (copied, readonly)
				[4]: arg1_387 (readonly)
			]]
			local var3627_upvr_result1 = var3627_upvr(72956068899498)
			table.insert(arg3_285, var3627_upvr_result1)
			var3627_upvr_result1.Priority = Enum.AnimationPriority.Action4
			var3627_upvr_result1.Looped = true
			table.insert(arg3_285, var3627_upvr_result1:GetMarkerReachedSignal("clap"):Connect(function() -- Line 13702
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg1_387 (copied, readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://101684470526234";
					Parent = arg1_387["Right Arm"];
					Volume = 1;
				}):Play()
			end))
			var3627_upvr_result1:AdjustWeight(1)
			var3627_upvr_result1:Play()
		end))
		table.insert(arg3_285, var3627_upvr_result1_2)
	end
	tbl_918.Callback = Callback
	tbl_474.Dual = tbl_918
	tbl_474.Keyframes = {
		freeze = function(arg1_390, arg2_295, arg3_286) -- Line 13718
			arg3_286:AdjustSpeed(0)
		end;
	}
	tbl_474.Tag = "paint"
	tbl_474.HideWeapon = true
	tbl_474.Fix = true
	tbl_474.Animation = 140367976090553
	local tbl_12 = {}
	var1669 = 18897686619
	tbl_12[1] = 18897684855
	tbl_12[2] = 18897682478
	tbl_12[3] = var1669
	tbl_474.AnimationFixes = tbl_12
	tbl_474.Looped = true
	tbl_474.Stun = "Freeze"
	tbl_459.Picnic = tbl_474
	local tbl_248 = {}
	local function Startup(arg1_391, arg2_296, arg3_287, arg4_37) -- Line 13733
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: arg2 (readonly)
			[3]: var93_upvr (copied, readonly)
		]]
		if arg5 then
			local clone_129 = script.Frame:Clone()
			clone_129:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, clone_129)
			arg3_287.Handle = clone_129
			local m6d_10 = clone_129.m6d
			m6d_10:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, m6d_10)
			arg3_287.md = m6d_10
			m6d_10.Part0 = arg2.PrimaryPart
			m6d_10.Part1 = clone_129
			m6d_10.Name = "Frame"
			m6d_10.Parent = arg2.PrimaryPart
			clone_129.Parent = arg2
		else
			var93_upvr({
				SoundId = "rbxassetid://1840161104";
				Parent = arg2.PrimaryPart;
				Looped = true;
				Volume = 0.4;
			}):Play()
			local clone_301 = script.brush:Clone()
			clone_301:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, clone_301)
			arg3_287.Handle = clone_301
			local brush = clone_301.brush
			brush:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, brush)
			arg3_287.md = brush
			brush.Part0 = arg2.PrimaryPart
			brush.Part1 = clone_301
			brush.Parent = arg2.PrimaryPart
			clone_301.Parent = arg2
			var93_upvr({
				SoundId = "rbxassetid://18835321626";
				Parent = clone_301;
				Volume = 1.5;
			}):Play()
			local clone_29 = script.palette:Clone()
			clone_29:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, clone_29)
			arg3_287.Handle = clone_29
			local palette = clone_29.palette
			palette:SetAttribute("EmoteProperty", true)
			table.insert(arg1_391, palette)
			arg3_287.md = palette
			palette.Part0 = arg2.PrimaryPart
			palette.Part1 = clone_29
			palette.Parent = arg2.PrimaryPart
			clone_29.Parent = arg2
		end
	end
	tbl_248.Startup = Startup
	local tbl_999 = {
		DoBoth = false;
		NoLook = true;
	}
	var1669 = 0
	tbl_999.Dist = CFrame.new(4, var1669, 0)
	tbl_999.Attach = true
	tbl_999.Freeze = false
	tbl_999.NoRotate = math.huge
	tbl_999.RotateCheck = true
	local function Callback(arg1_392, arg2_297, arg3_288, arg4_38) -- Line 13781
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_28, _ = var93_upvr({
			SoundId = "rbxassetid://18835337426";
			Parent = arg2_297["Right Arm"];
			Looped = true;
			Volume = 1.5;
		})
		var93_upvr_result1_28:Play()
		local module_upvr_14 = require(arg1_392.CharacterHandler:WaitForChild("AnimationPlayer"))
		local module_upvr_25 = require(arg2_297.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_14(arg1_394) -- Line 13801
			--[[ Upvalues[2]:
				[1]: module_upvr_25 (readonly)
				[2]: arg2_297 (readonly)
			]]
			return module_upvr_25.playAnimation(arg2_297:FindFirstChild("Humanoid"), arg1_394)
		end
		module_upvr_25 = module_upvr_14(18897682478)
		local var3664 = module_upvr_25
		var3664.Priority = Enum.AnimationPriority.Action4
		var3664.Looped = true
		var3664:AdjustWeight(1)
		var3664:Play()
		table.insert(arg3_288, var3664)
		local var3660_result1 = (function(arg1_393) -- Line 13793
			--[[ Upvalues[2]:
				[1]: module_upvr_14 (readonly)
				[2]: arg1_392 (readonly)
			]]
			return module_upvr_14.playAnimation(arg1_392:FindFirstChild("Humanoid"), arg1_393)
		end)(18897686619)
		var3660_result1.Priority = Enum.AnimationPriority.Action4
		var3660_result1.Looped = true
		var3660_result1:AdjustWeight(1)
		var3660_result1:Play()
		table.insert(arg3_288, var3660_result1)
	end
	tbl_999.Callback = Callback
	tbl_248.Dual = tbl_999
	tbl_248.Keyframes = {
		freeze = function(arg1_395, arg2_298, arg3_289) -- Line 13822
			arg3_289:AdjustSpeed(0)
		end;
	}
	tbl_248.Tag = "paint"
	tbl_248.HideWeapon = true
	tbl_248.Fix = true
	tbl_248.Animation = 18897684855
	local tbl_453 = {}
	var1669 = 18897686619
	tbl_453[1] = 18897684855
	tbl_453[2] = 18897682478
	tbl_453[3] = var1669
	tbl_248.AnimationFixes = tbl_453
	tbl_248.Looped = true
	tbl_248.Stun = "Freeze"
	tbl_459.Masterpiece = tbl_248
	local tbl_1111 = {}
	local function Startup(arg1_396, arg2_299, arg3_290) -- Line 13837
		--[[ Upvalues[1]:
			[1]: arg5 (readonly)
		]]
		if arg5 then return end
	end
	tbl_1111.Startup = Startup
	tbl_1111.Sounds = {}
	tbl_1111.Keyframes = {}
	local tbl_761 = {
		DoBoth = false;
		Dist = -0.01;
		Attach = true;
		NoRotate = 3.417;
	}
	local function Callback(arg1_397, arg2_300, arg3_291, arg4_39, arg5_14) -- Line 13856
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local module_upvr_23 = require(arg1_397.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function _(arg1_398) -- Line 13860
			--[[ Upvalues[2]:
				[1]: module_upvr_23 (readonly)
				[2]: arg1_397 (readonly)
			]]
			return module_upvr_23.playAnimation(arg1_397:FindFirstChild("Humanoid"), arg1_398)
		end
		local module_upvr_26 = require(arg2_300.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_23(arg1_399) -- Line 13868
			--[[ Upvalues[2]:
				[1]: module_upvr_26 (readonly)
				[2]: arg2_300 (readonly)
			]]
			return module_upvr_26.playAnimation(arg2_300:FindFirstChild("Humanoid"), arg1_399)
		end
		module_upvr_26 = var93_upvr
		local _ = {
			SoundId = "rbxassetid://18836260464";
			Parent = arg2_300.Torso;
			Volume = 1;
		}
		module_upvr_26 = module_upvr_26(_):Play
		module_upvr_26()
		module_upvr_26 = _(18897721681)
		local var3676 = module_upvr_26
		var3676.Priority = Enum.AnimationPriority.Action4
		var3676:AdjustWeight(1)
		var3676:Play()
		table.insert(arg3_291, var3676)
	end
	tbl_761.Callback = Callback
	tbl_1111.Dual = tbl_761
	tbl_1111.Tag = "thnk"
	tbl_1111.Animation = 18897718868
	tbl_1111.Fix = true
	tbl_1111.AnimationFixes = {18897718868, 18897721681}
	tbl_1111.Looped = false
	tbl_1111.Stun = "Freeze"
	tbl_459["Think!!!"] = tbl_1111
	local tbl_444 = {}
	local function Startup(arg1_400, arg2_301, arg3_292) -- Line 13896
		--[[ Upvalues[4]:
			[1]: arg5 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		if arg5 then
		else
			local shared_cfolder_result1_24_upvr = shared.cfolder({
				Name = "Freeze";
			}, 3.922)
			table.insert(arg1_400, shared_cfolder_result1_24_upvr)
			local var3681 = arg5
			if not var3681 then
				var3681 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var3681 then
					var3681 = arg2
				end
			end
			CollectionService_upvr:AddTag(shared_cfolder_result1_24_upvr, "blah"..var3681.Name)
			shared_cfolder_result1_24_upvr:SetAttribute("DontInterrupt", true)
			shared_cfolder_result1_24_upvr:SetAttribute("NoStop", true)
			shared_cfolder_result1_24_upvr:SetAttribute("EmoteProperty", true)
			task.delay(0, function() -- Line 13909
				--[[ Upvalues[2]:
					[1]: shared_cfolder_result1_24_upvr (readonly)
					[2]: arg2 (copied, readonly)
				]]
				shared_cfolder_result1_24_upvr.Parent = arg2
			end)
			arg3_292.frz = shared_cfolder_result1_24_upvr
		end
	end
	tbl_444.Startup = Startup
	tbl_444.Sounds = {}
	tbl_444.Keyframes = {}
	local tbl = {
		DoBoth = false;
		Dist = 3.179;
		Attach = true;
		CanRotate = true;
		RotateCheck = true;
	}
	local function Callback(arg1_401, arg2_302, arg3_293, arg4_40, arg5_15) -- Line 13931
		--[[ Upvalues[4]:
			[1]: var93_upvr (copied, readonly)
			[2]: CollectionService_upvr (copied, readonly)
			[3]: arg5 (readonly)
			[4]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
		]]
		local module_upvr_28 = require(arg1_401.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function var3684_upvr(arg1_402) -- Line 13935
			--[[ Upvalues[2]:
				[1]: module_upvr_28 (readonly)
				[2]: arg1_401 (readonly)
			]]
			return module_upvr_28.playAnimation(arg1_401:FindFirstChild("Humanoid"), arg1_402)
		end
		function module_upvr_28(arg1_403) -- Line 13943
			--[[ Upvalues[2]:
				[1]: module_upvr_19 (readonly)
				[2]: arg2_302 (readonly)
			]]
			return module_upvr_19.playAnimation(arg2_302:FindFirstChild("Humanoid"), arg1_403)
		end
		local module_upvr_19 = require(arg2_302.CharacterHandler:WaitForChild("AnimationPlayer"))
		local var3687_upvr = module_upvr_28
		module_upvr_19 = var3684_upvr(18897899497)
		local var3689 = module_upvr_19
		var3689.Priority = Enum.AnimationPriority.Action4
		var3689:AdjustWeight(1)
		var3689:Play()
		local var93_upvr_result1_20 = var93_upvr({
			SoundId = "rbxassetid://18846119968";
			Parent = arg1_401.Torso;
			Volume = 1;
		})
		var93_upvr_result1_20:SetAttribute("EmoteProperty", true)
		var93_upvr_result1_20:Play()
		table.insert(arg3_293, var93_upvr_result1_20)
		table.insert(arg3_293, var3689)
		table.insert(arg3_293, var3689.Stopped:Once(function() -- Line 13960
			--[[ Upvalues[9]:
				[1]: var3687_upvr (readonly)
				[2]: arg3_293 (readonly)
				[3]: var3684_upvr (readonly)
				[4]: CollectionService_upvr (copied, readonly)
				[5]: arg5 (copied, readonly)
				[6]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[7]: arg1_401 (readonly)
				[8]: var93_upvr (copied, readonly)
				[9]: arg2_302 (readonly)
			]]
			local var3687_upvr_result1_2 = var3687_upvr(18897885015)
			var3687_upvr_result1_2.Priority = Enum.AnimationPriority.Action4
			var3687_upvr_result1_2.Looped = true
			var3687_upvr_result1_2:AdjustWeight(1)
			var3687_upvr_result1_2:Play()
			table.insert(arg3_293, var3687_upvr_result1_2)
			local var3684_result1 = var3684_upvr(18897893429)
			var3684_result1.Priority = Enum.AnimationPriority.Action4
			var3684_result1.Looped = true
			var3684_result1:AdjustWeight(1)
			var3684_result1:Play()
			table.insert(arg3_293, var3684_result1)
			local var3711 = arg5
			if not var3711 then
				var3711 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var3711 then
					var3711 = arg1_401
				end
			end
			for _, v_100 in pairs(CollectionService_upvr:GetTagged("blah"..var3711.Name)) do
				v_100:Destroy()
			end
			local var93_upvr_result1_7 = var93_upvr({
				SoundId = "rbxassetid://18846302530";
				Parent = arg2_302.Torso;
				Looped = true;
				Volume = 0.25;
			})
			var93_upvr_result1_7:SetAttribute("EmoteProperty", true)
			var93_upvr_result1_7:Play()
			table.insert(arg3_293, var93_upvr_result1_7)
		end))
		local var3687_upvr_result1_3 = var3687_upvr(18897896476)
		var3687_upvr_result1_3.Priority = Enum.AnimationPriority.Action4
		var3687_upvr_result1_3:AdjustWeight(1)
		var3687_upvr_result1_3:Play()
		table.insert(arg3_293, var3687_upvr_result1_3)
	end
	tbl.Callback = Callback
	tbl_444.Dual = tbl
	tbl_444.Tag = "backcarry"
	tbl_444.Animation = 18897896476
	local tbl_978 = {}
	var1669 = 18897893429
	tbl_978[1] = 18897896476
	tbl_978[2] = 18897899497
	tbl_978[3] = var1669
	tbl_978[4] = 18897885015
	tbl_444.AnimationFixes = tbl_978
	tbl_444.Looped = true
	tbl_444.Stun = "Slowed"
	tbl_444.StunAttribute = 1
	tbl_459["Carry 2"] = tbl_444
	local tbl_238 = {}
	local function Startup() -- Line 14005
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		if arg5 then
		else
			var93_upvr({
				SoundId = "rbxassetid://18835998166";
				Volume = 1;
				Looped = true;
				Parent = arg2["Left Leg"];
			}):Play()
		end
	end
	tbl_238.Startup = Startup
	tbl_238.Sounds = {}
	tbl_238.Keyframes = {}
	local tbl_286 = {
		DoBoth = false;
		Dist = -0.01;
		Freeze = false;
		Attach = true;
		CanRotate = true;
		RotateCheck = true;
	}
	local function Callback(arg1_404, arg2_303, arg3_294, arg4_41) -- Line 14033
		local module_upvr_21 = require(arg1_404.CharacterHandler:WaitForChild("AnimationPlayer"))
		local function _(arg1_405) -- Line 14037
			--[[ Upvalues[2]:
				[1]: module_upvr_21 (readonly)
				[2]: arg1_404 (readonly)
			]]
			return module_upvr_21.playAnimation(arg1_404:FindFirstChild("Humanoid"), arg1_405)
		end
		local module_upvr_30 = require(arg2_303.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_21(arg1_406) -- Line 14045
			--[[ Upvalues[2]:
				[1]: module_upvr_30 (readonly)
				[2]: arg2_303 (readonly)
			]]
			return module_upvr_30.playAnimation(arg2_303:FindFirstChild("Humanoid"), arg1_406)
		end
		module_upvr_30 = _(18897690248)
		local var3726 = module_upvr_30
		var3726.Priority = Enum.AnimationPriority.Action4
		var3726.Looped = true
		var3726:AdjustWeight(1)
		var3726:Play()
		table.insert(arg3_294, var3726)
	end
	tbl_286.Callback = Callback
	tbl_238.Dual = tbl_286
	tbl_238.Tag = "piggyback"
	tbl_238.Animation = 18897692607
	tbl_238.AnimationFixes = {18897692607, 18897690248}
	tbl_238.Looped = true
	tbl_238.Stun = "Slowed"
	tbl_238.StunAttribute = 1
	tbl_459.Piggyback = tbl_238
	local tbl_494 = {}
	local function Startup() -- Line 14068
	end
	tbl_494.Startup = Startup
	local tbl_233 = {}
	local tbl_206 = {}
	var1669 = "rbxassetid://17097669113"
	tbl_206.SoundId = var1669
	var1669 = 1
	tbl_206.Volume = var1669
	tbl_233[0] = tbl_206
	tbl_494.Sounds = tbl_233
	tbl_494.Keyframes = {
		freeze = function(arg1_407, arg2_304, arg3_295) -- Line 14080
			arg3_295:AdjustSpeed(0)
		end;
	}
	local tbl_486 = {
		DoBoth = false;
		Dist = 3.8;
		Freeze = false;
		Attach = true;
		NoRotate = math.huge;
		RotateCheck = true;
	}
	local function Callback(arg1_408, arg2_305, arg3_296, arg4_42) -- Line 14092
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_30_upvr, _ = var93_upvr({
			SoundId = "rbxassetid://18828726970";
			Looped = true;
			Volume = 1;
		})
		var93_upvr_result1_30_upvr.Parent = arg1_408.PrimaryPart
		var93_upvr_result1_30_upvr:Play()
		local var93_upvr_result1, _ = var93_upvr({
			SoundId = "rbxassetid://9038380332";
			Looped = true;
			Volume = 0.2;
		})
		var93_upvr_result1.Parent = arg1_408.PrimaryPart
		var93_upvr_result1:Play()
		local module_upvr_12 = require(arg1_408.CharacterHandler:WaitForChild("AnimationPlayer"))
		local module_upvr_32 = require(arg2_305.CharacterHandler:WaitForChild("AnimationPlayer"))
		function module_upvr_12(arg1_410) -- Line 14125
			--[[ Upvalues[2]:
				[1]: module_upvr_32 (readonly)
				[2]: arg2_305 (readonly)
			]]
			return module_upvr_32.playAnimation(arg2_305:FindFirstChild("Humanoid"), arg1_410)
		end
		module_upvr_32 = module_upvr_12(18897652035)
		local var3744_upvr = module_upvr_32
		var3744_upvr.Priority = Enum.AnimationPriority.Action4
		var3744_upvr.Looped = true
		var3744_upvr:AdjustWeight(1)
		var3744_upvr:Play()
		table.insert(arg3_296, var3744_upvr)
		local var3740_result1_upvr = (function(arg1_409) -- Line 14117
			--[[ Upvalues[2]:
				[1]: module_upvr_12 (readonly)
				[2]: arg1_408 (readonly)
			]]
			return module_upvr_12.playAnimation(arg1_408:FindFirstChild("Humanoid"), arg1_409)
		end)(18897657904)
		var3740_result1_upvr.Priority = Enum.AnimationPriority.Action4
		var3740_result1_upvr.Looped = true
		var3740_result1_upvr:AdjustWeight(1)
		var3740_result1_upvr:Play()
		table.insert(arg3_296, var3740_result1_upvr)
		task.spawn(function() -- Line 14144
			--[[ Upvalues[3]:
				[1]: var93_upvr_result1_30_upvr (readonly)
				[2]: var3740_result1_upvr (readonly)
				[3]: var3744_upvr (readonly)
			]]
			repeat
				task.wait(0.5)
				local var3747 = 1 + 0.0071428571428571435
				var93_upvr_result1_30_upvr.PlaybackSpeed = var3747
				var3740_result1_upvr:AdjustSpeed(var3747)
				var3744_upvr:AdjustSpeed(var3747)
			until not var3740_result1_upvr.IsPlaying and not var3744_upvr.IsPlaying
		end)
	end
	tbl_486.Callback = Callback
	tbl_494.Dual = tbl_486
	tbl_494.Tag = "lalala"
	tbl_494.Animation = 18897655615
	tbl_494.AnimationFixes = {18897652035, 18897657904}
	tbl_494.Looped = true
	tbl_494.Stun = "Freeze"
	tbl_459.Lalala = tbl_494
	local tbl_257 = {}
	local tbl_160 = {}
	local tbl_95 = {}
	var1669 = "rbxassetid://131885679205734"
	tbl_95.SoundId = var1669
	var1669 = 1.25
	tbl_95.Volume = var1669
	tbl_160[0] = tbl_95
	tbl_160[6] = {
		SoundId = "rbxassetid://128405033807309";
		Volume = 1.25;
		Looped = true;
	}
	tbl_160[1] = {
		SoundId = "rbxassetid://120830407661030";
		Volume = 0.5;
		Looped = true;
	}
	tbl_257.Sounds = tbl_160
	local function Startup(arg1_411, arg2_306, arg3_297) -- Line 14183
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local clone_278 = script.clonedsword:Clone()
		clone_278:SetAttribute("EmoteProperty", true)
		table.insert(arg1_411, clone_278)
		local var3755 = arg5
		if not var3755 then
			var3755 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3755 then
				var3755 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_278, "emoteendstuff"..var3755.Name)
		local HandleM = clone_278.HandleM
		HandleM:SetAttribute("EmoteProperty", true)
		table.insert(arg1_411, HandleM)
		local var3757 = arg5
		if not var3757 then
			var3757 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var3757 then
				var3757 = arg2
			end
		end
		CollectionService_upvr:AddTag(HandleM, "emoteendstuff"..var3757.Name)
		HandleM.Part0 = arg2["Right Arm"]
		HandleM.Part1 = clone_278.Handle
		HandleM.Parent = arg2["Right Arm"]
		HandleM.Name = "Handle"
		clone_278.Parent = arg2
	end
	tbl_257.Startup = Startup
	tbl_257.Keyframes = {
		swap = function() -- Line 14200
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_4, pairs_result2_31, pairs_result3_3 = pairs(arg2:GetDescendants())
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 15. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 15. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.6]
			-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
		end;
		swapback = function() -- Line 14217
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_49, pairs_result2_75, pairs_result3_2 = pairs(arg2:GetDescendants())
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 15. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 15. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.6]
			-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
		end;
	}
	tbl_257.StunAttribute = 1.5
	tbl_257.Animation = 128517914413709
	tbl_257.Looped = false
	tbl_257.Stun = "Slowed"
	tbl_459["Moonlight Blade"] = tbl_257
	local tbl_879 = {}
	local function Startup() -- Line 14243
	end
	tbl_879.Startup = Startup
	tbl_879.Keyframes = {}
	local tbl_1044 = {
		DoBoth = false;
		Dist = 7;
		NoRotate = 1.45;
	}
	local function Callback(arg1_412, arg2_307, arg3_298, arg4_43) -- Line 14255
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_27, var93_upvr_result2_9 = var93_upvr({
			SoundId = "rbxassetid://16584014240";
			CFrame = CFrame.new();
			Volume = 1;
		})
		var93_upvr_result2_9.Parent = arg1_412.PrimaryPart
		var93_upvr_result2_9.WorldPosition = (arg1_412.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_43 / 2)).Position
		var93_upvr_result1_27:Play()
	end
	tbl_1044.Callback = Callback
	tbl_879.Dual = tbl_1044
	tbl_879.Tag = "respbow"
	tbl_879.Animation = 16584194737
	tbl_879.Looped = false
	tbl_879.Stun = "Freeze"
	tbl_459["Respectful Bow"] = tbl_879
	local tbl_96 = {}
	local function Startup(arg1_413, arg2_308, arg3_299, arg4_44) -- Line 14275
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://3929467449";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
			PlaybackSpeed = 1.5;
		}):Play()
		local clone_272 = script.Colaa:Clone()
		clone_272:SetAttribute("EmoteProperty", true)
		table.insert(arg1_413, clone_272)
		arg3_299.Handle = clone_272
		local Handle_32 = clone_272.Handle
		Handle_32:SetAttribute("EmoteProperty", true)
		table.insert(arg1_413, Handle_32)
		arg3_299.md = Handle_32
		clone_272.Name = "Handle"
		Handle_32.Part0 = arg2["Right Arm"]
		Handle_32.Part1 = clone_272
		Handle_32.Parent = arg2["Right Arm"]
		clone_272.Parent = arg2
	end
	tbl_96.Startup = Startup
	local tbl_30 = {
		DoBoth = false;
		Dist = 3.5;
		NoRotate = 3.15;
	}
	local function Callback(arg1_414, arg2_309, arg3_300, arg4_45) -- Line 14296
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_5, var93_upvr_result2_8 = var93_upvr({
			SoundId = "rbxassetid://15486190633";
			CFrame = CFrame.new();
			Volume = 1;
		})
		var93_upvr_result2_8.Parent = arg1_414.PrimaryPart
		var93_upvr_result2_8.WorldPosition = (arg1_414.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_45 / 2)).Position
		var93_upvr_result1_5:Play()
	end
	tbl_30.Callback = Callback
	tbl_96.Dual = tbl_30
	tbl_96.Keyframes = {
		["end"] = function(arg1_415) -- Line 14310
			--[[ Upvalues[1]:
				[1]: TweenService_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(arg1_415.Handle["Bloxy Cola Decoration"].Mesh, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Scale = Vector3.new();
			}):Play()
		end;
	}
	tbl_96.HideWeapon = true
	tbl_96.Tag = "chers"
	tbl_96.Animation = 15486180872
	tbl_96.Looped = false
	tbl_96.Stun = "Freeze"
	tbl_459.Cheers = tbl_96
	local tbl_255 = {}
	local function Startup(arg1_416, arg2_310, arg3_301, arg4_46) -- Line 14325
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://3929467449";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
			PlaybackSpeed = 1.5;
		}):Play()
	end
	tbl_255.Startup = Startup
	local tbl_1132 = {
		DoBoth = false;
		Dist = 3.5;
		NoRotate = 8.3;
	}
	local function Callback(arg1_417, arg2_311, arg3_302, arg4_47) -- Line 14338
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_29, var93_upvr_result2_6 = var93_upvr({
			SoundId = "rbxassetid://15018915276";
			CFrame = CFrame.new();
			Volume = 1;
		})
		var93_upvr_result2_6.Parent = arg1_417.PrimaryPart
		var93_upvr_result2_6.WorldPosition = (arg1_417.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_47 / 2)).Position
		var93_upvr_result1_29:Play()
	end
	tbl_1132.Callback = Callback
	tbl_255.Dual = tbl_1132
	tbl_255.Tag = "bizzarehandshake"
	tbl_255.Animation = 15018853350
	tbl_255.Looped = false
	tbl_255.Stun = "Freeze"
	tbl_459["Bizarre Handshake"] = tbl_255
	local tbl_62 = {}
	local function Startup(arg1_418, arg2_312, arg3_303, arg4_48) -- Line 14358
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://3929467449";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
			PlaybackSpeed = 1.5;
		}):Play()
	end
	tbl_62.Startup = Startup
	local tbl_3 = {
		DoBoth = false;
		Dist = 3.5;
		NoRotate = 3;
	}
	local function Callback(arg1_419, arg2_313, arg3_304, arg4_49) -- Line 14371
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_26, var93_result2 = var93_upvr({
			SoundId = "rbxassetid://15091001878";
			CFrame = CFrame.new();
			TimePosition = 0.15;
			Volume = 2;
		})
		var93_result2.Parent = arg1_419.PrimaryPart
		var93_result2.WorldPosition = (arg1_419.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_49 / 2)).Position
		var93_upvr_result1_26:Resume()
	end
	tbl_3.Callback = Callback
	tbl_62.Dual = tbl_3
	tbl_62.Tag = "highfive"
	tbl_62.Animation = 15223422794
	tbl_62.Looped = false
	tbl_62.Stun = "Freeze"
	tbl_459.Highfive = tbl_62
	local tbl_872 = {
		HideWeapon = true;
	}
	local function Startup(arg1_420, arg2_314, arg3_305, arg4_50) -- Line 14393
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://3929467449";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
			PlaybackSpeed = 1.5;
		}):Play()
	end
	tbl_872.Startup = Startup
	local tbl_115 = {
		DoBoth = false;
		Dist = 4.8;
	}
	local function Callback(arg1_421, arg2_315, arg3_306, arg4_51) -- Line 14405
		--[[ Upvalues[1]:
			[1]: var93_upvr (copied, readonly)
		]]
		local var93_upvr_result1_25, var93_upvr_result2_7 = var93_upvr({
			SoundId = "rbxassetid://15290318024";
			CFrame = CFrame.new();
			Volume = 1.5;
		})
		var93_upvr_result2_7.Parent = arg1_421.PrimaryPart
		var93_upvr_result2_7.WorldPosition = (arg1_421.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_51 / 2)).Position
		var93_upvr_result1_25:Play()
	end
	tbl_115.Callback = Callback
	tbl_872.Dual = tbl_115
	tbl_872.Tag = "fistbupm"
	tbl_872.Animation = 15290322193
	tbl_872.Looped = false
	tbl_872.Stun = "Freeze"
	tbl_459["Fist Bump"] = tbl_872
	local tbl_927 = {}
	local function Startup(arg1_422, arg2_316, arg3_307, arg4_52) -- Line 14425
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://3929467449";
			Parent = arg2.PrimaryPart;
			Volume = 0.5;
			PlaybackSpeed = 1.5;
		}):Play()
	end
	tbl_927.Startup = Startup
	tbl_927.Dual = {
		DoBoth = false;
		Dist = 3.5;
		Callback = function(arg1_423, arg2_317, arg3_308, arg4_53) -- Line 14437, Named "Callback"
			--[[ Upvalues[1]:
				[1]: var93_upvr (copied, readonly)
			]]
			local var93_upvr_result1_15, var93_upvr_result2_2 = var93_upvr({
				SoundId = "rbxassetid://14407585440";
				CFrame = CFrame.new();
				Volume = 1.5;
			})
			var93_upvr_result2_2.Parent = arg1_423.PrimaryPart
			var93_upvr_result2_2.WorldPosition = (arg1_423.PrimaryPart.CFrame * CFrame.new(0, 0, -arg4_53 / 2)).Position
			var93_upvr_result1_15:Play()
		end;
	}
	tbl_927.Tag = "dap"
	tbl_927.Animation = 15007878015
	tbl_927.Looped = false
	tbl_927.Stun = "Freeze"
	tbl_459["Dap Me Up"] = tbl_927
	local tbl_860 = {}
	local tbl_262 = {}
	local tbl_27 = {}
	var1669 = "rbxassetid://1847174988"
	tbl_27.SoundId = var1669
	var1669 = 0.6
	tbl_27.Volume = var1669
	var1669 = 0.6
	tbl_27.TimePosition = var1669
	var1669 = true
	tbl_27.Looped = var1669
	tbl_262[0] = tbl_27
	tbl_860.Sounds = tbl_262
	tbl_860.Keyframes = {
		claploop = function() -- Line 14467
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://2704706975";
				Volume = 1;
				Parent = arg2.Head;
			}):Play()
		end;
	}
	tbl_860.Infinite = true
	tbl_860.Animation = 14014580605
	tbl_860.Looped = true
	tbl_860.Stun = "Freeze"
	tbl_459.Bully = tbl_860
	local tbl_463 = {}
	local tbl_1076 = {}
	local tbl_92 = {}
	var1669 = "rbxassetid://1843271056"
	tbl_92.SoundId = var1669
	var1669 = 0.6
	tbl_92.Volume = var1669
	var1669 = 3
	tbl_92.TimePosition = var1669
	var1669 = true
	tbl_92.Looped = var1669
	tbl_1076[0] = tbl_92
	tbl_463.Sounds = tbl_1076
	tbl_463.Keyframes = {
		clap = function() -- Line 14493
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://9114760154";
				Volume = 0.25;
				Parent = arg2.Head;
			}):Play()
		end;
	}
	tbl_463.Infinite = true
	tbl_463.Animation = 15017946867
	tbl_463.Looped = true
	tbl_463.Stun = "Slowed"
	tbl_459.Exercise = tbl_463
	local tbl_859 = {}
	local tbl_858 = {}
	local tbl_743 = {}
	var1669 = "rbxassetid://9046628228"
	tbl_743.SoundId = var1669
	var1669 = 0.4
	tbl_743.Volume = var1669
	var1669 = 1.5
	tbl_743.TimePosition = var1669
	var1669 = true
	tbl_743.Looped = var1669
	tbl_858[0] = tbl_743
	tbl_859.Sounds = tbl_858
	tbl_859.Animation = 13935172019
	tbl_859.Looped = true
	tbl_859.Stun = "Freeze"
	tbl_459.Chrono = tbl_859
	local tbl_227 = {}
	local function Startup(arg1_424) -- Line 14533
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local randint = math.random(1, 2)
		local tbl_578 = {}
		local var3825
		if randint == 1 then
			var3825 = "rbxassetid://1836736766"
		else
			var3825 = "rbxassetid://9044612350"
		end
		tbl_578.SoundId = var3825
		var3825 = 0.75
		tbl_578.Volume = var3825
		if randint == 1 then
			var3825 = 19
		else
			var3825 = 1
		end
		tbl_578.TimePosition = var3825
		var3825 = true
		tbl_578.Looped = var3825
		var3825 = arg2.PrimaryPart
		tbl_578.Parent = var3825
		local var93_upvr_result1_16 = var93_upvr(tbl_578)
		var93_upvr_result1_16:SetAttribute("EmoteProperty", true)
		var3825 = arg1_424
		table.insert(var3825, var93_upvr_result1_16)
		var93_upvr_result1_16:Play()
	end
	tbl_227.Startup = Startup
	tbl_227.Animation = 13874517117
	tbl_227.Looped = true
	tbl_227.Stun = "Freeze"
	tbl_459.Moves = tbl_227
	local tbl_467 = {
		HideWeapon = true;
	}
	local tbl_891 = {}
	local tbl_857 = {}
	var1669 = "rbxassetid://15018202933"
	tbl_857.SoundId = var1669
	var1669 = 3.25
	tbl_857.Volume = var1669
	var1669 = true
	tbl_857.Looped = var1669
	tbl_891[0] = tbl_857
	tbl_467.Sounds = tbl_891
	tbl_467.Animation = 15018219692
	tbl_467.Looped = false
	tbl_467.Stun = "Freeze"
	tbl_459["You Hear That?"] = tbl_467
	local tbl_377 = {}
	local tbl_856 = {}
	local tbl_854 = {}
	var1669 = "rbxassetid://1846808425"
	tbl_854.SoundId = var1669
	var1669 = 0.75
	tbl_854.Volume = var1669
	var1669 = true
	tbl_854.Looped = var1669
	tbl_856[0] = tbl_854
	tbl_377.Sounds = tbl_856
	tbl_377.Animation = 15017959263
	tbl_377.Looped = true
	tbl_377.Stun = "Freeze"
	tbl_459.Boogie = tbl_377
	local tbl_365 = {}
	local tbl_336 = {}
	local tbl_768 = {}
	var1669 = "rbxassetid://1842612601"
	tbl_768.SoundId = var1669
	var1669 = 0.75
	tbl_768.Volume = var1669
	var1669 = true
	tbl_768.Looped = var1669
	tbl_336[0] = tbl_768
	tbl_365.Sounds = tbl_336
	tbl_365.Animation = 13874572427
	tbl_365.Looped = true
	tbl_365.Stun = "Slowed"
	tbl_459.Shuffle = tbl_365
	local tbl_853 = {}
	local tbl_852 = {}
	local tbl_502 = {}
	var1669 = "rbxassetid://15453864958"
	tbl_502.SoundId = var1669
	var1669 = 1
	tbl_502.Volume = var1669
	var1669 = true
	tbl_502.Looped = var1669
	tbl_852[0] = tbl_502
	tbl_853.Sounds = tbl_852
	local function Startup(arg1_425, arg2_318, arg3_309) -- Line 14604
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_254 = script["Salt shaker"]:Clone()
		arg3_309.bb = clone_254
		table.insert(arg1_425, clone_254)
		clone_254:SetAttribute("EmoteProperty", true)
		local class_Motor6D_15 = clone_254:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_425, class_Motor6D_15)
		class_Motor6D_15:SetAttribute("EmoteProperty", true)
		class_Motor6D_15.Part0 = arg2["Left Arm"]
		class_Motor6D_15.Name = "Handle"
		class_Motor6D_15.Part1 = clone_254.Handle
		class_Motor6D_15.Parent = arg2["Left Arm"]
		clone_254.Parent = arg2
	end
	tbl_853.Startup = Startup
	tbl_853.Keyframes = {
		claploop = function(arg1_426) -- Line 14619
			arg1_426.bb.Salt.Attachment.ParticleEmitter:Emit(5)
		end;
	}
	tbl_853.Infinite = true
	tbl_853.Animation = 15453855128
	tbl_853.Looped = true
	tbl_853.Stun = "Freeze"
	tbl_459["Salt Shaker"] = tbl_853
	local tbl_757 = {
		HideWeapon = true;
	}
	local tbl_101 = {}
	local tbl_661 = {}
	var1669 = "rbxassetid://14612768785"
	tbl_661.SoundId = var1669
	var1669 = 2
	tbl_661.Volume = var1669
	var1669 = false
	tbl_661.Looped = var1669
	tbl_101[0] = tbl_661
	tbl_757.Sounds = tbl_101
	local function Startup(arg1_427, arg2_319, arg3_310) -- Line 14640
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_153 = script.basketball:Clone()
		arg3_310.bb = clone_153
		table.insert(arg1_427, clone_153)
		clone_153:SetAttribute("EmoteProperty", true)
		local class_Motor6D_5 = clone_153:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_427, class_Motor6D_5)
		class_Motor6D_5:SetAttribute("EmoteProperty", true)
		class_Motor6D_5.Part0 = arg2["Left Arm"]
		class_Motor6D_5.Parent = arg2["Left Arm"]
		class_Motor6D_5.C0 = CFrame.new(-0.035, -1.542, -0.006)
		class_Motor6D_5.Part1 = clone_153.Handle
		clone_153.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://14612801058";
			Parent = clone_153.Handle;
			Volume = 0.4;
		}):Play()
	end
	tbl_757.Startup = Startup
	tbl_757.Keyframes = {
		["end"] = function(arg1_428) -- Line 14661
			arg1_428.bb:Destroy()
		end;
	}
	tbl_757.Animation = 14612894074
	tbl_757.Looped = false
	tbl_757.Stun = "Freeze"
	tbl_459["You Alright?"] = tbl_757
	local tbl_576 = {}
	local tbl_225 = {}
	local tbl_110 = {}
	var1669 = "rbxassetid://15092639799"
	tbl_110.SoundId = var1669
	var1669 = 1
	tbl_110.Volume = var1669
	var1669 = false
	tbl_110.Looped = var1669
	tbl_225[0] = tbl_110
	tbl_576.Sounds = tbl_225
	local function Startup(arg1_429, arg2_320, arg3_311) -- Line 14680
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_252 = script.sign:Clone()
		clone_252:SetAttribute("EmoteProperty", true)
		table.insert(arg1_429, clone_252)
		arg3_311.Handle = clone_252
		local m6d_5 = clone_252.m6d
		m6d_5:SetAttribute("EmoteProperty", true)
		table.insert(arg1_429, m6d_5)
		arg3_311.md = m6d_5
		clone_252.Name = "Handle"
		m6d_5.Part0 = arg2["Left Arm"]
		m6d_5.Part1 = clone_252.Handle
		m6d_5.Parent = arg2["Left Arm"]
		clone_252.Parent = arg2
	end
	tbl_576.Startup = Startup
	tbl_576.Keyframes = {
		claploop = function(arg1_430, arg2_321, arg3_312, arg4_54) -- Line 14691
			--[[ Upvalues[5]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var107_upvr (copied, readonly)
				[4]: random_state_upvr (copied, readonly)
				[5]: var93_upvr (copied, readonly)
			]]
			local Attachment_10 = Instance.new("Attachment")
			CollectionService_upvr:AddTag(Attachment_10, "emotestuff"..arg2.Name)
			Attachment_10.Parent = workspace.Terrain
			game:GetService("Debris"):AddItem(Attachment_10, 5)
			local PrimaryPart = arg2.PrimaryPart
			Attachment_10.WorldPosition = (PrimaryPart.CFrame + PrimaryPart.CFrame.lookVector * 10).Position + Vector3.new(0, 2, 0)
			local clone_53 = script.ImpactGlow:Clone()
			clone_53.Parent = Attachment_10
			shared.resizeparticle(clone_53, var107_upvr(1, 1.2))
			clone_53:Emit(1)
			local tbl_850 = {
				Position = Attachment_10.WorldPosition;
				Color = Color3.new(1, 1, 1);
			}
			local var3862 = 7
			local var3863
			if not var3863 and var3862 then
				var3863 = var3862
				var3862 = 1
				local var3864
			end
			if not var3863 and not var3864 then
				var3864 = 0
				var3863 = 1
			end
			tbl_850.Brightness = random_state_upvr:NextNumber(var3864, var3863)
			var3864 = 0.3
			var3863 = 0.5
			if not var3863 and var3864 then
				var3863 = var3864
				var3864 = 1
			end
			if not var3863 and not var3864 then
				var3864 = 0
				var3863 = 1
			end
			tbl_850.Fade = random_state_upvr:NextNumber(var3864, var3863)
			var3864 = 10
			var3863 = 12
			if not var3863 and var3864 then
				var3863 = var3864
				var3864 = 1
			end
			if not var3863 and not var3864 then
				var3864 = 0
				var3863 = 1
			end
			tbl_850.Range = random_state_upvr:NextNumber(var3864, var3863)
			shared.createlight(tbl_850)
			local tbl_849 = {}
			var3864 = {}
			var3863 = "rbxassetid://14616094683"
			var3864[1] = var3863
			var3864[2] = "rbxassetid://14616213070"
			var3864[3] = "rbxassetid://14616213367"
			var3864[4] = "rbxassetid://14616213705"
			var3864[5] = "rbxassetid://14616214083"
			var3863 = math.random(1, 5)
			tbl_849.SoundId = var3864[var3863]
			tbl_849.Parent = Attachment_10
			tbl_849.Volume = 0.5
			var93_upvr(tbl_849):Play()
		end;
		["end"] = function(arg1_431, arg2_322, arg3_313) -- Line 14727
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			local sign = arg1_431.Handle.sign
			game:GetService("Debris"):AddItem(sign, 5)
			arg1_431.Handle.Handle.sign:Destroy()
			sign.Parent = workspace.Thrown
			TweenService_upvr:Create(sign, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = Vector3.new();
			}):Play()
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.MaxForce = Vector3.new(40000, 40000, 40000)
			BodyVelocity.Velocity = arg2.PrimaryPart.CFrame.RightVector * -20
			BodyVelocity.Velocity += Vector3.new(0, 8, 0)
			BodyVelocity.Parent = sign
			game:GetService("Debris"):AddItem(BodyVelocity, 0.15)
		end;
	}
	tbl_576.Animation = 15092657164
	tbl_576.Looped = false
	tbl_576.Stun = "Freeze"
	tbl_459.Guilty = tbl_576
	local tbl_84 = {}
	local tbl_698 = {}
	local tbl_848 = {}
	var1669 = "rbxassetid://15438974600"
	tbl_848.SoundId = var1669
	var1669 = 1
	tbl_848.Volume = var1669
	var1669 = false
	tbl_848.Looped = var1669
	tbl_698[0] = tbl_848
	tbl_84.Sounds = tbl_698
	local function Startup(arg1_432, arg2_323, arg3_314) -- Line 14759
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_250 = script.Table:Clone()
		clone_250:SetAttribute("EmoteProperty", true)
		table.insert(arg1_432, clone_250)
		arg3_314.Handle = clone_250
		local Handle_21 = clone_250.Handle
		Handle_21:SetAttribute("EmoteProperty", true)
		table.insert(arg1_432, Handle_21)
		arg3_314.md = Handle_21
		clone_250.Name = "Handle"
		Handle_21.Part0 = arg2.HumanoidRootPart
		Handle_21.Part1 = clone_250
		Handle_21.Parent = arg2.HumanoidRootPart
		clone_250.Parent = arg2
	end
	tbl_84.Startup = Startup
	tbl_84.Keyframes = {
		go = function(arg1_433, arg2_324, arg3_315, arg4_55) -- Line 14770
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			local clone_249_upvr = script.Table:Clone()
			CollectionService_upvr:AddTag(clone_249_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_249_upvr, 5)
			clone_249_upvr.CanCollide = true
			clone_249_upvr.CanTouch = true
			clone_249_upvr.CanQuery = false
			clone_249_upvr.Massless = false
			clone_249_upvr.CollisionGroup = "nocol"
			clone_249_upvr.CFrame = arg1_433.Handle.CFrame
			arg1_433.Handle:Destroy()
			clone_249_upvr.Parent = workspace.Thrown
			local Attachment_5 = Instance.new("Attachment", clone_249_upvr)
			Attachment_5.Position = Vector3.new(0, -0.25, 0.25)
			local LinearVelocity = Instance.new("LinearVelocity", Attachment_5)
			LinearVelocity.MaxForce = 40000
			LinearVelocity.VectorVelocity = arg2.PrimaryPart.CFrame.lookVector * 35 + Vector3.new(0, 60, 0)
			LinearVelocity.Attachment0 = Attachment_5
			game:GetService("Debris"):AddItem(LinearVelocity, 0.15)
			clone_249_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			local var3881_upvw = 0
			local any_Connect_result1_upvw = clone_249_upvr.Touched:Connect(function(arg1_434) -- Line 14793
				--[[ Upvalues[3]:
					[1]: var3881_upvw (read and write)
					[2]: clone_249_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_434:IsDescendantOf(workspace.Live) or tick() - var3881_upvw < 0.075 then
				else
					if math.abs(clone_249_upvr.Velocity.Y) < 2 then return end
					var3881_upvw = math.huge
					var93_upvr({
						SoundId = "rbxassetid://15438974803";
						Parent = clone_249_upvr;
						Volume = 2;
					}):Play()
					var93_upvr({
						SoundId = "rbxassetid://9120957636";
						Parent = clone_249_upvr;
						Volume = 1;
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 14814
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw (read and write)
				]]
				any_Connect_result1_upvw:Disconnect()
			end)
		end;
	}
	tbl_84.Animation = 15438946008
	tbl_84.Looped = false
	tbl_84.Stun = "Freeze"
	tbl_459["Table Flip"] = tbl_84
	local tbl_844 = {
		Sounds = {};
	}
	local function Startup(arg1_435, arg2_325, arg3_316) -- Line 14829
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_247 = script.Letter:Clone()
		clone_247:SetAttribute("EmoteProperty", true)
		table.insert(arg1_435, clone_247)
		arg3_316.Handle = clone_247
		local Handle_25 = clone_247.Handle
		Handle_25:SetAttribute("EmoteProperty", true)
		table.insert(arg1_435, Handle_25)
		arg3_316.md = Handle_25
		clone_247.Name = "Handle"
		Handle_25.Part0 = arg2["Right Arm"]
		Handle_25.Part1 = clone_247
		Handle_25.Parent = arg2["Right Arm"]
		clone_247.Parent = arg2
	end
	tbl_844.Startup = Startup
	tbl_844.Keyframes = {
		clap = function(arg1_436) -- Line 14840
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: var93_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(arg1_436.Handle.Part.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				Scale = Vector3.new(0.23999, 0.23999, 0.23999);
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://9117842014";
				Parent = arg1_436.Handle.Part;
				Volume = 0.25;
			}):Play()
		end;
		claploop = function(arg1_437, arg2_326, arg3_317, arg4_56) -- Line 14852
			--[[ Upvalues[6]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var93_upvr (copied, readonly)
				[4]: random_state_upvr (copied, readonly)
				[5]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[6]: TweenService_upvr (copied, readonly)
			]]
			local clone_245_upvr = script.Letter.Part:Clone()
			CollectionService_upvr:AddTag(clone_245_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_245_upvr, 5)
			clone_245_upvr.CanCollide = true
			clone_245_upvr.CanTouch = true
			clone_245_upvr.CanQuery = false
			clone_245_upvr.Massless = false
			clone_245_upvr.CollisionGroup = "nocol"
			clone_245_upvr.CFrame = arg1_437.Handle.Part.CFrame
			arg1_437.Handle.Part.Mesh.Scale = Vector3.new()
			clone_245_upvr.Parent = workspace.Thrown
			local tbl_454 = {
				SoundId = "rbxassetid://15453510339";
				Parent = clone_245_upvr;
				Volume = 0.75;
			}
			local var3896_upvw = 0.95
			local var3897 = 1.25
			if not var3897 then
				if var3896_upvw then
					var3897 = var3896_upvw
					var3896_upvw = 1
				end
			end
			if not var3897 and not var3896_upvw then
				var3896_upvw = 0
				var3897 = 1
			end
			tbl_454.PlaybackSpeed = random_state_upvr:NextNumber(var3896_upvw, var3897)
			tbl_454.TimePosition = 0.1
			var93_upvr(tbl_454):Resume()
			local BodyVelocity_4 = Instance.new("BodyVelocity")
			BodyVelocity_4.MaxForce = Vector3.new(40000, 40000, 40000)
			local var3899 = -15
			local var3900
			if not var3900 and var3899 then
				var3900 = var3899
				var3899 = 1
				local var3901
			end
			if not var3900 and not var3901 then
				var3901 = 0
				var3900 = 1
			end
			var3897 = arg2.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(random_state_upvr:NextNumber(var3901, var3900)), 0)
			var3896_upvw = var3897.lookVector
			local var3902 = 30
			local var3903
			if not var3903 and var3902 then
				var3903 = var3902
				var3902 = 1
				local var3914
			end
			if not var3903 and not var3914 then
				var3914 = 0
				var3903 = 1
			end
			var3901 = var3903
			var3897 = random_state_upvr:NextNumber(var3914, var3901)
			var3897 = 0
			var3903 = 5
			local var3905
			if not var3905 and var3903 then
				var3905 = var3903
				var3903 = 1
			end
			if not var3905 and not var3903 then
				var3903 = 0
				var3905 = 1
			end
			var3901 = var3903
			var3900 = var3905
			var3914 = random_state_upvr:NextNumber(var3901, var3900)
			var3903 = 0
			var3896_upvw = Vector3.new(var3897, var3914, var3903)
			BodyVelocity_4.Velocity = var3896_upvw * var3897 + var3896_upvw
			BodyVelocity_4.Parent = clone_245_upvr
			var3896_upvw = "Debris"
			var3896_upvw = BodyVelocity_4
			var3897 = 0.15
			game:GetService(var3896_upvw):AddItem(var3896_upvw, var3897)
			var3896_upvw = any_GetPlayerFromCharacter_result1_2_upvr
			clone_245_upvr:SetNetworkOwner(var3896_upvw)
			var3896_upvw = clone_245_upvr.Touched
			local tick_result1_upvw = tick()
			local Mesh_upvr = clone_245_upvr.Mesh
			function var3914(arg1_438) -- Line 14883
				--[[ Upvalues[6]:
					[1]: tick_result1_upvw (read and write)
					[2]: clone_245_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
					[4]: random_state_upvr (copied, readonly)
					[5]: TweenService_upvr (copied, readonly)
					[6]: Mesh_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var3909
				if arg1_438:IsDescendantOf(workspace.Live) or tick() - tick_result1_upvw < 0.075 then
				else
					var3909 = clone_245_upvr
					if math.abs(var3909.Velocity.Y) < 2 then return end
					tick_result1_upvw = math.huge
					local tbl_842 = {
						SoundId = "rbxassetid://9118172318";
						Parent = clone_245_upvr;
						Volume = 0.5;
					}
					var3909 = 1
					if not 1.5 then
						if var3909 then
							var3909 = 1
						end
					end
					if not var3909 then
						if not var3909 then
							var3909 = 0
						end
					end
					tbl_842.PlaybackSpeed = random_state_upvr:NextNumber(var3909, 1)
					var93_upvr(tbl_842):Play()
					task.delay(0.75, function() -- Line 14899
						--[[ Upvalues[3]:
							[1]: TweenService_upvr (copied, readonly)
							[2]: Mesh_upvr (copied, readonly)
							[3]: clone_245_upvr (copied, readonly)
						]]
						TweenService_upvr:Create(Mesh_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
							Scale = Vector3.new(0, 0, 0);
						}):Play()
						task.delay(0.5, function() -- Line 14903
							--[[ Upvalues[1]:
								[1]: clone_245_upvr (copied, readonly)
							]]
							clone_245_upvr:Destroy()
						end)
					end)
				end
			end
			var3896_upvw = var3896_upvw:Connect(var3914)
			var3896_upvw = task.delay
			var3897 = 1
			function var3914() -- Line 14909
				--[[ Upvalues[1]:
					[1]: var3896_upvw (read and write)
				]]
				var3896_upvw:Disconnect()
			end
			var3896_upvw(var3897, var3914)
		end;
	}
	tbl_844.Infinite = true
	tbl_844.Animation = 15453677841
	tbl_844.Looped = true
	tbl_844.Stun = "Slowed"
	tbl_459.Ls = tbl_844
	local tbl_509 = {
		HideWeapon = true;
	}
	local tbl_1097 = {}
	local tbl_281 = {}
	var1669 = "rbxassetid://14615768920"
	tbl_281.SoundId = var1669
	var1669 = 1
	tbl_281.Volume = var1669
	var1669 = false
	tbl_281.Looped = var1669
	tbl_1097[0] = tbl_281
	tbl_509.Sounds = tbl_1097
	local function Startup(arg1_439, arg2_327, arg3_318) -- Line 14931
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_74 = script.basketball:Clone()
		arg3_318.bb = clone_74
		table.insert(arg1_439, clone_74)
		clone_74:SetAttribute("EmoteProperty", true)
		local class_Motor6D_28 = clone_74:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_439, class_Motor6D_28)
		class_Motor6D_28:SetAttribute("EmoteProperty", true)
		class_Motor6D_28.Part0 = arg2.PrimaryPart
		class_Motor6D_28.Name = "Handle"
		class_Motor6D_28.Parent = arg2.PrimaryPart
		class_Motor6D_28.C0 = CFrame.new(-1.5, -1.375, 0)
		class_Motor6D_28.Part1 = clone_74.Handle
		clone_74.Parent = arg2
	end
	tbl_509.Startup = Startup
	tbl_509.Keyframes = {
		jump = function(arg1_440, arg2_328, arg3_319, arg4_57) -- Line 14947
			--[[ Upvalues[5]:
				[1]: random_state_upvr (copied, readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: var107_upvr (copied, readonly)
				[5]: var93_upvr (copied, readonly)
			]]
			task.spawn(function() -- Line 14948
				--[[ Upvalues[6]:
					[1]: random_state_upvr (copied, readonly)
					[2]: arg4_57 (readonly)
					[3]: CollectionService_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: var107_upvr (copied, readonly)
					[6]: var93_upvr (copied, readonly)
				]]
				local var3925 = 3
				local var3926
				if not var3926 and var3925 then
					var3926 = var3925
					var3925 = 1
					local var3927
				end
				if not var3926 and not var3927 then
					var3927 = 0
					var3926 = 1
				end
				for _ = 1, random_state_upvr:NextInteger(var3927, var3926) do
					var3926 = arg4_57
					var3927 = var3926.interrupted
					if var3927 then return end
					var3927 = Instance.new
					var3926 = "Attachment"
					var3927 = var3927(var3926)
					var3926 = CollectionService_upvr:AddTag
					var3926(var3927, "emotestuff"..arg2.Name)
					var3926 = arg2.PrimaryPart
					var3927.Parent = var3926
					var3926 = game:GetService("Debris"):AddItem
					var3926(var3927, 5)
					var3926 = arg2.PrimaryPart
					local var3928 = -10
					local var3929
					if not var3929 and var3928 then
						var3929 = var3928
						var3928 = 1
						local var3930
					end
					if not var3929 and not var3930 then
						var3930 = 0
						var3929 = 1
					end
					var3930 = 0
					var3929 = var107_upvr(-10, 10)
					var3929 = var3926.Position + Vector3.new(random_state_upvr:NextNumber(var3930, var3929), var3930, var3929) - var3926.Position
					var3930 = var3929.Unit
					var3927.WorldPosition = var3926.Position + var3930 * 10
					var3929 = 1
					local var3931
					if not var3931 and var3929 then
						var3931 = var3929
						var3929 = 1
					end
					if not var3931 and not var3929 then
						var3929 = 0
						var3931 = 1
					end
					var3930 = random_state_upvr:NextNumber(var3929, var3931)
					var3929 = 0
					var3927.WorldPosition += Vector3.new(0, var3930, var3929)
					local clone_242 = script.ImpactGlow:Clone()
					clone_242.Parent = var3927
					var3930 = var107_upvr
					var3929 = 1
					var3931 = 1.2
					var3930 = var3930(var3929, var3931)
					shared.resizeparticle(clone_242, var3930)
					var3930 = 1
					clone_242:Emit(var3930)
					local tbl_2 = {}
					var3930 = var3927.WorldPosition
					tbl_2.Position = var3930
					var3930 = Color3.new
					var3929 = 1
					var3931 = 1
					var3930 = var3930(var3929, var3931, 1)
					tbl_2.Color = var3930
					var3929 = 7
					var3931 = 10
					if not var3931 and var3929 then
						var3931 = var3929
						var3929 = 1
					end
					if not var3931 and not var3929 then
						var3929 = 0
						var3931 = 1
					end
					var3930 = random_state_upvr:NextNumber(var3929, var3931)
					tbl_2.Brightness = var3930
					var3929 = 0.3
					var3931 = 0.5
					if not var3931 and var3929 then
						var3931 = var3929
						var3929 = 1
					end
					if not var3931 and not var3929 then
						var3929 = 0
						var3931 = 1
					end
					var3930 = random_state_upvr:NextNumber(var3929, var3931)
					tbl_2.Fade = var3930
					var3929 = 10
					var3931 = 12
					if not var3931 and var3929 then
						var3931 = var3929
						var3929 = 1
					end
					if not var3931 and not var3929 then
						var3929 = 0
						var3931 = 1
					end
					var3930 = random_state_upvr:NextNumber(var3929, var3931)
					tbl_2.Range = var3930
					shared.createlight(tbl_2)
					local tbl_837 = {}
					var3929 = {}
					var3931 = "rbxassetid://14616094683"
					var3929[1] = var3931
					var3929[2] = "rbxassetid://14616213070"
					var3929[3] = "rbxassetid://14616213367"
					var3929[4] = "rbxassetid://14616213705"
					var3929[5] = "rbxassetid://14616214083"
					var3931 = math.random(1, 5)
					var3930 = var3929[var3931]
					tbl_837.SoundId = var3930
					tbl_837.Parent = var3927
					var3930 = 0.5
					tbl_837.Volume = var3930
					var93_upvr(tbl_837):Play()
					var3930 = 0
					var3929 = 0.175
					task.wait(var107_upvr(var3930, var3929))
				end
			end)
		end;
		throw = function(arg1_441, arg2_329, arg3_320, arg4_58) -- Line 14992
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			arg1_441.bb["B-Ball"].Transparency = 1
			local clone_241_upvr = script.basketball["B-Ball"]:Clone()
			CollectionService_upvr:AddTag(clone_241_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_241_upvr, 5)
			clone_241_upvr.CanCollide = true
			clone_241_upvr.CanTouch = true
			clone_241_upvr.CanQuery = false
			clone_241_upvr.Massless = false
			clone_241_upvr.CollisionGroup = "nocol"
			clone_241_upvr.CFrame = arg1_441.bb["B-Ball"].CFrame
			clone_241_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_241_upvr.Parent = workspace.Thrown
			clone_241_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_241_upvr.Velocity = ((arg2.PrimaryPart.CFrame + arg2.PrimaryPart.CFrame.lookVector * 50).Position - arg2.PrimaryPart.CFrame * Vector3.new(0, 0, -2) - 0.5 * Vector3.new(0, -workspace.Gravity, 0) * 1 * 1) / 1
			local var3938_upvw = 0
			local any_Connect_result1_upvw_5 = clone_241_upvr.Touched:Connect(function(arg1_442) -- Line 15014
				--[[ Upvalues[3]:
					[1]: var3938_upvw (read and write)
					[2]: clone_241_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_442:IsDescendantOf(workspace.Live) or tick() - var3938_upvw < 0.075 then
				else
					if math.abs(clone_241_upvr.Velocity.Y) < 4 then return end
					var3938_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://14404844095";
						Parent = clone_241_upvr;
						Volume = 2;
						PlaybackSpeed = Random.new():NextNumber(0.9, 1.1);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 15030
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_5 (read and write)
				]]
				any_Connect_result1_upvw_5:Disconnect()
			end)
		end;
	}
	tbl_509.Animation = 14616272668
	tbl_509.Fix = true
	tbl_509.Looped = false
	tbl_509.Stun = "Freeze"
	tbl_459["And One"] = tbl_509
	local tbl_613 = {
		HideWeapon = true;
	}
	local tbl_215 = {}
	local tbl_260 = {}
	var1669 = "rbxassetid://14613168242"
	tbl_260.SoundId = var1669
	var1669 = 1
	tbl_260.Volume = var1669
	var1669 = false
	tbl_260.Looped = var1669
	tbl_215[0] = tbl_260
	tbl_613.Sounds = tbl_215
	local function Startup(arg1_443, arg2_330, arg3_321) -- Line 15052
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: TweenService_upvr (copied, readonly)
		]]
		local clone_239 = script.Briefcase:Clone()
		arg3_321.bb = clone_239
		table.insert(arg1_443, clone_239)
		clone_239:SetAttribute("EmoteProperty", true)
		local M6D_2 = clone_239.M6D
		table.insert(arg1_443, M6D_2)
		M6D_2:SetAttribute("EmoteProperty", true)
		M6D_2.Part0 = arg2.PrimaryPart
		M6D_2.Name = "Root"
		M6D_2.Part1 = clone_239.Root
		M6D_2.Parent = arg2.PrimaryPart
		clone_239.Parent = arg2
		local var93_upvr_result1_24 = var93_upvr({
			SoundId = "rbxassetid://9042544497";
			Volume = 0;
			TimePosition = 1.15;
			Looped = false;
			Parent = arg2.PrimaryPart;
		})
		var93_upvr_result1_24:SetAttribute("EmoteProperty", true)
		var93_upvr_result1_24:Resume()
		TweenService_upvr:Create(var93_upvr_result1_24, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Volume = 0.3;
		}):Play()
	end
	tbl_613.Startup = Startup
	tbl_613.Keyframes = {
		["end"] = function(arg1_444) -- Line 15079
			arg1_444.bb:Destroy()
		end;
	}
	tbl_613.Animation = 14613239786
	tbl_613.Looped = false
	tbl_613.Stun = "Slowed"
	tbl_459.Millionare = tbl_613
	local tbl_793 = {
		HideWeapon = true;
	}
	local tbl_834 = {}
	local tbl_833 = {}
	var1669 = "rbxassetid://14399836732"
	tbl_833.SoundId = var1669
	var1669 = 1
	tbl_833.Volume = var1669
	var1669 = false
	tbl_833.Looped = var1669
	tbl_834[0] = tbl_833
	tbl_793.Sounds = tbl_834
	tbl_793.Keyframes = {
		slam = function(arg1_445) -- Line 15100
			--[[ Upvalues[4]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
				[4]: var93_upvr (copied, readonly)
			]]
			local clone_237_upvr = script.basketball["B-Ball"]:Clone()
			CollectionService_upvr:AddTag(clone_237_upvr, "emotestuff"..arg2.Name)
			game:GetService("Debris"):AddItem(clone_237_upvr, 5)
			clone_237_upvr.CanCollide = true
			clone_237_upvr.CanTouch = true
			clone_237_upvr.CanQuery = false
			clone_237_upvr.Massless = false
			clone_237_upvr.CollisionGroup = "nocol"
			clone_237_upvr.CFrame = arg1_445.bb["B-Ball"].CFrame
			clone_237_upvr.Velocity = Vector3.new(0, -75, 0)
			clone_237_upvr.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_237_upvr.Parent = workspace.Thrown
			clone_237_upvr:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			local var3959_upvw = 0
			local any_Connect_result1_upvw_8 = clone_237_upvr.Touched:Connect(function(arg1_446) -- Line 15116
				--[[ Upvalues[3]:
					[1]: var3959_upvw (read and write)
					[2]: clone_237_upvr (readonly)
					[3]: var93_upvr (copied, readonly)
				]]
				if arg1_446:IsDescendantOf(workspace.Live) or tick() - var3959_upvw < 0.075 then
				else
					if math.abs(clone_237_upvr.Velocity.Y) < 4 then return end
					var3959_upvw = tick()
					var93_upvr({
						SoundId = "rbxassetid://14404844095";
						Parent = clone_237_upvr;
						Volume = 2;
						PlaybackSpeed = Random.new():NextNumber(0.9, 1.1);
					}):Play()
				end
			end)
			task.delay(5, function() -- Line 15132
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvw_8 (read and write)
				]]
				any_Connect_result1_upvw_8:Disconnect()
			end)
			arg1_445.bb:Destroy()
			var93_upvr({
				SoundId = "rbxassetid://14405165735";
				Parent = arg1_445.hoop;
				Volume = 1;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://14404816151";
				Parent = arg2:FindFirstChild("Torso");
				Volume = 2;
			}):Play()
		end;
	}
	local function Startup(arg1_447, arg2_331, arg3_322) -- Line 15151
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_138 = script.basketball:Clone()
		arg3_322.bb = clone_138
		table.insert(arg1_447, clone_138)
		clone_138:SetAttribute("EmoteProperty", true)
		local clone_236 = script.hoop:Clone()
		local Weld_13 = Instance.new("Weld")
		Weld_13.Part0 = arg2.PrimaryPart
		Weld_13.Part1 = clone_236.Main
		Weld_13.Parent = clone_236
		Weld_13.C0 = CFrame.new(0.0489730835, 5.62188959, -4.88491774, -2.98023224e-08, 1.49011612e-08, 0.99999994, 0, 1, 1.49011612e-08, -1, 0, 2.98023224e-08)
		clone_236:SetAttribute("EmoteProperty", true)
		table.insert(arg1_447, clone_236)
		clone_236.Parent = arg2
		arg3_322.hoop = clone_236.Main
		local class_Motor6D_22 = clone_138:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_447, class_Motor6D_22)
		class_Motor6D_22:SetAttribute("EmoteProperty", true)
		class_Motor6D_22.Part0 = arg2["Left Arm"]
		class_Motor6D_22.Parent = arg2["Left Arm"]
		class_Motor6D_22.C0 = CFrame.new(0, -1.375, 0)
		class_Motor6D_22.Part1 = clone_138.Handle
		clone_138.Parent = arg2
	end
	tbl_793.Startup = Startup
	tbl_793.Fix = true
	tbl_793.Animation = 14403375793
	tbl_793.Looped = false
	tbl_793.Stun = "Freeze"
	tbl_459.RAHHH = tbl_793
	local tbl_830 = {
		HideWeapon = true;
	}
	local tbl_814 = {}
	local tbl_829 = {}
	var1669 = "rbxassetid://14406939515"
	tbl_829.SoundId = var1669
	var1669 = 2
	tbl_829.Volume = var1669
	var1669 = false
	tbl_829.Looped = var1669
	tbl_814[0] = tbl_829
	tbl_830.Sounds = tbl_814
	tbl_830.Keyframes = {
		["end"] = function(arg1_448) -- Line 15192
			arg1_448.pipe.Transparency = 1
		end;
	}
	local function Startup(arg1_449, arg2_332, arg3_323) -- Line 15197
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_65 = script["metal pipe"]:Clone()
		local Part_2 = clone_65.Part
		Part_2.Part0 = arg2["Right Arm"]
		Part_2.Part1 = clone_65["Metal pipe"].Part
		arg3_323.pipe = clone_65["Metal pipe"]
		for _, v_101 in pairs({clone_65, Part_2}) do
			v_101:SetAttribute("EmoteProperty", true)
			table.insert(arg1_449, v_101)
		end
		Part_2.Parent = arg2["Right Arm"]
		clone_65.Parent = arg2
	end
	tbl_830.Startup = Startup
	tbl_830.Animation = 14406991505
	tbl_830.Looped = false
	tbl_830.Stun = "Freeze"
	tbl_459["Pipe Down"] = tbl_830
	local tbl_97 = {
		Keyframes = {
			freeze = function(arg1_450, arg2_333, arg3_324) -- Line 15219
				arg3_324:AdjustSpeed(0)
			end;
		};
	}
	local function Startup(arg1_451, arg2_334, arg3_325) -- Line 15224
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_290 = script.Weight:Clone()
		clone_290:SetAttribute("EmoteProperty", true)
		table.insert(arg1_451, clone_290)
		arg3_325.Handle = clone_290
		local class_Motor6D_21 = clone_290:FindFirstChildOfClass("Motor6D")
		class_Motor6D_21:SetAttribute("EmoteProperty", true)
		table.insert(arg1_451, class_Motor6D_21)
		arg3_325.md = class_Motor6D_21
		class_Motor6D_21.Name = "Handle"
		class_Motor6D_21.Part0 = arg2["Left Arm"]
		class_Motor6D_21.Part1 = clone_290.Handle
		class_Motor6D_21.Parent = arg2["Left Arm"]
		clone_290.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://15674264465";
			Parent = arg2.Torso;
			Volume = 2;
		}):Play()
	end
	tbl_97.Startup = Startup
	tbl_97.HideWeapon = true
	tbl_97.Animation = 15674270929
	tbl_97.Looped = false
	tbl_97.Stun = "Freeze"
	tbl_459.Weight = tbl_97
	local tbl_341 = {
		Keyframes = {
			coins = function(arg1_452, arg2_335, arg3_326) -- Line 15248
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				game.ReplicatedStorage.Replication:FireAllClients({
					Effect = "Coins";
					root = arg2.PrimaryPart;
				})
			end;
		};
	}
	local function Startup(arg1_453, arg2_336, arg3_327) -- Line 15256
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_324 = script.TakeMoney["Meshes/Card_model"]:Clone()
		clone_324:SetAttribute("EmoteProperty", true)
		table.insert(arg1_453, clone_324)
		arg3_327.Handle = clone_324
		local class_Motor6D_20 = clone_324:FindFirstChildOfClass("Motor6D")
		class_Motor6D_20:SetAttribute("EmoteProperty", true)
		table.insert(arg1_453, class_Motor6D_20)
		arg3_327.md = class_Motor6D_20
		class_Motor6D_20.Name = "Meshes/Card_model"
		class_Motor6D_20.Part0 = arg2["Left Arm"]
		class_Motor6D_20.Part1 = clone_324
		class_Motor6D_20.Parent = arg2["Left Arm"]
		clone_324.Parent = arg2
		local clone_163_upvr = script.TakeMoney.Counter:Clone()
		clone_163_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_453, clone_163_upvr)
		clone_163_upvr.Name = "asjdaiosdjasjd"
		local Weld_17 = Instance.new("Weld")
		Weld_17.Part0 = arg2.PrimaryPart
		Weld_17.Part1 = clone_163_upvr.Bottom
		Weld_17.C0 = CFrame.new(0.320178986, -1.92516398, -2.43821144, -2.60999286e-07, 0.00000378694926, -1.00000024, 0.00000402372007, 1.00000262, 0.00000125370036, 1.00000143, -0.00000138620999, -9.6974091e-08)
		Weld_17.Parent = clone_163_upvr.Bottom
		clone_163_upvr.Parent = arg2
		task.delay(0, function() -- Line 15273
			--[[ Upvalues[1]:
				[1]: clone_163_upvr (readonly)
			]]
			for _, v_102 in pairs(clone_163_upvr:GetChildren()) do
				v_102.CollisionGroup = "nocol"
			end
		end)
	end
	tbl_341.Startup = Startup
	local tbl_823 = {}
	local tbl_798 = {}
	var1669 = "rbxassetid://16593642774"
	tbl_798.SoundId = var1669
	var1669 = 2
	tbl_798.Volume = var1669
	var1669 = false
	tbl_798.Looped = var1669
	tbl_823[0] = tbl_798
	tbl_341.Sounds = tbl_823
	tbl_341.Animation = 16593648830
	tbl_341.Looped = false
	tbl_341.Stun = "Freeze"
	tbl_459["Take My Money"] = tbl_341
	local tbl_1073 = {
		Keyframes = {
			freeze = function(arg1_454, arg2_337, arg3_328) -- Line 15295
				arg3_328:AdjustSpeed(0)
			end;
		};
	}
	local function Startup(arg1_455, arg2_338, arg3_329) -- Line 15300
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_21 = script.trashbag:Clone()
		clone_21:SetAttribute("EmoteProperty", true)
		table.insert(arg1_455, clone_21)
		arg3_329.Handle = clone_21
		local class_Motor6D_19 = clone_21:FindFirstChildOfClass("Motor6D")
		class_Motor6D_19:SetAttribute("EmoteProperty", true)
		table.insert(arg1_455, class_Motor6D_19)
		arg3_329.md = class_Motor6D_19
		class_Motor6D_19.Name = "Sphere"
		class_Motor6D_19.Part0 = arg2.PrimaryPart
		class_Motor6D_19.Part1 = clone_21.Sphere
		class_Motor6D_19.Parent = arg2.PrimaryPart
		clone_21.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://14498158970";
			Parent = clone_21.Sphere;
			Volume = 1;
		}):Play()
	end
	tbl_1073.Startup = Startup
	tbl_1073.Animation = 14498295360
	tbl_1073.Looped = false
	tbl_1073.Stun = "Freeze"
	tbl_459.Garbage = tbl_1073
	local tbl_821 = {}
	local tbl_933 = {}
	local tbl_819 = {}
	var1669 = "rbxassetid://14498550793"
	tbl_819.SoundId = var1669
	var1669 = 0.75
	tbl_819.Volume = var1669
	var1669 = false
	tbl_819.Looped = var1669
	tbl_933[0] = tbl_819
	tbl_821.Sounds = tbl_933
	tbl_821.Keyframes = {
		deaf = function(arg1_456, arg2_339) -- Line 15331
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local tbl_815 = {
				Name = "#Deafened";
			}
			tbl_815.Parent = arg2
			local shared_cfolder_result1_17 = shared.cfolder(tbl_815)
			shared_cfolder_result1_17:SetAttribute("EmoteProperty", true)
			table.insert(arg2_339, shared_cfolder_result1_17)
		end;
		freeze = function(arg1_457, arg2_340, arg3_330) -- Line 15340
			arg3_330:AdjustSpeed(0)
		end;
	}
	local function Startup(arg1_458, arg2_341, arg3_331) -- Line 15345
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local Silence = script.Silence
		local clone_231 = Silence["Earplug Handle"]:Clone()
		clone_231:SetAttribute("EmoteProperty", true)
		table.insert(arg1_458, clone_231)
		arg3_331.Handle = clone_231
		local var4020 = clone_231[clone_231.Name]
		var4020:SetAttribute("EmoteProperty", true)
		table.insert(arg1_458, var4020)
		arg3_331.md = var4020
		var4020.Name = "Handle"
		var4020.Part0 = arg2["Right Arm"]
		var4020.Part1 = clone_231
		var4020.Parent = arg2["Right Arm"]
		clone_231.Parent = arg2
		local clone_229 = Silence["Earplug Handle2"]:Clone()
		clone_229:SetAttribute("EmoteProperty", true)
		table.insert(arg1_458, clone_229)
		arg3_331.Handle = clone_229
		local var4022 = clone_229[clone_229.Name]
		var4022:SetAttribute("EmoteProperty", true)
		table.insert(arg1_458, var4022)
		arg3_331.md = var4022
		var4022.Name = "Handle"
		var4022.Part0 = arg2["Left Arm"]
		var4022.Part1 = clone_229
		var4022.Parent = arg2["Left Arm"]
		clone_229.Parent = arg2
	end
	tbl_821.Startup = Startup
	tbl_821.Animation = 14498033288
	tbl_821.Looped = false
	tbl_821.Stun = "Slowed"
	tbl_459.Silence = tbl_821
	local tbl_813 = {
		HideWeapon = true;
	}
	local tbl_659 = {}
	local tbl_811 = {}
	var1669 = "rbxassetid://14406845410"
	tbl_811.SoundId = var1669
	var1669 = 2
	tbl_811.Volume = var1669
	var1669 = false
	tbl_811.Looped = var1669
	tbl_659[0] = tbl_811
	tbl_813.Sounds = tbl_659
	tbl_813.Keyframes = {
		appear = function(arg1_459) -- Line 15380
			for _, v_103 in pairs(arg1_459.fries:GetChildren()) do
				if v_103.Name ~= "primary" then
					v_103.Transparency = 0
				end
			end
		end;
		freeze = function(arg1_460, arg2_342, arg3_332) -- Line 15388
			arg3_332:AdjustSpeed(0)
		end;
		gone = function(arg1_461) -- Line 15392
			arg1_461.box:Destroy()
		end;
	}
	local function Startup(arg1_462, arg2_343, arg3_333) -- Line 15398
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_154 = script.Fries.Fries:Clone()
		clone_154:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_154)
		arg3_333.fries = clone_154
		local clone_82 = script.Fries.primary:Clone()
		clone_82:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_82)
		clone_82.Part0 = arg2.PrimaryPart
		clone_82.Part1 = clone_154.primary
		clone_82.Parent = arg2.PrimaryPart
		clone_154.Parent = arg2
		local clone_339 = script.Fries.Model:Clone()
		clone_339:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_339)
		local clone_227 = script.Fries["primary part"]:Clone()
		clone_227:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_227)
		clone_227.Part0 = arg2["Right Arm"]
		clone_227.Part1 = clone_339["primary part"]
		clone_227.Parent = arg2["Right Arm"]
		clone_339.Parent = arg2
		arg3_333.box = clone_339
		local clone_103 = script.Fries.Chair:Clone()
		clone_103:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_103)
		local Weld_16 = Instance.new("Weld")
		Weld_16.Part0 = arg2.PrimaryPart
		Weld_16.Part1 = clone_103
		Weld_16.C0 = CFrame.new(-0.0262451172, -0.944903374, 0.946708679, 1, 0.00000404431057, -0.00000105499259, -0.00000404430102, 1, 0.00000892530261, 0.00000105502875, -0.00000892529806, 1)
		Weld_16.Parent = clone_103
		clone_103.Parent = arg2
		local clone_17 = script.Fries.Table:Clone()
		clone_17:SetAttribute("EmoteProperty", true)
		table.insert(arg1_462, clone_17)
		local Weld_6 = Instance.new("Weld")
		Weld_6.Part0 = arg2.PrimaryPart
		Weld_6.Part1 = clone_17
		Weld_6.C0 = CFrame.new(-0.0000152587891, -1.70007861, -2.60010529, 1, 0.00000404431057, -0.00000105499259, -0.00000404430102, 1, 0.00000892530261, 0.00000105502875, -0.00000892529806, 1)
		Weld_6.Parent = clone_17
		clone_17.Parent = arg2
	end
	tbl_813.Startup = Startup
	tbl_813.Animation = 14406679583
	tbl_813.Looped = false
	tbl_813.Stun = "Freeze"
	tbl_459["Fresh Fries"] = tbl_813
	local tbl_488 = {
		HideWeapon = true;
	}
	local tbl_207 = {}
	local tbl_240 = {}
	var1669 = "rbxassetid://14056281965"
	tbl_240.SoundId = var1669
	var1669 = 3.5
	tbl_240.Volume = var1669
	var1669 = false
	tbl_240.Looped = var1669
	tbl_207[0] = tbl_240
	tbl_488.Sounds = tbl_207
	tbl_488.Keyframes = {
		gone = function(arg1_463) -- Line 15452
			for _, v_104 in pairs(arg1_463) do
				v_104:Destroy()
			end
		end;
	}
	local function Startup(arg1_464, arg2_344, arg3_334) -- Line 15459
		--[[ Upvalues[3]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: TweenService_upvr (copied, readonly)
		]]
		local var93_upvr_result1_23 = var93_upvr({
			SoundId = "rbxassetid://1837644729";
			Volume = 0;
			TimePosition = 1.1;
			Looped = false;
			Parent = arg2.PrimaryPart;
		})
		var93_upvr_result1_23:SetAttribute("EmoteProperty", true)
		var93_upvr_result1_23:Resume()
		TweenService_upvr:Create(var93_upvr_result1_23, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Volume = 0.75;
		}):Play()
		local clone_61 = script.Money.Handle:Clone()
		clone_61:SetAttribute("EmoteProperty", true)
		table.insert(arg1_464, clone_61)
		arg3_334.Handle = clone_61
		local clone_135 = script.Money.M6D:Clone()
		clone_135:SetAttribute("EmoteProperty", true)
		table.insert(arg1_464, clone_135)
		arg3_334.md = clone_135
		clone_135.Name = "Handle"
		clone_135.Part0 = arg2["Left Arm"]
		clone_135.Part1 = clone_61
		clone_135.Parent = arg2["Left Arm"]
		clone_61.Parent = arg2
	end
	tbl_488.Startup = Startup
	tbl_488.Animation = 14056341330
	tbl_488.Looped = false
	tbl_488.Stun = "Slowed"
	tbl_459.Spread = tbl_488
	local tbl_231 = {}
	local tbl_744 = {}
	local tbl_184 = {}
	var1669 = "rbxassetid://14357786890"
	tbl_184.SoundId = var1669
	var1669 = 1.25
	tbl_184.Volume = var1669
	var1669 = true
	tbl_184.Looped = var1669
	tbl_744[0] = tbl_184
	tbl_231.Sounds = tbl_744
	local function Startup(arg1_465) -- Line 15496
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_224 = script.Keyboard.Handle:Clone()
		clone_224:SetAttribute("EmoteProperty", true)
		table.insert(arg1_465, clone_224)
		local clone_9 = script.Keyboard.M6D:Clone()
		clone_9:SetAttribute("EmoteProperty", true)
		table.insert(arg1_465, clone_9)
		clone_9.Name = "Handle"
		clone_9.Part0 = arg2.HumanoidRootPart
		clone_9.Part1 = clone_224
		clone_9.Parent = arg2.HumanoidRootPart
		clone_224.Parent = arg2
	end
	tbl_231.Startup = Startup
	tbl_231.Animation = 14357783332
	tbl_231.Looped = true
	tbl_231.Stun = "Slowed"
	tbl_459["Keyboard Warrior"] = tbl_231
	local tbl_806 = {
		Sounds = {};
	}
	local function Startup(arg1_466, arg2_345, arg3_335) -- Line 15516
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_97 = script.Keyboard.Handle:Clone()
		clone_97:SetAttribute("EmoteProperty", true)
		table.insert(arg1_466, clone_97)
		arg3_335.kb = clone_97.Keyboard
		local clone_206 = script.Keyboard.M6D:Clone()
		clone_206:SetAttribute("EmoteProperty", true)
		table.insert(arg1_466, clone_206)
		clone_206.Name = "Handle"
		clone_206.Part0 = arg2.HumanoidRootPart
		clone_206.Part1 = clone_97
		clone_206.Parent = arg2.HumanoidRootPart
		clone_97.Parent = arg2
		local var93_upvr_result1_6 = var93_upvr({
			SoundId = "rbxassetid://15290205166";
			Parent = clone_97;
			TimePosition = 0.25;
			Volume = 2;
		})
		var93_upvr_result1_6:Resume()
		arg3_335.s = var93_upvr_result1_6
	end
	tbl_806.Startup = Startup
	tbl_806.Keyframes = {
		["end"] = function(arg1_467, arg2_346, arg3_336) -- Line 15536
			--[[ Upvalues[3]:
				[1]: CollectionService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			]]
			local clone_27 = arg1_467.kb:Clone()
			CollectionService_upvr:AddTag(clone_27, "emotestuff"..arg2.Name)
			arg1_467.kb.Transparency = 1
			game:GetService("Debris"):AddItem(clone_27, 5)
			clone_27.CanCollide = true
			clone_27.CanTouch = true
			clone_27.CanQuery = false
			clone_27.Massless = false
			clone_27.CollisionGroup = "nocol"
			clone_27.CFrame = arg1_467.kb.CFrame
			clone_27.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
			clone_27.Parent = workspace.Thrown
			if arg1_467.s then
				arg1_467.s.Parent = clone_27
			end
			clone_27:SetNetworkOwner(any_GetPlayerFromCharacter_result1_2_upvr)
			clone_27.Velocity = Vector3.new(0, -50, 0)
			clone_27.AssemblyAngularVelocity = Vector3.new(math.random(-90, 90), math.random(-90, 90), math.random(-90, 90))
		end;
	}
	tbl_806.Animation = 15290188901
	tbl_806.Looped = false
	tbl_806.Stun = "Slowed"
	tbl_459.Rage = tbl_806
	local tbl_803 = {}
	local tbl_907 = {}
	local tbl_366 = {}
	var1669 = "rbxassetid://14056074389"
	tbl_366.SoundId = var1669
	var1669 = 2.25
	tbl_366.Volume = var1669
	var1669 = false
	tbl_366.Looped = var1669
	tbl_907[0] = tbl_366
	tbl_803.Sounds = tbl_907
	local function Startup(arg1_468) -- Line 15571
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_119 = script.Chair.Handle:Clone()
		clone_119:SetAttribute("EmoteProperty", true)
		table.insert(arg1_468, clone_119)
		local clone_222 = script.Chair.M6D:Clone()
		clone_222:SetAttribute("EmoteProperty", true)
		table.insert(arg1_468, clone_222)
		clone_222.Name = "Handle"
		clone_222.Part0 = arg2.HumanoidRootPart
		clone_222.Part1 = clone_119
		clone_222.Parent = arg2.HumanoidRootPart
		clone_119.Parent = arg2
	end
	tbl_803.Startup = Startup
	tbl_803.Keyframes = {
		freeze = function(arg1_469, arg2_347, arg3_337) -- Line 15582
			arg3_337:AdjustSpeed(0)
		end;
	}
	tbl_803.Animation = 14056032417
	tbl_803.Looped = false
	tbl_803.Stun = "Freeze"
	tbl_459.Chair = tbl_803
	local tbl_935 = {
		HideWeapon = true;
	}
	local function Startup(arg1_470, arg2_348, arg3_338) -- Line 15594
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_198 = script.Grave.Grave:Clone()
		clone_198:SetAttribute("EmoteProperty", true)
		table.insert(arg1_470, clone_198)
		local clone_220 = script.Grave.M6D:Clone()
		clone_220:SetAttribute("EmoteProperty", true)
		table.insert(arg1_470, clone_220)
		clone_220.Name = "Handle"
		clone_220.Part0 = arg2.HumanoidRootPart
		clone_220.Part1 = clone_198
		clone_220.Parent = arg2.HumanoidRootPart
		clone_198.Parent = arg2
		arg3_338.handle = clone_198
		var93_upvr({
			SoundId = "rbxassetid://14399156027";
			Volume = 1;
			TimePosition = 0.12;
			Parent = arg2.PrimaryPart;
		}):Resume()
	end
	tbl_935.Startup = Startup
	tbl_935.Keyframes = {
		freeze = function(arg1_471, arg2_349, arg3_339) -- Line 15613
			arg3_339:AdjustSpeed(0)
		end;
		smash = function(arg1_472) -- Line 15617
			--[[ Upvalues[1]:
				[1]: var93_upvr (copied, readonly)
			]]
			arg1_472.handle.Attachment.Dust:Emit(10)
			var93_upvr({
				SoundId = "rbxassetid://14399155774";
				Parent = arg1_472.handle;
				Volume = 1.25;
				TimePosition = 0.047;
			}):Resume()
		end;
	}
	tbl_935.Fix = true
	tbl_935.Animation = 14399170033
	tbl_935.Looped = false
	tbl_935.Stun = "Freeze"
	tbl_459.RIP = tbl_935
	local tbl_168 = {
		HideWeapon = true;
	}
	local tbl_800 = {}
	local tbl_462 = {}
	var1669 = "rbxassetid://14056453575"
	tbl_462.SoundId = var1669
	var1669 = 1
	tbl_462.Volume = var1669
	var1669 = false
	tbl_462.Looped = var1669
	tbl_800[0] = tbl_462
	tbl_168.Sounds = tbl_800
	local function Startup(arg1_473) -- Line 15644
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_219 = script.Coin.Handle:Clone()
		clone_219:SetAttribute("EmoteProperty", true)
		table.insert(arg1_473, clone_219)
		local clone_218 = script.Coin.M6D:Clone()
		clone_218:SetAttribute("EmoteProperty", true)
		table.insert(arg1_473, clone_218)
		clone_218.Name = "Handle"
		clone_218.Part0 = arg2["Left Arm"]
		clone_218.Part1 = clone_219
		clone_218.Parent = arg2["Left Arm"]
		clone_219.Parent = arg2
	end
	tbl_168.Startup = Startup
	tbl_168.Animation = 14055990256
	tbl_168.Looped = false
	tbl_168.Stun = "Slowed"
	tbl_459["RK Coin Trick"] = tbl_168
	local tbl_799 = {}
	local tbl_99 = {}
	local tbl_670 = {}
	var1669 = "rbxassetid://9046379730"
	tbl_670.SoundId = var1669
	var1669 = 0.75
	tbl_670.Volume = var1669
	var1669 = true
	tbl_670.Looped = var1669
	tbl_99[0] = tbl_670
	tbl_799.Sounds = tbl_99
	tbl_799.Keyframes = {
		claploop = function() -- Line 15669
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://9114456730";
				Volume = 0.85;
				Parent = arg2.Head;
			}):Play()
		end;
	}
	local function Startup(arg1_474, arg2_350) -- Line 15678
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_217 = script.Think.Attachment:Clone()
		clone_217:SetAttribute("EmoteProperty", true)
		table.insert(arg1_474, clone_217)
		clone_217.Parent = arg2.HumanoidRootPart
	end
	tbl_799.Startup = Startup
	tbl_799.Infinite = true
	tbl_799.Animation = 13801090462
	tbl_799.Looped = true
	tbl_799.Stun = "Freeze"
	tbl_459.Think = tbl_799
	local tbl_797 = {}
	local tbl_134 = {}
	local tbl_796 = {}
	var1669 = "rbxassetid://9042542555"
	tbl_796.SoundId = var1669
	var1669 = 0.75
	tbl_796.Volume = var1669
	var1669 = true
	tbl_796.Looped = var1669
	tbl_134[0] = tbl_796
	tbl_797.Sounds = tbl_134
	tbl_797.Animation = 13777338337
	tbl_797.Looped = true
	tbl_797.Stun = "Slowed"
	tbl_459["No Limit"] = tbl_797
	local tbl_795 = {}
	local tbl_250 = {}
	local tbl_794 = {}
	var1669 = "rbxassetid://1836860450"
	tbl_794.SoundId = var1669
	var1669 = 0.75
	tbl_794.Volume = var1669
	var1669 = true
	tbl_794.Looped = var1669
	tbl_250[0] = tbl_794
	tbl_795.Sounds = tbl_250
	tbl_795.Animation = 13777407704
	tbl_795.Looped = true
	tbl_795.Stun = "Slowed"
	tbl_459.Soul = tbl_795
	tbl_459.Chill = {
		Animation = 13736115009;
		Looped = true;
		Stun = "Freeze";
	}
	local tbl_792 = {}
	local tbl_791 = {}
	local tbl_485 = {}
	var1669 = "rbxassetid://1839021706"
	tbl_485.SoundId = var1669
	var1669 = 0.5
	tbl_485.Volume = var1669
	var1669 = true
	tbl_485.Looped = var1669
	tbl_791[0] = tbl_485
	tbl_792.Sounds = tbl_791
	tbl_792.Animation = 13735821189
	tbl_792.Looped = true
	tbl_792.Stun = "Slowed"
	tbl_459.Penguin = tbl_792
	local tbl_790 = {}
	local tbl_789 = {}
	local tbl_45 = {}
	var1669 = "rbxassetid://9056830251"
	tbl_45.SoundId = var1669
	var1669 = 1.75
	tbl_45.Volume = var1669
	var1669 = false
	tbl_45.Looped = var1669
	tbl_789[0] = tbl_45
	tbl_790.Sounds = tbl_789
	tbl_790.Animation = 8887084105
	tbl_790.Stun = "Slowed"
	tbl_459.Laugh = tbl_790
	local tbl_1093 = {}
	local tbl_787 = {}
	local tbl_374 = {}
	var1669 = "rbxassetid://1848269635"
	tbl_374.SoundId = var1669
	var1669 = 1
	tbl_374.Volume = var1669
	var1669 = true
	tbl_374.Looped = var1669
	tbl_787[0] = tbl_374
	tbl_1093.Sounds = tbl_787
	tbl_1093.Animation = 13720956493
	tbl_1093.Looped = true
	tbl_1093.Stun = "Slowed"
	tbl_459.Sturdy = tbl_1093
	local tbl_786 = {}
	local tbl_785 = {}
	local tbl_46 = {}
	var1669 = "rbxassetid://13772555886"
	tbl_46.SoundId = var1669
	var1669 = 1
	tbl_46.Volume = var1669
	var1669 = true
	tbl_46.Looped = var1669
	tbl_785[0] = tbl_46
	tbl_786.Sounds = tbl_785
	tbl_786.Infinite = true
	tbl_786.Animation = 13796404333
	tbl_786.Looped = true
	tbl_786.Stun = "Slowed"
	tbl_459.Boppin = tbl_786
	local tbl_448 = {}
	local tbl_784 = {}
	local tbl_783 = {}
	var1669 = "rbxassetid://15019328411"
	tbl_783.SoundId = var1669
	var1669 = 3
	tbl_783.Volume = var1669
	var1669 = false
	tbl_783.Looped = var1669
	tbl_784[0] = tbl_783
	local tbl_1036 = {}
	var1669 = "rbxassetid://3750949270"
	tbl_1036.SoundId = var1669
	var1669 = 0.2
	tbl_1036.Volume = var1669
	var1669 = true
	tbl_1036.Looped = var1669
	tbl_784[0.01] = tbl_1036
	tbl_448.Sounds = tbl_784
	local function Startup(arg1_475) -- Line 15798
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: CollectionService_upvr (copied, readonly)
		]]
		local tbl_781 = {
			Name = "InfinityDebris";
		}
		tbl_781.Parent = arg2
		local shared_cfolder_result1_23 = shared.cfolder(tbl_781)
		CollectionService_upvr:AddTag(shared_cfolder_result1_23, "InfinityDebris")
		table.insert(arg1_475, shared_cfolder_result1_23)
	end
	tbl_448.Startup = Startup
	tbl_448.Keyframes = {
		freeze = function(arg1_476, arg2_351, arg3_340) -- Line 15808
			arg3_340:AdjustSpeed(0)
		end;
	}
	tbl_448.Animation = 15020965094
	tbl_448.Looped = false
	tbl_448.Stun = "Freeze"
	tbl_459.Untouchable = tbl_448
	local tbl_780 = {}
	local tbl_268 = {}
	local tbl_779 = {}
	var1669 = "rbxassetid://15502557516"
	tbl_779.SoundId = var1669
	var1669 = 1.5
	tbl_779.Volume = var1669
	var1669 = false
	tbl_779.Looped = var1669
	tbl_268[0] = tbl_779
	local tbl_673 = {}
	var1669 = "rbxassetid://15502591598"
	tbl_673.SoundId = var1669
	var1669 = 0.5
	tbl_673.Volume = var1669
	var1669 = false
	tbl_673.Looped = var1669
	tbl_268[2.6] = tbl_673
	tbl_780.Sounds = tbl_268
	local function Startup(arg1_477, arg2_352, arg3_341) -- Line 15833
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local Attachment_15 = Instance.new("Attachment")
		table.insert(arg1_477, Attachment_15)
		Attachment_15.Parent = arg2.Head
		Attachment_15.Position = Vector3.new(-0.1889, -0.0070, 0.45699)
		local clone_215 = script.Sweating:Clone()
		arg3_341.Crying = clone_215
		table.insert(arg1_477, clone_215)
		clone_215.Parent = Attachment_15
		local Attachment_14 = Instance.new("Attachment")
		table.insert(arg1_477, Attachment_14)
		Attachment_14.Parent = arg2.Head
		Attachment_14.Position = Vector3.new(0.18999, 0.5, -0.4639)
		local clone_92 = script.Sweated:Clone()
		arg3_341.Crying2 = clone_92
		table.insert(arg1_477, clone_92)
		clone_92.Parent = Attachment_14
	end
	tbl_780.Startup = Startup
	tbl_780.Keyframes = {
		sweat = function(arg1_478) -- Line 15852
			arg1_478.Crying.Enabled = false
			arg1_478.Crying2:Emit(10)
		end;
	}
	tbl_780.HideWeapon = true
	tbl_780.Animation = 15488553333
	tbl_780.Looped = false
	tbl_780.Stun = "Freeze"
	tbl_459.Sweat = tbl_780
	local tbl_777 = {
		HideWeapon = true;
	}
	local function Startup(arg1_479, arg2_353) -- Line 15866
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_214 = script.Crying:Clone()
		table.insert(arg1_479, clone_214)
		clone_214.Parent = arg2.Head
		local var93_upvr_result1_13 = var93_upvr({
			SoundId = "rbxassetid://9113234042";
			Parent = arg2.Head;
			TimePosition = 1;
			Looped = true;
			Volume = 7;
		})
		var93_upvr_result1_13:Resume()
		table.insert(arg1_479, var93_upvr_result1_13)
	end
	tbl_777.Startup = Startup
	tbl_777.Animation = 13874287198
	tbl_777.Looped = true
	tbl_777.Stun = "Freeze"
	tbl_459.Cry = tbl_777
	local tbl_732 = {
		HideWeapon = true;
	}
	local tbl_775 = {}
	local tbl_774 = {}
	var1669 = "rbxassetid://13874113188"
	tbl_774.SoundId = var1669
	var1669 = 2.75
	tbl_774.Volume = var1669
	var1669 = false
	tbl_774.Looped = var1669
	tbl_775[0.03] = tbl_774
	tbl_732.Sounds = tbl_775
	local function Startup(arg1_480) -- Line 15896
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: TweenService_upvr (copied, readonly)
		]]
		local clone_201_upvr = script.basketball:Clone()
		table.insert(arg1_480, clone_201_upvr)
		clone_201_upvr:SetAttribute("EmoteProperty", true)
		local class_Motor6D_2 = clone_201_upvr:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_480, class_Motor6D_2)
		class_Motor6D_2:SetAttribute("EmoteProperty", true)
		class_Motor6D_2.Part0 = arg2.PrimaryPart
		class_Motor6D_2.Parent = arg2.PrimaryPart
		class_Motor6D_2.Part1 = clone_201_upvr.Handle
		clone_201_upvr.Parent = arg2
		task.delay(5.233, function() -- Line 15908
			--[[ Upvalues[1]:
				[1]: clone_201_upvr (readonly)
			]]
			if clone_201_upvr then
				clone_201_upvr:Destroy()
			end
		end)
		local var93_upvr_result1_21 = var93_upvr({
			SoundId = "rbxassetid://9046712764";
			Volume = 0;
			TimePosition = 0.4;
			Looped = false;
			Parent = arg2.PrimaryPart;
		})
		var93_upvr_result1_21:SetAttribute("EmoteProperty", true)
		var93_upvr_result1_21:Resume()
		TweenService_upvr:Create(var93_upvr_result1_21, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Volume = 0.4;
		}):Play()
		table.insert(arg1_480, var93_upvr_result1_21)
	end
	tbl_732.Startup = Startup
	tbl_732.Animation = 13874117043
	tbl_732.Looped = false
	tbl_732.Stun = "Freeze"
	tbl_459["We Ball"] = tbl_732
	tbl_459["Bring It"] = {
		Keyframes = {
			start = function() -- Line 15937
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1;
					Volume = 0.4;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 0.45;
					PlaybackSpeed = 1;
					Parent = arg2.PrimaryPart;
				}):Play()
			end;
			one = function() -- Line 15953
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://9117373365";
					Volume = 0.75;
					PlaybackSpeed = 1.45;
					Parent = arg2.PrimaryPart;
				}):Play()
			end;
			two = function() -- Line 15962
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 1.35;
					PlaybackSpeed = 1.9;
					Parent = arg2.PrimaryPart;
				}):Play()
			end;
		};
		Animation = 13801083337;
		Looped = false;
		Stun = "Freeze";
	}
	tbl_459.Applause = {
		Keyframes = {
			claploop = function() -- Line 15979
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local var93_upvr_result1_2 = var93_upvr({
					SoundId = "rbxassetid://1840084272";
					PlaybackSpeed = 1;
					Volume = 0.5;
					Parent = arg2.PrimaryPart;
				})
				var93_upvr_result1_2:Play()
				game:service("TweenService"):Create(var93_upvr_result1_2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Volume = 0;
				}):Play()
			end;
		};
		Infinite = true;
		Animation = 14056379526;
		Looped = true;
		Stun = "Slowed";
	}
	tbl_459.Heh = {
		Keyframes = {
			start = function(arg1_481, arg2_354) -- Line 16001
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
				]]
				local clone_281 = script.Glasses:Clone()
				clone_281:SetAttribute("EmoteProperty", true)
				clone_281.Parent = arg2
				table.insert(arg2_354, clone_281)
				local Motor6D = Instance.new("Motor6D")
				Motor6D:SetAttribute("EmoteProperty", true)
				table.insert(arg2_354, Motor6D)
				Motor6D.Part0 = arg2["Left Arm"]
				Motor6D.C0 = CFrame.new(0.00482857227, -0.974339962, -0.0985401124, 0.99999547, 1.35184547e-27, -3.3606216e-28, 1.00842308e-27, -0.0216581449, 0.999762356, 0, -0.999764025, -0.0216580443)
				Motor6D.Part1 = clone_281.Handle
				Motor6D.Parent = arg2["Left Arm"]
				local var93_upvr_result1_18_upvr = var93_upvr({
					SoundId = "rbxassetid://13773962010";
					Volume = 1.5;
					PlaybackSpeed = 1.15;
					Parent = clone_281.Handle;
				})
				var93_upvr_result1_18_upvr:Play()
				task.delay(0.5, function() -- Line 16022
					--[[ Upvalues[1]:
						[1]: var93_upvr_result1_18_upvr (readonly)
					]]
					game:service("TweenService"):Create(var93_upvr_result1_18_upvr, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Volume = 0;
					}):Play()
				end)
				arg1_481.glasses = clone_281
				var93_upvr({
					SoundId = "rbxassetid://3929467229";
					Parent = arg2.Head;
					PlaybackSpeed = 1.5;
					Volume = 0.4;
				}):Play()
			end;
			vfx = function(arg1_482, arg2_355) -- Line 16038
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://13773869254";
					Parent = arg2.Head;
					PlaybackSpeed = 1;
					Volume = 0.9;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Parent = arg2.Head;
					Volume = 0.35;
					PlaybackSpeed = 1.35;
				}):Play()
				local Attachment_13 = Instance.new("Attachment")
				Attachment_13:SetAttribute("EmoteProperty", true)
				Attachment_13.CFrame = CFrame.new(-0.239279747, 0.309562922, -0.575252533, -0.0331349373, -0.72963804, -0.683030546, -0.989827991, -0.0706492513, 0.123488307, -0.138357326, 0.68017441, -0.719875157)
				Attachment_13.Parent = arg2.Head
				table.insert(arg2_355, Attachment_13)
				for _, v_105 in pairs(script.Shine:GetChildren()) do
					local clone_212 = v_105:Clone()
					clone_212.Parent = Attachment_13
					shared.resizeparticle(clone_212, 1.5)
					clone_212:Emit(1)
				end
				if arg1_482.glasses then
					local glasses = arg1_482.glasses
					local tbl_392 = {}
					v_105 = glasses.Glass1
					tbl_392[1] = v_105
					tbl_392[2] = glasses.Glass2
					for _, v_106_upvr in pairs(tbl_392) do
						v_106_upvr.Material = Enum.Material.Neon
						v_106_upvr.Color = Color3.new(1, 1, 1)
						v_106_upvr.Transparency = 0
						task.delay(0.5, function() -- Line 16071
							--[[ Upvalues[1]:
								[1]: v_106_upvr (readonly)
							]]
							game:service("TweenService"):Create(v_106_upvr, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								Color = Color3.fromRGB(105, 102, 92);
								Transparency = 0.75;
							}):Play()
						end)
					end
				end
			end;
			gone = function(arg1_483) -- Line 16081
				if arg1_483.glasses then
					arg1_483.glasses:Destroy()
				end
			end;
			away = function() -- Line 16087
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.Head;
					PlaybackSpeed = 1.5;
					Volume = 0.4;
				}):Play()
			end;
		};
		Animation = 13773978314;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_707 = {}
	local tbl_766 = {}
	local tbl_765 = {}
	var1669 = "rbxassetid://10456925537"
	tbl_765.SoundId = var1669
	var1669 = 0.25
	tbl_765.Volume = var1669
	tbl_766[0] = tbl_765
	tbl_707.Sounds = tbl_766
	tbl_707.Keyframes = {
		facepalm = function() -- Line 16111
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://511340819";
				Parent = arg2.Head;
				TimePosition = 0.1;
				Volume = 1.5;
			}):Resume()
			task.delay(1, function() -- Line 16119
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://3848835272";
					Parent = arg2.Head;
					Volume = 0.4;
					PlaybackSpeed = 1.25;
				}):Play()
			end)
		end;
		sway = function() -- Line 16129
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://3929467229";
				Parent = arg2.Head;
				PlaybackSpeed = 1.5;
				Volume = 0.5;
			}):Play()
		end;
	}
	tbl_707.Animation = 14056367009
	tbl_707.Looped = false
	tbl_707.Stun = "Slowed"
	tbl_459.Facepalm = tbl_707
	local tbl_412 = {
		HideWeapon = true;
	}
	local tbl_764 = {}
	local tbl_971 = {}
	var1669 = "rbxassetid://12332220659"
	tbl_971.SoundId = var1669
	var1669 = 0.375
	tbl_971.Volume = var1669
	var1669 = 1.5
	tbl_971.PlaybackSpeed = var1669
	tbl_764[0] = tbl_971
	tbl_412.Sounds = tbl_764
	tbl_412.Keyframes = {
		crack1 = function() -- Line 16155
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://9113541085";
				Parent = arg2.Head;
				Volume = 0.75;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://12332220659";
				Volume = 0.375;
				PlaybackSpeed = 2;
				Parent = arg2.Head;
			}):Play()
		end;
		crack2 = function() -- Line 16170
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://9113538220";
				Parent = arg2.Head;
				Volume = 0.75;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://12981991293";
				Parent = arg2.PrimaryPart;
				PlaybackSpeed = 1.5;
				Volume = 0.375;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		crack3 = function() -- Line 16186
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://6930015332";
				Parent = arg2.PrimaryPart;
				Volume = 0.75;
			}):Play()
		end;
		crack4 = function(arg1_484, arg2_356, arg3_342) -- Line 16194
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://9113538216";
				Parent = arg2.PrimaryPart;
				Volume = 0.75;
			}):Play()
			arg3_342:AdjustSpeed(1.5)
			var93_upvr({
				SoundId = "rbxassetid://12981991293";
				Parent = arg2.PrimaryPart;
				PlaybackSpeed = 1.25;
				Volume = 0.375;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		fist = function() -- Line 16211
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://7543903290";
				Parent = arg2.PrimaryPart;
				Volume = 0.9;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://296072089";
				Parent = arg2.PrimaryPart;
				Volume = 0.9;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://8595975458";
				Parent = arg2.PrimaryPart;
				Volume = 0.9;
			}):Play()
			var93_upvr({
				SoundId = "rbxassetid://12332220659";
				Volume = 0.5;
				PlaybackSpeed = 1.5;
				Parent = arg2.PrimaryPart;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		fist2 = function() -- Line 16239
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = "rbxassetid://7515452875";
				Parent = arg2.PrimaryPart;
				Volume = 0.75;
			}):Play()
		end;
	}
	tbl_412.Animation = 14056370647
	tbl_412.Looped = false
	tbl_412.Stun = "Slowed"
	tbl_459.Crack = tbl_412
	local tbl_506 = {
		HideWeapon = true;
	}
	local tbl_759 = {}
	local tbl_390 = {}
	var1669 = "rbxassetid://16583992179"
	tbl_390.SoundId = var1669
	var1669 = 1
	tbl_390.Volume = var1669
	tbl_759[0] = tbl_390
	local tbl_758 = {}
	var1669 = "rbxassetid://9046455305"
	tbl_758.SoundId = var1669
	var1669 = 0.4
	tbl_758.Volume = var1669
	var1669 = true
	tbl_758.Looped = var1669
	tbl_759[0.01] = tbl_758
	tbl_506.Sounds = tbl_759
	local function Startup(arg1_485, arg2_357, arg3_343) -- Line 16268
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_248 = script.book:Clone()
		clone_248:SetAttribute("EmoteProperty", true)
		table.insert(arg1_485, clone_248)
		clone_248.Parent = arg2
		local LeftHandle_2 = clone_248.LeftHandle
		LeftHandle_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_485, LeftHandle_2)
		LeftHandle_2.RootPart.Part0 = LeftHandle_2
		LeftHandle_2.RootPart.Part1 = clone_248.RootPart
		LeftHandle_2.Parent = arg2
		local clone_208 = script.monocle:Clone()
		clone_208:SetAttribute("EmoteProperty", true)
		table.insert(arg1_485, clone_208)
		local m6d_27 = clone_208.m6d
		m6d_27:SetAttribute("EmoteProperty", true)
		table.insert(arg1_485, m6d_27)
		m6d_27.Name = "Meshes/monocle_Cylinder.002"
		m6d_27.Part0 = arg2.Head
		m6d_27.Part1 = clone_208[m6d_27.Name]
		m6d_27.Parent = arg2.Head
		clone_208.Parent = arg2.Head
		local m6d_42 = clone_248.m6d
		m6d_42:SetAttribute("EmoteProperty", true)
		table.insert(arg1_485, m6d_42)
		m6d_42.Name = "LeftHandle"
		m6d_42.Part0 = arg2["Left Arm"]
		m6d_42.Part1 = LeftHandle_2
		m6d_42.Parent = arg2["Left Arm"]
		clone_248.Parent = arg2["Left Arm"]
	end
	tbl_506.Startup = Startup
	tbl_506.Animation = 16583901798
	tbl_506.Idle = 16583918087
	tbl_506.Looped = false
	tbl_506.Stun = "Slowed"
	tbl_459["Fancy Reading"] = tbl_506
	local tbl_548 = {
		HideWeapon = true;
	}
	local tbl_1085 = {}
	local tbl_756 = {}
	var1669 = "rbxassetid://1837322223"
	tbl_756.SoundId = var1669
	var1669 = 0.4
	tbl_756.Volume = var1669
	var1669 = 0.5
	tbl_756.TimePosition = var1669
	var1669 = true
	tbl_756.Looped = var1669
	tbl_1085[0.01] = tbl_756
	tbl_548.Sounds = tbl_1085
	local function Startup(arg1_486, arg2_358, arg3_344) -- Line 16311
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_42 = script.rocket:Clone()
		clone_42:SetAttribute("EmoteProperty", true)
		table.insert(arg1_486, clone_42)
		clone_42.Parent = arg2
		for _, v_107 in pairs(clone_42:GetChildren()) do
			if v_107.Name ~= "Rocket" then
				if v_107:IsA("BasePart") then
					v_107.Transparency = 1
				end
			end
		end
		local Weld_9 = Instance.new("Weld")
		Weld_9.Part0 = arg2.PrimaryPart
		Weld_9.Part1 = clone_42.Base
		Weld_9.C0 = CFrame.new(-0.0188751221, -2.70935678, 0.0000305175781, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Weld_9.Parent = clone_42
		var93_upvr({
			SoundId = "rbxassetid://9119414082";
			Parent = clone_42.Rocket;
			Volume = 0.3;
			Looped = true;
		}):Play()
		local Animation_5 = Instance.new("Animation")
		Animation_5.AnimationId = "rbxassetid://16584484676"
		clone_42.AnimationController:LoadAnimation(Animation_5):Play()
	end
	tbl_548.Startup = Startup
	tbl_548.Animation = 16584466961
	tbl_548.Looped = true
	tbl_548.Stun = "Slowed"
	tbl_548.StunAttribute = 1
	tbl_459["Rocket Ride"] = tbl_548
	tbl_459.Read = {
		Keyframes = {
			book = function() -- Line 16346
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://7244593699";
					Parent = arg2.PrimaryPart;
					Volume = 0.75;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://4458782689";
					Parent = arg2.PrimaryPart;
					Volume = 0.75;
				}):Play()
			end;
			start = function(arg1_487, arg2_359) -- Line 16360
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: var93_upvr (copied, readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				local clone_41 = script.Book.BookRig:Clone()
				local clone_101 = script.Book.MiddleCover:Clone()
				clone_101.Part0 = arg2["Left Arm"]
				clone_101.Part1 = clone_41.MiddleCover
				clone_101.Parent = arg2["Left Arm"]
				clone_41.LeftCover.SurfaceGui.TextLabel.Text = arg2.Name
				clone_41:SetAttribute("EmoteProperty", true)
				clone_101:SetAttribute("EmoteProperty", true)
				clone_41.Parent = arg2
				table.insert(arg2_359, clone_41)
				table.insert(arg2_359, clone_101)
				arg1_487.book = clone_41
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 0.3333333333333333;
					PlaybackSpeed = 1.5;
					Parent = arg2.PrimaryPart;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1.25;
					Volume = 0.39999999999999997;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://13726870246";
					Parent = arg2.PrimaryPart;
					Volume = 0.39999999999999997;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			up = function() -- Line 16398
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://4458775948";
					Parent = arg2.PrimaryPart;
					Volume = 0.6;
				}):Play()
			end;
			close = function() -- Line 16406
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://3763472732";
					Parent = arg2.PrimaryPart;
					Volume = 0.7;
				}):Play()
			end;
			away = function() -- Line 16414
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://3848838070";
					Parent = arg2.PrimaryPart;
					Volume = 0.39999999999999997;
					PlaybackSpeed = 1.5;
				}):Play()
			end;
			gone = function(arg1_488) -- Line 16423
				if arg1_488.book then
					arg1_488.book:Destroy()
				end
			end;
			swish1 = function() -- Line 16429
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://4458759938";
					Parent = arg2.PrimaryPart;
					Volume = 0.5;
					PlaybackSpeed = 1.15;
				}):Play()
			end;
			swish2 = function() -- Line 16438
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://3929467449";
					Parent = arg2.PrimaryPart;
					Volume = 0.5;
					PlaybackSpeed = 1.35;
				}):Play()
			end;
			swish3 = function() -- Line 16447
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://3929467229";
					Parent = arg2.PrimaryPart;
					Volume = 0.5;
					PlaybackSpeed = 1.25;
				}):Play()
			end;
			swish4 = function() -- Line 16456
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://4458759938";
					Parent = arg2.PrimaryPart;
					Volume = 0.5;
					PlaybackSpeed = 1.25;
				}):Play()
			end;
			step = function() -- Line 16465
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.2;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			step2 = function() -- Line 16475
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.2;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
		};
		Animation = 13735596559;
		Looped = false;
		Stun = "Freeze";
	}
	tbl_459["4K"] = {
		Keyframes = {
			start = function(arg1_489, arg2_360, arg3_345) -- Line 16493
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				arg3_345:AdjustSpeed(2.25)
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 0.25;
					PlaybackSpeed = 1.85;
					Parent = arg2.PrimaryPart;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			pull = function(arg1_490, arg2_361, arg3_346) -- Line 16504
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				arg3_346:AdjustSpeed(1)
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1.25;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://13726870246";
					Parent = arg2.PrimaryPart;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://873073853";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1.25;
					Volume = 0.35;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				local clone_165 = script.Phone:Clone()
				table.insert(arg2_361, clone_165)
				clone_165.Name = "PhoneEmote"
				clone_165:SetAttribute("EmoteProperty", true)
				clone_165.Parent = arg2
				local Weld_2 = Instance.new("Weld")
				Weld_2.Part0 = arg2["Left Arm"]
				Weld_2.Part1 = clone_165
				Weld_2.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883e-08, 3.82137093e-15, -1, 8.74227766e-08, -1, 0, -1, -8.74227766e-08, -4.37113883e-08)
				Weld_2.Parent = clone_165
				arg1_490.phone = clone_165
			end;
			away = function(arg1_491, arg2_362, arg3_347) -- Line 16541
				if arg1_491.phone then
					arg1_491.phone:Destroy()
				end
			end;
			done = function() -- Line 16547
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 0.3333333333333333;
					PlaybackSpeed = 2;
					Parent = arg2.PrimaryPart;
				}):Play()
			end;
			snap = function(arg1_492) -- Line 16556
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				if arg1_492.phone then
					var93_upvr({
						SoundId = "rbxassetid://8550763922";
						Parent = arg1_492.phone.Attachment2;
						Volume = 0.5;
						PlaybackSpeed = 1.5;
						RollOffMaxDistance = var2_upvw;
					}):Play()
					for _, v_108 in pairs(arg1_492.phone.Attachment2:GetChildren()) do
						if v_108:IsA("ParticleEmitter") then
							v_108:Emit(1)
						end
					end
				end
			end;
		};
		Animation = 13735352472;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_742 = {}
	local tbl_739 = {}
	local tbl_738 = {}
	var1669 = "rbxassetid://16522927439"
	tbl_738.SoundId = var1669
	var1669 = 1
	tbl_738.Volume = var1669
	var1669 = 1
	tbl_738.PlaybackSpeed = var1669
	tbl_739[0] = tbl_738
	tbl_742.Sounds = tbl_739
	local function Startup(arg1_493, arg2_363, arg3_348) -- Line 16588
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_202 = script.Phone:Clone()
		table.insert(arg1_493, clone_202)
		clone_202.Name = "Handle"
		clone_202.Transparency = 1
		clone_202:SetAttribute("EmoteProperty", true)
		clone_202.Parent = arg2
		local Motor6D_17 = Instance.new("Motor6D")
		Motor6D_17:SetAttribute("EmoteProperty", true)
		table.insert(arg1_493, Motor6D_17)
		Motor6D_17.Name = "Meshes/IPHONE12 MESH "
		Motor6D_17.Part0 = arg2["Right Arm"]
		Motor6D_17.Part1 = clone_202
		Motor6D_17.C0 = CFrame.new(-0.134792328, -0.986119986, -0.459802628, 2.98023224e-08, -1.49011585e-08, 1, 2.98023224e-08, -1, -1.49011594e-08, 1, 2.98023224e-08, -2.98023224e-08)
		Motor6D_17.Parent = arg2["Right Arm"]
		arg3_348.phone = clone_202
	end
	tbl_742.Startup = Startup
	tbl_742.Keyframes = {
		appear = function(arg1_494) -- Line 16604
			arg1_494.phone.Transparency = 0
		end;
		disappear = function(arg1_495) -- Line 16608
			arg1_495.phone:Destroy()
		end;
	}
	tbl_742.Animation = 16522919821
	tbl_742.Stun = "Freeze"
	tbl_459["Hold On"] = tbl_742
	local tbl_736 = {}
	local tbl_735 = {}
	local tbl_357 = {}
	var1669 = "rbxassetid://133608543934609"
	tbl_357.SoundId = var1669
	var1669 = 1
	tbl_357.Volume = var1669
	var1669 = 1
	tbl_357.PlaybackSpeed = var1669
	tbl_735[0] = tbl_357
	tbl_736.Sounds = tbl_735
	local function Startup(arg1_496, arg2_364, arg3_349) -- Line 16626
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
		local function _(arg1_499) -- Line 16627
			--[[ Upvalues[5]:
				[1]: arg1_496 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_499:SetAttribute("EmoteProperty", true)
			table.insert(arg1_496, arg1_499)
			local var4331 = arg5
			if not var4331 then
				var4331 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var4331 then
					var4331 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_499, "emoteendstuff"..var4331.Name)
		end
		local clone_223_upvr = script.ArmSlap:Clone()
		clone_223_upvr.Parent = arg2
		clone_223_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_496, clone_223_upvr)
		local var4333 = arg5
		if not var4333 then
			var4333 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4333 then
				var4333 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_223_upvr, "emoteendstuff"..var4333.Name)
		local function _(arg1_500) -- Line 16635
			--[[ Upvalues[1]:
				[1]: clone_223_upvr (readonly)
			]]
			for _, v_109 in pairs(clone_223_upvr:GetDescendants()) do
				if tostring(v_109) == arg1_500 then
					return v_109
				end
			end
		end
		local pairs_result1_15, pairs_result2_57, pairs_result3_21 = pairs(script.kjphone:GetChildren())
		-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [92] 69. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [92.12]
		var4333.Part1 = nil
		-- KONSTANTERROR: [92] 69. Error Block 10 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 43. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 43. Error Block 5 end (CF ANALYSIS FAILED)
	end
	tbl_736.Startup = Startup
	tbl_736.HideWeapon = true
	tbl_736.Animation = 84515101199811
	tbl_736.Looped = false
	tbl_736.Stun = "Freeze"
	tbl_459["On That Day"] = tbl_736
	local tbl_330 = {}
	local tbl_418 = {}
	local tbl_364 = {}
	var1669 = "rbxassetid://15091441859"
	tbl_364.SoundId = var1669
	var1669 = 1
	tbl_364.Volume = var1669
	var1669 = 1
	tbl_364.PlaybackSpeed = var1669
	tbl_418[0] = tbl_364
	tbl_330.Sounds = tbl_418
	local function Startup(arg1_501, arg2_365, arg3_350) -- Line 16668
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_123 = script.Phone:Clone()
		table.insert(arg1_501, clone_123)
		clone_123.Name = "PhoneEmote"
		clone_123:SetAttribute("EmoteProperty", true)
		clone_123.Parent = arg2
		local Weld_12 = Instance.new("Weld")
		Weld_12.Part0 = arg2["Left Arm"]
		Weld_12.Part1 = clone_123
		Weld_12.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883e-08, 3.82137093e-15, -1, 8.74227766e-08, -1, 0, -1, -8.74227766e-08, -4.37113883e-08)
		Weld_12.Parent = clone_123
		arg3_350.phone = clone_123
	end
	tbl_330.Startup = Startup
	tbl_330.Keyframes = {
		selfie = function(arg1_502) -- Line 16682
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: var2_upvw (copied, read and write)
			]]
			if arg1_502.phone then
				var93_upvr({
					SoundId = "rbxassetid://8550763922";
					Parent = arg1_502.phone.Attachment;
					PlaybackSpeed = 1.2;
					Volume = 0.5;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				for _, v_110 in pairs(arg1_502.phone.Attachment:GetChildren()) do
					if v_110:IsA("ParticleEmitter") then
						v_110:Emit(1)
					end
				end
			end
		end;
		["end"] = function(arg1_503) -- Line 16699
			arg1_503.phone:Destroy()
		end;
	}
	tbl_330.Fix = true
	tbl_330.Animation = 15091452031
	tbl_330.Looped = false
	tbl_330.Stun = "Freeze"
	tbl_459["Selfie In Style"] = tbl_330
	tbl_459.Selfie = {
		Keyframes = {
			start = function(arg1_504, arg2_366, arg3_351) -- Line 16712
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				arg3_351:AdjustSpeed(2.25)
				var93_upvr({
					SoundId = "rbxassetid://12332220659";
					Volume = 0.5;
					PlaybackSpeed = 1.85;
					Parent = arg2.PrimaryPart;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			phone = function() -- Line 16723
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://13726870246";
					Parent = arg2.PrimaryPart;
					Volume = 0.6;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			pull = function(arg1_505, arg2_367, arg3_352) -- Line 16732
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				arg3_352:AdjustSpeed(1)
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1.25;
					Volume = 0.6;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://873073853";
					Parent = arg2.PrimaryPart;
					PlaybackSpeed = 1.25;
					Volume = 0.7;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				local clone_134 = script.Phone:Clone()
				table.insert(arg2_367, clone_134)
				clone_134.Name = "PhoneEmote"
				clone_134:SetAttribute("EmoteProperty", true)
				clone_134.Parent = arg2
				local Weld_10 = Instance.new("Weld")
				Weld_10.Part0 = arg2["Left Arm"]
				Weld_10.Part1 = clone_134
				Weld_10.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883e-08, 3.82137093e-15, -1, 8.74227766e-08, -1, 0, -1, -8.74227766e-08, -4.37113883e-08)
				Weld_10.Parent = clone_134
				arg1_505.phone = clone_134
			end;
			away = function(arg1_506, arg2_368, arg3_353) -- Line 16762
				arg3_353:AdjustSpeed(1.5)
			end;
			["2away"] = function(arg1_507) -- Line 16766
				if arg1_507.phone then
					arg1_507.phone:Destroy()
				end
			end;
			step = function() -- Line 16772
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.2;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			picture = function(arg1_508) -- Line 16782
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: var2_upvw (copied, read and write)
				]]
				if arg1_508.phone then
					var93_upvr({
						SoundId = "rbxassetid://8550763922";
						Parent = arg1_508.phone.Attachment;
						Volume = 0.5;
						PlaybackSpeed = 1.2;
						RollOffMaxDistance = var2_upvw;
					}):Play()
					for _, v_111 in pairs(arg1_508.phone.Attachment:GetChildren()) do
						if v_111:IsA("ParticleEmitter") then
							v_111:Emit(1)
						end
					end
				end
			end;
		};
		Animation = 13727204855;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_960 = {}
	local function Startup(arg1_509, arg2_369) -- Line 16806
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
		]]
		local clone_200 = script.Fork.RightGrip:Clone()
		table.insert(arg1_509, clone_200)
		local Motor6D_13 = Instance.new("Motor6D")
		Motor6D_13.C0 = CFrame.new(-0.000549316406, -1.00001884, 0.000057220459, -1.1920929e-07, 1.00000012, 0, 1.00000012, -1.1920929e-07, 0, 0, 0, -1.00000024)
		Motor6D_13.Part0 = arg2["Left Arm"]
		Motor6D_13.Part1 = clone_200
		Motor6D_13.Parent = clone_200
		clone_200.Parent = arg2
		local clone_170 = script.Fork.Fork:Clone()
		table.insert(arg1_509, clone_170)
		clone_200.Fork.Part0 = clone_200
		clone_200:SetAttribute("EmoteProperty", true)
		clone_200.Fork.Part1 = clone_170
		clone_170:SetAttribute("EmoteProperty", true)
		clone_170.Parent = arg2
		local var93_upvr_result1_32 = var93_upvr({
			SoundId = "rbxassetid://13727102947";
			Volume = 0.4;
			Looped = true;
			Parent = clone_170;
		})
		table.insert(arg1_509, var93_upvr_result1_32)
		var93_upvr_result1_32:Play()
	end
	tbl_960.Startup = Startup
	tbl_960.Stun = "Slowed"
	tbl_960.Looped = true
	tbl_960.Animation = 13727117367
	tbl_459.Fork = tbl_960
	local tbl_520 = {}
	local tbl_718 = {}
	local tbl_717 = {}
	var1669 = "rbxassetid://13722809593"
	tbl_717.SoundId = var1669
	var1669 = 1
	tbl_717.Volume = var1669
	tbl_718[0] = tbl_717
	tbl_520.Sounds = tbl_718
	local function Startup() -- Line 16845
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_178_upvr = script.BillboardGui:Clone()
		clone_178_upvr.Enabled = true
		clone_178_upvr.Parent = arg2.Head
		task.delay(2, function() -- Line 16849
			--[[ Upvalues[1]:
				[1]: clone_178_upvr (readonly)
			]]
			game:service("TweenService"):Create(clone_178_upvr.ImageLabel, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				ImageTransparency = 1;
			}):Play()
		end)
		game:GetService("Debris"):AddItem(clone_178_upvr, 3)
	end
	tbl_520.Startup = Startup
	tbl_520.Animation = 0
	tbl_459.OK = tbl_520
	local tbl_715 = {
		Sounds = {};
	}
	local function Startup() -- Line 16864
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		for _ = 1, 10 do
			local GrabWeapon = arg2:FindFirstChild("GrabWeapon")
			if GrabWeapon then
				GrabWeapon:Destroy()
			end
		end
	end
	tbl_715.Startup = Startup
	tbl_715.Animation = 0
	tbl_459.Sheathe = tbl_715
	local tbl_258 = {}
	local tbl_713 = {}
	local tbl_529 = {}
	var1669 = "rbxassetid://1846079994"
	tbl_529.SoundId = var1669
	var1669 = 1
	tbl_529.Volume = var1669
	var1669 = true
	tbl_529.Looped = var1669
	tbl_713[0] = tbl_529
	local tbl_711 = {}
	var1669 = "rbxassetid://6906260279"
	tbl_711.SoundId = var1669
	var1669 = 0.5
	tbl_711.Volume = var1669
	tbl_713[0.01] = tbl_711
	tbl_258.Sounds = tbl_713
	tbl_258.Animation = 18231574269
	tbl_258.Looped = true
	tbl_258.Stun = "Slowed"
	tbl_459.L = tbl_258
	local tbl_189 = {
		Keyframes = {
			freeze = function(arg1_510, arg2_370, arg3_354) -- Line 16897
				arg3_354:AdjustSpeed(0)
			end;
			open = function(arg1_511, arg2_371, arg3_355) -- Line 16901
				local umbrella = arg1_511.umbrella
				if not umbrella then
				else
					game:service("TweenService"):Create(umbrella.TopUmbrella.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
						Scale = Vector3.new(1.10000, 0.75, 1.10000);
						Offset = Vector3.new(0, 1, 0);
					}):Play()
				end
			end;
		};
	}
	local function Startup(arg1_512, arg2_372, arg3_356) -- Line 16914
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://13875814315";
			Parent = arg2.PrimaryPart;
			Volume = 2.5;
		}):Play()
		local clone_199 = script.Umbrella:Clone()
		table.insert(arg1_512, clone_199)
		clone_199:SetAttribute("EmoteProperty", true)
		local class_Motor6D_14 = clone_199:FindFirstChildOfClass("Motor6D")
		table.insert(arg1_512, class_Motor6D_14)
		class_Motor6D_14:SetAttribute("EmoteProperty", true)
		class_Motor6D_14.Part0 = arg2["Right Arm"]
		class_Motor6D_14.Parent = arg2["Right Arm"]
		class_Motor6D_14.Part1 = clone_199.Handle
		clone_199.TopUmbrella.Mesh.Offset = Vector3.new(0, 0, 0)
		clone_199.TopUmbrella.Mesh.Scale = Vector3.new(0.10000, 1.5, 0.10000)
		clone_199.Parent = arg2
		arg3_356.umbrella = clone_199
	end
	tbl_189.Startup = Startup
	tbl_189.HideWeapon = true
	tbl_189.Animation = 14056388573
	tbl_189.Looped = false
	tbl_189.Stun = "Slowed"
	tbl_459.Umbrella = tbl_189
	tbl_459.Relax = {
		Keyframes = {
			freeze = function(arg1_513, arg2_373, arg3_357) -- Line 16944
				arg3_357:AdjustSpeed(0)
			end;
			start = function() -- Line 16948
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12332099688";
					Volume = 1;
					Parent = arg2.PrimaryPart;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://13631231525";
					PlaybackSpeed = 1.25;
					Volume = 0.9;
				}):Play()
				task.delay(0.4, function() -- Line 16961
					--[[ Upvalues[3]:
						[1]: var93_upvr (copied, readonly)
						[2]: arg2 (copied, readonly)
						[3]: var2_upvw (copied, read and write)
					]]
					var93_upvr({
						SoundId = "rbxassetid://12332220659";
						Volume = 0.95;
						PlaybackSpeed = 1.85;
						Parent = arg2.PrimaryPart;
						RollOffMaxDistance = var2_upvw;
					}):Play()
					var93_upvr({
						SoundId = "rbxassetid://4953436541";
						Volume = 1.15;
						PlaybackSpeed = 1.85;
						Parent = arg2.PrimaryPart;
						RollOffMaxDistance = var2_upvw;
					}):Play()
				end)
			end;
			step = function() -- Line 16980
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Arm"];
					PlaybackSpeed = 1;
					Volume = 0.5;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
		};
		Animation = 13736196609;
		Stun = "Freeze";
	}
	local tbl_42 = {}
	local tbl_706 = {}
	local tbl_536 = {}
	var1669 = "rbxassetid://14348081142"
	tbl_536.SoundId = var1669
	var1669 = 1
	tbl_536.PlaybackSpeed = var1669
	var1669 = 1.75
	tbl_536.Volume = var1669
	tbl_706[0] = tbl_536
	tbl_42.Sounds = tbl_706
	tbl_42.Looped = false
	tbl_42.Animation = 14348083862
	tbl_42.Stun = "Freeze"
	tbl_459.Sleepy = tbl_42
	local tbl_697 = {}
	local tbl_402 = {}
	local tbl_346 = {}
	var1669 = "rbxassetid://9045623796"
	tbl_346.SoundId = var1669
	var1669 = 1
	tbl_346.PlaybackSpeed = var1669
	var1669 = 0.35
	tbl_346.Volume = var1669
	var1669 = true
	tbl_346.Looped = var1669
	tbl_402[0] = tbl_346
	tbl_697.Sounds = tbl_402
	tbl_697.Keyframes = {
		claploop = function(arg1_514, arg2_374, arg3_358) -- Line 17021
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			local var4429
			if not arg1_514.turn then
				arg1_514.turn = 1
			end
			local tbl_703 = {}
			if arg1_514.turn % 2 == 0 then
				var4429 = "rbxassetid://14351823273"
			else
				var4429 = "rbxassetid://14351823038"
			end
			tbl_703.SoundId = var4429
			var4429 = arg2["Left Leg"]
			tbl_703.Parent = var4429
			var4429 = 1
			tbl_703.PlaybackSpeed = var4429
			var4429 = 0.25
			tbl_703.Volume = var4429
			var4429 = var2_upvw
			tbl_703.RollOffMaxDistance = var4429
			var93_upvr(tbl_703):Play()
			arg1_514.turn += 1
		end;
	}
	tbl_697.Infinite = true
	tbl_697.Looped = true
	tbl_697.Animation = 14351868272
	tbl_697.Stun = "Slowed"
	tbl_459.Steps = tbl_697
	tbl_459.Saunter = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_515, arg2_375, arg3_359) -- Line 17049
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1.25;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			claploop = function(arg1_516, arg2_376, arg3_360) -- Line 17059
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Right Leg"];
					PlaybackSpeed = 1.25;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
		};
		HideWeapon = true;
		Infinite = true;
		Looped = true;
		Animation = 17086054994;
		Stun = "Slowed";
		StunAttribute = 1.5;
	}
	tbl_459["Silly Walk"] = {
		Sounds = {};
		Keyframes = {
			clap = function(arg1_517, arg2_377, arg3_361) -- Line 17083
				--[[ Upvalues[2]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				if not arg1_517.num or 2 < arg1_517.num then
					arg1_517.num = 1
				end
				var93_upvr({
					SoundId = "rbxassetid://"..({16584838006, 16584838984})[arg1_517.num];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.11;
				}):Play()
				arg1_517.num += 1
			end;
		};
		Infinite = true;
		Looped = true;
		Animation = 16585974532;
		Stun = "Slowed";
		StunAttribute = 2;
	}
	local tbl_701 = {}
	local tbl_700 = {}
	local tbl_699 = {}
	var1669 = "rbxassetid://1844765268"
	tbl_699.SoundId = var1669
	var1669 = 1
	tbl_699.PlaybackSpeed = var1669
	var1669 = 0.25
	tbl_699.Volume = var1669
	var1669 = true
	tbl_699.Looped = var1669
	tbl_700[0] = tbl_699
	tbl_701.Sounds = tbl_700
	tbl_701.Keyframes = {
		claploop = function(arg1_518, arg2_378, arg3_362) -- Line 17115
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.8;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	local function Startup() -- Line 17126
		--[[ Upvalues[3]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: var2_upvw (copied, read and write)
		]]
		var93_upvr({
			SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
			Parent = arg2["Left Leg"];
			PlaybackSpeed = 1;
			Volume = 0.8;
			RollOffMaxDistance = var2_upvw;
		}):Play()
	end
	tbl_701.Startup = Startup
	tbl_701.Infinite = true
	tbl_701.Looped = true
	tbl_701.Animation = 14405440932
	tbl_701.Stun = "Slowed"
	tbl_459.Skewed = tbl_701
	local tbl_38 = {
		Sounds = {};
		Keyframes = {
			claploop = function(arg1_519, arg2_379, arg3_363) -- Line 17147
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1.25;
					Volume = 0.4;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				task.delay(0.5, function() -- Line 17156
					--[[ Upvalues[3]:
						[1]: arg3_363 (readonly)
						[2]: var93_upvr (copied, readonly)
						[3]: arg2 (copied, readonly)
					]]
					if arg3_363.IsPlaying then
						var93_upvr({
							SoundId = ({"rbxassetid://9125595581", "rbxassetid://9114663061", "rbxassetid://9114663248", "rbxassetid://9114662567"})[math.random(1, 4)];
							Volume = 0.2;
							Parent = arg2["Left Arm"];
						}):Play()
					end
				end)
			end;
		};
	}
	local function Startup(arg1_520, arg2_380, arg3_364) -- Line 17173
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_49 = script.Grocery:Clone()
		clone_49:SetAttribute("EmoteProperty", true)
		table.insert(arg1_520, clone_49)
		clone_49.Name = "Handle"
		local Handle = clone_49.Handle
		Handle:SetAttribute("EmoteProperty", true)
		table.insert(arg1_520, Handle)
		Handle.Name = "Handle"
		Handle.Part0 = arg2["Left Arm"]
		Handle.Part1 = clone_49
		Handle.Parent = arg2["Left Arm"]
		clone_49.Parent = arg2["Left Arm"]
	end
	tbl_38.Startup = Startup
	tbl_38.Infinite = true
	tbl_38.Looped = true
	tbl_38.Animation = 15237948811
	tbl_38.Stun = "Slowed"
	tbl_459.Groceries = tbl_38
	local tbl_693 = {}
	local tbl_65 = {}
	local tbl_692 = {}
	var1669 = "rbxassetid://1846012134"
	tbl_692.SoundId = var1669
	var1669 = 0.35
	tbl_692.Volume = var1669
	var1669 = true
	tbl_692.Looped = var1669
	tbl_65[0] = tbl_692
	tbl_693.Sounds = tbl_65
	tbl_693.Keyframes = {
		clap = function(arg1_521, arg2_381, arg3_365) -- Line 17200
			--[[ Upvalues[2]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			var93_upvr({
				SoundId = ({"rbxassetid://16002610872", "rbxassetid://16002610798", "rbxassetid://16002610939"})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				Volume = 0.25;
			}):Play()
		end;
	}
	local function Startup(arg1_522, arg2_382, arg3_366) -- Line 17209
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_195 = script.Stars:Clone()
		clone_195:SetAttribute("EmoteProperty", true)
		table.insert(arg1_522, clone_195)
		clone_195.Parent = arg2.Torso
	end
	tbl_693.Startup = Startup
	tbl_693.Infinite = true
	tbl_693.Looped = true
	tbl_693.Animation = 16021093085
	tbl_693.Stun = "Slowed"
	tbl_693.StunAttribute = 1.75
	tbl_459["Happy Steps"] = tbl_693
	local tbl_525 = {}
	local tbl_687 = {}
	local tbl_686 = {}
	var1669 = "rbxassetid://1844765268"
	tbl_686.SoundId = var1669
	var1669 = 1
	tbl_686.PlaybackSpeed = var1669
	var1669 = 0.25
	tbl_686.Volume = var1669
	var1669 = true
	tbl_686.Looped = var1669
	tbl_687[0] = tbl_686
	tbl_525.Sounds = tbl_687
	tbl_525.Keyframes = {
		claploop = function(arg1_523, arg2_383, arg3_367) -- Line 17232
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.8;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	local function Startup(arg1_524) -- Line 17243
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var93_upvr (copied, readonly)
			[3]: var2_upvw (copied, read and write)
		]]
		local clone_194 = script.Cola.Handle:Clone()
		clone_194:SetAttribute("EmoteProperty", true)
		table.insert(arg1_524, clone_194)
		local clone_193 = script.Cola.M6D:Clone()
		clone_193:SetAttribute("EmoteProperty", true)
		table.insert(arg1_524, clone_193)
		clone_193.Name = "Handle"
		clone_193.Part0 = arg2["Left Arm"]
		clone_193.Part1 = clone_194
		clone_193.Parent = arg2["Left Arm"]
		clone_194.Parent = arg2
		var93_upvr({
			SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
			Parent = arg2["Left Leg"];
			PlaybackSpeed = 1;
			Volume = 0.8;
			RollOffMaxDistance = var2_upvw;
		}):Play()
		var93_upvr({
			SoundId = ({"rbxassetid://10721950", "rbxassetid://10722059"})[math.random(1, 2)];
			Parent = arg2.PrimaryPart;
			Volume = 0.35;
		}):Play()
	end
	tbl_525.Startup = Startup
	tbl_525.Infinite = true
	tbl_525.Looped = true
	tbl_525.Animation = 14352383313
	tbl_525.Stun = "Slowed"
	tbl_459.Soda = tbl_525
	local tbl_194 = {}
	local tbl_508 = {}
	local tbl_684 = {}
	var1669 = "rbxassetid://131225278629242"
	tbl_684.SoundId = var1669
	var1669 = 1
	tbl_684.Volume = var1669
	tbl_508[0] = tbl_684
	tbl_194.Sounds = tbl_508
	tbl_194.Keyframes = {}
	tbl_194.Animation = 82694531595019
	tbl_194.Stun = "Freeze"
	tbl_459["Anything To Look Cool"] = tbl_194
	local tbl_13 = {}
	local tbl_269 = {}
	local tbl_702 = {}
	var1669 = "rbxassetid://116622800082209"
	tbl_702.SoundId = var1669
	var1669 = 1
	tbl_702.Volume = var1669
	tbl_269[0] = tbl_702
	tbl_13.Sounds = tbl_269
	tbl_13.Keyframes = {}
	tbl_13.Animation = 113991685821848
	tbl_13.Stun = "Freeze"
	tbl_459["K.O"] = tbl_13
	local tbl_1072 = {}
	local tbl_682 = {}
	local tbl_410 = {}
	var1669 = "rbxassetid://92097736113843"
	tbl_410.SoundId = var1669
	var1669 = 1
	tbl_410.Volume = var1669
	tbl_682[0] = tbl_410
	tbl_1072.Sounds = tbl_682
	tbl_1072.Keyframes = {}
	tbl_1072.Animation = 87360104656237
	tbl_1072.Stun = "Freeze"
	tbl_459.Train = tbl_1072
	local tbl_49 = {}
	local tbl_481 = {}
	local tbl_326 = {}
	var1669 = "rbxassetid://84936624374846"
	tbl_326.SoundId = var1669
	var1669 = 1
	tbl_326.Volume = var1669
	tbl_481[0] = tbl_326
	tbl_49.Sounds = tbl_481
	tbl_49.Keyframes = {}
	tbl_49.Animation = 119727504197041
	tbl_49.Idle = 121985820220625
	tbl_49.Stun = "Freeze"
	tbl_459.Behold = tbl_49
	local tbl_948 = {}
	local tbl_681 = {}
	local tbl_302 = {}
	var1669 = "rbxassetid://12332099688"
	tbl_302.SoundId = var1669
	var1669 = 0.8
	tbl_302.PlaybackSpeed = var1669
	var1669 = 1
	tbl_302.Volume = var1669
	tbl_681[0] = tbl_302
	local tbl_680 = {}
	var1669 = "rbxassetid://12981991293"
	tbl_680.SoundId = var1669
	var1669 = 0.5
	tbl_680.Volume = var1669
	var1669 = 0.8
	tbl_680.PlaybackSpeed = var1669
	tbl_681[0.5] = tbl_680
	tbl_948.Sounds = tbl_681
	tbl_948.Keyframes = {
		freeze = function(arg1_525, arg2_384, arg3_368) -- Line 17362
			arg3_368:AdjustSpeed(0)
		end;
	}
	tbl_948.Animation = 13773998974
	tbl_948.Stun = "Freeze"
	tbl_459.Bow = tbl_948
	local tbl_559 = {}
	local tbl_1095 = {}
	local tbl_678 = {}
	var1669 = "rbxassetid://12332099688"
	tbl_678.SoundId = var1669
	var1669 = 1
	tbl_678.Volume = var1669
	tbl_1095[0] = tbl_678
	local tbl_622 = {}
	var1669 = "rbxassetid://12332220659"
	tbl_622.SoundId = var1669
	var1669 = 0.5
	tbl_622.Volume = var1669
	var1669 = 2
	tbl_622.PlaybackSpeed = var1669
	tbl_1095[0.25] = tbl_622
	local tbl_677 = {}
	var1669 = "rbxassetid://13631231525"
	tbl_677.SoundId = var1669
	var1669 = 1.25
	tbl_677.PlaybackSpeed = var1669
	var1669 = 0.9
	tbl_677.Volume = var1669
	tbl_1095[0.26] = tbl_677
	tbl_559.Sounds = tbl_1095
	tbl_559.Keyframes = {
		freeze = function(arg1_526, arg2_385, arg3_369) -- Line 17392
			arg3_369:AdjustSpeed(0)
		end;
	}
	tbl_559.Animation = 13721154327
	tbl_559.Stun = "Freeze"
	tbl_459.Kneel = tbl_559
	local tbl_676 = {}
	local tbl_675 = {}
	local tbl_461 = {}
	var1669 = "rbxassetid://12332099688"
	tbl_461.SoundId = var1669
	var1669 = 0.6
	tbl_461.Volume = var1669
	var1669 = 0.9
	tbl_461.PlaybackSpeed = var1669
	tbl_675[0] = tbl_461
	tbl_676.Sounds = tbl_675
	tbl_676.Keyframes = {
		look = function() -- Line 17411
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://5031986894";
				Parent = arg2.PrimaryPart;
				Volume = 0.65;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		step = function() -- Line 17420
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.2;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		step2 = function() -- Line 17430
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.3;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		step3 = function() -- Line 17440
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
				Parent = arg2["Left Leg"];
				PlaybackSpeed = 1;
				Volume = 0.3;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		cloth = function() -- Line 17451
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://12982203916";
				Parent = arg2.PrimaryPart;
				Volume = 0.35;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
		cloth2 = function() -- Line 17460
			--[[ Upvalues[3]:
				[1]: var93_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var2_upvw (copied, read and write)
			]]
			var93_upvr({
				SoundId = "rbxassetid://12981981352";
				Parent = arg2.PrimaryPart;
				Volume = 0.35;
				RollOffMaxDistance = var2_upvw;
			}):Play()
		end;
	}
	tbl_676.Animation = 13735938143
	tbl_676.Stun = "Freeze"
	tbl_676.Looped = false
	tbl_459.Confused = tbl_676
	tbl_459.Crush = {
		Keyframes = {
			start = function() -- Line 17477
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12981991293";
					Parent = arg2.PrimaryPart;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			point = function() -- Line 17486
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://13631231525";
					Parent = arg2.PrimaryPart;
					Volume = 0.9;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			cloth2 = function() -- Line 17495
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://12982203916";
					Parent = arg2.PrimaryPart;
					Volume = 0.3;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				task.delay(0.5, function() -- Line 17503
					--[[ Upvalues[3]:
						[1]: var93_upvr (copied, readonly)
						[2]: arg2 (copied, readonly)
						[3]: var2_upvw (copied, read and write)
					]]
					var93_upvr({
						SoundId = "rbxassetid://13716998561";
						Parent = arg2.PrimaryPart;
						Volume = 2;
						RollOffMaxDistance = var2_upvw;
					}):Play()
				end)
			end;
			distort = function() -- Line 17513
			end;
			snap = function() -- Line 17517
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://9125818080";
					Parent = arg2.PrimaryPart;
					Volume = 0.9;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://9113542363";
					Parent = arg2.PrimaryPart;
					Volume = 0.8;
					RollOffMaxDistance = var2_upvw;
				}):Play()
				var93_upvr({
					SoundId = "rbxassetid://13717046717";
					Parent = arg2.PrimaryPart;
					Volume = 1;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
			step = function() -- Line 17540
				--[[ Upvalues[3]:
					[1]: var93_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: var2_upvw (copied, read and write)
				]]
				var93_upvr({
					SoundId = "rbxassetid://"..({7455224144, 7455246815, 7455224490})[math.random(1, 3)];
					Parent = arg2["Left Leg"];
					PlaybackSpeed = 1;
					Volume = 0.2;
					RollOffMaxDistance = var2_upvw;
				}):Play()
			end;
		};
		Animation = 13716964686;
		Looped = false;
		Stun = "Freeze";
	}
	local tbl_33 = {}
	local tbl_1001 = {}
	local tbl_667 = {}
	local tbl_1024 = {}
	var1669 = "rbxassetid://89198363635558"
	tbl_1024.SoundId = var1669
	var1669 = 1
	tbl_1024.Volume = var1669
	var1669 = true
	tbl_1024.Looped = var1669
	tbl_667[0] = tbl_1024
	local tbl_666 = {}
	var1669 = "rbxassetid://107426550092076"
	tbl_666.SoundId = var1669
	var1669 = 1
	tbl_666.Volume = var1669
	var1669 = true
	tbl_666.Looped = var1669
	tbl_667[0.01] = tbl_666
	tbl_1001.Sounds = tbl_667
	local function Startup(arg1_527, arg2_386, arg3_370) -- Line 17573
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local function _(arg1_529) -- Line 17574
			--[[ Upvalues[5]:
				[1]: arg1_527 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_529:SetAttribute("EmoteProperty", true)
			table.insert(arg1_527, arg1_529)
			local var4585 = arg5
			if not var4585 then
				var4585 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var4585 then
					var4585 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_529, "emoteendstuff"..var4585.Name)
			arg1_529.Parent = workspace.Thrown
		end
		local clone_171 = script.GM:Clone()
		clone_171:SetAttribute("EmoteProperty", true)
		table.insert(arg1_527, clone_171)
		local var4587 = arg5
		if not var4587 then
			var4587 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4587 then
				var4587 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_171, "emoteendstuff"..var4587.Name)
		clone_171.Parent = workspace.Thrown
		clone_171.Parent = arg2
		local Primary1 = clone_171.Primary1
		Primary1:SetAttribute("EmoteProperty", true)
		table.insert(arg1_527, Primary1)
		local var4589 = arg5
		if not var4589 then
			var4589 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4589 then
				var4589 = arg2
			end
		end
		CollectionService_upvr:AddTag(Primary1, "emoteendstuff"..var4589.Name)
		Primary1.Parent = workspace.Thrown
		Primary1.Part0 = arg2.Torso
		Primary1.Part1 = clone_171.PrimaryPart
		Primary1.Parent = arg2.Torso
		Primary1.Name = "Primary"
		local clone_188 = script.AuraBox:Clone()
		clone_188:SetAttribute("EmoteProperty", true)
		table.insert(arg1_527, clone_188)
		local var4591 = arg5
		if not var4591 then
			var4591 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4591 then
				var4591 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_188, "emoteendstuff"..var4591.Name)
		clone_188.Parent = workspace.Thrown
		clone_188.Anchored = false
		local Weld_11 = Instance.new("Weld")
		Weld_11.C0 = CFrame.new(-0.0500144958, 3.30000019, 0.250011444, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Weld_11.Part0 = arg2.PrimaryPart
		Weld_11.Part1 = clone_188
		Weld_11.Parent = clone_188
		for _, v_112 in pairs(arg2:GetChildren()) do
			if v_112:IsA("BasePart") then
				for _, v_113 in pairs(script.StartGlitch:GetChildren()) do
					local clone_187 = v_113:Clone()
					clone_187.Parent = v_112
					clone_187:SetAttribute("EmoteProperty", true)
					table.insert(arg1_527, clone_187)
					local var4600 = arg5
					if not var4600 then
						var4600 = any_GetPlayerFromCharacter_result1_2_upvr
						if not var4600 then
							var4600 = arg2
						end
					end
					CollectionService_upvr:AddTag(clone_187, "emoteendstuff"..var4600.Name)
					clone_187.Parent = workspace.Thrown
				end
			end
		end
	end
	tbl_1001.Startup = Startup
	tbl_1001.Keyframes = {
		burst = function() -- Line 17611
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var3_upvr (copied, readonly)
			]]
			local clone_186 = script.BurstEffect:Clone()
			game.Debris:AddItem(clone_186, 3)
			clone_186.Parent = workspace.Thrown
			clone_186.CFrame = arg2.PrimaryPart.CFrame * CFrame.new(-0.0000133514404, 2.79999971, -0.199993134, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			var3_upvr(clone_186)
		end;
	}
	tbl_1001.Animation = 73949048256257
	tbl_1001.HideWeapon = true
	tbl_1001.Stun = "Slowed"
	tbl_1001.StunAttribute = 1.5
	tbl_1001.Looped = true
	tbl_1001.Infinite = true
	tbl_1001.DontDisconnectMarkers = true
	tbl_33.Nightchild = tbl_1001
	local tbl_573 = {
		Preview = 88190176825744;
	}
	local tbl_804 = {}
	local tbl_149 = {}
	var1669 = "rbxassetid://79605009444651"
	tbl_149.SoundId = var1669
	var1669 = true
	tbl_149.ParentTorso = var1669
	var1669 = 2
	tbl_149.Volume = var1669
	tbl_804[0] = tbl_149
	tbl_573.Sounds = tbl_804
	tbl_573.Keyframes = {
		one = function(arg1_530, arg2_387, arg3_371, arg4_59) -- Line 17642
			arg1_530.sound.Parent = arg1_530.strings:FindFirstChild("1_001", true)
		end;
		two = function(arg1_531, arg2_388, arg3_372, arg4_60) -- Line 17646
			arg1_531.sound.Parent = arg1_531.realmp.RealmPrismPart
		end;
	}
	local function Startup(arg1_532, arg2_389, arg3_373) -- Line 17651
		--[[ Upvalues[6]:
			[1]: CollectionService_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: any_GetPlayerFromCharacter_result1_2_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var93_upvr (copied, readonly)
			[6]: TweenService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local function _(arg1_534) -- Line 17652
			--[[ Upvalues[5]:
				[1]: arg1_532 (readonly)
				[2]: CollectionService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: any_GetPlayerFromCharacter_result1_2_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			arg1_534:SetAttribute("EmoteProperty", true)
			table.insert(arg1_532, arg1_534)
			local var4801 = arg5
			if not var4801 then
				var4801 = any_GetPlayerFromCharacter_result1_2_upvr
				if not var4801 then
					var4801 = arg2
				end
			end
			CollectionService_upvr:AddTag(arg1_534, "emoteendstuff"..var4801.Name)
			arg1_534.Parent = workspace.Thrown
		end
		local clone_2_upvr = script.PrisonRealmRig:Clone()
		clone_2_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_532, clone_2_upvr)
		local var4803 = arg5
		if not var4803 then
			var4803 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4803 then
				var4803 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_2_upvr, "emoteendstuff"..var4803.Name)
		clone_2_upvr.Parent = workspace.Thrown
		local clone_67 = script.RealmPrism:Clone()
		clone_67:SetAttribute("EmoteProperty", true)
		table.insert(arg1_532, clone_67)
		local var4805 = arg5
		if not var4805 then
			var4805 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4805 then
				var4805 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_67, "emoteendstuff"..var4805.Name)
		clone_67.Parent = workspace.Thrown
		local clone_33 = script.Strings:Clone()
		clone_33:SetAttribute("EmoteProperty", true)
		table.insert(arg1_532, clone_33)
		local var4807 = arg5
		if not var4807 then
			var4807 = any_GetPlayerFromCharacter_result1_2_upvr
			if not var4807 then
				var4807 = arg2
			end
		end
		CollectionService_upvr:AddTag(clone_33, "emoteendstuff"..var4807.Name)
		clone_33.Parent = workspace.Thrown
		for _, v_114 in pairs({clone_2_upvr, clone_67, unpack(clone_33:GetChildren())}) do
			v_114.PrimaryPart.Anchored = false
			local Weld_4 = Instance.new("Weld")
			Weld_4.Part0 = arg2.PrimaryPart
			Weld_4.Part1 = v_114.PrimaryPart
			Weld_4.C0 = v_114:GetAttribute("Offset")
			Weld_4.Parent = v_114.PrimaryPart
		end
		arg3_373.realmp = clone_67
		arg3_373.strings = clone_33
		local var93_upvr_result1_17 = var93_upvr({
			SoundId = "rbxassetid://116434570262349";
			Parent = clone_2_upvr:FindFirstChild("Bone_L", true);
			Volume = 2;
		})
		arg3_373.sound = var93_upvr_result1_17
		var93_upvr_result1_17:Play()
		local Animation_7 = Instance.new("Animation")
		Animation_7.AnimationId = "rbxassetid://132931842051377"
		local any_LoadAnimation_result1 = clone_2_upvr.AnimationController:LoadAnimation(Animation_7)
		any_LoadAnimation_result1:Play()
		table.insert(arg1_532, any_LoadAnimation_result1)
		local Animation_4 = Instance.new("Animation")
		Animation_4.AnimationId = "rbxassetid://73313263538976"
		local any_LoadAnimation_result1_3 = clone_67.Humanoid:LoadAnimation(Animation_4)
		any_LoadAnimation_result1_3:Play()
		table.insert(arg1_532, any_LoadAnimation_result1_3)
		for i_127, v_115 in pairs({115400109213203, 129152881643120, 116148929833466, 106613129685108, 85535076926939, 136688312702757}) do
			local Animation_3 = Instance.new("Animation")
			Animation_3.AnimationId = "rbxassetid://"..v_115
			local any_LoadAnimation_result1_2 = clone_33["String"..i_127].AnimationController:LoadAnimation(Animation_3)
			any_LoadAnimation_result1_2:Play()
			table.insert(arg1_532, any_LoadAnimation_result1_2)
			local var4825
		end
		local Cube_2_upvr = clone_2_upvr.Cube_2
		local Cube_finals_upvr = clone_2_upvr.Cube_finals
		local OPEN_upvr = clone_2_upvr.OPEN
		local CIRCLE_001_upvr_2 = clone_2_upvr.CIRCLE_001
		local Sphere_001_upvr = clone_2_upvr.Sphere_001
		local RealmPrismPart_upvr = clone_67.RealmPrismPart
		local Eye_014_upvr_8 = var4825.String4.Eye_014
		local Cube_001_upvr_9 = var4825.String2.Cube_001
		local Cube_001_upvr_8 = var4825.String6.Cube_001
		local Eye_014_upvr_9 = var4825.String6.Eye_014
		local Eye_014_upvr_6 = var4825.String1.Eye_014
		local Cube_001_upvr_7 = var4825.String3.Cube_001
		local Cube_001_upvr_11 = var4825.String1.Cube_001
		local Eye_014_upvr_5 = var4825.String2.Eye_014
		local Eye_014_upvr_4 = var4825.String3.Eye_014
		local Cube_001_upvr_3 = var4825.String4.Cube_001
		local Cube_001_upvr_6 = var4825.String5.Cube_001
		local Eye_014_upvr_10 = var4825.String5.Eye_014
		task.delay(3.667, function() -- Line 17719
			--[[ Upvalues[1]:
				[1]: clone_2_upvr (readonly)
			]]
			if not clone_2_upvr.Parent then
			else
				clone_2_upvr.RootPart.PrismRootPart.Talisman.ParticleEmitter:Emit(1)
			end
		end)
		RealmPrismPart_upvr.Transparency = 1
		RealmPrismPart_upvr.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Eye_014_upvr_8.Transparency = 1
		Eye_014_upvr_8.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Cube_001_upvr_9.Transparency = 1
		Cube_001_upvr_9.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Eye_014_upvr_6.Transparency = 1
		Eye_014_upvr_6.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Eye_014_upvr_9.Transparency = 1
		Cube_001_upvr_7.Transparency = 1
		Cube_001_upvr_7.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Eye_014_upvr_10.Transparency = 1
		Eye_014_upvr_10.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Cube_001_upvr_8.Transparency = 1
		Eye_014_upvr_4.Transparency = 1
		Eye_014_upvr_4.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Cube_001_upvr_6.Transparency = 1
		Cube_001_upvr_6.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Eye_014_upvr_5.Transparency = 1
		Eye_014_upvr_5.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Cube_001_upvr_11.Transparency = 1
		Cube_001_upvr_11.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		Cube_001_upvr_3.Transparency = 1
		Cube_001_upvr_3.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		OPEN_upvr.Transparency = 1
		OPEN_upvr.Size = Vector3.new(1.17597, 1.18051, 0.51825)
		Cube_finals_upvr.Transparency = 1
		Cube_finals_upvr.Size = Vector3.new(1.56819, 1.56819, 0.40960)
		Cube_2_upvr.Transparency = 1
		Cube_2_upvr.Size = Vector3.new(1.56819, 1.56819, 0.66054)
		Sphere_001_upvr.Transparency = 1
		Sphere_001_upvr.Size = Vector3.new(0.54944, 0.54944, 0.54944)
		CIRCLE_001_upvr_2.Transparency = 1
		CIRCLE_001_upvr_2.Size = Vector3.new(0.48892, 0.43917, 0.20095)
		RealmPrismPart_upvr.Size = Vector3.new(0.00999, 0.00999, 0.00999)
		task.delay(9.15, function() -- Line 17760
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
		end)
		task.delay(9.166666666666666, function() -- Line 17763
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(3.33999, 3.31200, 3.31599);
			}):Play()
		end)
		task.delay(9.183333333333334, function() -- Line 17766
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.049999999999998934, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.66970, 1.65611, 1.65765);
			}):Play()
		end)
		task.delay(9.233333333333333, function() -- Line 17769
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.06299, 2, 1.05700);
			}):Play()
		end)
		task.delay(9.35, function() -- Line 17772
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.2833333333333332, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(0.5, 0.5, 0.5);
			}):Play()
		end)
		task.delay(9.633333333333333, function() -- Line 17775
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(3.6500000000000004, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
		end)
		task.delay(13.283333333333333, function() -- Line 17778
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: RealmPrismPart_upvr (readonly)
			]]
			TweenService_upvr:Create(RealmPrismPart_upvr, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
		end)
		task.delay(6.85, function() -- Line 17782
			--[[ Upvalues[13]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Eye_014_upvr_8 (readonly)
				[3]: Cube_001_upvr_9 (readonly)
				[4]: Eye_014_upvr_6 (readonly)
				[5]: Eye_014_upvr_9 (readonly)
				[6]: Cube_001_upvr_7 (readonly)
				[7]: Eye_014_upvr_10 (readonly)
				[8]: Cube_001_upvr_8 (readonly)
				[9]: Eye_014_upvr_4 (readonly)
				[10]: Cube_001_upvr_6 (readonly)
				[11]: Eye_014_upvr_5 (readonly)
				[12]: Cube_001_upvr_11 (readonly)
				[13]: Cube_001_upvr_3 (readonly)
			]]
			TweenService_upvr:Create(Eye_014_upvr_8, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_9, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_6, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_9, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_7, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_10, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_8, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_4, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_6, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_5, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_11, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_3, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
		end)
		task.delay(6.866666666666666, function() -- Line 17796
			--[[ Upvalues[13]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Eye_014_upvr_8 (readonly)
				[3]: Cube_001_upvr_9 (readonly)
				[4]: Eye_014_upvr_6 (readonly)
				[5]: Eye_014_upvr_9 (readonly)
				[6]: Cube_001_upvr_7 (readonly)
				[7]: Eye_014_upvr_10 (readonly)
				[8]: Cube_001_upvr_8 (readonly)
				[9]: Eye_014_upvr_4 (readonly)
				[10]: Cube_001_upvr_6 (readonly)
				[11]: Eye_014_upvr_5 (readonly)
				[12]: Cube_001_upvr_11 (readonly)
				[13]: Cube_001_upvr_3 (readonly)
			]]
			TweenService_upvr:Create(Eye_014_upvr_8, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_9, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_6, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_9, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_7, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_10, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_8, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_4, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_6, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_5, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_11, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_3, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
		end)
		task.delay(7.183333333333334, function() -- Line 17810
			--[[ Upvalues[13]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Eye_014_upvr_8 (readonly)
				[3]: Cube_001_upvr_9 (readonly)
				[4]: Eye_014_upvr_6 (readonly)
				[5]: Eye_014_upvr_9 (readonly)
				[6]: Cube_001_upvr_7 (readonly)
				[7]: Eye_014_upvr_10 (readonly)
				[8]: Cube_001_upvr_8 (readonly)
				[9]: Eye_014_upvr_4 (readonly)
				[10]: Cube_001_upvr_6 (readonly)
				[11]: Eye_014_upvr_5 (readonly)
				[12]: Cube_001_upvr_11 (readonly)
				[13]: Cube_001_upvr_3 (readonly)
			]]
			TweenService_upvr:Create(Eye_014_upvr_8, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_9, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_6, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_9, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_7, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_10, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_8, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_4, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_6, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_5, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.70938, 1.69546, 1.69704);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_11, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_3, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(6.34595, 0.60056, 1.41697);
			}):Play()
		end)
		task.delay(9.1, function() -- Line 17824
			--[[ Upvalues[13]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Eye_014_upvr_8 (readonly)
				[3]: Cube_001_upvr_9 (readonly)
				[4]: Eye_014_upvr_6 (readonly)
				[5]: Eye_014_upvr_9 (readonly)
				[6]: Cube_001_upvr_7 (readonly)
				[7]: Eye_014_upvr_10 (readonly)
				[8]: Cube_001_upvr_8 (readonly)
				[9]: Eye_014_upvr_4 (readonly)
				[10]: Cube_001_upvr_6 (readonly)
				[11]: Eye_014_upvr_5 (readonly)
				[12]: Cube_001_upvr_11 (readonly)
				[13]: Cube_001_upvr_3 (readonly)
			]]
			TweenService_upvr:Create(Eye_014_upvr_8, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_9, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_6, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_9, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_7, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_10, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_8, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_4, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_6, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_5, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_11, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_3, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
		end)
		task.delay(9.216666666666667, function() -- Line 17838
			--[[ Upvalues[13]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Eye_014_upvr_8 (readonly)
				[3]: Cube_001_upvr_9 (readonly)
				[4]: Eye_014_upvr_6 (readonly)
				[5]: Eye_014_upvr_9 (readonly)
				[6]: Cube_001_upvr_7 (readonly)
				[7]: Eye_014_upvr_10 (readonly)
				[8]: Cube_001_upvr_8 (readonly)
				[9]: Eye_014_upvr_4 (readonly)
				[10]: Cube_001_upvr_6 (readonly)
				[11]: Eye_014_upvr_5 (readonly)
				[12]: Cube_001_upvr_11 (readonly)
				[13]: Cube_001_upvr_3 (readonly)
			]]
			TweenService_upvr:Create(Eye_014_upvr_8, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_9, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_6, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_9, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_7, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_10, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_8, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_4, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_6, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Eye_014_upvr_5, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_11, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
			TweenService_upvr:Create(Cube_001_upvr_3, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
				Size = Vector3.new(0.00999, 0.00999, 0.00999);
			}):Play()
		end)
		task.delay(0.4, function() -- Line 17852
			--[[ Upvalues[6]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: OPEN_upvr (readonly)
				[3]: Cube_finals_upvr (readonly)
				[4]: Cube_2_upvr (readonly)
				[5]: Sphere_001_upvr (readonly)
				[6]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
			}):Play()
		end)
		task.delay(0.4166666666666667, function() -- Line 17859
			--[[ Upvalues[6]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: OPEN_upvr (readonly)
				[3]: Cube_finals_upvr (readonly)
				[4]: Cube_2_upvr (readonly)
				[5]: Sphere_001_upvr (readonly)
				[6]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.17597, 1.18051, 0.51825);
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.56819, 1.56819, 0.40960);
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(1.56819, 1.56819, 0.66054);
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(0.54944, 0.54944, 0.54944);
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(0.48892, 0.43917, 0.20095);
			}):Play()
		end)
		local Talismanmesh_upvr_2 = clone_2_upvr.Talismanmesh
		task.delay(4.55, function() -- Line 17866
			--[[ Upvalues[7]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: Talismanmesh_upvr_2 (readonly)
				[3]: OPEN_upvr (readonly)
				[4]: Cube_finals_upvr (readonly)
				[5]: Cube_2_upvr (readonly)
				[6]: Sphere_001_upvr (readonly)
				[7]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(Talismanmesh_upvr_2, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(7.46133, 7.49367, 2.77426);
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(10.2563, 10.2563, 2.00001);
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(10.2563, 10.2563, 3.78822);
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(2.99653, 2.99654, 2.99654);
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(2.56523, 2.21075, 0.51308);
			}):Play()
		end)
		task.delay(4.866666666666666, function() -- Line 17874
			--[[ Upvalues[6]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: OPEN_upvr (readonly)
				[3]: Cube_finals_upvr (readonly)
				[4]: Cube_2_upvr (readonly)
				[5]: Sphere_001_upvr (readonly)
				[6]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(7.46133, 7.49367, 2.77426);
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(10.2563, 10.2563, 2.00001);
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(10.2563, 10.2563, 3.78822);
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(2.99653, 2.99654, 2.99654);
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = Vector3.new(2.56523, 2.21075, 0.51308);
			}):Play()
		end)
		task.delay(6.316666666666666, function() -- Line 17881
			--[[ Upvalues[6]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: OPEN_upvr (readonly)
				[3]: Cube_finals_upvr (readonly)
				[4]: Cube_2_upvr (readonly)
				[5]: Sphere_001_upvr (readonly)
				[6]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.10000, 0.10000, 0.10000);
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.10000, 0.10000, 0.10000);
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.10000, 0.10000, 0.10000);
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.10000, 0.10000, 0.10000);
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 0;
				Size = Vector3.new(0.10000, 0.10000, 0.10000);
			}):Play()
		end)
		task.delay(6.666666666666667, function() -- Line 17888
			--[[ Upvalues[6]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: OPEN_upvr (readonly)
				[3]: Cube_finals_upvr (readonly)
				[4]: Cube_2_upvr (readonly)
				[5]: Sphere_001_upvr (readonly)
				[6]: CIRCLE_001_upvr_2 (readonly)
			]]
			TweenService_upvr:Create(OPEN_upvr, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(Cube_finals_upvr, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(Cube_2_upvr, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(Sphere_001_upvr, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(CIRCLE_001_upvr_2, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
		end)
	end
	tbl_573.Startup = Startup
	tbl_573.Animation = 100255267749203
	tbl_573.HideWeapon = true
	tbl_573.Limited = true
	tbl_573.Stun = "Freeze"
	tbl_573.KillEmote = true
	tbl_33["Eternal Seal"] = tbl_573
	local tbl_755 = {
		Sounds = {};
		Cooldown = 20;
		Limited = true;
		AuraEffect = true;
		Preview = 109527502104358;
		Animation = 113876851900426;
		Stun = "Freeze";
	}
	local function Startup(arg1_535, arg2_390, arg3_374) -- Line 17916
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		local pairs_result1_82, pairs_result2_37, pairs_result3_41 = pairs(arg2:GetDescendants())
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.7]
		if nil:IsA("Sound") and tostring(nil) == "CrushEmoteAmbience" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			game:GetService("TweenService"):Create(nil, TweenInfo.new(0.75), {
				Volume = 0;
			}):Play()
			local var4970_upvr
			task.delay(1, function() -- Line 17921
				--[[ Upvalues[1]:
					[1]: var4970_upvr (readonly)
				]]
				if var4970_upvr and var4970_upvr.Parent then
					var4970_upvr:Destroy()
				end
			end)
		end
		if not var4970_upvr:IsA("ParticleEmitter") then
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				return var4970_upvr:GetAttribute("LimitedAura")
			end
			if var4970_upvr:IsA("Attachment") or INLINED_8() then
				if var4970_upvr:IsA("ParticleEmitter") then
					var4970_upvr.Enabled = false
				else
					for _, v_116 in pairs(var4970_upvr:GetChildren()) do
						v_116.Enabled = false
					end
				end
				local function var4975() -- Line 17934
					--[[ Upvalues[1]:
						[1]: var4970_upvr (readonly)
					]]
					if var4970_upvr and var4970_upvr.Parent then
						var4970_upvr:Destroy()
					end
				end
				task.delay(4, var4975)
			end
			-- KONSTANTWARNING: GOTO [8] #7
		end
	end
	tbl_755.Startup = Startup
	tbl_33["Final Stand"] = tbl_755
	local tbl_51 = {
		Sounds = {};
		AuraEffect = true;
		Limited = true;
		Cooldown = 20;
		Preview = 80531366520745;
		Animation = 107649573628906;
		Stun = "Freeze";
	}
	local function Startup(arg1_536, arg2_391, arg3_375) -- Line 18044
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		local pairs_result1_43, pairs_result2_35, pairs_result3_40 = pairs(arg2:GetDescendants())
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.7]
		if nil:IsA("Sound") and tostring(nil) == "CrushEmoteAmbience" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			game:GetService("TweenService"):Create(nil, TweenInfo.new(0.75), {
				Volume = 0;
			}):Play()
			local var4984_upvr
			task.delay(1, function() -- Line 18050
				--[[ Upvalues[1]:
					[1]: var4984_upvr (readonly)
				]]
				if var4984_upvr and var4984_upvr.Parent then
					var4984_upvr:Destroy()
				end
			end)
		end
		if not var4984_upvr:IsA("ParticleEmitter") then
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				return var4984_upvr:GetAttribute("LimitedAura")
			end
			if var4984_upvr:IsA("Attachment") or INLINED_9() then
				if var4984_upvr:IsA("ParticleEmitter") then
					var4984_upvr.Enabled = false
				else
					for _, v_117 in pairs(var4984_upvr:GetChildren()) do
						v_117.Enabled = false
					end
				end
				local function var4989() -- Line 18063
					--[[ Upvalues[1]:
						[1]: var4984_upvr (readonly)
					]]
					if var4984_upvr and var4984_upvr.Parent then
						var4984_upvr:Destroy()
					end
				end
				task.delay(4, var4989)
			end
			-- KONSTANTWARNING: GOTO [8] #7
		end
	end
	tbl_51.Startup = Startup
	tbl_33["Boundless Rage"] = tbl_51
	local tbl_880 = {}
	local function Startup(arg1_537, arg2_392, arg3_376) -- Line 18154
		--[[ Upvalues[2]:
			[1]: var93_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		var93_upvr({
			SoundId = "rbxassetid://16749048896";
			Parent = arg2.PrimaryPart;
			Volume = 0.65;
		}):Play()
	end
	tbl_880.Startup = Startup
	tbl_880.Keyframes = {}
	tbl_880.Animation = 16719053698
	tbl_33["The Hunt"] = tbl_880
	local tbl_876 = {}
	local tbl_543 = {}
	local tbl_542 = {}
	var1669 = "rbxassetid://16719111858"
	tbl_542.SoundId = var1669
	var1669 = 1.5
	tbl_542.Volume = var1669
	var1669 = false
	tbl_542.Looped = var1669
	var1669 = true
	tbl_542.ParentTorso = var1669
	tbl_543[0] = tbl_542
	tbl_876.Sounds = tbl_543
	local function Startup(arg1_538, arg2_393, arg3_377) -- Line 18179
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_313 = script.Keys[8]:Clone()
		clone_313:SetAttribute("EmoteProperty", true)
		table.insert(arg1_538, clone_313)
		local m6d_2 = clone_313.m6d
		m6d_2:SetAttribute("EmoteProperty", true)
		table.insert(arg1_538, m6d_2)
		m6d_2.Name = clone_313.Name
		m6d_2.Part0 = arg2.PrimaryPart
		m6d_2.Part1 = clone_313
		m6d_2.Parent = arg2.PrimaryPart
		clone_313.Parent = arg2
	end
	tbl_876.Startup = Startup
	tbl_876.Animation = 16719107050
	tbl_33["Eighth Key"] = tbl_876
	local tbl_300 = {}
	local function Startup(arg1_539, arg2_394, arg3_378) -- Line 18194
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_139 = script.Keys[10]:Clone()
		clone_139:SetAttribute("EmoteProperty", true)
		table.insert(arg1_539, clone_139)
		local m6d_12 = clone_139.m6d
		m6d_12:SetAttribute("EmoteProperty", true)
		table.insert(arg1_539, m6d_12)
		m6d_12.Name = clone_139.Name
		m6d_12.Part0 = arg2.PrimaryPart
		m6d_12.Part1 = clone_139
		m6d_12.Parent = arg2.PrimaryPart
		clone_139.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16725117208";
			Parent = clone_139;
			Volume = 1.5;
		}):Play()
	end
	tbl_300.Startup = Startup
	tbl_300.Animation = 16725121777
	tbl_33["Tenth Key"] = tbl_300
	local tbl_541 = {}
	local function Startup(arg1_540, arg2_395, arg3_379) -- Line 18215
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_169 = script.Keys[6]:Clone()
		clone_169:SetAttribute("EmoteProperty", true)
		table.insert(arg1_540, clone_169)
		local m6d_18 = clone_169.m6d
		m6d_18:SetAttribute("EmoteProperty", true)
		table.insert(arg1_540, m6d_18)
		m6d_18.Name = clone_169.Name
		m6d_18.Part0 = arg2.PrimaryPart
		m6d_18.Part1 = clone_169
		m6d_18.Parent = arg2.PrimaryPart
		clone_169.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16725146789";
			Parent = clone_169;
			Volume = 1.5;
		}):Play()
	end
	tbl_541.Startup = Startup
	tbl_541.Animation = 16725167915
	tbl_33["Sixth Key"] = tbl_541
	local tbl_539 = {}
	local function Startup(arg1_541, arg2_396, arg3_380) -- Line 18236
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_164 = script.Keys[9]:Clone()
		clone_164:SetAttribute("EmoteProperty", true)
		table.insert(arg1_541, clone_164)
		local m6d_17 = clone_164.m6d
		m6d_17:SetAttribute("EmoteProperty", true)
		table.insert(arg1_541, m6d_17)
		m6d_17.Name = clone_164.Name
		m6d_17.Part0 = arg2.PrimaryPart
		m6d_17.Part1 = clone_164
		m6d_17.Parent = arg2.PrimaryPart
		clone_164.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16719157711";
			Parent = clone_164;
			Volume = 1.5;
		}):Play()
	end
	tbl_539.Startup = Startup
	tbl_539.Animation = 16719149848
	tbl_33["Ninth Key"] = tbl_539
	local tbl_537 = {}
	local function Startup(arg1_542, arg2_397, arg3_381) -- Line 18257
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_228 = script.Keys[1]:Clone()
		clone_228:SetAttribute("EmoteProperty", true)
		table.insert(arg1_542, clone_228)
		local m6d_25 = clone_228.m6d
		m6d_25:SetAttribute("EmoteProperty", true)
		table.insert(arg1_542, m6d_25)
		m6d_25.Name = clone_228.Name
		m6d_25.Part0 = arg2.PrimaryPart
		m6d_25.Part1 = clone_228
		m6d_25.Parent = arg2.PrimaryPart
		clone_228.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16719180495";
			Parent = clone_228;
			TimePosition = 0.075;
			Volume = 1.5;
		}):Resume()
	end
	tbl_537.Startup = Startup
	tbl_537.Animation = 16719183472
	tbl_33["First Key"] = tbl_537
	local tbl_498 = {}
	local function Startup(arg1_543, arg2_398, arg3_382) -- Line 18279
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_48 = script.Keys[7]:Clone()
		clone_48:SetAttribute("EmoteProperty", true)
		table.insert(arg1_543, clone_48)
		local m6d_3 = clone_48.m6d
		m6d_3:SetAttribute("EmoteProperty", true)
		table.insert(arg1_543, m6d_3)
		m6d_3.Name = clone_48.Name
		m6d_3.Part0 = arg2.PrimaryPart
		m6d_3.Part1 = clone_48
		m6d_3.Parent = arg2.PrimaryPart
		clone_48.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16719202700";
			Parent = clone_48;
			TimePosition = 0;
			Volume = 1.5;
		}):Resume()
	end
	tbl_498.Startup = Startup
	tbl_498.Animation = 16719205513
	tbl_33["Seventh Key"] = tbl_498
	local tbl_419 = {}
	local function Startup(arg1_544, arg2_399, arg3_383) -- Line 18301
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_136 = script.Keys[3]:Clone()
		clone_136:SetAttribute("EmoteProperty", true)
		table.insert(arg1_544, clone_136)
		local m6d_16 = clone_136.m6d
		m6d_16:SetAttribute("EmoteProperty", true)
		table.insert(arg1_544, m6d_16)
		m6d_16.Name = clone_136.Name
		m6d_16.Part0 = arg2.PrimaryPart
		m6d_16.Part1 = clone_136
		m6d_16.Parent = arg2.PrimaryPart
		clone_136.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16725331724";
			Parent = clone_136;
			Volume = 1.5;
		}):Resume()
	end
	tbl_419.Startup = Startup
	tbl_419.Animation = 16725337143
	tbl_33["Third Key"] = tbl_419
	local tbl_704 = {}
	local function Startup(arg1_545, arg2_400, arg3_384) -- Line 18322
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_150 = script.Keys[4]:Clone()
		clone_150:SetAttribute("EmoteProperty", true)
		table.insert(arg1_545, clone_150)
		local m6d_4 = clone_150.m6d
		m6d_4:SetAttribute("EmoteProperty", true)
		table.insert(arg1_545, m6d_4)
		m6d_4.Name = clone_150.Name
		m6d_4.Part0 = arg2.PrimaryPart
		m6d_4.Part1 = clone_150
		m6d_4.Parent = arg2.PrimaryPart
		clone_150.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16719261316";
			Parent = clone_150;
			TimePosition = 0.2;
			Volume = 1.5;
		}):Resume()
	end
	tbl_704.Startup = Startup
	tbl_704.Animation = 16719220174
	tbl_33["Fourth Key"] = tbl_704
	local tbl_534 = {}
	local function Startup(arg1_546, arg2_401, arg3_385) -- Line 18344
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_149 = script.Keys[5]:Clone()
		clone_149:SetAttribute("EmoteProperty", true)
		table.insert(arg1_546, clone_149)
		local m6d_15 = clone_149.m6d
		m6d_15:SetAttribute("EmoteProperty", true)
		table.insert(arg1_546, m6d_15)
		m6d_15.Name = clone_149.Name
		m6d_15.Part0 = arg2.PrimaryPart
		m6d_15.Part1 = clone_149
		m6d_15.Parent = arg2.PrimaryPart
		clone_149.Parent = arg2
		shared.sfx({
			SoundId = "rbxassetid://16725540436";
			Parent = clone_149;
			Volume = 1.5;
		}):Resume()
	end
	tbl_534.Startup = Startup
	tbl_534.Animation = 16725350277
	tbl_33["Fifth Key"] = tbl_534
	local tbl_442 = {}
	local function Startup(arg1_547, arg2_402, arg3_386) -- Line 18365
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_147_upvr = script.Keys[2]:Clone()
		clone_147_upvr:SetAttribute("EmoteProperty", true)
		table.insert(arg1_547, clone_147_upvr)
		local m6d_14 = clone_147_upvr.m6d
		m6d_14:SetAttribute("EmoteProperty", true)
		table.insert(arg1_547, m6d_14)
		m6d_14.Name = clone_147_upvr.Name
		m6d_14.Part0 = arg2.PrimaryPart
		m6d_14.Part1 = clone_147_upvr
		m6d_14.Parent = arg2.PrimaryPart
		clone_147_upvr.Parent = arg2
		task.delay(0.3, function() -- Line 18375
			--[[ Upvalues[1]:
				[1]: clone_147_upvr (readonly)
			]]
			if clone_147_upvr.Parent then
				shared.sfx({
					SoundId = "rbxassetid://16719230370";
					Parent = clone_147_upvr;
					TimePosition = 0;
					Volume = 1.5;
				}):Resume()
			end
		end)
	end
	tbl_442.Startup = Startup
	tbl_442.Animation = 16719226293
	tbl_33["Second Key"] = tbl_442
	local tbl_197 = {}
	local tbl_532 = {}
	local tbl_483 = {}
	var1669 = "rbxassetid://35930009"
	tbl_483.SoundId = var1669
	var1669 = true
	tbl_483.Looped = var1669
	var1669 = 0.25
	tbl_483.Volume = var1669
	var1669 = true
	tbl_483.ParentTorso = var1669
	tbl_532[0] = tbl_483
	tbl_197.Sounds = tbl_532
	function tbl_197.Startup(arg1_548, arg2_403, arg3_387) -- Line 18400
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local clone_128 = script.potion:Clone()
		clone_128.Parent = arg2
		local Weld_7 = Instance.new("Weld")
		Weld_7.Part0 = arg2["Right Arm"]
		Weld_7.Part1 = clone_128
		Weld_7.C0 = CFrame.new(-0.100006104, -1, 0.499969482, 1, 0, 0, 0, -1.00000012, -2.79396772e-09, 0, -2.79396772e-09, -1)
		Weld_7.Parent = clone_128
		for _, v_118 in pairs({Weld_7, clone_128}) do
			v_118:SetAttribute("EmoteProperty", true)
			table.insert(arg1_548, v_118)
		end
	end
	tbl_197.HideWeapon = true
	tbl_197.Looped = true
	tbl_197.Animation = 35654637
	tbl_197.Stun = "Slowed"
	tbl_33["Monster Mash Potion"] = tbl_197
	-- KONSTANTERROR: [0] 1. Error Block 395 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19369] 13279. Error Block 381 start (CF ANALYSIS FAILED)
	for i_131, _ in pairs(tbl_33) do
		if string.split(i_131, ' ')[2] == "Key" or i_131 == "The Hunt" then
			tbl_33[i_131].HideWeapon = true
			tbl_33[i_131].Stun = "Freeze"
			tbl_33[i_131].Ease = 0
			tbl_33[i_131].CantCancel = true
			tbl_33[i_131].Key = true
			tbl_33[i_131].NoRotate = true
			tbl_33[i_131].Keyframes = {
				["end"] = function() -- Line 18428
				end;
			}
		end
	end
	for i_132, v_120 in pairs(tbl_33) do
		tbl_459[i_132] = v_120
		local _
	end
	-- KONSTANTERROR: [19369] 13279. Error Block 381 end (CF ANALYSIS FAILED)
end
function module_upvr_3.Get(arg1) -- Line 20676
	local EmoteData = script:FindFirstChild("EmoteData")
	if not EmoteData then
		EmoteData = script:WaitForChild("EmoteData", 15)
	end
	return require(EmoteData)
end
function module_upvr_3.GetTable(arg1, arg2) -- Line 20680
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3:Play(nil, nil, true, nil, arg2)
end
function module_upvr_3.IsLimited(arg1, arg2) -- Line 20684
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3:GetTable(true)[arg2].Limited
end
return module_upvr_3