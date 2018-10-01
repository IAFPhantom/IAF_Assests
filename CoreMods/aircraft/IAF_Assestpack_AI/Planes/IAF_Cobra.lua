

local IAF_Cobra = {
		Countries			= {"Israel"},
      
		Name 				=   'IAF_AH_1W',
		DisplayName			= _("IAF Cobra"),
        EmptyWeight = "4814",
        MaxFuelWeight = "1250.0",
        MaxHeight = "5500",
        MaxSpeed = "290",
        MaxTakeOffWeight = "6690",
        Picture = "AH-1W.png",
        Rate = "30",
        Shape = "IAF_AH_1W",
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

		WorldID 			= WSTYPE_PLACEHOLDER,
-----------------------
	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_AH_1W';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'ah-64-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_AH_1W';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane"; -- to show as static
			positioning = "BYNORMAL"; -- to show as static
		},
		{
			name  = "ah-1w-oblomok";
			file  = "ah-1w-oblomok";
			fire  = { 240, 2};
		},
	},	
		WorldID = 163,

		-- Countermeasures, ALE-39, typical 30 Chaff; 30 Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, WSTYPE_PLACEHOLDER, AH_1W,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            OPTIC = "NTS",
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
	
	Pylons =       {
        pylon(1, 0, 0.376000, -0.840000, -1.440000,
            {
            },
            {
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
            }
        ),
        pylon(2, 0, 0.605000, -0.979000, -0.806000,
            {
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
                { CLSID = "M260_HYDRA_WP" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
            }
        ),
        pylon(3, 0, 0.605000, -0.979000, 0.816000,
            {
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
                { CLSID = "M260_HYDRA_WP" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
            }
        ),
        pylon(4, 0, 0.376000, -0.840000, 1.452000,
            {
            },
            {
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "M260_HYDRA" },
                { CLSID = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}" },
                
            }
        ),
    },
--------------------------- HelicopterConst.lua-----	[163] = -- AH-1W 	{
		length	=	17.27,
		height	=	3.9,
		rotor_height	=	1.75,
		rotor_diameter	=	14.64,
		blades_number	=	2,
		blade_area	=	6.13,
		rotor_RPM	=	324,
		engines_count	=	2,
		blade_chord	=	0.84,
		rotor_MOI	=	4600,
		rotor_pos = 	{0.508,	1.656,	0},
		thrust_correction	=	0.62,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	3.2,
		centering	=	-0.09,
		tail_pos = 	{-5.989,	0.973,	0},  -- -7.989, but stabilizer is too strong then for rotor in autorotation 
		tail_fin_area	=	1.23,
		tail_stab_area	=	2.94,
		M_empty	=	4814,
		M_nominal	=	6352,
		M_max	=	6690,
		MOI = 	{4600,	24401,	25880},
		M_fuel_max	=	1250,
		V_max	=	352,
		V_max_cruise	=	278,
		Vy_max	=	4.07,
		H_stat_max_L	=	1470,
		H_stat_max	=	915,
		H_din_two_eng	=	4270,
		H_din_one_eng	=	2740,
		range	=	595,
		flight_time_typical	=	128,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-0.533,	-2.06,	0.833},
		nose_gear_pos = 	{2.597,	-2.02,	0.833},
		lead_stock_main	=	-0.1,
		lead_stock_support	=	-0.1,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.0,-0.3,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.3,-0.7,	0},
			}, -- end of [1]
		},
		RCS	=	7,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	2.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH1W",
		engine_data = 
		{
			power_take_off	=	1244,
			power_max	=	1244,
			power_WEP	=	1269,
			power_TH_k = 
			{
				[1] = 	{12.535,	-278.03,	2052.6},
				[2] = 	{12.535,	-278.03,	2052.6},
				[3] = 	{12.535,	-278.03,	2052.6},
				[4] = 	{0,	-101.95,	1306},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.000241,	0.6733503},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	1,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.32,	0,	-0.46},
			[3] = 	{-1.32,	0,	0.46},
			[4] = 	{-7.12,	-0.47,	0},
			[5] = 	{1.053,	-1.32,	0},
			[6] = 	{-0.45,	-1.32,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	--}, -- end of [163]
------------------------------ Guns

	Guns = {gun_mount("M_197", { count = 750 },{muzzle_pos = {5.375, -1.312,  0.0}, ejector_pos = {-1.45, -0.3, 0.0}, })},
	        
-------------------------------
		Damage = {  -- Damage.lua
	[0]  = {critical_damage = 3,	args = {146}},
	[3]  = {critical_damage = 10,	args = {65}},
	[4]  = {critical_damage = 10,	args = {150}},
	[5]  = {critical_damage = 10,	args = {149}},
	[7]  = {critical_damage = 4,	args = {249}},
	[9]  = {critical_damage = 10,	args = {154}},
	[10] = {critical_damage = 10,	args = {153}},
	[11] = {critical_damage = 2,	args = {167}},
	[12] = {critical_damage = 2,	args = {161}},
	[23] = {critical_damage = 7,	args = {223}},
	[24] = {critical_damage = 7,	args = {213}},
	[29] = {critical_damage = 8,	args = {224}},
	[30] = {critical_damage = 8,	args = {214}},
	[45] = {critical_damage = 3,	args = {235}},
	[46] = {critical_damage = 3,	args = {233}},
	[55] = {critical_damage = 3,	args = {159}},
	[56] = {critical_damage = 12,	args = {81, 158}, deps_cells = {55}},
	[57] = {critical_damage = 12,	args = {81, 157}, deps_cells = {55}},

	},

	DamageParts = 
	{ 
		[1] = "ah-1w-wing-l", -- tail
		[2] = "ah-1w-wing-r", -- tail
		[3] = "ah-1w-tail", -- tail
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

add_aircraft(IAF_Cobra)