-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-25 13:26:28
-- Luau version 6, Types version 3
-- Time taken: 0.000604 seconds

return {
	userAnimation = 125518819402716;
	victimAnimation = 71936994705401;
	sounds = {
		char = {{
			SoundId = "rbxassetid://113641266793862";
			Volume = 2;
			TimePosition = 0;
		}};
		hit = {{
			SoundId = "rbxassetid://90466896156784";
			Volume = 2;
		}};
	};
	markers = {
		hit1 = {
			materialDependent = 3.5;
			normal = true;
			damage = 1;
		};
		hit2 = {
			normal = true;
			damage = 5;
		};
		hit3 = {
			final = {
				offset = 3;
				force = {
					pushback = -250;
					up = Vector3.new(0, 75, 0);
				};
			};
			damage = 35;
		};
	};
}