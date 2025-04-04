-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:23
-- Luau version 6, Types version 3
-- Time taken: 0.000601 seconds

return {
	userAnimation = 16311141574;
	victimAnimation = 16310732064;
	sounds = {
		char = {{
			SoundId = "rbxassetid://16310741248";
			Volume = 3;
		}};
		hit = {{
			SoundId = "rbxassetid://16310741455";
			Volume = 3;
		}};
	};
	markers = {
		hit1 = {
			normal = true;
			damage = 3;
			materialDependent = 2;
		};
		hit2 = {
			final = {
				offset = -6;
				force = {
					sideways = 0;
					pushback = -45;
					up = Vector3.new(0, 25, 0);
				};
			};
			materialDependent = 2;
			damage = 9;
		};
	};
}