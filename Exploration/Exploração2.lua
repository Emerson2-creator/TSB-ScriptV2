-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:16
-- Luau version 6, Types version 3
-- Time taken: 0.029284 seconds

local tbl_6_upvr = {}
if not game.Players.LocalPlayer then
end
local tbl_4_upvr = {Vector3.new(32.0690, 20, 2.72699), Vector3.new(32.0690, 5, 2.72699), Vector3.new(5, 5, 5)}
local function _(arg1) -- Line 15
	if arg1.CFrame then
		local Attachment_upvw = Instance.new("Attachment")
		Attachment_upvw.Parent = workspace.Terrain
		Attachment_upvw.WorldCFrame = arg1.CFrame
		arg1.CFrame = nil
	end
	local Sound_upvr = Instance.new("Sound")
	Sound_upvr.SoundGroup = game:GetService("SoundService").Sounds
	Sound_upvr.Played:connect(function() -- Line 27
		--[[ Upvalues[2]:
			[1]: Sound_upvr (readonly)
			[2]: Attachment_upvw (read and write)
		]]
		Sound_upvr.Ended:connect(function() -- Line 28
			--[[ Upvalues[2]:
				[1]: Sound_upvr (copied, readonly)
				[2]: Attachment_upvw (copied, read and write)
			]]
			game:GetService("Debris"):AddItem(Sound_upvr, 0)
			game:GetService("Debris"):AddItem(Attachment_upvw, 0)
		end)
	end)
	if not arg1.RollOffMaxDistance then
		arg1.RollOffMaxDistance = 100
	end
	for i, v in pairs(arg1) do
		Sound_upvr[i] = v
		local var17
	end
	if Attachment_upvw then
		var17.Parent = Attachment_upvw
	end
	return var17
end
local var372_upvw = {
	VCserver = 131048399685555;
	KJserver = 130818724007978;
	EarlyAccess = "Tech";
	UFWrequirement = 750;
	Badges = {3057416426456972, -- : First try: runluau:11745: attempt to index nil with 't'
;
	KeyOffsets = {CFrame.new(0.0000667572021484375, 2.384185791015625e-07, -3.6912670135498047, -0.965471088886261, -8.742277657347586e-08, 0.26051023602485657, 0.26051023602485657, -4.371138828673793e-08, 0.965471088886261, -7.301689919358978e-08, 1, 6.497661075854921e-08), CFrame.new(0.0000667572021484375, 1.2685961723327637, -3.01324462890625, 1, 0, 0, 0, -4.371138828673793e-08, 1, 0, -1, -4.371138828673793e-08), CFrame.new(0.120067596, 0.759999752, -2.7800312, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08), CFrame.new(0.0000667572021484375, 0, -2.071981430053711, 1, 0, 0, 0, -4.371138828673793e-08, 1, 0, -1, -4.371138828673793e-08), CFrame.new(0.0000667572021, 0.271313667, -2.80003071, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08), CFrame.new(0.0000667572021, 0.589999676, -2.11003113, 0.979179561, -0.150505424, 0.136218935, -0.134637803, 0.0206945483, 0.990678728, -0.151921526, -0.988392532, -4.33039418e-08), CFrame.new(0.0000667572021484375, -0.3000001907348633, -3.000030517578125, 1, 0, 0, 0, -4.371138828673793e-08, 1, 0, -1, -4.371138828673793e-08), CFrame.new(0.0000067572022999229375, -1.5006359815597534, -2.6260547637939453, 1, 0, 0, 0, -4.371138828673793e-08, 1, 0, -1, -4.371138828673793e-08), CFrame.new(0.0000667572021484375, 0.09999966621398926, -2.9592037200927734, 1, 0, 0, 0, -4.371138828673793e-08, 1, 0, -1, -4.371138828673793e-08), CFrame.new(0.0000667572021, -0.839160442, -2.38934708, -1, -8.74227766e-08, 8.74227695e-08, 8.74227766e-08, -4.37113883e-08, 1, -8.74227695e-08, 1, 4.37113954e-08)};
	DonationProducts = {
		['1'] = 1774570749;
		["10"] = 1774570799;
		["100"] = 1774570910;
		["1,000"] = 1774570961;
		["10,000"] = 1774571012;
		["100,000"] = 1774571302;
		["1,000,000"] = 1774571398;
	};
	GetSerial = function(arg1) -- Line 89, Named "GetSerial"
		local any_NextInteger_result1 = Random.new():NextInteger(-10000000000, 10000000000)
		local var25 = math.floor(arg1.Position.X) + math.floor(arg1.Position.Y) + math.floor(arg1.Position.Z)
		local randint = math.random(-100, 100)
		local var27
		for _ = 1, Random.new():NextNumber(1, 5) do
			local string_char_result1 = string.char(math.random(97, 122))
			if math.random(1, 2) == 1 then
				string_char_result1 = string_char_result1:upper()
			end
			var27 = var27..string_char_result1
		end
		if math.random(1, 2) == 1 then
			return tostring(any_NextInteger_result1 + var25 + randint)..var27
		end
		return var27..tostring(any_NextInteger_result1 + var25 + randint)
	end;
	ValidKeys = {Enum.KeyCode.Q, Enum.KeyCode.B, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonA, Enum.KeyCode.DPadUp, Enum.KeyCode.Space, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V};
	ValidProperties = {"Text", "TextSize", "TextFont", "TextColor", "TextTransparency", "TextOutline", "EmitLight", "Range", "Brightness", "Anchored", "Collision", "Deadly", "Destructible", "Fragile", "Transparency", "CurrentMoves", "CurrentGears", "Bouncy", "Heals", "ResetsCooldowns", "GivesAwakening", "Checkpoint", "Shadow", "NoAttack"};
	ValidClasses = {"SpawnLocation", "Part"};
	Limited = {{
		ID = 2461465333;
		Name = "Final Stand";
	}, {
		ID = 2461465736;
		Name = "Boundless Rage";
	}, {
		ID = 2662391516;
		Name = "Eternal Seal";
	}};
	Vaulted = {"Seismic Fist", "Rising Fist"};
	Skillsets = {
		LazarBeam = {
			Base = {"Stoic Bomb", "20-20-20 Dropkick", "Five Seasons", "Unlimited Flex Works", "Infinity"};
			Ultimate = {"Stoic Bomb", "20-20-20 Dropkick", "Five Seasons", "Unlimited Flex Works", "Infinity"};
			Order = 1;
			ID = 15405303233;
			Name = "LazarBeam";
			UltimateName = "AAA";
			Hero = true;
		};
		KJ = {
			Base = {"Ravage", "Swift Sweep", "Collateral Ruin", "Spiraling Storm"};
			Ultimate = {"Stoic Bomb", "20-20-20 Dropkick", "Five Seasons", "Unlimited Flex Works"};
			Order = 1;
			ID = 17140853847;
			Name = "KJ";
			UltimateName = "20 SERIES";
			Hero = true;
		};
		Bald = {
			Base = {"Normal Punch", "Consecutive Punches", "Shove", "Uppercut"};
			Ultimate = {"Death Counter", "Table Flip", "Serious Punch", "Omni Directional Punch"};
			Indicator = {
				Sound = "rbxassetid://14405177812";
				Volume = 1;
			};
			Order = 1;
			ID = 15114667107;
			UltimateTime = nil;
			UltimateName = "SERIOUS MODE";
			Name = "The Strongest Hero";
			Hero = true;
		};
		Hunter = {
			Base = {"Flowing Water", "Lethal Whirlwind Stream", "Hunter's Grasp", "Prey's Peril"};
			Ultimate = {"Water Stream Cutting Fist", "The Final Hunt", "Rock Splitting Fist", "Crushed Rock"};
			Indicator = {
				Sound = "rbxassetid://14405177437";
				Volume = 0.75;
			};
			Order = 2;
			ID = 15124465439;
			UltimateTime = 42.5;
			UltimateName = "RAMPAGE";
			Name = "Hero Hunter";
			Hero = false;
		};
		Purple = {
			Base = {"Bullet Barrage", "Vanishing Kick", "Whirlwind Drop", "Head First"};
			Ultimate = {"Grand Fissure", "Twin Fangs", "Earth Splitting Strike", "Last Breath"};
			Indicator = {
				Sound = "rbxassetid://18435612327";
				Volume = 0.75;
			};
			Order = 8;
			ID = 18434673438;
			UltimateTime = 42.5;
			UltimateName = "DRAGON 'S DESCENT";
			Name = "Martial Artist";
			Hero = true;
		};
		Cyborg = {
			Base = {"Machine Gun Blows", "Ignition Burst", "Blitz Shot", "Jet Dive"};
			Ultimate = {"Thunder Kick", "Speedblitz Dropkick", "Flamewave Cannon", "Incinerate"};
			Indicator = {
				Sound = "rbxassetid://14405177937";
				Volume = 0.75;
			};
			Order = 3;
			ID = 15143528856;
			UltimateTime = 43;
			UltimateName = "MAXIMUM ENERGY OUTPUT";
			Name = "Destructive Cyborg";
			Hero = true;
		};
		Ninja = {
			Base = {"Flash Strike", "Whirlwind Kick", "Scatter", "Explosive Shuriken"};
			Ultimate = {"Twinblade Rush", "Straight On", "Carnage", "Fourfold Flashstrike"};
			Indicator = {
				Sound = "rbxassetid://14405177701";
				Volume = 0.75;
			};
			Order = 4;
			ID = 15114672498;
			UltimateTime = 43;
			UltimateName = "CAN YOU EVEN SEE ME?";
			Name = "Deadly Ninja";
			Hero = false;
		};
		Batter = {
			Base = {"Homerun", "Beatdown", "Grand Slam", "Foul Ball"};
			Ultimate = {"Savage Tornado", "Brutal Beatdown", "Strength Difference", "Death Blow"};
			Order = 5;
			Indicator = {
				Sound = "rbxassetid://14405177575";
				Volume = 1;
			};
			ID = 15143529209;
			UltimateTime = 43;
			UltimateName = "PUMPED UP";
			Name = "Brutal Demon";
			Hero = true;
		};
		Blade = {
			Base = {"Quick Slice", "Atmos Cleave", "Pinpoint Cut", "Split Second Counter"};
			Ultimate = {"Sunset", "Solar Cleave", "Sunrise", "Atomic Slash"};
			Indicator = {
				Sound = "rbxassetid://15398355537";
				Volume = 1;
			};
			Order = 6;
			ID = 15143528539;
			UltimateTime = 43;
			UltimateName = "SCORCHING BLADE";
			Name = "Blade Master";
			Hero = true;
		};
		Esper = {
			Base = {"Crushing Pull", "Windstorm Fury", "Stone Coffin", "Expulsive Push"};
			Ultimate = {"Cosmic Strike", "Psychic Ricochet", "Terrible Tornado", "Sky Snatcher"};
			Indicator = {
				Sound = "rbxassetid://16136683894";
				Volume = 1;
			};
			Order = 7;
			ID = 16136325038;
			UltimateTime = 43;
			UltimateName = "BERSERK";
			Name = "Wild Psychic";
			Hero = true;
		};
		Tech = {
			Base = {"Weboom", "Plasma Cannon", "Trinity Tear", "Double Trouble"};
			Ultimate = {};
			Indicator = {
				Sound = "rbxassetid://16136683894";
				Volume = 1;
			};
			Order = 8;
			ID = 113596928331434;
			UltimateTime = 43;
			UltimateName = '?';
			Name = "Tech Prodigy";
			Hero = true;
		};
		["Crab Boss"] = {
			Base = {};
			Ultimate = {};
			Order = 9;
			ID = 18906334004;
			Name = "Crab Boss";
			UltimateName = '?';
			Hero = true;
		};
		Sorcerer = {
			Base = {"Infinity", "Repulse", "Erase", "Attract"};
			Ultimate = {};
			Order = 10;
			ID = 15143528348;
			Name = "Sorcerer";
			UltimateName = "SORCERER";
			Hero = true;
		};
	};
	BaseM1 = {
		Fist = {10469493270, 10469630950, 10469639222, 10469643643};
		Bat = {14004222985, 13997092940, 14001963401, 14136436157};
		Ninjato = {13370310513, 13390230973, 13378751717, 13378708199};
		Katana = {15259161390, 15240216931, 15240176873, 15162694192};
		HunterFist = {13532562418, 13532600125, 13532604085, 13294471966};
		CyborgFist = {13491635433, 13296577783, 13295919399, 13295936866};
		EsperFist = {16515503507, 16515520431, 16515448089, 16552234590};
		KJFist = {17325510002, 17325513870, 17325522388, 17325537719};
		PurpleFist = {17889458563, 17889461810, 17889471098, 17889290569};
		Uppercut = {13379003796, 10503381238};
		Downslam = {10470104242};
		Tech = {123005629431309, 100059874351664, 104895379416342, 134775406437626};
	};
	Admins = {0, 4041635170, 1241352401, 3350014406, 3891230967, 681405668, 1001242712, 138249029, 3414432341, 339633571, 1059541187, 995625009, 1148708686, 33963357, 58214194, 747447782, 2039323684, 430966809, 202693941, 3673381374};
	Intros = {
		Ninja = {
			id = 15957361339;
			sound = {"rbxassetid://15956555583", 1};
		};
		Purple = {
			id = 18435303746;
			sound = {"rbxassetid://18435468901", 1};
		};
		KJ = {
			id = 17325160621;
			sound = {"rbxassetid://17325174223", 1};
		};
		Batter = {
			id = 15957371124;
			sound = {"rbxassetid://15956568211", 1};
		};
		Hunter = {
			id = 15957376722;
			sound = {"rbxassetid://15956575080", 0.75};
		};
		Cyborg = {
			id = 15957374019;
			sound = {"rbxassetid://15958081297", 2};
		};
		Bald = {
			id = 15957366251;
			sound = {"rbxassetid://15956666275", 3};
		};
		Blade = {
			id = 15983615423;
			sound = {"rbxassetid://15983408349", 1};
		};
		Esper = {
			id = 16136144568;
			sound = {"rbxassetid://16136569377", 2};
		};
		Tech = {
			id = 119169968232874;
			sound = {"rbxassetid://132944270035374", 3};
		};
	};
Special = { -- Properly define the table or leave it empty if not used
	-- Add valid entries here if needed
};
	Cosmetics = {{"Special Stuff", 10000000000, "rbxassetid://17140774329", "aura"}, {"Custom Cape", 2000000000, "rbxassetid://17140755709", "cosmetic"}, {"Guild Cape", 1000000, "rbxassetid://17139038442", "cosmetic"}, {"Shadow Aura", 20000, "rbxassetid://17855955602", "aura"}, {"Gold Aura", 30000, "rbxassetid://83245974392432", "aura"}, {"Midnight Aura", 25000, "rbxassetid://75022935096767", "aura"}, {"Burning Aura", 10000, "rbxassetid://17855957730", "aura"}, {"Crimson Aura", 9500, "rbxassetid://115711460384947", "aura"}, {"Graceful Aura", 9000, "rbxassetid://17855866639", "aura"}, {"Glitch Aura", 8250, "rbxassetid://88754428841002", "aura"}, {"Colorful Aura", 7500, "rbxassetid://116175503488055", "aura"}, {"Error Aura", 6700, "rbxassetid://102105195737574", "aura"}, {"Stench Aura", 5900, "rbxassetid://17855866449", "aura"}, {"Slinky", 20000, "rbxassetid://18183755570", "cosmetic"}, {"Ruler Cape", 17500, "rbxassetid://70455910113728", "cosmetic"}, {"Webbed Cape", 15000, "rbxassetid://82572097923242", "cosmetic"}, {"Warden Cape", 12500, "rbxassetid://100803534854178", "cosmetic"}, {"Desert Cape", 10500, "rbxassetid://18182263066", "cosmetic"}, {"Divine Wheel", 10000, "rbxassetid://17824308335", "cosmetic"}, {"Spiky Cape", 9500, "rbxassetid://18182263573", "cosmetic"}, {"Fur Cape", 9000, "rbxassetid://18182263767", "cosmetic"}, {"Blood Scarf", 8500, "rbxassetid://18182262939", "cosmetic"}, {"Torn Headband", 8000, "rbxassetid://18182263365", "cosmetic"}, {"Headband", 7500, "rbxassetid://18182263961", "cosmetic"}, {"Bandage Wrap", 7000, "rbxassetid://17824222445", "cosmetic"}, {"Waist Sash", 6600, "rbxassetid://17838057309", "cosmetic"}, {"Leg Iron", 6200, "rbxassetid://17846070680", "cosmetic"}, {"White Scarf", 900, "rbxassetid://17856005701", "cosmetic"}, {"Ki Aura", 4000, "rbxassetid://17140585525", "aura", true}, {"Dark Aura", 5600, "rbxassetid://17140578572", "aura", true}, {"Lightning Aura", 4600, "rbxassetid://17140620713", "aura", true}, {"Worn Cape", 5200, "rbxassetid://17139121832", "cosmetic", true}, {"Tattered Cape", 4300, "rbxassetid://17138954104", "cosmetic", true}, {"Torn Cape", 3600, "rbxassetid://17138960792", "cosmetic", true}, {"White Cape", 3200, "rbxassetid://17138990307", "cosmetic", true}, {"Conqueror Cape", 2800, "rbxassetid://17138970538", "cosmetic", true}, {"Jagged Cape", 2000, "rbxassetid://17139003111", "cosmetic", true}, {"Royal Cape", 1200, "rbxassetid://17139029983", "cosmetic", true}, {"Purple Scarf", 600, "rbxassetid://17139021808", "cosmetic", true}, {"Bandages", 300, "rbxassetid://17139537917", "cosmetic", true}, {"Long Sash", 150, "rbxassetid://17139017721", "cosmetic", true}, {"Short Sash", 75, "rbxassetid://17139012868", "cosmetic", true}, {"Red Gloves", 25, "rbxassetid://17138543887", "cosmetic", true}, {"Blocky Body", -1, "rbxassetid://17140578733", "cosmetic"}};
	EmoteProducts = {{
		id = 1556594193;
		count = 1;
	}, {
		id = 1816926141;
		count = 5;
	}, {
		id = 1816926292;
		count = 10;
	}, {
		id = 1816928543;
		count = 50;
	}};
	CosmeticProducts = {{
		id = 1849123672;
		count = 1;
	}, {
		id = 1849161369;
		count = 3;
	}, {
		id = 1849161479;
		count = 5;
	}};
GiftableGamepasses = {-- : First try: runluau:11745: attempt to index nil with 't'
	-- Add valid entries here if needed
};
	VIPServerButtons = {"Command Target", "Respawn", "Bring", "Heal", "Spawn Dummy", "Spawn Attacking Dummy", "Spawn Blocking Dummy", "Spawn Outsider", "Spawn Crab", "Spawn Meteor", "Clear Entities", "Build Mode", "Start Round", "End Round", "Round Teams", "Round Type", "Give Awakening", "Remove Awakening", "Activate Awakening", "Gravity Multiplier", "Damage Multiplier", "Health Multiplier", "Regen Multiplier", "Speed Multiplier", "Storm Speed Multiplier", "Storm Damage Multiplier", "Reset Storm", "Remove Leaderboards", "Shutdown Server", "Refresh Server"};
	Order = {"-- PRIVATE SERVER+ --", "Command Targets", "Effects Apply To", "Menu Size", "-- GENERAL --", "Godmode", "Heal", "Respawn", "Bring", "-- DUMMIES --", "Spawn Attacking Dummy", "Spawn Blocking Dummy", "Spawn Dummy", "Spawn Outsider", "Spawn Crab", "Spawn Meteor", "Clear Entities", "-- TOGGLES --", "Teleport Dash", "No Respawn", "No Dash Cooldown", "No Movement", "No Cooldown", "No Ragdoll", "No Fatigue", "No Attack", "No Stun", "No Block", "No Reset", "-- AWAKENING --", "Give Awakening", "Remove Awakening", "Activate Awakening", "Infinite Awakening", "Instant Awakening", "No Awakening", "-- MULTIPLIERS --", "Attack Speed Multiplier", "Health Multiplier", "Damage Multiplier", "Regen Multiplier", "Speed Multiplier", "Gravity Multiplier", "-- MOVESET --", "Random Moveset", "Dual Moveset", "Finishers Only", "-- MAP --", "Build Mode", "Hide Map", "-- GAMEMODE --", "Round Type", "Round Teams", "Start Round", "End Round", "-- MISC --", "Storm Active", "Reset Storm", "Storm Speed Multiplier", "Storm Damage Multiplier", "-- SERVER --", "Lock Server", "Kick On Death", "Shutdown Server", "Refresh Server"};
	VIPServerPowers = {
		["Build Mode"] = function(arg1, arg2) -- Line 842
			local CollectionService = game:GetService("CollectionService")
			local any_GetPlayerFromCharacter_result1 = game.Players:GetPlayerFromCharacter(arg2)
			if not arg2:FindFirstChild("buildingg") then
				local ForceField_3 = Instance.new("ForceField")
				ForceField_3:SetAttribute("Infinity", true)
				local ForceField = Instance.new("ForceField")
				ForceField.Name = "AbsoluteImmortal"
				ForceField.Visible = false
				ForceField:SetAttribute("Infinity", true)
				ForceField_3.Name = "VisibleFFfluy"
				ForceField_3.Visible = false
				CollectionService:AddTag(ForceField_3, "VisibleFF"..any_GetPlayerFromCharacter_result1.Name)
				ForceField_3.Parent = any_GetPlayerFromCharacter_result1.Character
				ForceField.Parent = any_GetPlayerFromCharacter_result1.Character
				shared.bindDeletion(ForceField, ForceField_3)
				local Folder = Instance.new("Folder")
				Folder.Name = "buildingg"
				Folder.Parent = any_GetPlayerFromCharacter_result1.Character
				CollectionService:AddTag(Folder, "VisibleFF"..any_GetPlayerFromCharacter_result1.Name)
				local Highlight = Instance.new("Highlight")
				Highlight.Name = "flyhighlight"
				Highlight.FillColor = Color3.fromRGB(1, 175, 255)
				Highlight.FillTransparency = 0.8
				Highlight.OutlineTransparency = 1
				CollectionService:AddTag(Highlight, "VisibleFF"..any_GetPlayerFromCharacter_result1.Name)
				Highlight.Parent = any_GetPlayerFromCharacter_result1.Character
				any_GetPlayerFromCharacter_result1:SetAttribute("oppedbefore", true)
				game.ReplicatedStorage.Replication:FireClient(any_GetPlayerFromCharacter_result1, {
					Effect = "Fly Start";
					build = true;
				})
			else
				for _, v_18 in pairs(CollectionService:GetTagged("VisibleFF"..any_GetPlayerFromCharacter_result1.Name)) do
					v_18:Destroy()
				end
				game.ReplicatedStorage.Replication:FireClient(any_GetPlayerFromCharacter_result1, {
					Effect = "Fly End";
					buildend = true;
				})
			end
		end;
		["Start Round"] = function(arg1) -- Line 886
			workspace:SetAttribute("RoundOngoing", true)
		end;
		["End Round"] = function(arg1) -- Line 890
			workspace:SetAttribute("RoundOngoing", false)
		end;
		["Storm Speed Multiplier"] = function(arg1) -- Line 894
			workspace:SetAttribute("StormSpeedMultiplier", arg1)
		end;
		["Reset Storm"] = function(arg1) -- Line 898
			shared.stormreset()
		end;
		["Storm Damage Multiplier"] = function(arg1) -- Line 902
			workspace:SetAttribute("StormDamageMultiplier", arg1)
		end;
		["Storm Active"] = function(arg1) -- Line 906
			workspace:SetAttribute("StormActive", arg1)
		end;
		["Refresh Server"] = function(arg1, arg2) -- Line 910
			game:GetService("TeleportService"):TeleportToPrivateServer(game.PlaceId, game:GetService("TeleportService"):ReserveServer(game.PlaceId), game:GetService("Players"):GetPlayers(), nil, {"newps "..os.time()..' '..workspace:GetAttribute("VIPServer")})
		end;
		["Hide Map"] = function(arg1, arg2) -- Line 918
			workspace:SetAttribute("HideMap", arg1)
			for _, v_2 in pairs({"Map", "Summermap"}) do
				local SOME = workspace:FindFirstChild(v_2)
				if #SOME:GetChildren() == 0 then
					game:GetService("Debris"):AddItem(SOME, 0)
					game.Lighting[v_2].Parent = workspace
				else
					SOME.Parent = game.Lighting
					local Folder_2 = Instance.new("Folder")
					Folder_2.Name = v_2
					Folder_2.Parent = workspace
				end
			end
		end;
		["Give Awakening"] = function(arg1, arg2) -- Line 959
			local CommandTarget_6 = workspace:GetAttribute("CommandTarget")
			local players = game.Players:GetPlayers()
			if CommandTarget_6 == 2 then
				table.remove(players, table.find(players, game.Players:GetPlayerFromCharacter(arg2)))
			elseif CommandTarget_6 == 3 then
				players = {game.Players:GetPlayerFromCharacter(arg2)}
			end
			for _, v_3 in pairs(players) do
				v_3:SetAttribute("DamageNeed", 1000)
				v_3:SetAttribute("Ultimate", 100)
			end
		end;
		Heal = function(arg1, arg2) -- Line 974
			local CommandTarget = workspace:GetAttribute("CommandTarget")
			local children = workspace.Live:GetChildren()
			if CommandTarget == 2 then
				table.remove(children, table.find(children, arg2))
			elseif CommandTarget == 3 then
				local tbl = {}
				tbl[1] = arg2
				children = tbl
			end
			for _, v_4 in pairs(children) do
				local class_Humanoid = v_4:FindFirstChildOfClass("Humanoid")
				if class_Humanoid then
					class_Humanoid.Health = 2000000000
				end
			end
		end;
		["Remove Awakening"] = function(arg1, arg2) -- Line 991
			local CommandTarget_5 = workspace:GetAttribute("CommandTarget")
			local players_4 = game.Players:GetPlayers()
			if CommandTarget_5 == 2 then
				table.remove(players_4, table.find(players_4, game.Players:GetPlayerFromCharacter(arg2)))
			elseif CommandTarget_5 == 3 then
				players_4 = {game.Players:GetPlayerFromCharacter(arg2)}
			end
			for _, v_5 in pairs(players_4) do
				v_5:SetAttribute("Ultimate", 0)
			end
		end;
		["Activate Awakening"] = function(arg1, arg2) -- Line 1005
			local CommandTarget_2 = workspace:GetAttribute("CommandTarget")
			local players_2 = game.Players:GetPlayers()
			if CommandTarget_2 == 2 then
				table.remove(players_2, table.find(players_2, game.Players:GetPlayerFromCharacter(arg2)))
			elseif CommandTarget_2 == 3 then
				players_2 = {game.Players:GetPlayerFromCharacter(arg2)}
			end
			for _, v_6 in pairs(players_2) do
				if v_6.Character then
					shared.cfolder({
						Name = "ULTNOW";
						Parent = v_6.Character;
					})
				end
			end
		end;
		Respawn = function(arg1, arg2) -- Line 1024
			if tick() - (game:GetAttribute("RACD") or 0) < 0.5 then
			else
				game:SetAttribute("RACD", tick())
				local CommandTarget_4 = workspace:GetAttribute("CommandTarget")
				local players_3 = game.Players:GetPlayers()
				if CommandTarget_4 == 2 then
					table.remove(players_3, table.find(players_3, game.Players:GetPlayerFromCharacter(arg2)))
				elseif CommandTarget_4 == 3 then
					players_3 = {game.Players:GetPlayerFromCharacter(arg2)}
				end
				for _, v_19 in pairs(players_3) do
					v_19:LoadCharacter()
				end
			end
		end;
		Bring = function(arg1, arg2) -- Line 1043
			local CommandTarget_3 = workspace:GetAttribute("CommandTarget")
			local children_2 = workspace.Live:GetChildren()
			if CommandTarget_3 == 2 then
				table.remove(children_2, table.find(children_2, arg2))
			elseif CommandTarget_3 == 3 then
				local tbl_5 = {}
				tbl_5[1] = arg2
				children_2 = tbl_5
			end
			for _, v_7 in pairs(children_2) do
				if v_7.PrimaryPart and v_7:FindFirstChildOfClass("Humanoid") then
					v_7:SetPrimaryPartCFrame(arg2.PrimaryPart.CFrame)
				end
			end
		end;
		["Shutdown Server"] = function(arg1, arg2) -- Line 1059
			for _, v_8 in pairs(game.Players:players()) do
				v_8:Kick("server shut down by the private server owner")
			end
		end;
		["Teleport Dash"] = function(arg1) -- Line 1065
			workspace:SetAttribute("TeleportDash", arg1)
		end;
		["Random Moveset"] = function(arg1) -- Line 1069
			workspace:SetAttribute("RandomMoveset", arg1)
		end;
		["Dual Moveset"] = function(arg1) -- Line 1073
			workspace:SetAttribute("DualMoveset", arg1)
		end;
		["Kick On Death"] = function(arg1) -- Line 1077
			workspace:SetAttribute("KickOnDeath", arg1)
		end;
		["Attack Speed Multiplier"] = function(arg1) -- Line 1081
			workspace:SetAttribute("AttackSpeedMultiplier", arg1)
		end;
		["Gravity Multiplier"] = function(arg1) -- Line 1085
			workspace.Gravity = 196.1999969482422 * arg1
		end;
		["Health Multiplier"] = function(arg1) -- Line 1089
			workspace:SetAttribute("HealthMultiplier", arg1)
		end;
		["Damage Multiplier"] = function(arg1) -- Line 1093
			workspace:SetAttribute("DamageMultiplier", arg1)
		end;
		["Regen Multiplier"] = function(arg1) -- Line 1097
			workspace:SetAttribute("RegenMultiplier", arg1)
		end;
		["Speed Multiplier"] = function(arg1) -- Line 1101
			workspace:SetAttribute("SpeedMultiplier", arg1)
		end;
		["Infinite Awakening"] = function(arg1) -- Line 1105
			workspace:SetAttribute("InfiniteAwakening", arg1)
		end;
		["Finishers Only"] = function(arg1) -- Line 1109
			workspace:SetAttribute("FinishersOnly", arg1)
			for _, v_9 in pairs(workspace.Live:GetChildren()) do
				local class_Humanoid_2 = v_9:FindFirstChildOfClass("Humanoid")
				local var312
				if class_Humanoid_2 then
					if arg1 then
						var312 = 7
					else
						var312 = 100
					end
					class_Humanoid_2.MaxHealth = var312
					var312 = class_Humanoid_2.MaxHealth
					class_Humanoid_2.Health = var312
				end
			end
		end;
		["Instant Awakening"] = function(arg1) -- Line 1120
			workspace:SetAttribute("InstantAwakening", arg1)
		end;
		["No Dash Cooldown"] = function(arg1) -- Line 1124
			workspace:SetAttribute("NoDashCooldown", arg1)
		end;
		["No Movement"] = function(arg1) -- Line 1128
			workspace:SetAttribute("NoMovement", arg1)
			for _, v_10 in pairs(workspace.Live:GetChildren()) do
				if v_10:FindFirstChildOfClass("Humanoid") then
					shared.cfolder({
						Name = "Freeze";
						Parent = v_10;
					}, 0.5)
				end
				v_10:SetAttribute("_upd", math.random(1, 2000000000))
			end
		end;
		["No Respawn"] = function(arg1) -- Line 1142
			workspace:SetAttribute("NoRespawn", arg1)
			game.Players.CharacterAutoLoads = not arg1
		end;
		["No Cooldown"] = function(arg1) -- Line 1147
			workspace:SetAttribute("NoCooldown", arg1)
			for _, v_11 in pairs(game.Players:GetPlayers()) do
				if not skills then
					skills = require(game.ServerStorage.Skills) -- Setting global
				end
				skills:ResetCooldowns(v_11, true)
			end
		end;
		["No Fatigue"] = function(arg1) -- Line 1157
			workspace:SetAttribute("NoFatigue", arg1)
		end;
		["No Awakening"] = function(arg1) -- Line 1161
			workspace:SetAttribute("NoAwakening", arg1)
		end;
		["No Ragdoll"] = function(arg1) -- Line 1165
			workspace:SetAttribute("NoRagdoll", arg1)
		end;
		["No Attack"] = function(arg1) -- Line 1169
			workspace:SetAttribute("NoAttack", arg1)
		end;
		["No Reset"] = function(arg1) -- Line 1173
			workspace:SetAttribute("NoReset", arg1)
		end;
		["No Stun"] = function(arg1) -- Line 1177
			workspace:SetAttribute("NoStun", arg1)
		end;
		["No Block"] = function(arg1) -- Line 1181
			workspace:SetAttribute("NoBlock", arg1)
			if arg1 then
				task.wait()
				for _, v_12 in pairs(workspace.Live:GetChildren()) do
					shared.cfolder({
						Name = 'a';
						Parent = v_12;
					}, 0.2)
				end
			end
		end;
		["Lock Server"] = function(arg1) -- Line 1194
			workspace:SetAttribute("LockServer", arg1)
		end;
		Godmode = function(arg1, arg2) -- Line 1198
			if arg1 then
				local ForceField_2 = Instance.new("ForceField")
				ForceField_2.Visible = true
				ForceField_2.Name = "AbsoluteImmortal"
				game:GetService("CollectionService"):AddTag(ForceField_2, "godmodeff"..arg2.Name)
				ForceField_2.Parent = arg2
			else
				for i_14, v_13 in pairs(game:GetService("CollectionService"):GetTagged("godmodeff"..arg2.Name)) do
					v_13:Destroy()
				end
			end
			i_14 = arg1
			workspace:SetAttribute("Godmode", i_14)
		end;
		["Spawn Attacking Dummy"] = function(arg1, arg2) -- Line 1214
			local clone_10 = shared.DummyClone:Clone()
			clone_10:SetAttribute("DontClone", true)
			local clone_9 = script.Attack:Clone()
			clone_9.Parent = clone_10
			clone_10.Parent = workspace.Live
			clone_10:SetPrimaryPartCFrame(arg2.PrimaryPart.CFrame)
			clone_9.Enabled = true
		end;
		["Spawn Blocking Dummy"] = function(arg1, arg2) -- Line 1224
			local clone_8 = shared.DummyClone:Clone()
			clone_8:SetAttribute("DontClone", true)
			local clone_7 = script.Blocking:Clone()
			clone_7.Parent = clone_8
			clone_8.Parent = workspace.Live
			clone_8:SetPrimaryPartCFrame(arg2.PrimaryPart.CFrame)
			clone_7.Enabled = true
		end;
		["Spawn Dummy"] = function(arg1, arg2) -- Line 1234
			local clone_5 = shared.DummyClone:Clone()
			clone_5.Parent = workspace.Live
			clone_5:SetPrimaryPartCFrame(arg2.PrimaryPart.CFrame)
		end;
		["Spawn Meteor"] = function() -- Line 1240
			shared.SpawnIce()
		end;
		["Spawn Crab"] = function() -- Line 1244
			local tbl_2 = {Vector3.new(377.206, 438.165, -64.806), Vector3.new(370.095, 438.616, 149.879), Vector3.new(212.389, 438.616, -236.30), Vector3.new(-37.528, 438.126, -115.18), Vector3.new(-69.725, 438.656, 88.8004), Vector3.new(90.8686, 438.126, 270.829), Vector3.new(226.173, 438.105, -3.2757), Vector3.new(69.1140, 438.105, 61.7797)}
			for _ = 1, 1 do
				local clone = game.ServerStorage["Crab Boss"]:Clone()
				clone:PivotTo(CFrame.new(tbl_2[math.random(#tbl_2)]))
				clone.Parent = workspace.Live
			end
		end;
		["Spawn Outsider"] = function(arg1, arg2) -- Line 1263
			local tbl_3 = {Vector3.new(156.677, 440.756, 24.6870), Vector3.new(400.239, 440.506, 155.093), Vector3.new(169.397, 440.506, 283.151), Vector3.new(-62.473, 440.506, 195.781), Vector3.new(-107.58, 440.506, -91.591), Vector3.new(181.218, 440.506, -169.90)}
			shared.SpawnOutsider(tbl_3[math.random(#tbl_3)])
		end;
		["Clear Entities"] = function(arg1, arg2) -- Line 1275
			for _, v_14 in pairs(workspace.Live:GetChildren()) do
				if v_14.Name == "Weakest Dummy" or v_14:GetAttribute("OmniImmunity") and not v_14:GetAttribute("IceBoss") then
					v_14:Destroy()
				end
			end
		end;
	};
},
var372_upvw.spawnables = {
	Trashcan = {function(arg1, arg2, arg3) -- Line 1287
		--[[ Upvalues[1]:
			[1]: tbl_6_upvr (readonly)
		]]
		local clone_3 = shared.trashcan:Clone()
		clone_3:SetAttribute("Name", "Trashcan")
		clone_3.PrimaryPart = clone_3.Trashcan
		clone_3.Parent = workspace.Map.Trash
		game:GetService("CollectionService"):AddTag(clone_3, "ps_spawned")
		table.insert(tbl_6_upvr, clone_3)
		local var377 = arg3
		if not var377 then
			var377 = arg2.PrimaryPart.CFrame * CFrame.new(0, -0.925, 0)
		end
		clone_3.Trashcan.CFrame = var377
		game:GetService("CollectionService"):AddTag(clone_3.Trashcan, "Interactable")
		shared.interactables.FilterDescendantsInstances = game:GetService("CollectionService"):GetTagged("Interactable")
	end, 5};
	Brick = {function(arg1, arg2, arg3, arg4) -- Line 1300
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		if not arg4 then
			local var380 = tbl_4_upvr[workspace:GetAttribute("SpawnShape") or 1]
		end
		local clone_6 = script.Block:Clone()
		clone_6:SetAttribute("Name", "Brick")
		clone_6.Size = Vector3.new(unpack({var380.X, var380.Y, var380.Z}))
		clone_6.Parent = workspace
		table.insert(tbl_6_upvr, clone_6)
		game:GetService("CollectionService"):AddTag(clone_6, "ps_spawned")
		local var383 = arg3
		if not var383 then
			var383 = arg2.PrimaryPart.CFrame * CFrame.new(0, clone_6.Size.Y / 2 - 3, -10)
		end
		clone_6.CFrame = var383
	end, 1};
	["Fragile Brick"] = {function(arg1, arg2, arg3, arg4) -- Line 1314
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		if not arg4 then
			local var386 = tbl_4_upvr[workspace:GetAttribute("SpawnShape") or 1]
		end
		local clone_11 = script.Block:Clone()
		game:GetService("CollectionService"):AddTag(clone_11, "fragilebrick")
		game:GetService("CollectionService"):AddTag(clone_11, "ps_spawned")
		clone_11:SetAttribute("Name", "Fragile Brick")
		clone_11.Size = Vector3.new(unpack({var386.X, var386.Y, var386.Z}))
		clone_11.Parent = workspace
		table.insert(tbl_6_upvr, clone_11)
		local var389 = arg3
		if not var389 then
			var389 = arg2.PrimaryPart.CFrame * CFrame.new(0, clone_11.Size.Y / 2 - 3, -10)
		end
		clone_11.CFrame = var389
	end, 2};
	Steel = {function(arg1, arg2, arg3, arg4) -- Line 1329
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		if not arg4 then
			local var392 = tbl_4_upvr[workspace:GetAttribute("SpawnShape") or 1]
		end
		local clone_4 = script.Block:Clone()
		clone_4.Material = Enum.Material.DiamondPlate
		clone_4:SetAttribute("Breakable", false)
		clone_4.Color = Color3.fromRGB(112, 107, 111)
		clone_4:SetAttribute("Name", "Steel")
		clone_4.Size = Vector3.new(unpack({var392.X, var392.Y, var392.Z}))
		clone_4.Parent = workspace
		table.insert(tbl_6_upvr, clone_4)
		game:GetService("CollectionService"):AddTag(clone_4, "ps_spawned")
		local var395 = arg3
		if not var395 then
			var395 = arg2.PrimaryPart.CFrame * CFrame.new(0, clone_4.Size.Y / 2 - 3, -10)
		end
		clone_4.CFrame = var395
	end, 3};
	["Kill Block"] = {function(arg1, arg2, arg3, arg4) -- Line 1346
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		if not arg4 then
			local var398 = tbl_4_upvr[workspace:GetAttribute("SpawnShape") or 1]
		end
		local clone_2 = script.Block:Clone()
		clone_2:SetAttribute("Breakable", false)
		clone_2:SetAttribute("Name", "Kill Block")
		clone_2.Material = Enum.Material.SmoothPlastic
		clone_2.Size = Vector3.new(unpack({var398.X, var398.Y, var398.Z}))
		clone_2.Transparency = 0.5
		clone_2.BrickColor = BrickColor.new("Really red")
		clone_2.CanCollide = false
		clone_2.Parent = workspace
		table.insert(tbl_6_upvr, clone_2)
		game:GetService("CollectionService"):AddTag(clone_2, "ps_spawned")
		game:GetService("CollectionService"):AddTag(clone_2, "killbrick")
		local var401 = arg3
		if not var401 then
			var401 = arg2.PrimaryPart.CFrame * CFrame.new(0, clone_2.Size.Y / 2 - 3, -10)
		end
		clone_2.CFrame = var401
	end, 4};
}
function var372_upvw.IsCosmeticProduct(arg1, arg2) -- Line 1368
	--[[ Upvalues[1]:
		[1]: var372_upvw (read and write)
	]]
	for _, v_15 in pairs(var372_upvw.CosmeticProducts) do
		if tonumber(v_15.id) == tonumber(arg2) then
			return v_15.count
		end
	end
end
function var372_upvw.IsEmoteProduct(arg1, arg2) -- Line 1377
	--[[ Upvalues[1]:
		[1]: var372_upvw (read and write)
	]]
	for _, v_16 in pairs(var372_upvw.EmoteProducts) do
		if tonumber(v_16.id) == tonumber(arg2) then
			return v_16.count
		end
	end
end
for _, v_17 in pairs(var372_upvw.Order) do
	if string.sub(v_17, 0, 3) == "-- " then
		var372_upvw.VIPServerPowers[v_17] = function() -- Line 1388
		end
		table.insert(var372_upvw.VIPServerButtons, v_17)
	end
end
table.sort(var372_upvw.Cosmetics, function(arg1, arg2) -- Line 1392
	local var417
	if arg2[2] >= arg1[2] then
		var417 = false
	else
		var417 = true
	end
	return var417
end)
var372_upvw.UpdateLog = "BIGGERRR **<font color=\"#ADD8E6\">The End Of The Long Wait</font>**\nYour patience and support mean the world to me, thank you. I will make sure this long wait won’t be repeated — **you can expect updates every two or three weeks** 🚀\n-# — 🍟\n\n-# <i>P.S. expect a rework of a villain's awakening, the new moves MIGHT have some monster or cosmic aspect, we'll see...</i>\n\n## ✨\n## ✶ **<font color=\"#ff5c5c\">KJ</font>** is now available !!\n* **<font color=\"#FFB3B3\">U</font><font color=\"#FFD9B3\">n</font><font color=\"#FFFFB3\">l</font><font color=\"#B3FFB3\">i</font><font color=\"#B3B3FF\">m</font><font color=\"#D9B3FF\">i</font><font color=\"#FFB3FF\">t</font><font color=\"#FFB3B3\">e</font><font color=\"#FFD9B3\">d</font> <font color=\"#FFFFB3\">F</font><font color=\"#B3FFB3\">l</font><font color=\"#B3B3FF\">e</font><font color=\"#D9B3FF\">x</font> <font color=\"#FFB3FF\">W</font><font color=\"#FFB3B3\">o</font><font color=\"#FFD9B3\">r</font><font color=\"#FFFFB3\">k</font><font color=\"#B3FFB3\">s</font>** — has damage requirement \n-# ⓘ  to prevent chaos, using KJ will teleport you to a separate lobby\n\n## ✶ **<font color=\"#8896ff\">Martial Artist</font>** is now free !!\n* new move: **Grand Fissure** (has finisher)\n* new move: **Last Breath**\n* added **Head First** finisher\n* added passive — uppercut after finisher\n* added awakening aura\n\n## ✶ **New <font color=\"#FFD813\">Early Access</font> Character** 🌟\n* first move: **Weboom**\n* second move: **Plasma Cannon**\n* third move: **Trinity Tear**\n* fourth move: **Double Trouble**\n* wall combo\n* spawn intro\n\n## ✶ **Snowy Map** ❄️\n* Have a snowball fight with your friends!\n* Watch out for mysterious meteors...\n\n* **Bald Hero Awakening**\n\t* **Serious Trashcan**\n\t* **Serious Sneeze**\n\t* **Serious Slap**\n\n* **Retouched Finishers**\n\t* **Whirlwind Kick**\n\t* **Ignition Burst**\n\t* **Windstorm Fury**\n\t\n* **Hero Hunter**\n\t* Added a close range variant to **Crushed Rock**\n\t\n* **New Cosmetics**\n  * Added cosmetic gifting\n  * Webbed Cape\n  * Warden Cape\n  * Ruler Cape\n  * Gold Aura\n  * Midnight Aura\n  * Crimson Aura\n  * Colorful Aura\n  * Glitch Aura\n  * Error Aura\n\n* **100** new emotes\n\t* **New Types**\n\t\t* **Kill Emote**\n\t\t* **Melee Effect**\n\t\t* **Aura Effect**\n\t* You can now gift emotes in bulk\n\n* **Mobile Customization**\n\t* Resize buttons individually — pinch to resize\n\t* Shift lock toggle button\n\n* **VC Servers**\n* **Day & night cycle setting**\n\t* Aurora can be seen at night — gives free emote\n* Accessories will now have good quality \n\n## 🛠️\n* Build Mode\n\t* Spawn trashcan added\n\t* Fixed dragging\n\t* Fixed delayed resizing & repositioning\n\t* Fixed clear not getting rid of destruction parts\n\t* CTRL + V to duplicate selection\n* Replaced Awakening Music That Were Taken Down\n\t* Hero Hunter\n\t* Destructive Cyborg\n\t* Deadly Ninja\n* Whirlwind Drop\n\t* Finisher will now pull enemies in\n\t* Fixed being immune to counters\n* Moves that have an air variation will now be marked\n* Fixed Expulsive Push soft lock bug\n* Fixed Earth Splitting Strike fling bug\n* Fixed Wild Psychic awakening animation being so laggy\n* Fixed Speedblitz Dropkick desynced hitbox\n* Fixed collisions acting weird in private server\n* Fixed an emote bug that broke skills\n* Fixed lag that was creating millions of parts\n* Removed crab\n"
return var372_upvw