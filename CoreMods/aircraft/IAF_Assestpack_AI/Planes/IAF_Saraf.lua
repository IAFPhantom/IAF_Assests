

local IAF_AH_64A =  {
		Countries			= {"Israel"},
      
		Name 				=   'IAF_AH-64A',
		DisplayName			= _("IAF AH-64A Peten"),
		
        EmptyWeight = "5345",
        MaxFuelWeight = "1157",
        MaxHeight = "6400",
        MaxSpeed = "300",
        MaxTakeOffWeight = "9225",
        Picture = "AH-64A.png",
        Rate = "50",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
		Shape 				= "IAF_AH_64A",
		WorldID 			= WSTYPE_PLACEHOLDER,
-----------------------
	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_AH_64A';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'ah-64-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_AH_64A';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane"; -- to show as static
			positioning = "BYNORMAL"; -- to show as static
		},
		{
			name  = "ah-64-oblomok";
			file  = "ah-64-oblomok";
			fire  = { 240, 2};
		},
	},		

		-- Countermeasures, 2xM-160 = 60 Chaffs/Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, WSTYPE_PLACEHOLDER, AH_64A,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            OPTIC = {"TADS DTV", "TADS DVO", "TADS FLIR"},
            --OPTIC = {"PNVS", "TADS DTV", "TADS DVO", "TADS FLIR"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
        },
        mapclasskey = "P0091000021",
		
	    Tasks = {
	        aircraft_task(CAS),
			aircraft_task(GroundAttack),
			aircraft_task(Escort),
			aircraft_task(AFAC),
			aircraft_task(AntishipStrike),
		},
		DefaultTask = aircraft_task(CAS),
	
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
    
	
	pylons_enumeration = {1, 2, 3, 4},
	
	Pylons =     { 
        pylon(1, 0, 0.288000, -0.976000, -2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(2, 0, 0.288000, -0.976000, -1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(3, 0, 0.288000, -0.976000, 1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(4, 0, 0.288000, -0.976000, 2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
    },

---------------------------- HelicopterConst.lua
		length	=	17.87,
		height	=	4.15,
		rotor_height	=	1.6,
		rotor_diameter	=	14.63,
		blades_number	=	4,
		blade_area	=	3.39,
		rotor_RPM	=	289,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	5800,
		rotor_pos = 	{0.123,	1.47,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4,
		centering	=	-0.22,
		tail_pos = 	{-9,	1.401,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	5345,
		M_nominal	=	6552,
		M_max	=	9225,
		MOI = 	{6170,	28982,	33441},
		M_fuel_max	=	1157,
		V_max	=	365,
		V_max_cruise	=	296,
		Vy_max	=	12.7,
		H_stat_max_L	=	4570,
		H_stat_max	=	3505,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	480,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{1.062,	-2.499,	1.017},
		nose_gear_pos = 	{-9.522,	-1.552,	0},
		lead_stock_main	=	0.37,
		lead_stock_support	=	0.147,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.3,	0,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.7,-0.8,	0},
			}, -- end of [1]
		}, -- end of crew_members

		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH64",
		engine_data = 
		{
			power_take_off	=	1169,
			power_max	=	1169,
			power_WEP	=	1297,
			power_TH_k = 
			{
				[1] = 	{6.3136,	-151.3,	1252.4},
				[2] = 	{4.9361,	-143.84,	1263.3},
				[3] = 	{3.0994,	-125.54,	1239.5},
				[4] = 	{-2.3851,	-55.487,	1006.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.0002618,	0.5813},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.77,	0.15,	-1.017},
			[3] = 	{-1.77,	0.15,	1.017},
			[4] = 	{-7.6,	-0.69,	0},
			[5] = 	{0.8,	-1.16,	0},
			[6] = 	{-1.6,	-1.26,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos	
	--}, -- end of [157]-------------------------------
------------------------------ Guns
		Guns = {gun_mount("M_230", { count = 1200 },{muzzle_pos = {3.881, -1.821,  0.0}})},
-------------------------------

		
		Damage = {  -- Damage.lua
	[0]  = {critical_damage = 2, args = {146}},
	[1]  = {critical_damage = 1, args = {296}},
	[2]  = {critical_damage = 1, args = {297}},
	[3]  = {critical_damage = 12, args = {65}},
	[4]  = {critical_damage = 12, args = {150}},
	[5]  = {critical_damage = 12, args = {149}},
	[7]  = {critical_damage = 4, args = {249}},
	[9]  = {critical_damage = 13, args = {154, 299}},
	[10] = {critical_damage = 13, args = {153, 303}},
	[11] = {critical_damage = 2, args = {167}},
	[12] = {critical_damage = 2, args = {161}},
	[29] = {critical_damage = 8, args = {224}},
	[30] = {critical_damage = 8, args = {214}},
	[35] = {critical_damage = 8, args = {224}},
	[36] = {critical_damage = 8, args = {214}},
	[45] = {critical_damage = 4, args = {235}},
	[46] = {critical_damage = 4, args = {233}},
	[63] = {critical_damage = 10, args = {53}},
	[55] = {critical_damage = 3, args = {159}},
	[56] = {critical_damage = 13, args = {81, 158}, deps_cells = {55}},
	[57] = {critical_damage = 13, args = {81, 157}, deps_cells = {55}},
	[59] = {critical_damage = 4, args = {148}},
	[61] = {critical_damage = 8, args = {147}},
	[62] = {critical_damage = 8, args = {250}},
	[82] = {critical_damage = 14, args = {152}},

	},

	DamageParts = 
	{ 
		[1] = "ah-64a-wing-l", -- tail
		[2] = "ah-64a-wing-r", -- tail
		[3] = "ah-64a-tail", -- tail
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

add_aircraft(IAF_AH_64A)




local IAF_AH_64D =  {
		Countries			= {"Israel"},
      
		Name 				=   'IAF_AH-64D',
		DisplayName			= _("IAF AH-64D Saraf"),
		
		InternalCargo = {
			nominalCapacity = 3500,
			maximalCapacity = 3800
		},
        EmptyWeight = "5345",
        MaxFuelWeight = "1157",
        MaxHeight = "4500",
        MaxSpeed = "280",
        MaxTakeOffWeight = "9225",
        Picture = "AH-64D.png",
        Rate = "50",
	Shape 				= "IAF_AH_64D",
	WorldID 			= WSTYPE_PLACEHOLDER,
-----------------------
	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_AH_64D';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'ah-64-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_AH_64D';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane"; -- to show as static
			positioning = "BYNORMAL"; -- to show as static
		},
		{
			name  = "ah-64-oblomok";
			file  = "ah-64-oblomok";
			fire  = { 240, 2};
		},
	},		
		--WorldID 			= 157,

		-- Countermeasures, 2xM-160 = 60 Chaffs/Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane,  WSTYPE_PLACEHOLDER, 
		AH_64D,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
           RADAR = "AN/APG-78",
            OPTIC = {"TADS DTV", "TADS DVO", "TADS FLIR"},
            --OPTIC = {"PNVS", "TADS DTV", "TADS DVO", "TADS FLIR"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
        },
        mapclasskey = "P0091000021",
		
	    Tasks = {
	        aircraft_task(CAS),
			aircraft_task(GroundAttack),
			aircraft_task(Escort),
			aircraft_task(AFAC),
			aircraft_task(AntishipStrike),
		},
		DefaultTask = aircraft_task(CAS),
	
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
    
	
	pylons_enumeration = {1, 2, 3, 4},
	
	Pylons =     { 
        pylon(1, 0, 0.288000, -0.976000, -2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(2, 0, 0.288000, -0.976000, -1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(3, 0, 0.288000, -0.976000, 1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(4, 0, 0.288000, -0.976000, 2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
    },

---------------------------- HelicopterConst.lua
		length	=	17.87,
		height	=	4.15,
		rotor_height	=	1.6,
		rotor_diameter	=	14.63,
		blades_number	=	4,
		blade_area	=	3.39,
		rotor_RPM	=	289,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	5800,
		rotor_pos = 	{0.123,	1.47,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4,
		centering	=	-0.22,
		tail_pos = 	{-9,	1.401,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	5345,
		M_nominal	=	6552,
		M_max	=	9225,
		MOI = 	{6170,	28982,	33441},
		M_fuel_max	=	1157,
		V_max	=	365,
		V_max_cruise	=	296,
		Vy_max	=	12.7,
		H_stat_max_L	=	4570,
		H_stat_max	=	3505,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	480,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{1.062,	-2.499,	1.017},
		nose_gear_pos = 	{-9.522,	-1.552,	0},
		lead_stock_main	=	0.37,
		lead_stock_support	=	0.147,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_size	=	2,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.3,	0,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.7,-0.8,	0},
			}, -- end of [1]
		}, -- end of crew_members
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH64",
		engine_data = 
		{
			power_take_off	=	1169,
			power_max	=	1169,
			power_WEP	=	1297,
			power_TH_k = 
			{
				[1] = 	{6.3136,	-151.3,	1252.4},
				[2] = 	{4.9361,	-143.84,	1263.3},
				[3] = 	{3.0994,	-125.54,	1239.5},
				[4] = 	{-2.3851,	-55.487,	1006.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.0002618,	0.5813},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.73,	0.19,	-0.916},
			[3] = 	{-1.73,	0.19,	0.916},
			[4] = 	{-7.4,	-0.72,	0},
			[5] = 	{0.47,	-0.39,	0},
			[6] = 	{-1.17,	-0.4,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	--}, -- end of [157]-------------------------------
------------------------------ Guns
		Guns = {gun_mount("M_230", { count = 1200 },{muzzle_pos = {3.881, -1.821,  0.0}})},
-------------------------------

		
		Damage = {  -- Damage.lua
	[0]  = {critical_damage = 2, args = {146}},
	[1]  = {critical_damage = 1, args = {296}},
	[2]  = {critical_damage = 1, args = {297}},
	[3]  = {critical_damage = 12, args = {65}},
	[4]  = {critical_damage = 12, args = {150}},
	[5]  = {critical_damage = 12, args = {149}},
	[7]  = {critical_damage = 4, args = {249}},
	[9]  = {critical_damage = 13, args = {154, 299}},
	[10] = {critical_damage = 13, args = {153, 303}},
	[11] = {critical_damage = 2, args = {167}},
	[12] = {critical_damage = 2, args = {161}},
	[29] = {critical_damage = 8, args = {224}},
	[30] = {critical_damage = 8, args = {214}},
	[35] = {critical_damage = 8, args = {224}},
	[36] = {critical_damage = 8, args = {214}},
	[45] = {critical_damage = 4, args = {235}},
	[46] = {critical_damage = 4, args = {233}},
	[63] = {critical_damage = 10, args = {53}},
	[55] = {critical_damage = 3, args = {159}},
	[56] = {critical_damage = 13, args = {81, 158}, deps_cells = {55}},
	[57] = {critical_damage = 13, args = {81, 157}, deps_cells = {55}},
	[59] = {critical_damage = 4, args = {148}},
	[61] = {critical_damage = 8, args = {147}},
	[62] = {critical_damage = 8, args = {250}},
	[82] = {critical_damage = 14, args = {152}},
	},

	DamageParts = 
	{ 
		[1] = "ah-64a-wing-l", -- tail
		[2] = "ah-64a-wing-r", -- tail
		[3] = "ah-64a-tail", -- tail
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

add_aircraft(IAF_AH_64D)
