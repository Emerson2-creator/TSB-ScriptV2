-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:20
-- Luau version 6, Types version 3
-- Time taken: 0.000764 seconds

return {
	userAnimation = 16310343179;
	victimAnimation = 16310419285;
	sounds = {
		char = {{
			SoundId = "rbxassetid://16310489770";
			Volume = 3;
		}};
		hit = {{
			SoundId = "rbxassetid://16310489560";
			Volume = 3;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 1;
			normal = true;
			waterparticle = false;
			damage = 1;
		};
		hit2 = {
			materialDependent = 1;
			normal = true;
			waterparticle = false;
			damage = 1;
		};
		hit3 = {
			materialDependent = 1;
			normal = true;
			waterparticle = false;
			damage = 1;
		};
		hit4 = {
			materialDependent = 1;
			normal = true;
			waterparticle = false;
			damage = 2;
		};
		hit5 = {
			materialDependent = 1;
			normal = true;
			waterparticle = true;
			damage = 4;
		};
		hit6 = {
			final = {
				offset = -6;
				force = {
					sideways = 0;
					pushback = -45;
					up = Vector3.new(0, 25, 0);
				};
			};
			damage = 3;
		};
	};
}