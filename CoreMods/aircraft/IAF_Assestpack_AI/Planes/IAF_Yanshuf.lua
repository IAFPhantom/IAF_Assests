

IAF_HU_60 =  {
		Countries			= {"Israel"},
      
		Name 				=   'IAF_HU_60',
		DisplayName			= _("IAF HU-60 Yanshuf"),

       InternalCargo = {
			nominalCapacity = 1100,
			maximalCapacity = 1100
		},
        EmptyWeight = "7799",
        LandRWCategories = 
        {
        }, -- end of LandRWCategories
        MaxFuelWeight = "1100",
        MaxHeight = "5800",
        MaxSpeed = "300",
        MaxTakeOffWeight = "9980",
        Picture = "UH-60A.png",
        Rate = "30",
	Shape 				= "IAF_HU_60",
	WorldID 			= WSTYPE_PLACEHOLDER,
-----------------------
	shape_table_data 	= 
	{
		{
			file  	 	= 'IAF_HU_60';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'uh-60-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'IAF_HU_60';
			index    	= WSTYPE_PLACEHOLDER;
			classname = "lLandPlane"; -- to show as static
			positioning = "BYNORMAL"; -- to show as static
		},
		{
			name  = "uh-60-oblomok";
			file  = "uh-60-oblomok";
			fire  = { 240, 2};
		},
	},		
		WorldID 			= 162,
		LandRWCategories = 
		{
			[1] = 
			{
			   Name = "HelicopterCarrier",
			},
			[2] = 
			{
			   Name = "AircraftCarrier",
			},
		},
		
		TakeOffRWCategories = 
		{
			[1] = 
			{
				Name = "HelicopterCarrier",
			},
			[2] = 
			{
			   Name = "AircraftCarrier",
			},
		},
--        WorldID = 162,

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1},
		},
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, WSTYPE_PLACEHOLDER,
		UH_60A,
        "Transport helicopters",
        },
        Categories = {
        },
        mapclasskey = "P0091000020",
        --CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE_UH),
		CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
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
			--{ id = "GunnersAISkill" , control = 'slider', label = _('Gunners AI Skill'), defValue = 90, min = 10, max = 100, dimension = '%'},
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
    Tasks = {
		--aircraft_task(CAS),
        --aircraft_task(GroundAttack),
        aircraft_task(Transport),
    },
	DefaultTask = aircraft_task(Transport),

-------HelicopterConst.lua---------------------

		length	=	18.654,
		height	=	4.893,
		rotor_height	=	1.791,
		rotor_diameter	=	16.4,
		blades_number	=	4,
		blade_area	=	3.48,
		rotor_RPM	=	258,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	8700,
		rotor_pos = 	{0,	1.646,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.45,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.9,
		centering	=	-0.09,
		tail_pos = 	{-10.042,	1.76,	0},
		tail_fin_area	=	4.75,
		tail_stab_area	=	2.94,
		M_empty	=	7799,
		M_nominal	=	9260,
		M_max	=	9980,
		MOI = 	{7406,	50000,	53516},
		M_fuel_max	=	1100,
		V_max	=	268,
		V_max_cruise	=	237,
		Vy_max	=	3.4,
		H_stat_max_L	=	4170,
		H_stat_max	=	3170,
		H_din_two_eng	=	5790,
		H_din_one_eng	=	2900,
		range	=	600,
		flight_time_typical	=	110,
		flight_time_maximum	=	138,
		main_gear_pos = 	{0.879,	-1.968,	1.425},
		nose_gear_pos = 	{-7.774,	-2.029,	0},
		lead_stock_main	=	0.117,
		lead_stock_support	=	0.138,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.5,-0.5,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.5,-0.5,	 0.5},
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.5,-0.5,	-0.5},
			}, -- end of [1]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.5,-0.5,	 0.5},
			}, -- end of [1]
		}, -- end of crew_members
		RCS	=	10,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.22,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorUH60",
		engine_data = 
		{
			power_take_off	=	1148,
			power_max	=	1263,
			power_WEP	=	1263,
			power_TH_k = 
			{
				[1] = 	{6.1988,	-154.38,	1319.2},
				[2] = 	{7.3972,	-166.85,	1354.6},
				[3] = 	{-1.3775,	-103.72,	1292.3},
				[4] = 	{-3.0581,	-51.096,	1058.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-5.899e-005,	0.3759},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.5,	0},
			[2] = 	{-1.5,	0.927,	-0.95},
			[3] = 	{-1.5,	0.927,	0.95},
			[4] = 	{-7.3,	-0.14,	0},
			[5] = 	{-0.45,	-0.99,	-0.864},
			[6] = 	{-0.45,	-0.99,	0.864},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.0,		
	--}, -- end of [162]
		-- add model draw args for network transmitting to this draw_args table (32 limit)
		net_animation = { 34, 43, 44, 36 --[[rotor]], 280 --[[rotor cone]],471,472,473 --[[sight station up/down]],
		69,446 --[[ext lightning]], 515, 516, 517 --[[search light pos]], 540, 549, 1000 --[[slick]], 1001 --[[ExhausScreen]], 449, 450},
		cargo_max_weight = 5000, -- maximum weight of extended cargo
		cargo_radius_in_menu = 2000, -- radius, when cargo displays in menu


-------------------------------
-- 		Guns
		Guns = {},
-------------------------------

		
		Damage = {
--ab212_cells_properties[1]  = {critical_damage = 5, args = {167}},--
	[0]  = {critical_damage = 3, args = {142}}, --капот
	[1]  = {critical_damage = 1, args = {146}}, --левая дверь пилота и перед борта
	[2]  = {critical_damage = 1, args = {297}}, --правая дверь пилота и перед борта
	[4]  = {critical_damage = 1, args = {454}}, --стекло левого пилота
	[5]  = {critical_damage = 1, args = {453}}, --стекло правого пилота
	[6]  = {critical_damage = 1, args = {298}}, --низ носа
	[8]  = {critical_damage = 3, args = {265}}, --костыль на балке
	[9]  = {critical_damage = 2, args = {154}}, --левая часть корпуса под двигателем
	[10] = {critical_damage = 2, args = {153}}, --правая часть корпуса под двигателем
	[11] = {critical_damage = 2, args = {167}}, -- капот двигателя
	[14] = {critical_damage = 5, args = {163}}, --повреждения балки
	[13] = {critical_damage = 5, args = {169}}, --капот редуктора
	[15] = {critical_damage = 50, args = {258}},--лыжи
	[16] = {critical_damage = 50, args = {256}},--лыжи
	[19] = {critical_damage = 50, args = {257}},--лыжи
	[20] = {critical_damage = 50, args = {255}},--лыжи
	[21] = {critical_damage = 1, args = {449}},--левый пилот
	[22] = {critical_damage = 1, args = {450}},--правый пилот
	[23] = {critical_damage = 1, args = {465}},--левый стрелок
	[24] = {critical_damage = 1, args = {466}},--правый стрелок
	[25] = {critical_damage = 2, args = {459}},--левая дверь
	[26] = {critical_damage = 2, args = {460}},--правая дверь
	[27] = {critical_damage = 1, args = {455}},--левое окно пилота
	[28] = {critical_damage = 1, args = {456}},--правое окно пилота
	[29] = {critical_damage = 1, args = {457}},--левое верхнее окно
	[30] = {critical_damage = 1, args = {458}},--правое верхнее окно
	[31] = {critical_damage = 2, args = {461}},--левая сторона крыши
	[32] = {critical_damage = 2, args = {462}},--правая сторона крыши
	[45] = {critical_damage = 3, args = {235}},
	[46] = {critical_damage = 3, args = {233}},
	[53] = {critical_damage = 5, args = {81}},--балка целиком
	[55] = {critical_damage = 3, args = {159, 244}},
	[56] = {critical_damage = 3,	args = {158}, deps_cells = {55, 53}},
	[57] = {critical_damage = 3,	args = {157}, deps_cells = {55, 53}},
	[82] = {critical_damage = 8, args = {152}},
	[63] = {critical_damage = 10,  args = {530}, deps_cells = {64, 65, 66, 67, 68, 69}}, -- Rotor
	[64] = {critical_damage = 5,  args = {429}, deps_cells = {65, 66}},
	[65] = {critical_damage = 5,  args = {430}, deps_cells = {66}},
	[66] = {critical_damage = 5,  args = {431}},
	[67] = {critical_damage = 5,  args = {432}, deps_cells = {68, 69}},
	[68] = {critical_damage = 5,  args = {433}, deps_cells = {69}},
	[69] = {critical_damage = 5,  args = {434}},
	[71] = {critical_damage = 2, args = {435}},
	[74] = {critical_damage = 2, args = {436}},
	},

	DamageParts = 
	{ 
		[1] = "uh-60-tail", -- tail
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

add_aircraft(IAF_HU_60)
