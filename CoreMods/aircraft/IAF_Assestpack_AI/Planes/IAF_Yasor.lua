

local IAF_CH_53E =  {
		Countries			= {"Israel"},
      
		Name 				=   'IAF_CH_53E',
		DisplayName			= _("IAF CH-53E Yasor"),
		
		InternalCargo = {
			nominalCapacity = 3500,
			maximalCapacity = 3800
		},
        EmptyWeight = "15407",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1908",
        MaxHeight = "6200",
        MaxSpeed = "310",
        MaxTakeOffWeight = "31630",
        Picture = "CH-53E.png",
        Rate = "30",
	Shape 				= "IAF_CH_53E",
	WorldID 			= WSTYPE_PLACEHOLDER,
-----------------------
	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_CH_53E';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'ch-53e-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_CH_53E';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane"; -- to show as static
			positioning = "BYNORMAL"; -- to show as static
		},
		{
			name  = "ch-53e-oblomok";
			file  = "ch-53e-oblomok";
			fire  = { 240, 2};
		},
	},		
		--WorldID 			= 160,
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories

		-- Countermeasures, 4xM-160 = 120 Chaffs/Flares
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			chaff = {default = 60, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, WSTYPE_PLACEHOLDER, CH_53E,
        "Transport helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        mapclasskey = "P0091000020",
	    Tasks = {
			aircraft_task(Transport),
		},
		DefaultTask = aircraft_task(Transport),
	
		HumanRadio = {
			frequency = 251.0,
			editable = true,
			minFrequency = 225.000,
			maxFrequency = 399.975,
			modulation = MODULATION_AM,
		},
		panelRadio = {
			[1] = {  
				name = _("UHF AN/ARC-51"),
				range = {min = 225.000, max = 399.975},
				channels = {
					[1] = { name = _("Channel 1"),		default = 251.0, modulation = _("AM"), connect = true}, -- default
					[2] = { name = _("Channel 2"),		default = 264.0, modulation = _("AM")},	-- min. water : 264.0
					[3] = { name = _("Channel 3"),		default = 265.0, modulation = _("AM")},	-- nalchik : 265.0
					[4] = { name = _("Channel 4"),		default = 256.0, modulation = _("AM")},	-- sochi : 256.0
					[5] = { name = _("Channel 5"),		default = 254.0, modulation = _("AM")},	-- maykop : 254.0
					[6] = { name = _("Channel 6"),		default = 250.0, modulation = _("AM")},	-- anapa : 250.0
					[7] = { name = _("Channel 7"),		default = 270.0, modulation = _("AM")},	-- beslan : 270.0
					[8] = { name = _("Channel 8"),		default = 257.0, modulation = _("AM")},	-- krasnodar-pashk. : 257.0
					[9] = { name = _("Channel 9"),		default = 255.0, modulation = _("AM")},	-- gelenjik : 255.0
					[10] = { name = _("Channel 10"),	default = 262.0, modulation = _("AM")},	-- kabuleti : 262.0
					[11] = { name = _("Channel 11"),	default = 259.0, modulation = _("AM")},	-- gudauta : 259.0
					[12] = { name = _("Channel 12"),	default = 268.0, modulation = _("AM")},	-- soginlug : 268.0
					[13] = { name = _("Channel 13"),	default = 269.0, modulation = _("AM")},	-- vaziani : 269.0
					[14] = { name = _("Channel 14"),	default = 260.0, modulation = _("AM")},	-- batumi : 260.0
					[15] = { name = _("Channel 15"),	default = 263.0, modulation = _("AM")},	-- kutaisi : 263.0
					[16] = { name = _("Channel 16"),	default = 261.0, modulation = _("AM")},	-- senaki : 261.0
					[17] = { name = _("Channel 17"),	default = 267.0, modulation = _("AM")},	-- lochini : 267.0
					[18] = { name = _("Channel 18"),	default = 251.0, modulation = _("AM")},	-- krasnodar-center : 251.0
					[19] = { name = _("Channel 19"),	default = 253.0, modulation = _("AM")},	-- krymsk : 253.0
					[20] = { name = _("Channel 20"),	default = 266.0, modulation = _("AM")}, -- mozdok : 266.0
				},
			},--[1]
		},

		AddPropAircraft = {
			{ id = "ExhaustScreen" , control = 'checkbox', label = _('Exhaust Dispenser'), defValue = true, weight = 20, arg = 1001},
--			{ id = "GunnersAISkill" , control = 'slider', label = _('Gunners AI Skill'), defValue = 90, min = 10, max = 100, dimension = '%'},
			{ id = "EngineResource", control = 'slider', label = _('Engine Resource'), defValue = 90, min = 0, max = 100, playerOnly = true, dimension = '%'},
			{ id = "NetCrewControlPriority" , control = 'comboList', label = _('Aircraft Control Priority'), playerOnly = true,
					values = {{id =  0, dispName = _("Pilot")},
							{id =  1, dispName = _("Instructor")},
							{id = -1, dispName = _("Ask Always")},
							{id = -2, dispName = _("Equally Responsible")}},
					defValue  = 1,
					wCtrl     = 150
			},
		},
		Failures = {
            { id = 'es_damage_MainGenerator',  		label = _('GENERATOR MAIN'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_StarterGenerator',  	label = _('STARTER-GENERATOR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_MainInverter',  		label = _('INVERTER MAIN'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_SpareInverter',  		label = _('INVERTER SPARE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_Battery',  			label = _('BATTERY'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro_main',  					label = _('HYDRAULIC SYSTEM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro_main_irreversible_valve', label = _('HYDRAULIC SYSTEM IRREVERSIBLE VALVE '), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_1_FAILURE',  label = _('LEFT CELL BOOST PUMP'),enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_2_FAILURE',  label = _('RIGHT CELL BOOST PUMP'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_0_FAILURE',  	label = _('ENGINE PUMP'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_damage_transfer_pumps',  	label = _('TRANSFER PUMPS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_damage_swapping_pumps',  	label = _('SWAPPING PUMPS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_forward_LH_leakage',  	label = _('FORWARD LH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_forward_RH_leakage',  	label = _('FORWARD RH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_central_leakage',  	label = _('AFT CENTRAL LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_LH_leakage',  	label = _('AFT LH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_RH_leakage',  	label = _('AFT RH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_surge_failure',  	label = _('TURBINE COMPRESSOR STALL'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_chip',  				label = _('ENGINE CHIP'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_driveshaft_failure', label = _('MAIN DRIVESHAFT FAILURE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'main_reductor_chip',  		label = _('MAIN GEARBOX CHIP'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_droop_failure',  	label = _('ENGINE DROP COMPENSATOR FAILURE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100},
			{ id = 'tail_reductor_chip',  		label = _('TAIL ROTOR GEARBOX CHIP'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100},
			{ id = 'UHF_RADIO_FAILURE_TOTAL',	label = _('UHF radio failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'VHF_AM_RADIO_FAILURE_TOTAL',label = _('VHF AM radio failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'VHF_FM_RADIO_FAILURE_TOTAL',label = _('VHF FM radio failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'ILS_FAILURE_TOTAL',		  	 label = _('ILS: total failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_LOCALIZER',	 label = _('ILS: localizer channel failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_GLIDESLOPE', label = _('ILS: glideslope channel failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_MARKER',	 label = _('ILS: marker antenna failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ARN_82_FAILURE_TOTAL',		 label = _('Radio nav. set total failure'),enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'ARN_83_TOTAL_FAILURE', 		label = _('ADF total failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ARN_83_ADF_DAMAGE',	 		label = _('ADF goniometer failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'GMC_TOTAL_FAILURE', 		label = _('GMC total failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'GMC_GYRO_FAILURE', 			label = _('GMC directional gyro failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'GMC_MAGN_COMP_FAILURE', 	label = _('GMC magnetic compass failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'NOSE_AIRSPEED_INDICATOR_FAILURE', 	label = _('Nose Airspeed Indicator failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ROOF_AIRSPEED_INDICATOR_FAILURE', 	label = _('Roof Airspeed Indicator failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'A11_CLOCK_FAILURE', 			label = _('Clock failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'MD1_GYRO_TOTAL_FAILURE', 		label = _('Roll Pitch Gyro failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'COPILOT_GYRO_TOTAL_FAILURE', 	label = _('Copilot Gyro failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'FLEX_S_NO_POWER_SUPPLY',		label = _('Flex. Sight. No power'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_MAIN_LAMP_DEFECTIVE',	label = _('Flex. Sight. Main lamp defective'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_BKP_LAMP_DEFECTIVE',		label = _('Flex. Sight. Backup lamp defective'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_NO_GUN_SIGN',			label = _('Flex. Sight. No signal to guns'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{id = 'PILOT_KILLED_FAILURE', 			label = _("First Pilot Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'COPILOT_KILLED_FAILURE', 		label = _("Second Pilot Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'RIGHT_GUNNER_KILLED_FAILURE', 	label = _("Right Gunner Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'LEFT_GUNNER_KILLED_FAILURE', 	label = _("Left Gunner Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{id = 'RADAR_ALT_TOTAL_FAILURE', 	label = _("Radar Altimeter failure"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			},

		pilot_animation_params = {
		-- init params
			model_name = 'pilot_uh1_01',
			animation_speed = 0.1,
			escape_argument = 16,
			heli_open_doors_arg = 38,
			pilot_initial_pos_y = -1.65,
			pilot_base_speed = 4.65,
			pilot_run_cycle_distance = 2.8,
		-- animation params
			left_jump_start = 0.004,
			left_jump_end = 0.123,
			left_jump_frame_diff = 0.119,
			
			right_jump_start = 0.127,
			right_jump_end = 0.243,
			right_jump_frame_diff = 0.116,
			
			walk_away_start = 0.247,
			walk_away_end = 0.320,
			walk_away_frame_diff = 0.073,
			
			to_the_ground_start = 0.320,
			to_the_ground_end = 0.357,
			to_the_ground_frame_diff = 0.036,
		},
    
	
		--pylons_enumeration = {1, 2, 3, 4, 5, 6},
		pylons_enumeration = {},
	
		Pylons =     { },
--[[        pylon(1, 0, 0.0, -0.840000, -2.0000,{use_full_connector_position=true,connector = "Pylon1",},
        {
			{ CLSID = "M134_L", connector = "Pylon1"},
        }),
        pylon(2, 0, 0.605000, -0.979000, -1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "XM158_MK1"},
				{ CLSID = "XM158_MK5"},
				{ CLSID = "XM158_M151"},
				{ CLSID = "XM158_M156"},
				{ CLSID = "XM158_M274"},
				{ CLSID = "XM158_M257"},
				{ CLSID = "M261_MK151"},
				{ CLSID = "M261_MK156"},
            }
        ),
		pylon(3, 0, 0.605000, -0.979000, -1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "M134_SIDE_L", connector = "GUNNER_L_PNTR"},
				{ CLSID = "M60_SIDE_L", connector = "GUNNER_L_PNTR"},
            }
        ),
		
		pylon(4, 0, 0.605000, -0.979000, 1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "M134_SIDE_R", connector = "GUNNER_R_PNTR"},
				{ CLSID = "M60_SIDE_R", connector = "GUNNER_R_PNTR"},
            }
        ),
		
        pylon(5, 0, 0.605000, -0.979000, 1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "XM158_MK1",connector = "Pylon3"},
				{ CLSID = "XM158_MK5",connector = "Pylon3"},
				{ CLSID = "XM158_M151",connector = "Pylon3"},
				{ CLSID = "XM158_M156",connector = "Pylon3"},
				{ CLSID = "XM158_M274",connector = "Pylon3"},
				{ CLSID = "XM158_M257",connector = "Pylon3"},
				{ CLSID = "M261_MK151",connector = "Pylon3"},
				{ CLSID = "M261_MK156",connector = "Pylon3"}
            }
        ),
        pylon(6, 0, 0.0, -0.840000, 2.0000,{use_full_connector_position=true,connector = "Pylon4",},
        {
			{ CLSID = "M134_R", connector = "Pylon4"},
        }),
    },--]]

---------------------------- HelicopterConst.lua
	--[160] = -- CH-53E	{
		length	=	30.18,
		height	=	7.83,
		rotor_height	=	2.295,
		rotor_diameter	=	24.08,
		blades_number	=	7,
		blade_area	=	5.86,
		rotor_RPM	=	179,
		engines_count	=	3,
		blade_chord	=	0.66,
		rotor_MOI	=	59000,
		rotor_pos = 	{0,	2.121,	0},
		thrust_correction	=	0.7,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	8.9,
		centering	=	-0.09,
		tail_pos = 	{-13.65,	2.914,	0},
		tail_fin_area	=	5.6,
		tail_stab_area	=	6.6,
		M_empty	=	15407,
		M_nominal	=	25400,
		M_max	=	31630,
		MOI = 	{56400,	250000,	268000},
		M_fuel_max	=	6940,
		V_max	=	315,
		V_max_cruise	=	278,
		Vy_max	=	12.7,
		H_stat_max_L	=	3520,
		H_stat_max	=	2895,
		H_din_two_eng	=	5640,
		H_din_one_eng	=	2590,
		range	=	536,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-2.271,	-2.169,	1.76},
		nose_gear_pos = 	{5.217,	-2.169,	0},
		lead_stock_main	=	0.3,
		lead_stock_support	=	0.3,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_size	=	3,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.3,	0,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.3,	0,	 0.5},
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3,	0,	0},
			}, -- end of [1]
		}, -- end of crew_members
		
		RCS	=	25,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.0,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorCH53",
		engine_data = 
		{
			power_take_off	=	3226.6,
			power_max	=	3226.6,
			power_WEP	=	3226.6,
			power_TH_k = 
			{
				[1] = 	{17.301,	-398.18,	3224.2},
				[2] = 	{16.061,	-399.02,	3291.5},
				[3] = 	{-2.4222,	-249.86,	3083.9},
				[4] = 	{-11.157,	-70.56,	2385.8},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-1.16e-005,	0.4061658},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.3,	0},
			[2] = 	{0.215,	0.74,	-1.48},
			[3] = 	{0.215,	0.74,	1.48},
			[4] = 	{-10.34,	0.41,	0},
			[5] = 	{0.25,	-1.6,	-2},
			[6] = 	{0.25,	-1.6,	2},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -0.8, 0.0},
		h_max_gear_hook=3.0,		
	--}, -- end of [160]-------------------------------
------------------------------ Guns
		Guns = {},
-------------------------------

		
		Damage = {  -- Damage.lua
--mi24v_cells_properties = {
	[3]  = {critical_damage = 10, args = {65}},
	[4]  = {critical_damage = 10, args = {150}},
	[5]  = {critical_damage = 10, args = {149}},
	[7]  = {critical_damage = 4,  args = {249}},
	[9]  = {critical_damage = 5, args = {154, 298, 299}},
	[10] = {critical_damage = 5, args = {153, 301, 302}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[23] = {critical_damage = 5, args = {223}} ,
	[24] = {critical_damage = 5, args = {213}} ,
	[35] = {critical_damage = 5, args = {224}, deps_cells = {23}},
	[36] = {critical_damage = 5, args = {214}, deps_cells = {24}},
	[45] = {critical_damage = 3,  args = {235}},
	[46] = {critical_damage = 3,  args = {233}},
	[55] = {critical_damage = 4,  args = {159}, deps_cells = {45, 46}},
	[56] = {critical_damage = 14, args = {81, 158}, deps_cells = {55, 45, 46}},
	[57] = {critical_damage = 14, args = {81, 157}, deps_cells = {55, 45, 46}},
	[59] = {critical_damage = 5,  args = {148}},
	[60] = {critical_damage = 1,  args = {144}},
	[82] = {critical_damage = 3,  args = {152}},

	},

	DamageParts = 
	{ 
--		[1] = "uh-60-tail", -- tail
	},
	
	lights_data = {
	typename = "collection",
	lights = {
    [1] = { typename = "collection",
						lights = {
									  {
										typename = "omnilight",
										connector = "RED_BEACON",
									    argument = 193,
										color = {0.99, 0.11, 0.3},
										pos_correction  = {0, 0, 0},
										intensity_max = 6.0
									  }
								 }
			},
	[2] = { typename = "collection",
							lights = {
									  {
									   typename = "spotlight",
									   connector = "MAIN_SPOT_PTR",
									   argument = 208,
									  },
									  {
										typename = "omnilight",
										connector = "MAIN_SPOT_OMNI",
										color = {1, 1, 1},
										pos_correction  = {0, 0, 0},
									  }
									 }
			},
    [3]	= {	typename = "collection",
						lights = {
								  {typename = "omnilight",
								   connector = "BANO_1",
								   color = {0.99, 0.11, 0.3},
								   pos_correction  = {0, 0, 0},
								   argument  = 190
								  },
								  {typename = "omnilight",
								   connector = "BANO_2",
								   color = {0, 0.894, 0.6},
								   pos_correction = {0, 0, 0},
								   argument  = 191
								  },
								  {typename = "omnilight",
								   connector = "BANO_0_BACK",
								   color = {1, 1, 1},
								   pos_correction  = {0, 0, 0},
								   argument  = 192
								  }
								  }
			},
    [4] = {	typename = "collection",
				lights = {
							{typename  = "argumentlight", argument = 200},
							{typename  = "argumentlight", argument = 201},
						 }
			},
		}
	},
				

	ViewSettings = ViewSettings,
	SnapViews    = SnapViews,	
}

add_aircraft(IAF_CH_53E)
