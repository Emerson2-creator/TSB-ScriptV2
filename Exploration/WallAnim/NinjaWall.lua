-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:22
-- Luau version 6, Types version 3
-- Time taken: 0.000671 seconds

return {
	userAnimation = 16023456135;
	victimAnimation = 16023171958;
	grabWeapon = true;
	sounds = {
		char = {{
			SoundId = "rbxassetid://16023181836";
			Volume = 2;
		}};
		hit = {{
			SoundId = "rbxassetid://16023181747";
			Volume = 3;
		}};
	};
	markers = {
		hit1 = {
			normal = true;
			damage = 1;
			slash = true;
		};
		hit2 = {
			materialDependent = 1.5;
			normal = true;
			damage = 4;
		};
		hit3 = {
			explosion = true;
			normal = true;
			materialDependent = 2;
			damage = 4;
		};
		hit4 = {
			final = {
				offset = -5.5;
				force = {
					sideways = -52.5;
					pushback = 0;
					up = Vector3.new(0, 6, 0);
				};
			};
			damage = 2;
		};
	};
}