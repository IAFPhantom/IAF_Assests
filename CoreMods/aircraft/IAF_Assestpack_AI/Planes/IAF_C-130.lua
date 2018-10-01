

local IAF_C_130 =  {
  	Countries			= {"Israel"},
      
	Name 				=   'IAF_C_130',
	DisplayName			= _("IAF C-130 Hercules"),

	shape_table_data 	= 
	{
		{
			file  	 	= 'c-130';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'c-130-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 20}; -- Fire on the ground after destoyed: 300sec 20m
			username	= 'c-130';
			index    	=  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "c-130-oblomok";
			file  = "c-130-oblomok";
			fire  = { 240, 2};
		},
	},        
 
----from C-130.lua
        EmptyWeight = "36400",
        MaxFuelWeight = "20830",
        MaxHeight = "10000",
        MaxSpeed = "610",
        MaxTakeOffWeight = "79380",
        Picture = "C-130.png",
        Rate = "70",
        Shape = "c-130",
        WingSpan = "40.4",
        WorldID = WSTYPE_PLACEHOLDER,--60, --recognized as WorldID = 31,

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
		
        singleInFlight = true,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser,WSTYPE_PLACEHOLDER,
        "Transports",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
            IRCM = "AN/ALQ-157",
            DISPENSER = "AN/ALE-47"
        },
        mapclasskey = "P0091000029",
	Tasks = {
		 aircraft_task(Transport),
    },	
	DefaultTask = aircraft_task(Transport),


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
		
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
		
	Pylons =     {},	
	-- from PlaneConst.lua
---		[31] = --c-130 	{
		M_empty	=	36400,
		M_nominal	=	70000,
		M_max	=	79380,
		M_fuel_max	=	20830,
		H_max	=	9315,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	174,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.654,	-2.5,	2.746},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.133,	-2.5,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	167.5,
		V_max_h	=	172.5,
		wing_area	=	152.1,
		wing_span	=	40.4,
		thrust_sum_max	=	44400,
		thrust_sum_ab	=	44400,
		Vy_max	=	9.1,
		length	=	29.79,
		height	=	11.66,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.63,
		range	=	8260,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	20.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{

			{
				pos = 	{-0.73,	1.105,	-10.335},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 	
			{
				pos = 	{-0.742,	1.248,	-5.152},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},
			{
				pos = 	{-0.742,	1.248,	5.152},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-0.73,	1.105,	10.335},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	-0.8},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	0.8},
			}, -- end of [2]
		}, -- end of crew_members
		fires_pos = 
		{
			[1] = 	{-2.33,	1.807,	0},
			[2] = 	{-2.333,	1.807,	5.463},
			[3] = 	{-2.333,	1.807,	-5.463},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{0.586,	1.66,	4.841},
			[9] = 	{0.586,	1.66,	-4.841},
			[10] = 	{0.586,	1.546,	10.05},
			[11] = 	{0.586,	1.546,	-10.05},
		}, -- end of fires_pos
		
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
			Mzalfa	=	6.6,
			Mzalfadt	=	1,
			kjx	=	2.85,
			kjz	=	0.00125,
			Czbe	=	-0.012,
			cx_gear	=	0.015,
			cx_flap	=	0.08,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,		0.024,	0.1,	0.0384,	1e-006,	0.5,	20,	1.2},
				[2] = 	{0.2,	0.024,	0.1,	0.0384,	1e-006,	1.5,	20,	1.2},
				[3] = 	{0.4,	0.024,	0.1,	0.0384,	1e-006,	2.5,	20,	1.2},
				[4] = 	{0.5,	0.024,	0.1,	0.0384,	1e-006,	2.5,	20,	1.2},
				[5] = 	{0.6,	0.027,	0.1,	0.0,	0.3,	3.5,	20,	1.2},
				[6] = 	{0.7,	0.031,	0.1,	0.045,	0.9,	3.5,	20,	1},
				[7] = 	{0.8,	0.036,	0.1,	0.107,	1,		3.5,	20,	0.8},
				[8] = 	{0.9,	0.045,	0.1,	0.148,	0.058,	3.5,	20,	0.6},
				[9] = 	{1,		0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.53333333333333},
				[10] = 	{1.5,	0.054,	0.1,	0.199,	0.1,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	0.37,
			cefor	=	0.37,
			dpdh_m	=	4820,
			dpdh_f	=	4820,
			table_data = 
			{
				[1] = 	{0,		150791.9,	150791.9},
				[2] = 	{0.1,	148287.6,	148287.6},
				[3] = 	{0.2,	123531.3,	123531.3},
				[4] = 	{0.3,	103801.6,	103801.6},
				[5] = 	{0.4,	87546.7,	87546.7},
				[6] = 	{0.5,	71708.3,	71708.3},
				[7] = 	{0.6,	58458.4,	58458.4},
				[8] = 	{0.7,	48624.7,	48624.7},
				[9] = 	{0.8,	41438.6,	41438.6},
				[10] = 	{0.9,	33000,		33000},
			}, -- end of table_data
		}, -- end of engine
	},


---- Aircraft\_Common\Damage.lua
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
		[1] = "C-130-OBLOMOK-WING-R", -- wing R
		[2] = "C-130-OBLOMOK-WING-L", -- wing L
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

add_aircraft(IAF_C_130)
