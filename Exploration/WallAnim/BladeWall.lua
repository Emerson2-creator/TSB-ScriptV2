-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:21
-- Luau version 6, Types version 3
-- Time taken: 0.000666 seconds

return {
	userAnimation = 15997042291;
	victimAnimation = 15997027501;
	grabWeapon = true;
	sounds = {
		char = {{
			SoundId = "rbxassetid://15997645271";
			Volume = 2;
		}};
		hit = {{
			SoundId = "rbxassetid://15997641783";
			Volume = 3;
		}};
	};
	markers = {
		hit1 = {
			normal = true;
			damage = 2;
			slash = true;
		};
		hit2 = {
			materialDependent = 1.5;
			normal = true;
			damage = 1;
		};
		hit3 = {
			materialDependent = 1;
			normal = true;
			damage = 2;
		};
		hit4 = {
			final = {
				offset = -6;
				force = {
					sideways = 52.5;
					pushback = 0;
					up = Vector3.new(0, 6, 0);
				};
			};
			slash = true;
			damage = 7;
		};
	};
}