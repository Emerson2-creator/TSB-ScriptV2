-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:17
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

return {
	userAnimation = 15955393872;
	victimAnimation = 15955422503;
	sounds = {
		char = {{
			SoundId = "rbxassetid://15955357446";
			Volume = 2;
			TimePosition = 0.167;
		}, {
			SoundId = "rbxassetid://15955559676";
			Volume = 2;
			TimePosition = 0.2;
		}};
		wall = {{
			SoundId = "rbxassetid://15955357060";
			Volume = 2;
			TimePosition = 0.167;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 3.5;
			normal = true;
			damage = 6;
		};
		hit2 = {
			materialDependent = 3.5;
			final = {
				offset = -6;
				force = {
					sideways = 0;
					pushback = -45;
					up = Vector3.new(0, 25, 0);
				};
			};
			damage = 6;
		};
	};
}