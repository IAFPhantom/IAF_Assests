

local IAF_Fuga =  {
	Countries			= {"Israel"},
         
	Name 				=   'IAF_Fuga',
	DisplayName			= _('IAF_Tzkit'),
	ViewSettings			= ViewSettings,
	
	Picture 			= "Hawk.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "IAF_Fuga",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'IAF_Fuga';
			life  	 = 18; -- lifebar
			vis   	 = 3; -- visibility gain.
			desrt    = 'IAF_Fuga'; -- Name of destroyed object file name
			fire  	 = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'IAF_Fuga';
			index    =  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "IAF_Fuga";
			file  = "IAF_Fuga";
			fire  = { 240, 2};
		},

	},
	
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	-------------------------
	M_empty 					= 3127, -- kg changed
	M_nominal 					= 5000, -- kg changed
	M_max 						= 5700, -- kg changed
	M_fuel_max 					= 1272, -- kg --2225 changed
	H_max 					 	= 14630, -- m changed
	average_fuel_consumption 	= 0.5, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
	CAS_min 					= 10, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
	V_opt 						= 231,-- Cruise speed (for AI)
	V_take_off 					= 77, -- Take off speed in m/s (for AI)
	V_land 						= 61, -- Land speed in m/s (for AI)
	V_max_sea_level 			= 400, -- Max speed at sea level in m/s (for AI)
	V_max_h 					= 800, -- Max speed at max altitude in m/s (for AI)
	Vy_max 						= 200, -- Max climb speed in m/s (for AI)
	Mach_max 					= 0.80, -- Max speed in Mach (for AI)
	Ny_min 						= -4, -- Min G (for AI)
	Ny_max 						= 7.0,  -- Max G (for AI)
	Ny_max_e 					= 7.0,  -- Max G (for AI)
	AOA_take_off 				= 0.17, -- AoA in take off (for AI)
	bank_angle_max 				= 85, -- Max bank angle (for AI)


	has_afteburner 				= false, -- AFB yes/no changed
	has_speedbrake 				= true, -- Speedbrake yes/no
	
	nose_gear_pos 				= {  4.147, -1.4582 , 0 },     -- nosegear coord 
	main_gear_pos 				= { -0.241, -1.57895, 1.584 }, -- main gear coords 
----------------- SUSPENSION CODE
	nose_gear_amortizer_direct_stroke    	 =  0,  	  -- down from nose_gear_pos !!!
	nose_gear_amortizer_reversal_stroke  	 = -0.17647,  -- up 
	main_gear_amortizer_direct_stroke  	 	 =  0, 		  --  down from main_gear_pos !!!
	main_gear_amortizer_reversal_stroke  	 = -0.29722,  --  up 
	nose_gear_amortizer_normal_weight_stroke = -0.05,	  -- down from nose_gear_pos
	main_gear_amortizer_normal_weight_stroke = -0.15,-- down from main_gear_pos
----------------- SUSPENSION CODE
	tand_gear_max 				= 0.4,
	tanker_type 				= 0, -- Tanker type if the plane is airrefuel capable
	wing_area 					= 16.69, -- wing area in m2 changed
	wing_span 					= 9.418, -- wing spain in m changed
	wing_type 					= 0,
	thrust_sum_max 				= 10000, -- thrust in kg (44kN) changed 2310
	thrust_sum_ab 				= 10000, -- thrust inkg (71kN) changed 2310
	length 						= 11.98, -- full lenght in m changed
	height 						= 4.02, -- height in m changed
	flaps_maneuver 				= 0.5, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
	range 						= 2000, -- Max range in km (for AI)
	RCS 						= 5, -- Radar Cross Section m2
	IR_emission_coeff 			= 0.62, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
	IR_emission_coeff_ab 		= 1.02, -- With afterburner
	wing_tip_pos 				=  {-1.757,	-0.027, 4.67}, -- wingtip coords for visual effects
	nose_gear_wheel_diameter 	= 0.42, -- in m
	main_gear_wheel_diameter 	= 0.550, -- in m
	brakeshute_name 			= 0, -- Landing - brake chute visual shape after separation
	is_tanker 					= false, -- Tanker yes/no
	air_refuel_receptacle_pos 	= {0, 0, 0}, -- refuel coords
	engines_count				= 1, -- Engines count
	engines_nozzles = {
		[1] = 
		{
			pos 		=  {-4.85,	0.2,	0}, -- nozzle coords
			elevation   =  0, -- AFB cone elevation
			diameter	 = 1, -- AFB cone diameter
			exhaust_length_ab   = 7, -- lenght in m
			exhaust_length_ab_K = 0.76, -- AB animation
		}, -- end of [1]
		[2] = 
		{
			pos 		=  {-4.85,	0.2,	0}, -- nozzle coords
			elevation   =  0, -- AFB cone elevation
			diameter	 = 1, -- AFB cone diameter
			exhaust_length_ab   = 7, -- lenght in m
			exhaust_length_ab_K = 0.76, -- AB animation
		}, -- end of [1]
	}, -- end of engines_nozzles

	crew_size	 = 1,
	crew_members = 
	{
		[1] = 
		{
			ejection_seat_name	=	58,
			pilot_name			= 	19,
			drop_canopy_name	=	22,
			pos =  {4,	1,	0},
			canopy_pos = {4,	1,	0},
			ejection_order    = 1,
			ejection_added_speed = {0,0,5},
			can_be_playable  = true,	
			role = "pilot",
			role_display_name = _("Pilot"), 
		}, -- end of [1]
	}, -- end of crew_members

	fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.548,	-0.248,	0},
			[9] = 	{-6.548,	-0.248,	0},
			[10] = 	{0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	
	
	-- Countermeasures
	SingleChargeTotal	 	= 0,
	CMDS_Incrementation 	= 4,
	ChaffDefault 			= 0, 
	ChaffChargeSize 		= 1,
	FlareDefault 			= 0, 
	FlareChargeSize 		= 1,
	CMDS_Edit 				= true,
	chaff_flare_dispenser 	= {
		[1] = 
		{
			dir =  {0, -1, -1},
			pos =  {-3, -1, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, -1, 1},
			pos =  {-3, -1, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	--sensors
	
	detection_range_max		 = 60,
	radar_can_see_ground 	 = true, -- this should be examined (what is this exactly?)
	CanopyGeometry = {
		azimuth   = {-160.0, 160.0}, -- pilot view horizontal (AI)
		elevation = {-50.0, 90.0} -- pilot view vertical (AI)
	},
	Sensors = {
--[[		RWR = "Abstract RWR", -- RWR type
		RADAR = "N-019", -- Radar type
]]		
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},


	
	Pylons =     {
	},
	
	Tasks = {
		aircraft_task(Reconnaissance),
    },	
	DefaultTask = aircraft_task(Reconnaissance),
	
	SFM_Data = {
		aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx = 2.25,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.12,
			cx_flap = 0.1,
			cy_flap = 0.31,
			cx_brk = 0.1,
			table_data = {
			--      M		Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax

					{0.0,	0.0224,	0.05,		0.1079,	0.07,		3.0,	40,		1.33,	},
					{0.1,	0.0214,	0.075,		0.1079,	0.07,		3.0,	35,		1.33,   },
					{0.2,	0.0209,	0.075,		0.1079,	0.07,		3.0,	30,		1.3,    },
					{0.3,	0.0204,	0.078,		0.1079,	0.07,		3.0,	30,		1.3,    },
					{0.4,	0.0204,	0.079,		0.1079,	0.07,		3.1,	30,		1.3,    },
					{0.5,	0.0204,	0.08,		0.1079,	0.07,		3.2,	30,		1.3,    },
					{0.6,	0.0204,	0.082,		0.1079,	0.07,		3.2,	30,		1.2,    },
					{0.7,	0.0204,	0.085,		0.1079,	0.07,		3.5,	25,		1.1,    },
					{0.8,	0.0206,	0.085,		0.1089,	0.018,		3.5,	20,  	1.0,    },
					{0.9,	0.0313,	0.085,		0.11,	0.02,		3.5,	20,  	1.0,    },
					{0.95,	0.0400,	0.07,		0.107,	0.03,		3.5,	18,	    1.0,	},
					{1.0,	0.0472,	0.085,		0.12,	0.034,		3.5,	20,  	1.0,    },
					{1.1,	0.0489,	0.085,		0.2772,	0.134,		3.5,	20,  	1.0,    },
					{1.2,	0.0460,	0.085,		0.5,	0.28,		3.5,	20,  	1.0,    },
					{1.3,	0.0423,	0.085,		0.44,	0.3,		3.5,	15,		1.0		},
					{2.5,	0.0268,	0.085,		0.5,	0.32,		3.5,	20,  	1.0,    },
					{3.9,	0.027,	0.085,		0.56,	0.4,		3.5,	20,  	1.0,    },
			}
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	55.0, -- 67.5
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			typeng	=	0,
			hMaxEng	=	15.5, -- 30.5
			dcx_eng	=	0.0015,
			cemax	=	0.37,
			cefor	=	0.37,
			dpdh_m	=	1800,
			dpdh_f	=	1800,
			table_data = 
			{
			--   M			Pmax
				{0.0,		21750.0}, --16000
				{0.1,		21000.0}, --21000
				{0.2,		20000.0}, --25000
				{0.3,		19430.0}, --28000
				{0.4,		18760.0}, --29700
				{0.5,		18080.0}, --30500
				{0.6,		17500.0}, --31000
				{0.7,		17110.0}, --30000
				{0.8,		16920.0}, --25000
				{0.90,		15570.0}, --23000
				{0.95,		15000.0}, --23000
				{1.0,		14410.0}, --42000
				{1.1,		13250.0}, --38000
				{1.2,		11510.0}, --30000
				{1.3,		8500.0}, --10000
				{2.5,		5700.0}, --10000
				{3.9,		3000.0}, --10000
			}, -- end of table_data
			-- M - Mach number
			-- Pmax - Engine thrust at military power
			-- Pfor - Engine thrust at AFB
		}, -- end of engine
	},
	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {

	},
	
	DamageParts = 
	{  
	},

lights_data = {
typename = "collection",
lights = {

	}
}, -- end lights_data
panelRadio = {
       [1] = {
           name = _("Radio 1"),
           range = {min = 225.0, max = 399.9},
           channels = {
               [1] = { name = _("Channel 1"), default = 225.0, modulation = _("AM"), connect = true},
               [2] = { name = _("Channel 2"), default = 258.0, modulation = _("AM")},
               [3] = { name = _("Channel 3"), default = 260.0, modulation = _("AM")},
               [4] = { name = _("Channel 4"), default = 270.0, modulation = _("AM")},
               [5] = { name = _("Channel 5"), default = 255.0, modulation = _("AM")},
               [6] = { name = _("Channel 6"), default = 259.0, modulation = _("AM")},
               [7] = { name = _("Channel 7"), default = 262.0, modulation = _("AM")},
               [8] = { name = _("Channel 8"), default = 257.0, modulation = _("AM")},
               [9] = { name = _("Channel 9"), default = 253.0, modulation = _("AM")},
               [10] = { name = _("Channel 10"), default = 263.0, modulation = _("AM")},
               [11] = { name = _("Channel 11"), default = 267.0, modulation = _("AM")},
               [12] = { name = _("Channel 12"), default = 254.0, modulation = _("AM")},
               [13] = { name = _("Channel 13"), default = 264.0, modulation = _("AM")},
               [14] = { name = _("Channel 14"), default = 266.0, modulation = _("AM")},
               [15] = { name = _("Channel 15"), default = 265.0, modulation = _("AM")},
               [16] = { name = _("Channel 16"), default = 252.0, modulation = _("AM")},
               [17] = { name = _("Channel 17"), default = 268.0, modulation = _("AM")},
               [18] = { name = _("Channel 18"), default = 269.0, modulation = _("AM")},
           }
       },
   },
}

add_aircraft(IAF_Fuga)
--[[declare_loadout({
 category    =   CAT_PODS,
 CLSID       =  "{ADEN_GUNPOD}",
 attribute   =   {wsType_Weapon,wsType_GContainer,wsType_Cannon_Cont,WSTYPE_PLACEHOLDER},
 Picture      = "ADEN_GUNPOD.png",
 displayName   = _("ADEN GUNPOD"),
 Weight     = 87,
 Cx_pil     = 0.001220703125,
 Elements     = {{ShapeName = "ADEN_GUNPOD"}},
 kind_of_shipping = 2,--SOLID_MUNITION
 gun_mounts  = {  gun_mount("ADEN",{ count = 130},{muzzle_pos_connector = "Point_Gun"  ,ejector_pos_connector = "extractor1",barrel_circular_error = 0.005, effects = { fire_effect(6,0.05),smoke_effect()}}),
  },
 shape_table_data = {{file    = 'ADEN_GUNPOD'; username = 'ADEN_GUNPOD';index    =  WSTYPE_PLACEHOLDER;}}
})
--]]