

IAF_F_4E =  {
  	Countries			= {"Israel"},
      
	Name 				=   'IAF_F_4E',
	DisplayName			= _("IAF F-4E Kurnass"),
        EmptyWeight = "14461",
        MaxFuelWeight = "4864",
        MaxHeight = "19000",
        MaxSpeed = "2370",
        MaxTakeOffWeight = "28055",
        Picture = "F-4E.png",
        Rate = "30",
        Shape = "F-4E",
        WingSpan = "11.68",
	Shape 				= "IAF_F_4E",
	WorldID 			= WSTYPE_PLACEHOLDER,
	--        WorldID = 45,

	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_F_4E';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'IAF_F_4E'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_F_4E';
			index    	= WSTYPE_PLACEHOLDER;
		},
		{
			name  = "IAF_F_4E";
			file  = "IAF_F_4E";
			fire  = { 240, 2};
		},
	},

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			chaff = {default = 60, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 15, chargeSz = 2},
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER,
        "Multirole fighters",
        },
		Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},

        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APQ-120",
            RWR = "Abstract RWR",
        },
        mapclasskey = "P0091000024",
		pylons_enumeration = {9, 1, 2, 8, 4, 6, 3, 7, 5},
		
	
	    mech_timing = {{0.0, 1 / 8.08}, -- CANOPY_OPEN_TIMES
					   {0.0, 1 / 6.743}, -- CANOPY_CLOSE_TIMES
					  },
		
	
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},

	HumanRadio = {
		frequency 		= 124.0,  -- Radio Freq
--		editable 		= true,
--		minFrequency	= 100.000,
--		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

	
----------
		nose_gear_amortizer_direct_stroke    =  2.523 - 2.523,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke  =  2.093 - 2.523,  -- up 
		main_gear_amortizer_direct_stroke	 =  2.456 - 2.456, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke  = 	2.228 - 2.456, --  up 
		nose_gear_amortizer_normal_weight_stroke = -0.215,
		main_gear_amortizer_normal_weight_stroke = -0.114,
-------- 
		M_empty	=	14461,
		M_nominal	=	24430,
		M_max	=	28055,
		M_fuel_max	=	4864,
		H_max	=	17907,
		average_fuel_consumption	=	0.3,
		CAS_min	=	45,
		V_opt	=	256,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.184,	-1.927,	2.714},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{6.157,	-2.014,	0},
		AOA_take_off	=	0.14,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	322,
		V_max_h	=	640,
		wing_area	=	49.24,
		wing_span	=	11.68,
		thrust_sum_max	=	16240,
		thrust_sum_ab	=	24400,
		Vy_max	=	253,
		length	=	19.2,
		height	=	5,
		flaps_maneuver	=	1,
		Mach_max	=	2.17,
		range	=	2593,
		RCS	=	7,
		Ny_max_e	=	6,
		detection_range_max	=	100,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-4.207,	-0.086,	5.782},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-4.894,	-0.199,	-0.611},
				elevation	=	3.7,
				diameter	=	0.965,
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.894,	-0.199,	0.611},
				elevation	=	3.7,
				diameter	=	0.965,
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	41,
				pos = 	{4.763,	0.862,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	42,
				pos = 	{3.322,	0.978,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		fires_pos = 
		{
			[1] = 	{-0.664,	-0.496,	0},
			[2] = 	{0.173,	-0.307,	1.511},
			[3] = 	{0.173,	-0.307,	-1.511},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.899,	-0.212,	0.611},
			[9] = 	{-4.899,	-0.212,	-0.611},
			[10] = 	{-0.896,	1.118,	0},
			[11] = 	{0.445,	-0.436,	0},
		}, -- end of fires_pos
	--}, -- end of [45]

	-------??? -----
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
	-------??? -----


	Guns = {gun_mount("M_61", { count = 450 },{muzzle_pos = {5.00000, 0.250000, 0.000000}})
	},

	--pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

	       pylon(1, 0, -1.072000, -0.747000, -3.384000,
            {
                FiZ = -2.43,
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },
            }
        ),
        pylon(2, 0, 1.128000, -0.941000, -2.082000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" },
                { CLSID = "{773675AB-7C29-422f-AFD8-32844A7B7F17}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{LAU-7_AIS_ASQ_T50}" },
            }
        ),
        pylon(3, 1, 3.350000, -0.5, -0.45,
            {
                FiX =  45,
				FiY = -0.5,
				FiZ = -0.5,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" },
            }
        ),
        pylon(4, 1, -2.059000, -0.6, -1.062000,
            {
                FiZ =  2,
				FiX = -45,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(5, 0, 0.153000, -0.637000, 0.000000,
            {
                FiZ = -1.98,
            },
            {
                { CLSID = "{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}" },
            }
        ),
        pylon(6, 1, -2.059000, -0.6, 1.062000,
            {
                FiZ = 2,
				FiX = 45,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(7, 1, 3.350000, -0.5,  0.45,
            {
                FiX = -45,
				FiY = -0.5,
				FiZ = -0.5,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(8, 0, 1.128000, -0.941000, 2.082000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" },
                { CLSID = "{773675AB-7C29-422f-AFD8-32844A7B7F17}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB27}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
            }
        ),
        pylon(9, 0, -1.072000, -0.747000, 3.384000,
            {
                FiZ = -2.43,
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },
            }
        ),
    },
	
	Tasks = {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(PinpointStrike),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
		aircraft_task(AntishipStrike),
    },
	DefaultTask = aircraft_task(CAP),

----------	
	SFM_Data = {
		aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.014,
			cx_flap	=	0.03,
			cy_flap	=	0.15,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.022,	0.07,	0.1609,	0.0001,	0.5,	30,	1.1},
				[2] = 	{0.2,	0.022,	0.07,	0.1609,	0.0001,	1.5,	30,	1.1},
				[3] = 	{0.4,	0.022,	0.07,	0.1609,	0.0001,	2.5,	30,	1.1},
				[4] = 	{0.6,	0.022,	0.073,	0.1609,	0.0001,	3.5,	30,	1.1},
				[5] = 	{0.7,	0.022,	0.076,	0.1609,	0.0001,	3.5,	28.666666666667,	1.0911111111111},
				[6] = 	{0.8,	0.022,	0.079,	0.1609,	0.0001,	3.5,	27.333333333333,	1.0822222222222},
				[7] = 	{0.9,	0.027,	0.083,	0.18,	0.0001,	3.5,	26,	1.0733333333333},
				[8] = 	{1,	0.036,	0.085,	0.2,	0.0001,	3.5,	24.666666666667,	1.0644444444444},
				[9] = 	{1.05,	0.043,	0.0855,	0.21,	0.0001,	3.5,	24,	1.06},
				[10] = 	{1.1,	0.05,	0.086,	0.22,	0.0001,	3.15,	18,	1.04},
				[11] = 	{1.2,	0.048,	0.083,	0.23,	0.0001,	2.45,	17,	1.02},
				[12] = 	{1.3,	0.045,	0.077,	0.25,	0.0001,	1.75,	16,	1},
				[13] = 	{1.5,	0.042,	0.062,	0.3,	0.0001,	1.5,	13,	0.9},
				[14] = 	{1.7,	0.039333333333333,	0.051333333333333,	0.348,	0.0001,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.038,	0.046,	0.372,	0.0001,	0.86,	11.4,	0.64},
				[16] = 	{2,	0.035,	0.039,	0.42,	9.9999999999999e-006,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.033,	0.034,	0.458,	1e-005,	0.7,	9,	0.4},
				[18] = 	{2.5,	0.03,	0.033,	0.515,	1e-005,	0.7,	9,	0.4},
				[19] = 	{3,	0.03,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
				[20] = 	{3.9,	0.03,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	7000,
			dpdh_f	=	12300,
			table_data = 
			{
				[1] = 	{0,	105840,	158564},
				[2] = 	{0.2,	97000,	163000},
				[3] = 	{0.4,	89000,	168000},
				[4] = 	{0.6,	89000,	176000},
				[5] = 	{0.7,	92000,	181000},
				[6] = 	{0.8,	95000,	186000},
				[7] = 	{0.9,	100000,	193000},
				[8] = 	{1,	105000,	203000},
				[9] = 	{1.1,	105000,	215000},
				[10] = 	{1.2,	107000,	225000},
				[11] = 	{1.3,	104000,	231000},
				[12] = 	{1.5,	102000,	251000},
				[13] = 	{1.8,	99000,	261000},
				[14] = 	{2,	87000,	270000},
				[15] = 	{2.2,	31033.3,	271000},
				[16] = 	{2.5,	29944.4,	221000},
				[17] = 	{3,	27222.2,	55000},
			}, -- end of table_data
		}, -- end of engine
	}, -- end of [45]

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "F-4E-OBLOMOK-WING-R",
		[2] = "F-4E-OBLOMOK-WING-L",
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
		},
	},
	ViewSettings = ViewSettings,
	SnapViews    = SnapViews,	
}

add_aircraft(IAF_F_4E)
