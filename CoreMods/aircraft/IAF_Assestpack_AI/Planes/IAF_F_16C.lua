

local IAF_F_16C =  {
  	Countries			= {"Israel"},
      
	Name 				=   'IAF_F_16C',
	DisplayName			= _("IAF F-16C Barak"),
--- F-16C.lua
        EmptyWeight = "8853",
        MaxFuelWeight = "3104",
        MaxHeight = "17200",
        MaxSpeed = "2150",
        MaxTakeOffWeight = "19187",
        Picture = "F-16C.png",
        Rate = "50",
        Shape = "IAF_F_16C",
        WingSpan = "9.45",
--        WorldID = 7,
	WorldID 			= WSTYPE_PLACEHOLDER,


	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_F_16C';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'f-16-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_F_16C';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  = "F-16-oblomok";
			file  = "F-16-oblomok";
			fire  = { 240, 2};
		},
	},


	-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 180,
			-- RR-170
			chaff = {default = 90, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 45, increment = 15, chargeSz = 2}
        },
	
		attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER,
		--IAF_F_16A, 
		F_16, "Multirole fighters", "Refuelable",},
		Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            RADAR = "AN/APG-68",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
		

	pylons_enumeration = {1, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

		 pylon(1, 0, 0, 0, 0, {use_full_connector_position=true, connector = "AIM9Pylon1" },
			{
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_increment = -0.1}, --AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_increment = -0.1}, --AIM-9P
				{ CLSID = "{AIM-9P5}"							  , arg_increment = -0.1}, --AIM-9P5
				{ CLSID = "{AIM-9L}"							  , arg_increment = -0.1}, --AIM-9L
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = -0.1},--AIM-120B
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = -0.1},--AIM-120C
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = -0.1},
                { CLSID = "{AIS_ASQ_T50}" ,arg_increment = -0.1, attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
				{ CLSID = "{Refael_Python-3}" ,arg_increment = -0.1},
				{ CLSID = "{Refael_Python-4}" ,arg_increment = -0.1},
				{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}", connector = "AIM120Pylon1" }, -- AIM-120B
			}
		),
		pylon(2, 0, -0.983000, -0.110000, -3.948000,
			{
				FiZ = -2,
				--use_full_connector_position = true,
				--arg 	  		= 309,
				--arg_increment   = 0.0,
			},
			{
				{ CLSID = "{34271A1E-477E-4754-8C72-DF7C1855A782}" ,arg_increment = -0.1},
				{ CLSID = "{6FBCDCD7-F984-4202-84A7-15173E02CC5B}" ,arg_increment = -0.1},
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = -0.1},
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" ,arg_increment = -0.1},
				{ CLSID = "{Refael_Python-3}" ,arg_increment = -0.1},
				{ CLSID = "{Refael_Python-4}" ,arg_increment = -0.1},
				{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
			}
		),
		pylon(3, 0, -1.115000, -0.161000, -3.050000,
			{
				 FiZ = -2,
				 --use_full_connector_position = true,
			},
			{
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_L" },  -- 2XAGM-65H-LAU-88
		        { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },  -- 2XAGM-65D-LAU-88		
		        { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },  -- AIM-7M
				{ CLSID = "{Mk82AIR}" },  -- MK-82AIR
                { CLSID = "{BRU-42_3*Mk-82AIR}" },  -- MK-82AIR-TER
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" },  -- AGM-119B
			}
		),
		pylon(4, 0, -0.118000, -0.175000, -1.813000,
			{
				 FiZ = -2.5,
			},
			{
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
			    { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
			}
		),
		pylon(5, 0, 0.000000, 0.100000, 0.000000,
			{
			},
			{
				{ CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" ,arg_value = 0},
				{ CLSID	=   "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",arg_value = 0}, -- mk-82
				{ CLSID	=	"{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",arg_value = 0}, -- mk-83
				{ CLSID	=	"{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",arg_value = 0}, -- mk-84
				{ CLSID	=	"{1C97B4A0-AA3B-43A8-8EE7-D11071457185}",arg_value = 0}, -- "MER*6 Mk-82"
				{ CLSID	=	"{3C7CD675-7D39-41C5-8735-0F4F537818A8}",arg_value = 0}, -- MER*6 Mk-20 Rockeye
			}
		),
		pylon(6, 0, 0.231000, -0.829000, 0.000000,
            {
                FiZ = -1.5,
			},
			{
                { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" },
				{ CLSID = "ALQ_184" }, -- ALQ-184		
                { CLSID = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}" },
			}
		),
		pylon(7, 0, -0.118000, -0.175000, 1.813000,
			{
				 FiZ = -2.5,
				 --use_full_connector_position = true,
			},
			{
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
			}
		),
		pylon(8, 0, -1.115000, -0.161000, 3.050000,
			{
				FiZ = -2,
				--use_full_connector_position = true,
				--arg 	  = 317,
				--arg_increment = 0.0,
			},
			{
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_R" },  -- 2XAGM-65H-LAU-88
		        { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },  -- 2XAGM-65D-LAU-88	
		        { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },  -- AIM-7M
				{ CLSID = "{Mk82AIR}" },  -- MK-82AIR
                { CLSID = "{BRU-42_3*Mk-82AIR}" },  -- MK-82AIR-TER
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" },  -- AGM-119B
			}
		),
		pylon(9, 0, -0.983000, -0.110000, 3.948000,
            {
                FiZ = -2,
				--use_full_connector_position = true,
				--arg 	  = 317,
				--arg_increment = 1.0,
			},
			{
				{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
				{ CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" ,arg_value = 0},
				{ CLSID	=   "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",arg_value = 0}, -- mk-82
				{ CLSID	=	"{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",arg_value = 0}, -- mk-83
				{ CLSID	=	"{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",arg_value = 0}, -- mk-84
				{ CLSID	=	"{1C97B4A0-AA3B-43A8-8EE7-D11071457185}",arg_value = 0}, -- "MER*6 Mk-82"
				{ CLSID	=	"{3C7CD675-7D39-41C5-8735-0F4F537818A8}",arg_value = 0}, -- MER*6 Mk-20 Rockeye
			}
		),
		pylon(10, 0, 0, 0, 0, {use_full_connector_position=true, connector = "AIM9Pylon10" },
			{
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}", connector = "AIM120Pylon10" }, -- AIM-120B
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
				{ CLSID = "{34271A1E-477E-4754-8C72-DF7C1855A782}" ,arg_increment = -0.1},
				{ CLSID = "{6FBCDCD7-F984-4202-84A7-15173E02CC5B}" ,arg_increment = -0.1},
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = -0.1},
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = -0.1},
				{ CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = -0.1},
				{ CLSID = "{Refael_Python-3}" ,arg_increment = -0.1},
				{ CLSID = "{Refael_Python-4}" ,arg_increment = -0.1},
			}
		),
	},
	
	Tasks = {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
		aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(CAP),

	-- Scripts/Database/Aircraft/F-15C.lua
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
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},
	
----------
		M_empty	=	8853,
		M_nominal	=	11000,
		M_max	=	19187,
		M_fuel_max	=	3104,
		H_max	=	15240,
		average_fuel_consumption	=	0.245,
		CAS_min	=	60,
		V_opt	=	220,
		V_take_off	=	65,
		V_land	=	68,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.846,	-1.579,	1.187},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.146,	-1.563,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	408,
		V_max_h	=	588.9,
		tanker_type	=	1,
		wing_area	=	28,
		wing_span	=	9.45,
		thrust_sum_max	=	8054,
		thrust_sum_ab	=	13160,
		Vy_max	=	250,
		length	=	14.52,
		height	=	5.02,
		flaps_maneuver	=	1,
		Mach_max	=	2,
		range	=	1500,
		RCS	=	4,
		Ny_max_e	=	8,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.6,
		IR_emission_coeff_ab	=	3.0,
		engines_count	=	1,
		wing_tip_pos = 	{-2.704,	0.307,	4.649},
		nose_gear_wheel_diameter	=	0.443,
		main_gear_wheel_diameter	=	0.653,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.003,	0.261,	0},
				elevation	=	0,
				diameter	=	1.12,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.05, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	23,
				pos = 	{3.9,	1.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
	--}, -- end of [7]	
	
	----------------- SUSPENSION CODE
	nose_gear_amortizer_direct_stroke    =  2.523 - 2.523,  -- down from nose_gear_pos !!!
	nose_gear_amortizer_reversal_stroke  =  2.093 - 2.523,  -- up 
	main_gear_amortizer_direct_stroke	 =  2.456 - 2.456, --  down from main_gear_pos !!!
	main_gear_amortizer_reversal_stroke  = 	2.228 - 2.456, --  up 
	nose_gear_amortizer_normal_weight_stroke = -0.215,
	main_gear_amortizer_normal_weight_stroke = -0.114,
	----------------- SUSPENSION CODE
	chaff_flare_dispenser = 
	{
		[1] = 
		{
			dir = 	{0,	-1,	0},
			pos = 	{1.158,	-1.728,	-0.878},
		}, -- end of [1]
		[2] = 
		{
			dir = 	{0,	-1,	0},
			pos = 	{1.158,	-1.728,	0.878},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	Guns = {gun_mount("M_61", { count = 511 },{muzzle_pos = {3.183,  0.404,-0.79}})
	},
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
			cx_gear	=	0.0268,
			cx_flap	=	0.05,
			cy_flap	=	0.52,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.0165,	0.07,	0.132,	0.032,	0.5,	30,	1.2},
				[2] = 	{0.2,	0.0165,	0.07,	0.132,	0.032,	1.5,	30,	1.2},
				[3] = 	{0.4,	0.0165,	0.07,	0.133,	0.032,	2.5,	30,	1.2},
				[4] = 	{0.6,	0.0165,	0.073,	0.133,	0.043,	3.5,	30,	1.2},
				[5] = 	{0.7,	0.017,	0.076,	0.134,	0.045,	3.5,	28.666666666667,	1.18},
				[6] = 	{0.8,	0.024,	0.079,	0.137,	0.052,	3.5,	27.333333333333,	1.16},
				[7] = 	{0.9,	0.041,	0.083,	0.143,	0.058,	3.5,	26,	1.14},
				[8] = 	{1,	0.062,	0.085,	0.18,	0.1,	3.5,	24.666666666667,	1.12},
				[9] = 	{1.05,	0.061,	0.0855,	0.1975,	0.095,	3.5,	24,	1.11},
				[10] = 	{1.1,	0.06,	0.086,	0.215,	0.09,	3.15,	18,	1.1},
				[11] = 	{1.2,	0.051,	0.083,	0.228,	0.12,	2.45,	17,	1.05},
				[12] = 	{1.3,	0.046,	0.077,	0.237,	0.17,	1.75,	16,	1},
				[13] = 	{1.49,	0.044,	0.062,	0.251,	0.2,	1.5125,	13.15,	0.905},
				[14] = 	{1.5,	0.043903225806452,	0.061483870967742,	0.25064516129032,	0.2058064516129,	1.5,	13,	0.9},
				[15] = 	{1.7,	0.041967741935484,	0.051161290322581,	0.24354838709677,	0.32193548387097,	0.9,	12,	0.7},
				[16] = 	{1.8,	0.041,	0.046,	0.24,	0.38,	0.86,	11.4,	0.64},
				[17] = 	{2,	0.042,	0.039,	0.222,	2.5,	0.78,	10.2,	0.52},
				[18] = 	{2.2,	0.041,	0.034,	0.227,	3.2,	0.7,	9,	0.4},
				[19] = 	{2.5,	0.039,	0.033,	0.25,	4.5,	0.7,	9,	0.4},
				[20] = 	{3.9,	0.035,	0.033,	0.35,	6,	0.7,	9,	0.4},
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
			dpdh_m	=	6200,
			dpdh_f	=	9500,
			table_data = 
			{
				[1] = 	{0,	77000,	108313.6},
				[2] = 	{0.2,	74000,	109850},
				[3] = 	{0.4,	74000,	115227.3},
				[4] = 	{0.6,	85000,	126750},
				[5] = 	{0.7,	85000,	145000},
				[6] = 	{0.8,	90000,	157000},
				[7] = 	{0.9,	94000,	166000},
				[8] = 	{1,	100000,	170000},
				[9] = 	{1.096,	96000,	171000},
				[10] = 	{1.2,	86000,	171000},
				[11] = 	{1.3,	68000,	173000},
				[12] = 	{1.4,	55000,	176000},
				[13] = 	{1.6,	56000,	176000},
				[14] = 	{1.8,	56000,	184000},
				[15] = 	{2.2,	52000,	173000},
				[16] = 	{2.35,	43000,	157000},
				[17] = 	{3.9,	25000,	120636.4},
			}, -- end of table_data
		}, -- end of engine
	}, -- end of [7]

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = 
--typical_single_engined_fighter = 
{
	[0]  = {critical_damage = 3, args = {82}},
	[3]  = {critical_damage = 10, args = {65}},
	[8]  = {critical_damage = 3},
	[11] = {critical_damage = 3},
	[12] = {critical_damage = 3},
	[15] = {critical_damage = 5},
	[16] = {critical_damage = 5},
	[17] = {critical_damage = 3},
	[18] = {critical_damage = 3},
	[25] = {critical_damage = 3, args = {53}},
	[26] = {critical_damage = 3, args = {54}},
	[35] = {critical_damage = 5, args = {67}, deps_cells = {25, 37}},
	[36] = {critical_damage = 5, args = {68}, deps_cells = {26, 38}},
	[37] = {critical_damage = 2, args = {55}},
	[38] = {critical_damage = 2, args = {56}},
	[43] = {critical_damage = 2, args = {61}, deps_cells = {53}},
	[44] = {critical_damage = 2, args = {62}, deps_cells = {54}},
	[47] = {critical_damage = 3, args = {63}, deps_cells = {51}},
	[48] = {critical_damage = 3, args = {64}, deps_cells = {52}},
	[51] = {critical_damage = 2, args = {59}},
	[52] = {critical_damage = 2, args = {60}},
	[53] = {critical_damage = 2, args = {57}},
	[54] = {critical_damage = 2, args = {58}},
	[55] = {critical_damage = 10, args = {81}},
},
	
	DamageParts = 
	{  
		[1] = "f-16-oblomok-wing-r", -- wing R
		[2] = "f-16-oblomok-wing-l", -- wing L
	},
	
	-- Scripts\Aircrafts\_Common\Lights.lua
--[[
lights_prototypes[F_16A]    		= default_lights_plane(F_16A)
lights_prototypes[F_16]    			= lights_prototypes[F_16A]

WOLALIGHT_STROBES 		   = 1--must be collection
WOLALIGHT_SPOTS  		   = 2--must be collection
WOLALIGHT_NAVLIGHTS 	   = 3--must be collection
WOLALIGHT_FORMATION_LIGHTS = 4--must be collection
WOLALIGHT_TIPS_LIGHTS      = 5--must be collection
SpotLigtPositions =  { 
--[ F_16]			={{-0.818, -0.619,  0.52	} ,{-0.818, -0.619, 0.52}},
--[ F_16A]		={{-0.818, -0.619,  0.52	} ,{-0.818, -0.619, 0.52}},
}

--]]	
	lights_data = { typename = "collection", lights = {
	
    [1] = { typename = "collection", -- WOLALIGHT_STROBES
					lights = {	
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

add_aircraft(IAF_F_16C)
