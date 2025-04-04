-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-28 04:12:40
-- Luau version 6, Types version 3
-- Time taken: 0.037893 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local var25_upvr
repeat
	task.wait()
until game.IsLoaded
local LocalPlayer_upvr = game.Players.LocalPlayer
local ImageLabel_2_upvr = script.Parent.ImageLabel
local any_GetTable_result1_upvr_2 = require(game.ReplicatedStorage.Emotes):GetTable(true)
local UserInputService = game:GetService("UserInputService")
local tbl_10_upvr = {}
local ScrollingFrame_upvr_2 = script.ScrollingFrame
local tbl_15_upvr = {}
local tbl_2_upvr = {}
local tbl_14_upvr = {}
local tbl_13_upvr = {"Boundless Rage", "Final Stand"}
local tbl_12_upvr = {
	KillEmote = {
		Text = "Kill Emote";
		AttributeName = "KillEmote";
		Table = tbl_14_upvr;
		ImageColor3 = Color3.fromRGB(171, 66, 66);
	};
	MeleeEffects = {
		Text = "Melee Effect";
		AttributeName = "MeleeEffect";
		Table = tbl_2_upvr;
		ImageColor3 = Color3.fromRGB(255, 255, 255);
	};
	AuraEffect = {
		Text = "Aura Effect";
		AttributeName = "AuraEffect";
		Table = tbl_13_upvr;
		ImageColor3 = Color3.fromRGB(255, 194, 38);
	};
}
ScrollingFrame_upvr_2:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 57
	--[[ Upvalues[2]:
		[1]: ScrollingFrame_upvr_2 (readonly)
		[2]: ImageLabel_2_upvr (readonly)
	]]
	if ScrollingFrame_upvr_2.Parent == script then
		ImageLabel_2_upvr.Spin.Visible = true
		ImageLabel_2_upvr.Bulk.Visible = true
	else
		ImageLabel_2_upvr.Spin.Visible = false
		ImageLabel_2_upvr.Bulk.Visible = false
	end
end)
if UserInputService.TouchEnabled then
	var25_upvr = "PRESS"
else
	var25_upvr = "CLICK"
end
local formatted_upvw = string.format("<font size=\"30\">CLAIM NEW EMOTE</font>\n<font size=\"18\">%s ME!</font>", var25_upvr)
local tbl_4_upvr = {}
local tbl_5_upvr = {}
var25_upvr = {}
local function var44_upvr() -- Line 76
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local _, pairs_result2_6, pairs_result3_20 = pairs(workspace.Live:GetChildren())
	local var56
	for _, v in var56, pairs_result2_6, pairs_result3_20 do
		if tostring(v) ~= tostring(LocalPlayer_upvr) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health <= 0 and (v:FindFirstChild("HumanoidRootPart").Position - LocalPlayer_upvr.Character.PrimaryPart.Position).Magnitude <= 10 and not v:FindFirstChild("KillEmoteFinished") and v:FindFirstChild("Torso") and v:FindFirstChild("Torso").Transparency ~= 1 then
			table.insert({}, v)
		end
	end
	var56 = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for _, v_2 in pairs({}) do
		if (v_2:FindFirstChild("HumanoidRootPart").Position - LocalPlayer_upvr.Character.PrimaryPart.Position).Magnitude < 20 then
			var56 = v_2
		end
	end
	if var56 then
		return var56
	end
end
local function var61_upvr(arg1, arg2, arg3) -- Line 107
	--[[ Upvalues[1]:
		[1]: tbl_15_upvr (readonly)
	]]
	local Radial = arg1.Radial
	local var79 = (arg2 or 16) / 160
	Radial.Visible = true
	local tbl_20 = {"rbxassetid://95007903269647", "rbxassetid://71926048514582", "rbxassetid://111515469080408", "rbxassetid://99378878471592", "rbxassetid://124125109911613", "rbxassetid://112905073377905", "rbxassetid://94584979745998", "rbxassetid://123498196278321", "rbxassetid://98495583544127", "rbxassetid://108071026812990"}
	for i_3, v_3 in pairs(tbl_20) do
		if 2 < i_3 then
			local ImageLabel = Instance.new("ImageLabel")
			ImageLabel.Size = UDim2.new(0.001, 0, 0.001, 0)
			ImageLabel.ImageTransparency = 0.99
			ImageLabel.Image = v_3
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Parent = Radial
			table.insert({}, ImageLabel)
		end
	end
	for _, v_4 in pairs(tbl_20) do
		Radial.Image = v_4
		for i_5 = 3, 0, -1 do
			for i_6 = 3, 0, -1 do
				Radial.ImageRectOffset = Vector2.new(225 * i_6, 225 * i_5)
				task.wait(var79)
			end
		end
	end
	tbl_15_upvr[arg3] = nil
	Radial.Visible = false
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for _, v_5 in pairs({}) do
		v_5:Destroy()
	end
end
local ActionCheck_upvr = require(game.ReplicatedStorage.ActionCheck)
local function var91_upvr(arg1, arg2) -- Line 155
	--[[ Upvalues[15]:
		[1]: ImageLabel_2_upvr (readonly)
		[2]: var25_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: any_GetTable_result1_upvr_2 (readonly)
		[6]: tbl_13_upvr (readonly)
		[7]: tbl_12_upvr (readonly)
		[8]: tbl_14_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: ScrollingFrame_upvr_2 (readonly)
		[11]: LocalPlayer_upvr (readonly)
		[12]: ActionCheck_upvr (readonly)
		[13]: var44_upvr (readonly)
		[14]: tbl_15_upvr (readonly)
		[15]: var61_upvr (readonly)
	]]
	local clone_8_upvr = script.Frame:Clone()
	local Button = clone_8_upvr.Button
	clone_8_upvr.Parent = ImageLabel_2_upvr
	clone_8_upvr.Name = arg2
	clone_8_upvr.Position = arg1
	var25_upvr[arg2] = clone_8_upvr
	local Preview_upvr = clone_8_upvr.ViewportFrame.WorldModel.Preview
	local Animation = Instance.new("Animation")
	Animation.AnimationId = "rbxassetid://13716964686"
	Animation.Parent = Preview_upvr
	local Camera = Instance.new("Camera")
	Camera.CFrame = Preview_upvr.PrimaryPart.CFrame * CFrame.new(0, 1, -5) * CFrame.Angles(0.3490658503988659, math.pi, 0)
	Camera.Parent = clone_8_upvr
	clone_8_upvr.ViewportFrame.CurrentCamera = Camera
	local any_LoadAnimation_result1_upvw = Preview_upvr.Humanoid.Animator:LoadAnimation(Animation)
	any_LoadAnimation_result1_upvw.Looped = true
	if ImageLabel_2_upvr.Visible then
		any_LoadAnimation_result1_upvw:Play()
	end
	tbl_5_upvr[Preview_upvr] = any_LoadAnimation_result1_upvw
	table.insert(tbl_4_upvr, Preview_upvr)
	local function var99() -- Line 187
		--[[ Upvalues[6]:
			[1]: clone_8_upvr (readonly)
			[2]: any_GetTable_result1_upvr_2 (copied, readonly)
			[3]: tbl_13_upvr (copied, readonly)
			[4]: tbl_12_upvr (copied, readonly)
			[5]: tbl_14_upvr (copied, readonly)
			[6]: tbl_2_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
		local string_byte_result1 = string.byte(string.sub(clone_8_upvr.EmoteName.Text, 1, 1))
		local var105
		if tonumber(string.sub(clone_8_upvr.EmoteName.Text, 1, 1)) then
			string_byte_result1 = 150
		end
		clone_8_upvr.EmoteName.Text = clone_8_upvr:GetAttribute("Emote") or "Crush"
		clone_8_upvr.EmoteProperty.Text = "2 Player"
		var105 = "Dual"
		clone_8_upvr.EmoteProperty.Visible = clone_8_upvr:GetAttribute(var105)
		clone_8_upvr.EmoteProperty.ZIndex = 3
		clone_8_upvr.LayoutOrder = string_byte_result1
		var105 = tostring(clone_8_upvr.EmoteName.Text)
		local var106 = any_GetTable_result1_upvr_2[var105]
		var105 = false
		for _, v_6 in pairs(tbl_13_upvr) do
			if tostring(clone_8_upvr:GetAttribute("Emote")) == v_6 then
				var105 = true
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [107] 79. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [107] 79. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [110] 81. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [110] 81. Error Block 10 end (CF ANALYSIS FAILED)
	end
	clone_8_upvr:GetAttributeChangedSignal("Emote"):Connect(var99)
	var99()
	clone_8_upvr:GetAttributeChangedSignal("Animation"):Connect(function() -- Line 264
		--[[ Upvalues[5]:
			[1]: any_LoadAnimation_result1_upvw (read and write)
			[2]: clone_8_upvr (readonly)
			[3]: Preview_upvr (readonly)
			[4]: ImageLabel_2_upvr (copied, readonly)
			[5]: tbl_5_upvr (copied, readonly)
		]]
		any_LoadAnimation_result1_upvw:Stop()
		local Animation_3 = Instance.new("Animation")
		Animation_3.AnimationId = clone_8_upvr:GetAttribute("Animation")
		Animation_3.Parent = Preview_upvr
		any_LoadAnimation_result1_upvw = Preview_upvr.Humanoid.Animator:LoadAnimation(Animation_3)
		any_LoadAnimation_result1_upvw.Looped = true
		if ImageLabel_2_upvr.Visible then
			any_LoadAnimation_result1_upvw:Play()
		end
		tbl_5_upvr[Preview_upvr] = any_LoadAnimation_result1_upvw
	end)
	local var169_upvw
	Button.InputBegan:Connect(function(arg1_2, arg2_2) -- Line 281
		--[[ Upvalues[12]:
			[1]: ImageLabel_2_upvr (copied, readonly)
			[2]: var169_upvw (read and write)
			[3]: ScrollingFrame_upvr_2 (copied, readonly)
			[4]: clone_8_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: var25_upvr (copied, readonly)
			[7]: LocalPlayer_upvr (copied, readonly)
			[8]: ActionCheck_upvr (copied, readonly)
			[9]: var44_upvr (copied, readonly)
			[10]: any_GetTable_result1_upvr_2 (copied, readonly)
			[11]: tbl_15_upvr (copied, readonly)
			[12]: var61_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2_2 then
		elseif arg1_2.UserInputType == Enum.UserInputType.MouseButton1 or arg1_2.UserInputType == Enum.UserInputType.Touch then
			if not ImageLabel_2_upvr.Visible then return end
			function var169_upvw() -- Line 287
				--[[ Upvalues[1]:
					[1]: var169_upvw (copied, read and write)
				]]
				var169_upvw = nil
			end
			local tick_result1_2 = tick()
			repeat
				if var169_upvw then
					task.wait()
				end
			until not var169_upvw and 0.5 < tick() - tick_result1_2
			if 0.5 < tick() - tick_result1_2 then
				local var171 = var169_upvw
				if var171 then
					if ScrollingFrame_upvr_2.Parent ~= clone_8_upvr then
						var171 = false
					else
						var171 = true
					end
					ScrollingFrame_upvr_2:SetAttribute("Number", arg2)
					if not var171 or not script then
					end
					ScrollingFrame_upvr_2.Parent = clone_8_upvr
					shared.sfx({
						SoundId = "rbxassetid://5797580410";
						Parent = workspace;
						Volume = 0.75;
					}):Play()
					for _, v_36 in pairs(var25_upvr) do
						local var176 = clone_8_upvr
						if v_36 ~= var176 then
							if var171 then
								var176 = true
							else
								var176 = false
							end
							v_36.Visible = var176
						end
					end
					return
				end
			end
			ScrollingFrame_upvr_2.Parent = script
			for i_40, _ in pairs(var25_upvr) do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg2.Visible = true
			end
			ImageLabel_2_upvr.Visible = false
			local Character_3_upvr = LocalPlayer_upvr.Character
			if Character_3_upvr then
				i_40 = "NoRotate"
				if Character_3_upvr:FindFirstChild(i_40) then return end
				i_40 = "DoingEmote"
				if not Character_3_upvr:FindFirstChild(i_40) then
					i_40 = Character_3_upvr
					;({})[1] = "Emote"
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if not ActionCheck_upvr:Check(i_40, {}) then return end
				end
				i_40 = Character_3_upvr:GetAttribute("_JustDashed") or 0
				if tick() - i_40 < 0.4 then return end
				i_40 = "KillEmote"
				if clone_8_upvr:GetAttribute(i_40) then
					i_40 = var44_upvr()
					if not i_40 then
						local var181
					end
					if i_40 and i_40:FindFirstChild("KillEmoteFinished") then
						var181 = false
					end
					if not var181 then
						shared.repfire({
							Effect = "Notification";
							Message = "THIS PLAYER HAS ALREADY BEEN EMOTED ON!";
						})
						return
					end
				end
				local var183_upvr = clone_8_upvr:GetAttribute("Emote") or "Crush"
				i_40 = any_GetTable_result1_upvr_2[var183_upvr]
				local Cooldown_upvr_2 = i_40.Cooldown
				if Cooldown_upvr_2 then
					i_40 = tbl_15_upvr[var183_upvr]
					if i_40 then return end
					i_40 = clone_8_upvr.Radial.Visible
					if not i_40 then
						i_40 = clone_8_upvr.Radial
						i_40.Visible = true
						i_40 = clone_8_upvr.Radial
						i_40.Image = "rbxassetid://95007903269647"
						i_40 = clone_8_upvr.Radial
						i_40.ImageRectOffset = Vector2.new(675, 675)
						i_40 = tbl_15_upvr
						i_40[var183_upvr] = math.huge
						i_40 = task.spawn
						i_40(function() -- Line 368
							--[[ Upvalues[6]:
								[1]: Character_3_upvr (readonly)
								[2]: var183_upvr (readonly)
								[3]: clone_8_upvr (copied, readonly)
								[4]: tbl_15_upvr (copied, readonly)
								[5]: Cooldown_upvr_2 (readonly)
								[6]: var61_upvr (copied, readonly)
							]]
							local var186_upvw
							local tick_result1_3 = tick()
							local var189_upvw
							var189_upvw = Character_3_upvr.ChildAdded:Connect(function(arg1_4) -- Line 371
								--[[ Upvalues[3]:
									[1]: var183_upvr (copied, readonly)
									[2]: var186_upvw (read and write)
									[3]: var189_upvw (read and write)
								]]
								if arg1_4.Name == "DoingEmote" and arg1_4:GetAttribute("Name") == var183_upvr then
									var186_upvw = arg1_4
									return var189_upvw:Disconnect()
								end
							end)
							repeat
								task.wait()
							until var186_upvw and 1 < tick() - tick_result1_3
							var189_upvw:Disconnect()
							if 1 < tick() - tick_result1_3 then
								clone_8_upvr.Radial.Visible = false
								tbl_15_upvr[var183_upvr] = nil
							elseif var186_upvw and var186_upvw:GetAttribute("Name") == var183_upvr then
								local tick_result1_5 = tick()
								repeat
									task.wait()
								until not var186_upvw and not var186_upvw.Parent and 13 < tick() - tick_result1_5 and not Character_3_upvr.Parent
								if 13 < tick() - tick_result1_5 then
									clone_8_upvr.Radial.Visible = false
									tbl_15_upvr[var183_upvr] = nil
									return
								end
								tbl_15_upvr[var183_upvr] = tick() + Cooldown_upvr_2
								task.spawn(var61_upvr, clone_8_upvr, Cooldown_upvr_2, var183_upvr)
							else
								tbl_15_upvr[var183_upvr] = nil
							end
						end)
					else
						return
					end
				end
				i_40 = Character_3_upvr:SetAttribute
				i_40("EmoteStarted", tick())
				i_40 = Character_3_upvr:SetAttribute
				i_40("SideDashDisable", tick())
				i_40 = Character_3_upvr.Communicate
				i_40 = i_40:FireServer
				i_40({
					Goal = "Emote";
					Emote = var183_upvr;
				})
			end
		end
	end)
	Button.InputEnded:Connect(function(arg1_5, arg2_3) -- Line 420
		--[[ Upvalues[1]:
			[1]: var169_upvw (read and write)
		]]
		if arg2_3 then
		elseif arg1_5.UserInputType == Enum.UserInputType.MouseButton1 or arg1_5.UserInputType == Enum.UserInputType.Touch then
			if var169_upvw then
				var169_upvw()
			end
		end
	end)
	return clone_8_upvr
end
local tbl_11_upvr = {}
local var195_upvw = -100
local GamepadEnabled_upvr = UserInputService.GamepadEnabled
local function var194_upvr() -- Line 436
	--[[ Upvalues[8]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ScrollingFrame_upvr_2 (readonly)
		[3]: any_GetTable_result1_upvr_2 (readonly)
		[4]: tbl_12_upvr (readonly)
		[5]: var195_upvw (read and write)
		[6]: tbl_11_upvr (readonly)
		[7]: GamepadEnabled_upvr (readonly)
		[8]: var25_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_JSONDecode_result1 = game:GetService("HttpService"):JSONDecode(LocalPlayer_upvr:GetAttribute("Emotes") or "[]")
	for i_9 = 1, math.floor(#any_JSONDecode_result1 / 2) do
		local var281 = #any_JSONDecode_result1 - i_9 + 1
		any_JSONDecode_result1[i_9] = any_JSONDecode_result1[var281]
		any_JSONDecode_result1[var281] = any_JSONDecode_result1[i_9]
	end
	for _, v_7_upvr in pairs(any_JSONDecode_result1) do
		if not ScrollingFrame_upvr_2.ScrollingFrame:FindFirstChild(v_7_upvr.."em") then
			local var285
			if any_GetTable_result1_upvr_2[v_7_upvr] then
				local clone_7 = script.TextButton:Clone()
				clone_7.Text = v_7_upvr
				var285 = v_7_upvr
				clone_7.Name = var285.."em"
				var285 = any_GetTable_result1_upvr_2
				local var287 = var285[tostring(v_7_upvr)]
				var285 = nil
				for i_11, v_8 in pairs(tbl_12_upvr) do
					table.insert({}, {i_11, v_8.ImageColor3})
					local var293
				end
				for _, v_9 in pairs(var293) do
					if var287 and var287[v_9[1]] then
						var285 = v_9[2]
					end
				end
				if var285 then
					local clone_4 = script.EmoteGlow:Clone()
					clone_4.ImageColor3 = var285
					clone_4.Parent = clone_7
				end
				if not tonumber(string.sub(clone_7.Name:lower(), 1, 1)) then
				end
				clone_7.Parent = ScrollingFrame_upvr_2.ScrollingFrame
				local var298_upvw
				if LocalPlayer_upvr and LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("NewEmotes") then
					var298_upvw = script.Glow:Clone()
					var298_upvw.Parent = clone_7
					clone_7.LayoutOrder = var195_upvw
					var195_upvw -= 1
					ScrollingFrame_upvr_2.ScrollingFrame.CanvasPosition = Vector2.new(0, 0, 0, 0)
				end
				tbl_11_upvr[clone_7] = var298_upvw or true
				if GamepadEnabled_upvr then
					clone_7.MouseButton1Click:Connect(function() -- Line 489
						--[[ Upvalues[5]:
							[1]: ScrollingFrame_upvr_2 (copied, readonly)
							[2]: var25_upvr (copied, readonly)
							[3]: var298_upvw (read and write)
							[4]: LocalPlayer_upvr (copied, readonly)
							[5]: v_7_upvr (readonly)
						]]
						ScrollingFrame_upvr_2.Parent = script
						for i_13, v_10 in pairs(var25_upvr) do
							v_10.Visible = true
						end
						if var298_upvw then
							var298_upvw:Destroy()
						end
						local Character_2 = LocalPlayer_upvr.Character
						if Character_2 then
							local tbl_16 = {}
							i_13 = "rbxassetid://6493287948"
							tbl_16.SoundId = i_13
							i_13 = workspace
							tbl_16.Parent = i_13
							i_13 = 0.65
							tbl_16.Volume = i_13
							shared.sfx(tbl_16):Play()
							i_13 = {}
							v_10 = "EmoteLoadout"
							i_13.Goal = v_10
							v_10 = v_7_upvr
							i_13.Emote = v_10
							v_10 = tonumber(ScrollingFrame_upvr_2:GetAttribute("Number") or 1)
							i_13.Loadout = v_10
							Character_2.Communicate:FireServer(i_13)
						end
					end)
				end
			end
		end
	end
end
game:GetService("UserInputService").InputBegan:Connect(function(arg1, arg2) -- Line 517
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: ScrollingFrame_upvr_2 (readonly)
		[4]: var25_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 7. Error Block 19 start (CF ANALYSIS FAILED)
	local Position = arg1.Position
	local _, _, _ = pairs(LocalPlayer_upvr.PlayerGui:GetGuiObjectsAtPosition(Position.X, Position.Y))
	-- KONSTANTERROR: [12] 7. Error Block 19 end (CF ANALYSIS FAILED)
end)
pcall(var194_upvr)
LocalPlayer_upvr:GetAttributeChangedSignal("Emotes"):Connect(function() -- Line 554
	--[[ Upvalues[1]:
		[1]: var194_upvr (readonly)
	]]
	var194_upvr(true)
end)
local function _(arg1, arg2) -- Line 559
	local var314
	if string.sub(string.lower(arg1), 1, string.len(arg2)) ~= string.lower(arg2) then
		var314 = false
	else
		var314 = true
	end
	return var314
end
local var316_upvw = 0
ScrollingFrame_upvr_2.TextBox:GetPropertyChangedSignal("Text"):Connect(function() -- Line 563
	--[[ Upvalues[2]:
		[1]: var316_upvw (read and write)
		[2]: ScrollingFrame_upvr_2 (readonly)
	]]
	var316_upvw = tick()
	task.delay(0.3, function() -- Line 566
		--[[ Upvalues[2]:
			[1]: var316_upvw (copied, read and write)
			[2]: ScrollingFrame_upvr_2 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [108] 82. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [108] 82. Error Block 23 end (CF ANALYSIS FAILED)
	end)
end)
local ScrollingFrame_upvr = ScrollingFrame_upvr_2.ScrollingFrame
ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 0, ScrollingFrame_upvr.UIListLayout.AbsoluteContentSize.Y)
ScrollingFrame_upvr.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 599
	--[[ Upvalues[1]:
		[1]: ScrollingFrame_upvr (readonly)
	]]
	ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 0, ScrollingFrame_upvr.UIListLayout.AbsoluteContentSize.Y)
end)
local function var320_upvr() -- Line 606
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var25_upvr (readonly)
		[3]: any_GetTable_result1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_14, v_11 in pairs(game:GetService("HttpService"):JSONDecode(LocalPlayer_upvr:GetAttribute("EmoteLoadout") or "[]")) do
		local rawget_result1 = rawget(var25_upvr, tonumber(i_14))
		if rawget_result1 then
			local var333
			if any_GetTable_result1_upvr_2[v_11] and any_GetTable_result1_upvr_2[v_11].Dual then
				var333 = true
			end
			rawget_result1:SetAttribute("Dual", var333)
			rawget_result1:SetAttribute("Emote", v_11)
			if not any_GetTable_result1_upvr_2[v_11] or not any_GetTable_result1_upvr_2[v_11].Animation then
				local Animation_2 = any_GetTable_result1_upvr_2.Crush.Animation
			end
			local var335
			if typeof(Animation_2) == "Instance" then
				if game:GetService("RunService"):IsStudio() then
					var335 = game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(Animation_2)
				else
					var335 = "rbxassetid://0"
				end
			else
				var335 = "rbxassetid://"..game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(Animation_2)
			end
			rawget_result1:SetAttribute("Animation", var335)
		end
	end
end
local tbl_6_upvr = {UDim2.new(0.5, 0, 0.115, 0), UDim2.new(0.095, 0, 0.5, 0), UDim2.new(0.5, 0, 0.9, 0), UDim2.new(0.903, 0, 0.498, 0)}
local tbl_17_upvr = {}
local GamepadEnabled_upvr_2 = UserInputService.GamepadEnabled
local var340_upvw = false
local var341_upvw = false
local function var338_upvr(arg1) -- Line 648
	--[[ Upvalues[11]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: GamepadEnabled_upvr_2 (readonly)
		[3]: ScrollingFrame_upvr_2 (readonly)
		[4]: ImageLabel_2_upvr (readonly)
		[5]: var340_upvw (read and write)
		[6]: var341_upvw (read and write)
		[7]: var25_upvr (readonly)
		[8]: tbl_4_upvr (readonly)
		[9]: tbl_6_upvr (readonly)
		[10]: var91_upvr (readonly)
		[11]: tbl_17_upvr (readonly)
	]]
	local Gamepass_upvr_2 = script.Parent.ImageLabel.Gamepass
	Gamepass_upvr_2.Visible = not LocalPlayer_upvr:GetAttribute("ExtraSlots")
	if GamepadEnabled_upvr_2 then
		Gamepass_upvr_2.Visible = false
	elseif not Gamepass_upvr_2.Visible then
		local GamepassTwo = script.Parent.ImageLabel.GamepassTwo
		GamepassTwo.Visible = not LocalPlayer_upvr:GetAttribute("EmoteSearchBar")
		if not GamepassTwo:GetAttribute("coddn") then
			GamepassTwo:SetAttribute("coddn", true)
			local function var380() -- Line 660
				--[[ Upvalues[1]:
					[1]: LocalPlayer_upvr (copied, readonly)
				]]
				game:GetService("MarketplaceService"):PromptGamePassPurchase(LocalPlayer_upvr, 793925178)
			end
			GamepassTwo.Spin.MouseButton1Click:Connect(var380)
			GamepassTwo.MouseButton1Click:Connect(var380)
		end
	end
	local function var381() -- Line 669
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (copied, readonly)
		]]
		LocalPlayer_upvr.Character.Communicate:FireServer({
			Goal = "Prompt Emote Purchase";
		})
	end
	if not Gamepass_upvr_2:GetAttribute("con") then
		Gamepass_upvr_2:SetAttribute("con", true)
		Gamepass_upvr_2.Spin.MouseButton1Click:Connect(var381)
		Gamepass_upvr_2.MouseButton1Click:Connect(var381)
		task.spawn(function() -- Line 679
			--[[ Upvalues[1]:
				[1]: Gamepass_upvr_2 (readonly)
			]]
			Gamepass_upvr_2.Spin.Text = string.gsub(Gamepass_upvr_2.Spin.Text, "99 ROBUX", game:GetService("MarketplaceService"):GetProductInfo(229966673, Enum.InfoType.GamePass).PriceInRobux.." ROBUX")
		end)
	end
	ScrollingFrame_upvr_2.Gamepass.Visible = false
	if LocalPlayer_upvr:GetAttribute("EmoteSearchBar") then
	end
	ScrollingFrame_upvr_2.TextBox.Visible = true
	ScrollingFrame_upvr_2.Frame.Visible = true
	if LocalPlayer_upvr:GetAttribute("EmoteSearchBar") then
		ImageLabel_2_upvr.Switch.Visible = true
		if LocalPlayer_upvr:GetAttribute("ExtraSlots") then
			ImageLabel_2_upvr.Switch.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
	end
	if LocalPlayer_upvr:GetAttribute("ExtraSlots") and not var340_upvw then
		var340_upvw = true
		if arg1 then
			ScrollingFrame_upvr_2.Parent = script
			var341_upvw = false
			for _, v_12 in pairs(var25_upvr) do
				v_12:Destroy()
			end
			table.clear(tbl_4_upvr)
			table.clear(var25_upvr)
		end
		script.Frame.Size = UDim2.new(0.285, 0, 0.285, 0)
		for _, v_13 in pairs({UDim2.new(0.215, 0, 0.24, 0), UDim2.new(0.785, 0, 0.24, 0), UDim2.new(0.215, 0, 0.76, 0), UDim2.new(0.785, 0, 0.76, 0)}) do
			table.insert(tbl_6_upvr, v_13)
		end
		if arg1 then
			for i_17, v_14 in pairs(tbl_6_upvr) do
				var91_upvr(v_14, i_17)
			end
		end
	end
	if not var341_upvw then
		var341_upvw = true
		for i_18, v_15 in pairs(tbl_6_upvr) do
			local var91_result1 = var91_upvr(v_15, #tbl_6_upvr + i_18)
			var91_result1.Button.Visible = false
			var91_result1.UIAspectRatioConstraint.AspectRatio = 0.0001
			var91_result1.Active = false
			tbl_17_upvr[var91_result1] = true
		end
	end
end
var338_upvr()
for i_19, v_16 in pairs(tbl_6_upvr) do
	var91_upvr(v_16, i_19)
	local _
end
local var403_upvw = false
ImageLabel_2_upvr.Switch.MouseButton1Click:Connect(function() -- Line 764
	--[[ Upvalues[3]:
		[1]: var25_upvr (readonly)
		[2]: tbl_17_upvr (readonly)
		[3]: var403_upvw (read and write)
	]]
	shared.sfx({
		SoundId = "rbxassetid://5797580410";
		Parent = workspace;
		Volume = 0.75;
	}):Play()
	for _, v_17 in pairs(var25_upvr) do
		if not not tbl_17_upvr[v_17] == not var403_upvw then
			v_17.Button.Visible = true
			v_17.UIAspectRatioConstraint.AspectRatio = 1
			v_17.Active = true
		else
			v_17.UIAspectRatioConstraint.AspectRatio = 0.0001
			v_17.Button.Visible = false
			v_17.Active = false
		end
	end
	var403_upvw = not var403_upvw
end)
ImageLabel_2_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 785
	--[[ Upvalues[3]:
		[1]: ImageLabel_2_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	if not ImageLabel_2_upvr.Visible then
		for _, v_18 in pairs(tbl_4_upvr) do
			for _, v_19 in pairs(v_18.Humanoid.Animator:GetPlayingAnimationTracks()) do
				v_19:Stop()
			end
		end
	else
		for _, v_31 in pairs(tbl_4_upvr) do
			if tbl_5_upvr[v_31] then
				tbl_5_upvr[v_31]:Play(0)
			end
		end
	end
end)
ImageLabel_2_upvr.Visible = false
local function var426_upvr(arg1) -- Line 804
	--[[ Upvalues[1]:
		[1]: tbl_14_upvr (readonly)
	]]
	for _, v_20 in pairs(tbl_14_upvr) do
		if v_20 and v_20:FindFirstChild("EmoteProperty") then
			v_20.EmoteProperty.Text = arg1
		end
	end
end
local var432_upvw
local var433_upvw
local var434_upvw
local function timeUntilNextWeek_upvr() -- Line 813, Named "timeUntilNextWeek"
	--[[ Upvalues[3]:
		[1]: var434_upvw (read and write)
		[2]: var432_upvw (read and write)
		[3]: var433_upvw (read and write)
	]]
	if not var434_upvw then
		return "???"
	end
	local os_difftime_result1 = os.difftime(var432_upvw + var433_upvw * var434_upvw, os.time())
	local floored_3 = math.floor(os_difftime_result1 / 86400)
	local var437 = os_difftime_result1 % 86400
	local floored_2 = math.floor(var437 / 3600)
	local var439 = var437 % 3600
	local floored = math.floor(var439 / 60)
	local module = {}
	if 0 < floored_3 then
		table.insert(module, floored_3..'d')
	end
	if 0 < floored_2 then
		table.insert(module, floored_2..'h')
	end
	if 0 < floored then
		table.insert(module, floored..'m')
	end
	table.insert(module, math.clamp(var439 % 60, 1, 60)..'s')
	return table.concat(module, ' ')
end
local CollectionService_upvr = game:GetService("CollectionService")
function shared.emotegui(arg1, arg2) -- Line 849
	--[[ Upvalues[8]:
		[1]: ImageLabel_2_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: ScrollingFrame_upvr_2 (readonly)
		[4]: var25_upvr (readonly)
		[5]: timeUntilNextWeek_upvr (readonly)
		[6]: var44_upvr (readonly)
		[7]: var426_upvr (readonly)
		[8]: CollectionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [161] 109. Error Block 36 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 109. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [163] 111. Error Block 38 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [163] 111. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 74 start (CF ANALYSIS FAILED)
	if arg2 then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.2]
	if not nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.3]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.4]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.5]
		for _, v_21 in nil do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.8]
			local function INLINED() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil == "Awakening Outfit"
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil == "Kill Sound"
			end
			if nil == "Cape Customization" or INLINED() or INLINED_2() then
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [163.2359972]
					return v_21 ~= nil
				end
				if nil == "Emotes" or nil == "Gifting" or nil == "Cosmetics" or INLINED_3() then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil == "Cosmetics" then
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if not nil then
						end
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if nil then
						end
					end
				end
			end
		end
	end
	if arg1 ~= nil then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not nil then
		for i_25, _ in nil do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		end
		if i_25 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			-- KONSTANTWARNING: GOTO [151] #101
		end
	else
		task.spawn(function() -- Line 904
			--[[ Upvalues[4]:
				[1]: ImageLabel_2_upvr (copied, readonly)
				[2]: timeUntilNextWeek_upvr (copied, readonly)
				[3]: var44_upvr (copied, readonly)
				[4]: var426_upvr (copied, readonly)
			]]
			while ImageLabel_2_upvr.Visible do
				ImageLabel_2_upvr.Limited.Timer.Timer.Text = "Leaving in "..timeUntilNextWeek_upvr()
				local var44_upvr_result1 = var44_upvr()
				if var44_upvr_result1 and not var44_upvr_result1:FindFirstChild("KillEmoteFinished") then
					var426_upvr("USE!")
				else
					var426_upvr("Kill Emote")
				end
				task.wait(0.1)
			end
		end)
	end
	-- KONSTANTERROR: [0] 1. Error Block 74 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [172] 119. Error Block 53 start (CF ANALYSIS FAILED)
	for _, _ in pairs(CollectionService_upvr:GetTagged("gamewins")) do
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [185.6]
		nil.Visible = not ImageLabel_2_upvr.Visible
	end
	-- KONSTANTERROR: [172] 119. Error Block 53 end (CF ANALYSIS FAILED)
end
pcall(var320_upvr)
LocalPlayer_upvr:GetAttributeChangedSignal("EmoteLoadout"):Connect(var320_upvr)
LocalPlayer_upvr:GetAttributeChangedSignal("ExtraSlots"):Connect(function() -- Line 930
	--[[ Upvalues[2]:
		[1]: var338_upvr (readonly)
		[2]: var320_upvr (readonly)
	]]
	var338_upvr(true)
	var320_upvr()
end)
LocalPlayer_upvr:GetAttributeChangedSignal("EmoteSearchBar"):Connect(function() -- Line 934
	--[[ Upvalues[1]:
		[1]: var338_upvr (readonly)
	]]
	var338_upvr(true)
end)
local EmoteProducts_upvr = require(game.ReplicatedStorage.Info).EmoteProducts
local any_GetTable_result1_upvr = require(game.ReplicatedStorage.Emotes):GetTable()
local function var464_upvr() -- Line 941
	--[[ Upvalues[6]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: any_GetTable_result1_upvr (readonly)
		[3]: tbl_10_upvr (readonly)
		[4]: EmoteProducts_upvr (readonly)
		[5]: ImageLabel_2_upvr (readonly)
		[6]: formatted_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var490 = (LocalPlayer_upvr:GetAttribute("TotalKillsFrb") or 0) - (LocalPlayer_upvr:GetAttribute("LastEmoteSpin") or -100)
	local any_JSONDecode_result1_3 = game:GetService("HttpService"):JSONDecode(LocalPlayer_upvr:GetAttribute("Emotes") or "[]")
	local var495
	for i_27, _ in pairs(any_GetTable_result1_upvr) do
		if not table.find(any_JSONDecode_result1_3, i_27) then
			var495 = false
		end
	end
	for i_28, v_25 in pairs(tbl_10_upvr) do
		if table.find(any_JSONDecode_result1_3, i_28) then
			v_25.Spin.Text = "<font size=\"45\">%s</font>\n<font color=\"rgb(158, 255, 174)\" transparency=\"1\"><stroke transparency=\"1\" color=\"#00A2FF\" thickness=\"0\">188 ROBUX</stroke></font>":format(i_28)
			v_25.Spin.Check.Visible = true
		end
	end
	for i_29, v_26 in pairs(EmoteProducts_upvr) do
		if v_26.button then
			if var495 or 0 + 1 < v_26.count then
				v_26.button.Visible = false
			else
				v_26.button.Visible = true
			end
		end
	end
	if workspace:FindFirstChild("Duel Choice") or workspace:GetAttribute("RankedOnes") then
		ImageLabel_2_upvr.Spin.Text = ""
		i_29 = 0
		v_26 = 5
		ImageLabel_2_upvr.Spin.Position = UDim2.new(5, i_29, v_26, 0)
	else
		if var495 then
			ImageLabel_2_upvr.Spin.Text = ""
			return
		end
		if var490 < 50 then
			i_29 = 50 - var490
			ImageLabel_2_upvr.Spin.Text = string.format("NEW EMOTE: <font color=\"rgb(255, 85, 85)\">%s KILLS</font>\n<font size=\"16\">HOLD EMOTE DOWN TO CHANGE</font>", i_29)
			return
		end
		if ImageLabel_2_upvr.Spin.Text ~= formatted_upvw and LocalPlayer_upvr:GetAttribute("HandlerLoaded") then
			if shared.notifyemote then
				shared.notifyemote()
			else
				local tick_result1_6_upvr = tick()
				task.spawn(function() -- Line 995
					--[[ Upvalues[1]:
						[1]: tick_result1_6_upvr (readonly)
					]]
					repeat
						task.wait()
					until 5 < tick() - tick_result1_6_upvr and shared.notifyemote
					if shared.notifyemote then
						shared.notifyemote()
					end
				end)
			end
		end
		tick_result1_6_upvr = ImageLabel_2_upvr.Spin
		tick_result1_6_upvr.Text = formatted_upvw
	end
end
ImageLabel_2_upvr.Spin.MouseButton1Click:Connect(function() -- Line 1009
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ImageLabel_2_upvr (readonly)
		[3]: formatted_upvw (read and write)
	]]
	local Character = LocalPlayer_upvr.Character
	if Character then
		if ImageLabel_2_upvr.Spin.Text == "" then return end
		if workspace:GetAttribute("RankedOnes") then
			ImageLabel_2_upvr.Spin.Visible = false
			ImageLabel_2_upvr.Spin.Position = UDim2.new(3, 0, 3, 0)
			return
		end
		if ImageLabel_2_upvr.Spin.Text == formatted_upvw then
			shared.sfx({
				SoundId = "rbxassetid://4612384643";
				Parent = workspace;
				Volume = 0.6;
			}):Play()
			Character.Communicate:FireServer({
				Goal = "Emote Spin";
			})
		end
	end
end)
for _, v_27 in pairs({"TotalKillsFrb", "LastEmoteSpin", "Emotes", "HandlerLoaded", "CanBuyRandom"}) do
	LocalPlayer_upvr:GetAttributeChangedSignal(v_27):Connect(var464_upvr)
	local var512_upvr
end
var464_upvr()
local Bulk = ImageLabel_2_upvr.Bulk
local ImageButton = Bulk.ImageButton
ImageButton.Name = "GP"
ImageButton.Parent = script
for _, v_28_upvr in pairs(EmoteProducts_upvr) do
	local clone_5 = ImageButton:Clone()
	clone_5.Visible = false
	clone_5.Parent = Bulk
	local var519
	if 1 < v_28_upvr.count then
		var519 = "EMOTES"
	else
		var519 = "EMOTE"
	end
	clone_5.Spin.Text = string.format("<font size=\"45\">%s</font>\n<font size=\"35\" color=\"rgb(158, 255, 174)\">%s ROBUX</font>", v_28_upvr.count..' '..var519, game:GetService("MarketplaceService"):GetProductInfo(v_28_upvr.id, Enum.InfoType.Product).PriceInRobux)
	clone_5.Image = "rbxassetid://"..15079675105
	clone_5.MouseButton1Click:Connect(function() -- Line 1064
		--[[ Upvalues[2]:
			[1]: var512_upvr (readonly)
			[2]: v_28_upvr (readonly)
		]]
		if not var512_upvr:GetAttribute("CanBuyRandom") then
		else
			game:GetService("MarketplaceService"):PromptProductPurchase(var512_upvr, v_28_upvr.id)
		end
	end)
	v_28_upvr.button = clone_5
end
var464_upvr()
function getRarityColor(arg1) -- Line 1078
	local module_2 = {{
		threshold = 250;
		color = Color3.fromRGB(255, 255, 255);
	}, {
		threshold = 400;
		color = Color3.fromRGB(130, 255, 128);
	}, {
		threshold = 550;
		color = Color3.fromRGB(92, 135, 255);
	}, {
		threshold = 700;
		color = Color3.fromRGB(255, 165, 0);
	}, {
		threshold = 799;
		color = Color3.fromRGB(255, 79, 79);
	}}
	for _, v_29 in ipairs(module_2) do
		if math.clamp(arg1, 100, 799) <= v_29.threshold then
			return v_29.color
		end
	end
	return module_2[#module_2].color
end
local Limited_upvr = ImageLabel_2_upvr.Limited
local ImageButton_2_upvr = Limited_upvr.List.ImageButton
ImageButton_2_upvr.Parent = script
local function var534_upvr() -- Line 1101
	--[[ Upvalues[2]:
		[1]: var512_upvr (readonly)
		[2]: Limited_upvr (readonly)
	]]
	for _, v_30 in pairs(Limited_upvr.List:GetChildren()) do
		local ID = v_30:GetAttribute("ID")
		if v_30:IsA("ImageButton") and ID and v_30:FindFirstChild("New") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_30:FindFirstChild("New").Visible = not game:GetService("HttpService"):JSONDecode(var512_upvr:GetAttribute("LimitedPreview") or "[]")[tostring(ID)]
		end
	end
end
local function var541() -- Line 1116
	--[[ Upvalues[12]:
		[1]: Limited_upvr (readonly)
		[2]: tbl_10_upvr (readonly)
		[3]: ImageButton_2_upvr (readonly)
		[4]: any_GetTable_result1_upvr_2 (readonly)
		[5]: tbl_12_upvr (readonly)
		[6]: ImageLabel_2_upvr (readonly)
		[7]: var512_upvr (readonly)
		[8]: var432_upvw (read and write)
		[9]: var433_upvw (read and write)
		[10]: var434_upvw (read and write)
		[11]: var534_upvr (readonly)
		[12]: var464_upvr (readonly)
	]]
	local Limited = workspace:GetAttribute("Limited")
	local var559
	if not Limited then
	else
		var559 = game:GetService("HttpService"):JSONDecode(Limited)
		local var560 = var559
		var559 = pairs(Limited_upvr.List:GetChildren())
		local pairs_result1_16, pairs_result2_16, pairs_result3_16 = pairs(Limited_upvr.List:GetChildren())
		for _, v_32 in pairs_result1_16, pairs_result2_16, pairs_result3_16 do
			if v_32:IsA("ImageButton") then
				v_32:Destroy()
			end
		end
		pairs_result1_16 = table.clear
		pairs_result1_16(tbl_10_upvr)
		pairs_result1_16 = 0
		for _, v_33_upvr in pairs(var560.items) do
			pairs_result1_16 += 1
			local clone_6_upvr = ImageButton_2_upvr:Clone()
			clone_6_upvr:SetAttribute("ID", v_33_upvr.ID)
			clone_6_upvr.Spin.Text = "<font size=\"45\">%s</font>\n<font color=\"rgb(158, 255, 174)\">%s ROBUX</font>":format(v_33_upvr.Name, v_33_upvr.Price)
			clone_6_upvr.Image = "rbxassetid://"..v_33_upvr.Image
			local var568_upvr = any_GetTable_result1_upvr_2[tostring(v_33_upvr.Name)]
			local tbl_19 = {}
			local var573
			for i_37, v_34 in pairs(tbl_12_upvr) do
				table.insert(tbl_19, {i_37, v_34.ImageColor3})
			end
			for _, v_35 in pairs(tbl_19) do
				if var568_upvr and var568_upvr[v_35[1]] then
					var573 = v_35[2]
				end
			end
			if var573 then
				clone_6_upvr.Glow.ImageColor3 = var573
			end
			clone_6_upvr.Parent = Limited_upvr.List
			clone_6_upvr.Visible = true
			if var568_upvr and var568_upvr.Preview then
				clone_6_upvr.Preview.Visible = true
				clone_6_upvr.Preview.MouseButton1Click:Connect(function() -- Line 1155
					--[[ Upvalues[5]:
						[1]: ImageLabel_2_upvr (copied, readonly)
						[2]: clone_6_upvr (readonly)
						[3]: var568_upvr (readonly)
						[4]: var512_upvr (copied, readonly)
						[5]: v_33_upvr (readonly)
					]]
					if ImageLabel_2_upvr:FindFirstChild("Preview") then
					else
						shared.sfx({
							SoundId = "rbxassetid://10066921516";
							Parent = workspace;
							Volume = 0.25;
						}):Play()
						local clone = script.Preview:Clone()
						clone.Loading.LocalScript.Enabled = true
						clone.Origin.Value = clone_6_upvr.Preview
						clone:SetAttribute("ID", var568_upvr.Preview)
						clone.Parent = ImageLabel_2_upvr
						var512_upvr.Character.Communicate:FireServer({
							Goal = "Limited Preview";
							Limited = v_33_upvr.ID;
						})
					end
				end)
			else
				clone_6_upvr.Preview.Visible = false
			end
			clone_6_upvr.MouseButton1Click:Connect(function() -- Line 1200
				--[[ Upvalues[2]:
					[1]: var512_upvr (copied, readonly)
					[2]: v_33_upvr (readonly)
				]]
				var512_upvr.Character.Communicate:FireServer({
					Goal = "Prompt Limited Purchase";
					Limited = v_33_upvr.Number;
				})
			end)
			tbl_10_upvr[v_33_upvr.Name] = clone_6_upvr
		end
		local Timer = ImageLabel_2_upvr.Limited.Timer
		clone_6_upvr = Timer.Position
		var568_upvr = Timer.Position
		clone_6_upvr = var568_upvr.X
		clone_6_upvr = ({0.317, 0.151, -0.01})[pairs_result1_16] or -0.01
		var568_upvr = Timer.Position.Y.Offset
		Timer.Position = UDim2.new(clone_6_upvr.X.Scale, clone_6_upvr.Offset, clone_6_upvr, var568_upvr)
		var432_upvw = var560.info.startOfYear
		var433_upvw = var560.info.currentWeek
		var434_upvw = var560.info.secondsInWeek
		var534_upvr()
		var464_upvr()
	end
end
workspace:GetAttributeChangedSignal("Limited"):Connect(var541)
pcall(var541)
var512_upvr:GetAttributeChangedSignal("LimitedPreview"):Connect(var534_upvr)
