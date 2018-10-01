------------------------------------------------------

local function declare_bombloadout(clsid, picture,t)
declare_weapon(t);

declare_loadout({
		category 		= CAT_BOMBS,
		CLSID	 		= clsid,
		attribute		= t.wsTypeOfWeapon,
		Count 			= 1,
		Cx_pil			= t.Cx,
		Picture			= picture,
		displayName		= t.user_name,
		Weight			= t.mass,
		Elements  		= {{ShapeName = t.model}},
	})
	return t;
end
	
local Bomb_Mk82 = {
	category			= CAT_BOMBS,
	name      = "Mk-87 Training mk-82",
	model     = "mk-87",
	user_name = _("Mk-87 Training mk-82"),
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, WSTYPE_PLACEHOLDER},
	type				= 0,
	hMin				= 100.0,
	hMax				= 10000.0,
	VyHold				= -100.0,
	Ag      			= -1.23,
	
	shape_table_data =
	{
		{
			name     = "mk-87",
			file     = "mk-87",
			life     = 1,
			fire     = {0, 1},
			username = _("Mk-87"),
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	
	warhead = simple_warhead(0.0001),
		
	mass				= 232.0,
	Cx				= 0.00025,
	scheme			= "bomb-common",
	class_name		= "wAmmunition",

	fm = 
	{
		mass            = 232.0,
		caliber         = 0.273,
		cx_coeff        = {1.0, 0.29, 0.71, 0.14, 1.28},
		L               = 2.21,
		I               = 94.425933,
		Ma              = 2.746331,
		Mw              = 2.146083,
		wind_time       = 1000.0,
		wind_sigma      = 80.0,
	},

	targeting_data = 
	{
		char_time = 20.32,
	},
	
};
	
local Bomb_Mk83 = {
	category			= CAT_BOMBS,
	name      = "Mk-88 Training mk-83",
	model     = "mk-87",
	user_name = _("Mk-88 Training mk-83"),
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, WSTYPE_PLACEHOLDER},
	type				= 0,
	hMin				= 100.0,
	hMax				= 10000.0,
	VyHold				= -100.0,
	Ag      			= -1.23,
	
	shape_table_data =
	{
		{
			name     = "Mk-83",
			file     = "mk-83",
			life     = 1,
			fire     = {0, 1},
			username = _("Mk-82B"),
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	
	warhead = simple_warhead(0.0001),
		
	mass				= 454.0,
	Cx				= 0.00035,
	scheme			= "bomb-common",
	class_name		= "wAmmunition",

	fm = 
	{
		mass		= 454.0,
		caliber		= 0.356,
		cx_coeff	= {1.0, 0.29, 0.71, 0.13, 1.28},
		L			= 3.0,
		I			= 340.5,
		Ma			= 2.746331,
		Mw			= 2.146083,
		wind_time	= 1000.0,
		wind_sigma	= 150.0,
	},
	
	targeting_data = 
	{
		char_time = 20.32,
	},
};
	
local Bomb_Mk84 = {
	category			= CAT_BOMBS,
	name      = "Mk-84 Training mk-84",
	model     = "mk-87",
	user_name = _("Mk-84 Training mk-84"),
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, WSTYPE_PLACEHOLDER},
	type				= 0,
	hMin				= 100.0,
	hMax				= 10000.0,
	VyHold				= -100.0,
	Ag      			= -1.23,
	
	shape_table_data =
	{
		{
			name     = "Mk-82",
			file     = "mk-82",
			life     = 1,
			fire     = {0, 1},
			username = _("Mk-82B"),
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	
	warhead = simple_warhead(0.0001),
		
	mass			= 908.0,
	Cx				= 0.00056,
	scheme			= "bomb-common",
	class_name		= "wAmmunition",

	fm = 
	{
		mass		= 908.0,
		caliber		= 0.457,
		cx_coeff	= {1.0, 0.39, 0.6, 0.168, 1.31},
		L			= 2.5,
		I			= 864.446267,
		Ma			= 2.746331,
		Mw			= 2.146083,
		wind_time	= 1000.0,
		wind_sigma	= 220.0,
	},
	
	targeting_data = 
	{
		char_time = 20.32,
	},
};

declare_bombloadout("{Mk_87}","mk82.png",Bomb_Mk82);
declare_bombloadout("{Mk_88}","mk83.png",Bomb_Mk83);
declare_bombloadout("{Mk_84_BDU_56}","mk84.png",Bomb_Mk84);
	

-- local GBU_15 = {
		-- category 			= CAT_MISSILES,
        -- Name 				= "GBU-15",
		-- user_name			= _("GBU-15"),
		-- wsTypeOfWeapon 		= {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},
        -- Escort 				= 1,
        -- Head_Type 			= 5,
		-- warhead 			= predefined_warhead("AGM_65E"),
		-- sigma 				= {5, 5, 5},
        -- M 					= 286.0,
        -- H_max 				= 10000.0,
        -- H_min				= -1,
        -- Diam 				= 305.0,
        -- Cx_pil 				= 4,
        -- D_max 				= 11112.0,
        -- D_min 				= 1000.0,
        -- Head_Form 			= 0,
        -- Life_Time 			= 110,
        -- Nr_max 				= 16,
        -- v_min 				= 50.0,
        -- v_mid 				= 290.0,
        -- Mach_max 			= 1.5,
        -- t_b 				= 0.0,
        -- t_acc 				= 4.0,
        -- t_marsh 			= 0.0,
        -- Range_max 			= 11112.0,
        -- H_min_t 			= 0.0,
        -- Fi_start 			= 0.5,
        -- Fi_rak 				= 3.14152,
        -- Fi_excort 			= 1.05,
        -- Fi_search 			= 99.9,
        -- OmViz_max 			= 99.9,
        -- exhaust 			= {0.75, 0.75, 0.75, 0.1},
        -- X_back 				= -0.879,
        -- Y_back 				= -0.155,
        -- Z_back 				= 0.0,
        -- Reflection 			= 0.063,
        -- KillDistance 		= 0.0,
		-- shape_table_data 	=
			-- {
				-- {
				-- name	 = "GBU_15",
				-- file	 = "kab-1500t",
				-- life	 = 1,
				-- fire	 = { 0, 1},
				-- username = "GBU_15",
				-- index = WSTYPE_PLACEHOLDER,
				-- },
			-- },
		-- }		
	
-- declare_weapon(GBU_15)
-- declare_loadout({
	-- category		=	CAT_MISSILES,
	-- CLSID			= 	"{LAU_117_GBU_15}", 
	-- Picture			=	"agm65.png",
	-- wsTypeOfWeapon	=	GBU_15.wsTypeOfWeapon, 
	-- displayName		=	_("LAU-117,GBU-15"),
	-- attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	-- Cx_pil			=	0.001959765625,
	-- Count			=	1,
	-- Weight			=	100,
	-- Elements	=	
	-- {
			-- {	ShapeName	=	"LAU-117"	  ,	IsAdapter  	=   true  }, 
			-- {	ShapeName	=	"GBU_15"	  ,	Position	=	{0.075,   -0.148,   0.0}},
	-- }, -- end of Elements
-- })


local GBU_15_B = {
	category  = CAT_BOMBS,
	name      = "GBU-15_B",
	model     = "kab-1500t",
	user_name = _("GBU-15 bomb"),
	wsTypeOfWeapon = {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, WSTYPE_PLACEHOLDER},
	scheme    = "bomb-common",
	type      = 0,
	mass      = 1651.0,
	hMin      = 200.0,
	hMax      = 32000.0,
	Cx        = 0.00035,
	VyHold    = -100.0,
	Ag        = -1.23,
	fm = {
		mass        = 1651,  -- empty weight with warhead, wo fuel, kg
		caliber     = 0.45,  -- Caliber, meters 
		cx_coeff    = {1, 0.39, 0.38, 0.236, 1.31}, -- Cx
		L           = 3.91, -- Length, meters 
		I           = 2103, -- kgm2 - moment of inertia  I = 1/12 ML2
		Ma          = 0.416675,  -- dependence moment coefficient of  by  AoA angular acceleration  T / I   [FAB-1500]
		Mw          = 3.497926, --  rad/s  - 57.3°/s - dependence moment coefficient by angular velocity (|V|*sin(?))/|r| -  Mw  =  Ma * t      [FAB-1500]
		wind_time   = 1000.000000, 
		wind_sigma  = 80, -- dispersion coefficient
		cx_factor   = 100,
	},
	warhead = simple_warhead(906),-- 44 + bonus of fragments,
	shape_table_data = {
		{
			name     = "GBU-15_B",
			file     = "kab-1500t",
			life     = 1,
			fire     = {0, 1},
			username = "GBU-15_B",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = {
		char_time = 20.87, -- characteristic time for sights 
	},
};
declare_weapon(GBU_15_B);




declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{GBU-15_B}",
	attribute		= GBU_15_B.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= GBU_15_B.Cx,
	Picture			= "kab1500.png",
	displayName		= GBU_15_B.user_name,
	Weight			= GBU_15_B.mass,
	Elements  		= 
	{
		{ShapeName = "kab-1500t",	Position	=	{0.0,   5.0,   0.0} },
	},
})

declare_loadout({
	category		 = CAT_FUEL_TANKS,
	CLSID			 = "{AN_AXQ-14}",
	attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,107},
	Picture			 = "PTB.png",
	displayName		 = _("AN/AXQ-14"),
	Weight_Empty	 = 8 +  0.775 * 150,
	Weight			 = 8 +  0.775 * 150,
	Cx_pil			 = 0.002,
	Elements	= 
	{
		[1]	=	
		{
		Position = {0, 0, 0},
		ShapeName	= "PTB-150",
		},
	}, 
})
-- declare_loadout({
	-- category		 = CAT_PODS,
	-- CLSID			 = "{AN_AXQ-14_POD}",
	-- attribute		 =  {wsType_Air,wsType_GContainer,wsType_Control_Cont,WSTYPE_PLACEHOLDER},
	-- Picture			 = "PTB.png",
	-- displayName		 = _("AN/AXQ-14"),
	-- Weight_Empty	 = 8,
	-- Weight			 = 8 +  0.775 * 150,
	-- Cx_pil			 = 0.002,
	-- shape_table_data = 
	-- {
		-- {
			-- name 	= "FuelTank_150L",
			-- file	= "FuelTank_150L";
			-- life	= 1;
			-- fire	= { 0, 1};
			-- username	= "FuelTank 150L";
			-- index	= WSTYPE_PLACEHOLDER;
		-- },
	-- },
	-- Elements	= 
	-- {
		-- {
			-- ShapeName	= "FuelTank_150L",
		-- }, 
	-- }, 
-- })




-- declare_paveway_2("KAB_1500Kr", _("KAB-1500L-Pr"), "kab-1500", wsType_Bomb_Guided, "bomb-paveway-II-afm", {
    -- fm =
    -- {
            -- mass            = 1500.0,
            -- caliber         = 0.580,
            -- --cx_coeff        = {1.0, 0.8, 0.6, 0.6, 1.3},
			-- cx_coeff        = {1.000000, 0.400000, 0.370000, 0.288000, 1.310000},
            -- L               = 4.60,
            -- wind_time       = 1000.000000,
            -- wind_sigma      = windCoeff * 80.000000,
			-- Sw				= 3.2,
			-- A				= 0.6,
			-- maxAoa			= math.rad(7),
			-- finsTau			= 0.1
    -- },
	-- bang_bang_autopilot = {
		-- omegaDumpingK = 0.5
	-- },	
    -- warhead = warheads["KAB_1500Kr"],
-- }, {
    -- char_time = 20.3
-- },
-- "wAmmunitionLaserHoming"
-- );




-- local AGM_65F =
		-- {
		-- category 			= CAT_MISSILES,
        -- Name 				= "AGM-65F",
		-- user_name			= _("AGM-65F"),
		-- wsTypeOfWeapon 		= {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},
        -- Escort 				= 1,
        -- Head_Type 			= 5,
		-- warhead 			= predefined_warhead("AGM_65E"),
		-- sigma 				= {5, 5, 5},
        -- M 					= 286.0,
        -- H_max 				= 10000.0,
        -- H_min				= -1,
        -- Diam 				= 305.0,
        -- Cx_pil 				= 4,
        -- D_max 				= 11112.0,
        -- D_min 				= 1000.0,
        -- Head_Form 			= 0,
        -- Life_Time 			= 110,
        -- Nr_max 				= 16,
        -- v_min 				= 50.0,
        -- v_mid 				= 290.0,
        -- Mach_max 			= 1.5,
        -- t_b 				= 0.0,
        -- t_acc 				= 4.0,
        -- t_marsh 			= 0.0,
        -- Range_max 			= 11112.0,
        -- H_min_t 			= 0.0,
        -- Fi_start 			= 0.5,
        -- Fi_rak 				= 3.14152,
        -- Fi_excort 			= 1.05,
        -- Fi_search 			= 99.9,
        -- OmViz_max 			= 99.9,
        -- exhaust 			= {0.75, 0.75, 0.75, 0.1},
        -- X_back 				= -0.879,
        -- Y_back 				= -0.155,
        -- Z_back 				= 0.0,
        -- Reflection 			= 0.063,
        -- KillDistance 		= 0.0,
		-- shape_table_data 	=
			-- {
				-- {
				-- name	 = "AGM-65F",
				-- file	 = "AGM-65E",
				-- life	 = 1,
				-- fire	 = { 0, 1},
				-- username = "AGM-65F",
				-- index = WSTYPE_PLACEHOLDER,
				-- },
			-- },
		-- }
-- declare_weapon(AGM_65F)

-- Step 3, 
-- declare_loadout({
	-- category		=	CAT_MISSILES,
	-- CLSID			= 	"{LAU_117_AGM_65F}", 
	-- Picture			=	"agm65.png",
	-- wsTypeOfWeapon	=	AGM_65F.wsTypeOfWeapon, 
	-- displayName		=	_("LAU-117,AGM-65F"),
	-- attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	-- Cx_pil			=	0.001959765625,
	-- Count			=	1,
	-- Weight			=	100,
	-- Elements	=	
	-- {
			-- {	ShapeName	=	"LAU-117"	  ,	IsAdapter  	=   true  }, 
			-- {	ShapeName	=	"AGM-65E"	  ,	Position	=	{0.075,   -0.148,   0.0}},
	-- }, -- end of Elements
-- })


-- P_50T = {
	-- category  = CAT_BOMBS,
	-- name      = "P-50T",
	-- model     = "p-50t",
	-- user_name = _("P-50T"),
	-- wsTypeOfWeapon = {wsType_Weapon, wsType_Bomb, wsType_Bomb_A, WSTYPE_PLACEHOLDER},
	-- scheme    = "bomb-smoke",
	-- type      = 0,
	-- mass      = 50.0,
	-- hMin      = 200.0,
	-- hMax      = 12000.0,
	-- Cx        = 0.00035,
	-- VyHold    = -100.0,
	-- Ag        = -1.23,
	-- fm = {
		-- mass        = 50,  -- empty weight with warhead, wo fuel, kg
		-- caliber     = 0.203,  -- Caliber, meters 
		-- cx_coeff    = {1, 0.39, 0.38, 0.236, 1.31}, -- Cx
		-- L           = 1.040, -- Length, meters 
		-- I           = 4.507, -- kgm2 - moment of inertia  I = 1/12 ML2
		-- Ma          = 0.667,  -- dependence moment coefficient of  by  AoA angular acceleration  T / I
		-- Mw          = 1.094, --  rad/s  - 57.3°/s - dependence moment coefficient by angular velocity (|V|*sin(?))/|r| -  Mw  =  Ma * t     
		-- wind_sigma  = 10, -- dispersion coefficient
		-- cx_factor   = 100,
	-- },
	-- warhead = {
			-- --smoke itself
			-- transparency		 = 0.5,
			-- color 				 = {0.95, 0.89, 0.99}, -- White colour RGB
			-- intensity 			 = 5,
			-- duration 			 = 60,
			-- flare				 = true,
			-- -- junk to avoid exception in warhead scheme loading
			-- mass 				 = 0.01,
			-- expl_mass       	 = 0.01,
			-- piercing_mass   	 = 0,
			-- caliber				 = 0.203,
			-- other_factors 		 = {1, 1, 1},
			-- obj_factors 		 = {1, 1},
			-- concrete_factors 	 = {1, 1, 1},
			-- cumulative_factor 	 = 0,
			-- concrete_obj_factor  = 0,
			-- cumulative_thickness = 0,
	-- },
	-- shape_table_data = {
		-- {
			-- name     = "P-50T",
			-- file     = "p-50t",
			-- life     = 1,
			-- fire     = {0, 1},
			-- username = "P-50T",
			-- index    = WSTYPE_PLACEHOLDER,
		-- },
	-- },
	-- targeting_data = {
		-- char_time = 20.87, -- characteristic time for sights 
	-- },
-- }
-- declare_weapon(P_50T)




-- declare_loadout({
	-- category 		= CAT_BOMBS,
	-- CLSID	 		= "{P-50T}",
	-- attribute		= P_50T.wsTypeOfWeapon,
	-- Count 			= 1,
	-- Cx_pil			= P_50T.Cx,
	-- Picture			= "P-50T.png",
	-- displayName		= P_50T.user_name,
	-- Weight			= P_50T.mass,
	-- Elements  		= {{ShapeName = "p-50t"}},
-- })

-- declare_loadout({
	-- category		 = CAT_FUEL_TANKS,
	-- CLSID			 = "{PTB_150L_L39}",
	-- attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	-- Picture			 = "PTB.png",
	-- displayName		 = _("Fuel Tank 150 liters"),
	-- Weight_Empty	 = 8,
	-- Weight			 = 8 +  0.775 * 150,
	-- Cx_pil			 = 0.002,
	-- shape_table_data = 
	-- {
		-- {
			-- name 	= "FuelTank_150L",
			-- file	= "FuelTank_150L";
			-- life	= 1;
			-- fire	= { 0, 1};
			-- username	= "FuelTank 150L";
			-- index	= WSTYPE_PLACEHOLDER;
		-- },
	-- },
	-- Elements	= 
	-- {
		-- {
			-- ShapeName	= "FuelTank_150L",
		-- }, 
	-- }, 
-- })


-- declare_loadout({
	-- category		 = CAT_ROCKETS,
	-- CLSID			 = "{UB-16-57UMP}",
	-- displayName		 =	_("UB-16 - 16 S-5KO"),
	-- wsTypeOfWeapon	 =	{4,	7,	33,	31},
	-- attribute	 	 =	{4,	7,	32,	WSTYPE_PLACEHOLDER},
	-- Count			 =	16,
	-- Picture			 = "ub16.png",
	-- Weight_Empty	 = 57,
	-- Weight			 = 138,
	-- Cx_pil			 =	0.00196533203125,
	-- shape_table_data = 
	-- {
		-- {
			-- name 	= "UB-16-57UMP",
			-- file	= "UB-16-57UMP";
			-- life	= 1;
			-- fire	= { 0, 1};
			-- username	= "UB-16-57UMP";
			-- index	= WSTYPE_PLACEHOLDER;
		-- },
	-- },
	-- Elements = {{ ShapeName	= "UB-16-57UMP", IsAdapter = true}}
-- })


-- declare_loadout({
	-- category		 = CAT_FUEL_TANKS,
	-- CLSID			 = "{PTB_350L_L39}",
	-- attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	-- Picture			 = "PTB.png",
	-- displayName		 = _("Fuel Tank 350 liters"),
	-- Weight_Empty	 = 12,
	-- Weight			 = 12 +  0.775 * 350,
	-- Cx_pil			 = 0.002,
	-- shape_table_data = 
	-- {
		-- {
			-- name 	= "FuelTank_350L",
			-- file	= "FuelTank_350L";
			-- life	= 1;
			-- fire	= { 0, 1};
			-- username	= "FuelTank 350L";
			-- index	= WSTYPE_PLACEHOLDER;
		-- },
	-- },
	-- Elements	= 
	-- {
		-- {
			-- ShapeName	= "FuelTank_350L",
		-- }, 
	-- }, 
-- })



-- declare_loadout({
 -- category    =   CAT_PODS,
 -- CLSID       =  "{ADEN_GUNPOD}",
 -- attribute   =   {wsType_Weapon,wsType_GContainer,wsType_Cannon_Cont,WSTYPE_PLACEHOLDER},
 -- Picture      = "ADEN_GUNPOD.png",
 -- displayName   = _("ADEN GUNPOD"),
 -- Weight     = 87,
 -- Cx_pil     = 0.001220703125,
 -- Elements     = {{ShapeName = "ADEN_GUNPOD"}},
 -- kind_of_shipping = 2,--SOLID_MUNITION
 -- gun_mounts  = {  gun_mount("ADEN",{ count = 130},{muzzle_pos_connector = "Point_Gun"  ,ejector_pos_connector = "extractor1",barrel_circular_error = 0.005, effects = { fire_effect(6,0.05),smoke_effect()}}),
  -- },
 -- shape_table_data = {{file    = 'ADEN_GUNPOD'; username = 'ADEN_GUNPOD';index    =  WSTYPE_PLACEHOLDER;}}
-- })



-- declare_loadout({
	-- category	= CAT_BOMBS,
	-- CLSID		= "{M2KC_RAFAUT_MK82}",
	-- attribute	= {wsType_Weapon, wsType_Bomb, wsType_Container, WSTYPE_PLACEHOLDER},
	-- wsTypeOfWeapon	=	{4,	5,	9,	31},
	-- Count		= 2,	--count of wepon
	-- Cx_pil		= 0.001, -- drag index of whole rack
	-- Picture		=	"mk82.png",
	-- displayName	= _("AUF2 MK-82 x 2"),
	-- Weight		= 75 + 2 * 225,-- weight adapter + weapon
	-- Elements	=
	-- {
		-- rafaut_auf2_adapter,
		-- rafaut_auf2_element("MK-82", 2),
		-- rafaut_auf2_element("MK-82", 1),
	-- }
-- })
