-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:18
-- Luau version 6, Types version 3
-- Time taken: 0.000646 seconds

return {
	userAnimation = 15943915877;
	victimAnimation = 15943926967;
	sounds = {
		char = {{
			SoundId = "rbxassetid://15943937672";
			Volume = 1.5;
		}};
		hit = {{
			SoundId = "rbxassetid://15943937560";
			Volume = 2;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 1;
			normal = true;
			damage = 1;
		};
		hit2 = {
			materialDependent = 2;
			normal = true;
			damage = 4;
		};
		hit3 = {
			materialDependent = 1;
			normal = true;
			damage = 1;
		};
		hit4 = {
			final = {
				offset = 0.5;
				force = {
					sideways = -52.5;
					pushback = 0;
					up = Vector3.new(0, 6, 0);
				};
			};
			damage = 6;
		};
	};
}