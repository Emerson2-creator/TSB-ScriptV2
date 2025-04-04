-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:25
-- Luau version 6, Types version 3
-- Time taken: 0.000600 seconds

return {
	userAnimation = 18447913645;
	victimAnimation = 18447915110;
	sounds = {
		char = {{
			SoundId = "rbxassetid://18443048724";
			Volume = 10;
		}};
		hit = {{
			SoundId = "rbxassetid://18443049348";
			Volume = 10;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 2;
			normal = true;
			damage = 6;
		};
		hit2 = {
			normal = true;
			damage = 6;
		};
		hit3 = {
			final = {
				offset = -6;
				force = {
					sideways = -120;
					pushback = 0;
					up = Vector3.new(0, 25, 0);
				};
			};
			damage = 10;
		};
	};
}