-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:19
-- Luau version 6, Types version 3
-- Time taken: 0.000671 seconds

return {
	userAnimation = 15944317351;
	victimAnimation = 15944354277;
	grabWeapon = true;
	sounds = {
		char = {{
			SoundId = "rbxassetid://15944339740";
			Volume = 2;
		}};
		hit = {{
			SoundId = "rbxassetid://15944339899";
			Volume = 4;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 3.5;
			normal = true;
			damage = 2;
		};
		hit2 = {
			normal = true;
			damage = 1;
		};
		hit3 = {
			materialDependent = 3.5;
			normal = true;
			damage = 3;
		};
		hit4 = {
			final = {
				offset = -3.5;
				force = {
					sideways = -60;
					pushback = 0;
					up = Vector3.new(0, 6, 0);
				};
			};
			damage = 6;
		};
	};
}