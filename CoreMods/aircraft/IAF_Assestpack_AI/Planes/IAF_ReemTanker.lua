

IAF_ReemTanker =  {
  	Countries			= {"Israel"},
      
	Name 				=   'IAF_ReemTanker',
	DisplayName			= _("IAF ReemTanker"),

	shape_table_data 	= 
	{
		{
			file  	 	= 'kc-135';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'kc-135-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 20}; -- Fire on the ground after destoyed: 300sec 20m
			username	= 'kc-135';
			index    	=  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "kc-135-oblomok";
			file  = "kc-135-oblomok";
			fire  = { 240, 2};
		},
	},
----from KC-135.lua
        EmptyWeight = 44663,
        MaxFuelWeight = 90700.0,
        MaxHeight = 12000.0,
        MaxSpeed =  980,
        MaxTakeOffWeight = 146000.0,
        Picture = "KC-135.png",
        Rate = "100",
        Shape = "KC-135",
        WingSpan = 40,
        WorldID = 60, --recognized as K135

        singleInFlight = true,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser,  WSTYPE_PLACEHOLDER ,KC_135,
        "Tankers",
        },
        
	Categories = {"{8A302789-A55D-4897-B647-66493FA6826F}",  "Tankers",},
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
		TACAN = true,
        mapclasskey = "P0091000064",
        
	Tasks = {
		 aircraft_task(Refueling),
    },	
	DefaultTask = aircraft_task(Refueling),


		-- Countermeasures, 
		passivCounterm = {
			SingleChargeTotal	 	= 240,
			CMDS_Incrementation 	= 30,
			ChaffDefault 			= 120, 
			ChaffChargeSize 		= 1,
			FlareDefault 			= 60, 
			FlareChargeSize 		= 2,
			CMDS_Edit = true,
			-- PPR-26
			chaff = {default = 96, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 32, chargeSz = 1}
        },
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	-0.967},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	0.967},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
        
	
		--sensors
		
	CanopyGeometry = {
            azimuth = {-145.0, 145.0},
            elevation = {-50.0, 90.0}
        },
    Sensors = {
        --RADAR = "AN/APG-63",--f15
        RWR = "Abstract RWR"
        },
    Countermeasures = {
        ECM = "AN/ALQ-135"--f15
       },
		
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
		
	Pylons =     {},	
	-- from PlaneConst.lua
---		[60] = --kc-135 	{
		M_empty	=	44663,
		M_nominal	=	100000,
		M_max	=	146000,
		M_fuel_max	=	90700,
		H_max	=	12000,
		average_fuel_consumption	=	0.1893,
		CAS_min	=	54,
		V_opt	=	220,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.293,	-3.761,	4.147},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{17.671,	-3.665,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	280.28,
		V_max_h	=	280.28,
		tanker_type	=	0,
		wing_area	=	226,
		wing_span	=	40,
		thrust_sum_max	=	38100,
		thrust_sum_ab	=	38100,
		Vy_max	=	10,
		length	=	46.61,
		height	=	12.93,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.9,
		range	=	12247,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	25.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{

			{
				pos = 	{-5.024,	-1.353,	-13.986},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 	
			{
				pos = 	{-0.347,	-1.875,	8.138},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 	
			{
				pos = 	{-0.347,	-1.875,	-8.138},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 
			{
				pos = 	{-5.024,	-1.353,	13.986},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	true,
		refueling_points_count	=	1,
		refueling_points = 
		{
			[1] =  { pos =  {-23.029,	-5.65,	0}, clientType = 3 }
		}, -- end of refueling_points
		fires_pos = 
		{
			[1] = 	{-0.138,	-0.79,	0},
			[2] = 	{-0.138,	-0.79,	5.741},
			[3] = 	{-0.138,	-0.79,	-5.741},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.347,	-1.875,	8.138},
			[9] = 	{-0.347,	-1.875,	-8.138},
			[10] = 	{-5.024,	-1.353,	13.986},
			[11] = 	{-5.024,	-1.353,	-13.986},
		}, -- end of fires_pos
	--}, -- end of [60]

		
---------------------		



	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	
	-- from SFM_Data.lua 
	SFM_Data = {     --kc-135 -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
		aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.015,
			cx_flap	=	0.05,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.023,	0.117,	0.064,	0,	0.5,	20,	1.4},
				[2] = 	{0.2,	0.023,	0.117,	0.064,	0,	1.5,	20,	1.4},
				[3] = 	{0.4,	0.023,	0.117,	0.064,	0,	2.5,	20,	1.4},
				[4] = 	{0.6,	0.025,	0.117,	0.064,	0.022,	3.5,	20,	1.4},
				[5] = 	{0.7,	0.03,	0.117,	0.083,	0.031,	3.5,	20,	1.2},
				[6] = 	{0.8,	0.032,	0.117,	0.107,	0.04,	3.5,	20,	1},
				[7] = 	{0.9,	0.045,	0.117,	0.148,	0.058,	3.5,	20,	0.8},
				[8] = 	{1,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.7},
				[9] = 	{1.5,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			typeng	=	0,
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	9000,
			dpdh_f	=	9000,
			table_data = 
			{
				[1] = 	{0,	373600,	373600},
				[2] = 	{0.2,	312756.6,	312756.6},
				[3] = 	{0.4,	279000,	279000},
				[4] = 	{0.6,	251000,	251000},
				[5] = 	{0.7,	253000,	253000},
				[6] = 	{0.8,	262000,	262000},
				[7] = 	{0.9,	274000,	274000},
				[8] = 	{1,	279000,	279000},
				[9] = 	{1.1,	280000,	280000},
				[10] = 	{1.2,	266000,	266000},
				[11] = 	{1.3,	95001.1,	95001.1},
			}, -- end of table_data
		}, 	
	},



	Damage = {
	[0] = {critical_damage = 5, args = {82}},
	[3] = {critical_damage = 10, args = {65}},
	[8] = {critical_damage = 10},
	[11] = {critical_damage = 3},
	[12] = {critical_damage = 3},
	[15] = {critical_damage = 10},
	[16] = {critical_damage = 10},
	[17] = {critical_damage = 3},
	[18] = {critical_damage = 3},
	[25] = {critical_damage = 5, args = {53}},
	[26] = {critical_damage = 5, args = {54}},
	[35] = {critical_damage = 10, args = {67}, deps_cells = {25, 37}},
	[36] = {critical_damage = 10, args = {68}, deps_cells = {26, 38}},
	[37] = {critical_damage = 4, args = {55}},
	[38] = {critical_damage = 4, args = {56}},
	[43] = {critical_damage = 4, args = {61}, deps_cells = {53}},
	[44] = {critical_damage = 4, args = {62}, deps_cells = {54}},
	[47] = {critical_damage = 5, args = {63}, deps_cells = {51}},
	[48] = {critical_damage = 5, args = {64}, deps_cells = {52}},
	[51] = {critical_damage = 2, args = {59}},
	[52] = {critical_damage = 2, args = {60}},
	[53] = {critical_damage = 2, args = {57}},
	[54] = {critical_damage = 2, args = {58}},
	[55] = {critical_damage = 15, args = {81}},
	},
	
	DamageParts = 
	{  
		[1] = "kc-135-oblomok-wing-r", -- wing R
		[2] = "kc-135-oblomok-wing-l", -- wing L
--		[3] = "kc-135-oblomok-nose", -- nose
--		[4] = "kc-135-oblomok-tail", -- tail
--		[5] = "kc-135-oblomok-tail-l", -- tail
	},
	
lights_data = { typename = "collection", lights = {
	
    [1] = { typename = "collection", -- WOLALIGHT_STROBES
					lights = {	
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV_BANO_1"},--R
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV1_BANO_1"},--L
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV2_BANO_1"},--H
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON L"},--195
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON R"},--196
						--{typename  = "natostrobelight",	argument_1  = 192, period = 1.2, color = {0.8,0,0}, connector = "BANO_0_BACK"},
						{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON L"},
						{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON R"},
							}
			},
	[2] = { typename = "collection",
					lights = {-- 1=Landing light -- 2=Landing/Taxi light
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 209, dir_correction = {elevation = math.rad(-1)}},--"MAIN_SPOT_PTR_02","RESERV_SPOT_PTR"
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 208, dir_correction = {elevation = math.rad(3)}},--"MAIN_SPOT_PTR_01","RESERV_SPOT_PTR","MAIN_SPOT_PTL",
							}
			},
	[3]	= {	typename = "collection",
					lights = {
							-- Left Position Light (red)
						{typename = "omnilight",connector = "BANO_1",color = {0.99, 0.11, 0.3},pos_correction  = {0.1, 0, -0.2},argument  = 190},
							-- Right Position Light (green)
						{typename = "omnilight",connector = "BANO_2",color = {0, 0.894, 0.6},pos_correction = {0.1, 0, 0.2},argument  = 191},
							-- Tail Position Light (white)
						{typename = "omnilight",connector = "BANO_0",color = {1, 1, 1},pos_correction  = {0, 0, 0},argument  = 192}}
			},				
	[4] = { typename = "collection", -- formation_lights_default
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						{typename  = "argumentlight" ,argument  = 201,},--formation_lights_tail_2 = 201;
						{typename  = "argumentlight" ,argument  = 202,},--formation_lights_left   = 202;
						{typename  = "argumentlight" ,argument  = 203,},--formation_lights_right  = 203;
						{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
							}
			},
--[[			
	[5] = { typename = "collection", -- strobe_lights_default
					lights = {
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument = 193, color = {0.8,0,0}},-- Arg 193, 83,
						{typename  = "strobelight",connector =  "RED_BEACON_2",argument = 194, color = {0.8,0,0}},-- (-1"RESERV_RED_BEACON")
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument =  83, color = {0.8,0,0}},-- Arg 193, 83,
							}
			},
--]]			
	}},

	ViewSettings = ViewSettings,
	SnapViews    = SnapViews,
}

add_aircraft(IAF_ReemTanker)
