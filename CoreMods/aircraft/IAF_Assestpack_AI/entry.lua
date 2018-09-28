declare_plugin("IAF_Asset_Pack AI by Israeli Mod Team",{
	displayName	 = _("IAF_Asset_Pack AI"),
	shortName	 =	 "IAF_Asset_Pack AI" ,

	image		 = "icon.png",
	installed   = true,
	dirName     = current_mod_path,
	version		 	  = "2.5.0 Beta",		 
	state		 	  = "installed",
	info        = _("Israeli Air Force AI Asset Pack - adding AI planes and helichopters and air-air and ground assests. Including Air-Air and Air-Ground weapons by Refael, such as: Phyton-3/4/5 and Derby Air-Air missiles. Mod by Preflight mod team. 3D Art by IAF.101~Schnix, 2D art by IAF_Assaf. Programming by IAF.101~Phantom. http://www.preflight.us"),
	encyclopedia_path = current_mod_path .. '/Encyclopedia',
	Skins	=
	{
		{
			name	= "IAF_Asset_Pack",
			dir		= "Theme"
		},
	},	
	Missions =
	{
		{
			name		= _("IAF_Asset_Pack"),
			dir			= "Missions",
		},
	},
})
---------------------------------------------------------
-- Texture and Model Mounts --
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_liveries_path (current_mod_path.."/Liveries")

mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window


---------------------------------------------------------
-- Load IAF Assest Files --
dofile(current_mod_path..'/Weapons.lua')
dofile(current_mod_path..'/Planes.lua')
--dofile(current_mod_path..'/Ground.lua')
--dofile(current_mod_path..'/Ships.lua')

---------------------------------------------------------

plugin_done()
