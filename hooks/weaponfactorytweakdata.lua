Hooks:PostHook( WeaponFactoryTweakData, "init", "AK74Init", function(self)
	
--=========================--
--          AK-74          --
-- GERMANTACOS, KILLERWOLF --
--=========================--
	
--=========================--
--          ARRAYS         --
--=========================--

local vanilla_ak545sight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}
--=========================--
--        	ADDS           --
--=========================--
--- Gun ---
for id, o_id in pairs(vanilla_ak545sight) do
	self.wpn_fps_ass_ak_stamp_545.adds[o_id] = {"wpn_fps_ass_ak_stamp_762_om_tula"}
end
--=========================--
--          STANCE         --
--=========================--

--- Vanilla sights ---
for id, o_id in pairs(vanilla_ak545sight) do
	if self.parts[o_id].stance_mod.wpn_fps_ass_flint then
		self.parts[o_id].stance_mod.wpn_fps_ass_ak_stamp_545 = deep_clone(self.parts[o_id].stance_mod.wpn_fps_ass_flint)
	else
		log("[AK_Pack] [ERROR] WHO THE FUCK MESSED WITH SIGHT STANCES THIS TIME!? " .. o_id)
	end
end

end )