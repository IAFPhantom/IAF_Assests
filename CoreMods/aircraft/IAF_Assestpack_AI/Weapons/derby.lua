
local Derby =     
{
		category		= CAT_AIR_TO_AIR,
        Name 			= "Derby", 	-- [v] Derby
		user_name		= _("Derby"),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort = 0,			-- [v] Accompaniment: 0 - no, 1 - LA starter , 2 - another LA 3 - c land
        Head_Type = 2,		-- [v] Type homing (GOS) missile head type ; 1= InfraredSeeker = 1;    // thermal IR (infrared seeker)
		sigma = {5, 5, 5},	-- the maximum error of sight in meters
        M = 118.0,			-- [v] gross weight in kg
        H_max = 26000.0,	-- maximum altitude [m]
        H_min = 1.0,		-- [v] minimum flight altitude [m]
        Diam = 160.0,		-- [v] Body diameter in[mm] by Hebrew Wikipedia 
        Cx_pil = 2.5,		-- Cx as suspension??
        D_max = 16000.0,	-- maximum launch range at low altitude
        D_min = 700.0,		-- [v] minimum launch range
        Head_Form = 1,		-- // false - hemispherical shape of the head
        Life_Time = 90.0,	-- [v]lifetime ( self-destruct timer ) [sec]
        Nr_max = 50,		-- [v] - Maximum overload when turning (G?)
        v_min = 140.0, 		-- The minimum speed [- ?]
        v_mid = 700.0, 		-- average speed [- ?]
        Mach_max = 4.0,		-- [v] The maximum Mach number [mach]
        t_b = 0.0,			-- time of the motor [sec]
        t_acc = 4.0,		-- time operation of the accelerator
        t_marsh = 28.0,		-- While working in the marching mode ? [sec]
        Range_max = 55000.0,-- [v] maximum launch range at maximum height [m]
        H_min_t = 1.0,		-- [v] minimum target height above terrain , m
        Fi_start = 0.5, 	-- angle tracking and sighting at start- ?
        Fi_rak = 3.14152, 	-- permissible angle angle purpose (rad)- ?
        Fi_excort = 1.05, 	-- tracking angle ( sight . ) mxissile targets- ?
        Fi_search = 1.05, 	-- limit angle free search- ?
        OmViz_max = 0.52, 	-- speed limit of the line of sight- ?
        warhead =  enhanced_a2a_warhead(23), --simple_aa_warhead(11),-- [v] modified
        exhaust = {0.8, 0.8, 0.8, 0.05 },--tail_solid,	-- damage inflicted by direct contact
        X_back = -1.61, 	-- The coordinates of the center of the nozzle axes missiles- ?
        Y_back = -0.089, --- ?
        Z_back = 0.0, --- ?
        Reflection = 0.0329,	-- effective surface radio reflections , square footage
        KillDistance = 15.0,		-- [v] this distance is used to fire a fuze
		ccm_k0 = 1.0,  -- Counter Countermeasures Probability Factor. Value = 0 - missile has absolutely resistance to countermeasures. Default = 1 (medium probability)
		shape_table_data =
		{
			{
				name = "Derby",
				file = "Derby",
				life = 1,
				fire  = { 0, 1},
				username = "DBY",
				index = WSTYPE_PLACEHOLDER,
			},
		},
		ModelData = 
		{   58 ,  -- model params count
		0.4 ,   -- characteristic square (характеристическая площадь)
		
		-- параметры зависимости Сx depending on the parameters Cx
		0.016 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1) subsonic (M << 1)
		0.045 , -- Cx_k1 высота пика волнового кризиса Cx_k1 peak height of the wave of the crisis
		0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису Cx_k2 edge steepness on the approach to the wave crisis
		0.016, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1) Cx_k3 strap Cx0 supersonic (M >> 1)
		1.2 , -- Cx_k4 крутизна спада за волновым кризисом  Cx_k4 rolloff for the wave crisis
		1.5 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1)) coefficient blade polars (proportional to sqrt (M ^ 2-1))
		
		-- параметры зависимости Cy
		0.7 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1) subsonic
		0.8	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)supersonic
		1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
		
		0.31, -- 7 Alfa_max  максимальный балансировачный угол, радианы  balansirovachny (balancing?) maximum angle radians
		0.6, -- [v] угловая скорость создаваймая моментом газовых рулей  the angular velocity of the gas rudders sozdavaymaya moment -- trust vectoring?
		
	-- Engine data. Time, fuel flow, thrust.	
	--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
		-1.0,		-1.0,	4.0,  		28.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
		 0.0,		0.0,	5.44,		1.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
		 0.0,		0.0,	18802.0,	7000.0,		0.0,			0.0,		0.0,           -- thrust, newtons
	
		 1.0e9, -- таймер самоликвидации, сек  self-destruct timer , in seconds
		 100.0, -- время работы энергосистемы, сек  while the grid , seconds
		 0, -- абсолютная высота самоликвидации, м altitude self-destruct , m
		 1.0, -- время задержки включения управления (маневр отлета, безопасности), сек  delay time control ( departure maneuver , safety ) , sec
		 40000, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м range to the target at the time of start-up , above which the missile maneuver " hill" , m
		 40000, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м  range to the target at which the maneuver " hill" is completed and the rocket moves to a purely proportional navigation ( must be greater than or equal to the previous parameter ) , m
		 0.17,  -- синус угла возвышения траектории набора горки  sine of the angle of elevation of the trajectory set slides
		 50.0, -- продольное ускорения взведения взрывателя  longitudinal acceleration charging fuse
		 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд module speed soobschaymy ejection device , expelling charge , etc
		 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0 haraktristika system SAU- rocket, second order filter coefficient K0
		 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1  haraktristika system SAU- rocket, the second-order filter coefficient K1
		 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления haraktristika system SAU- rocket, bandwidth control loop
		 25200.0, -- дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 на высоте H=2000
		 3.92, -- крутизна зависимости  дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 от высоты H -- he steepness of the dependence of the range of flight in the horizon with an available overload Navail> = 1.0 from the height H
		 3.2, --  коэф поправки к дальности от скорости носителя --- Correction coefficient to the range from the carrier speed
		 0.75, -- безразмерный коэф. эффективности САУ ракеты -- - dimensionless coefficient. Effectiveness of rocket missiles
		 70.0, -- Прогноз времени полета ракеты  --- The forecast of the missile's flight time
		  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)        The data for the calculation of distances start (display at gunpoint )
		 55000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
		 25000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч, м
		 22000.0, -- дальность ракурс 	180(навстречу) град, Н=1000м, V=900км/ч, м
		 0.2, -- Уменьшение разрешенной дальности пуска при отклонении вектора скорости носителя от линии визирования цели.
		 0.6, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в нижнюю полусферу. Уменьшение дальности при стрельбе вниз.
		 1.4, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в верхнюю полусферу. Увеличение дальности при стрельбе вверх.
		-3.0, -- Вертикальная плоскость. Угол перегиба кривой разрешенной дальности, верхняя - нижняя полусфера.
		 0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
	},
}

declare_weapon(Derby) 

declare_loadout(
		{
			category 		= CAT_AIR_TO_AIR,
			CLSID 			= "{Refael_Derby}",
			Picture			=	"aim120c.png",
			displayName		=	_("Refael Derby"),
			wsTypeOfWeapon	=	Derby.wsTypeOfWeapon,
			attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
			Cx_pil   		=   0.001959765625,
			Count   		=   1,
			Weight			=	118,

			Elements   =   
			{ 
				{	ShapeName	=	"Derby" ,	Position   =   {0.0,   0.0,   0.0}},
			}, 
		})



local DerbyER =     
{
		category		= CAT_AIR_TO_AIR,
        Name 			= "DerbyER", 	-- [v] Derby
		user_name		= _("I-Derby ER"),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort = 0,			-- [v] Accompaniment: 0 - no, 1 - LA starter , 2 - another LA 3 - c land
        Head_Type = 2,		-- [v] Type homing (GOS) missile head type ; 1= InfraredSeeker = 1;    // thermal IR (infrared seeker)
		sigma = {5, 5, 5},	-- the maximum error of sight in meters
        M = 118.0,			-- [v] gross weight in kg
        H_max = 26000.0,	-- maximum altitude [m]
        H_min = 1.0,		-- [v] minimum flight altitude [m]
        Diam = 160.0,		-- [v] Body diameter in[mm] by Hebrew Wikipedia 
        Cx_pil = 2.5,		-- Cx as suspension??
        D_max = 16000.0,	-- maximum launch range at low altitude
        D_min = 700.0,		-- [v] minimum launch range
        Head_Form = 1,		-- // false - hemispherical shape of the head
        Life_Time = 190.0,	-- [v]lifetime ( self-destruct timer ) [sec]
        Nr_max = 50,		-- [v] - Maximum overload when turning (G?)
        v_min = 140.0, 		-- The minimum speed [- ?]
        v_mid = 700.0, 		-- average speed [- ?]
        Mach_max = 4.0,		-- [v] The maximum Mach number [mach]
        t_b = 0.0,			-- time of the motor [sec]
        t_acc = 4.0,		-- time operation of the accelerator
        t_marsh = 58.0,		-- While working in the marching mode ? [sec]
        Range_max = 100000.0,-- [v] maximum launch range at maximum height [m]
        H_min_t = 1.0,		-- [v] minimum target height above terrain , m
        Fi_start = 0.5, 	-- angle tracking and sighting at start- ?
        Fi_rak = 3.14152, 	-- permissible angle angle purpose (rad)- ?
        Fi_excort = 1.05, 	-- tracking angle ( sight . ) mxissile targets- ?
        Fi_search = 1.05, 	-- limit angle free search- ?
        OmViz_max = 0.52, 	-- speed limit of the line of sight- ?
        warhead =  enhanced_a2a_warhead(23), --simple_aa_warhead(11),-- [v] modified
        exhaust = {0.8, 0.8, 0.8, 0.05 },--tail_solid,	-- damage inflicted by direct contact
        X_back = -1.61, 	-- The coordinates of the center of the nozzle axes missiles- ?
        Y_back = -0.089, --- ?
        Z_back = 0.0, --- ?
        Reflection = 0.0329,	-- effective surface radio reflections , square footage
        KillDistance = 15.0,		-- [v] this distance is used to fire a fuze
		ccm_k0 = 1.0,  -- Counter Countermeasures Probability Factor. Value = 0 - missile has absolutely resistance to countermeasures. Default = 1 (medium probability)
		shape_table_data =
		{
			{
				name = "DerbyER",
				file = "Derby",
				life = 1,
				fire  = { 0, 1},
				username = "DBE",
				index = WSTYPE_PLACEHOLDER,
			},
		},
		ModelData = 
		{   58 ,  -- model params count
		0.4 ,   -- characteristic square (характеристическая площадь)
		
		-- параметры зависимости Сx depending on the parameters Cx
		0.016 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1) subsonic (M << 1)
		0.045 , -- Cx_k1 высота пика волнового кризиса Cx_k1 peak height of the wave of the crisis
		0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису Cx_k2 edge steepness on the approach to the wave crisis
		0.016, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1) Cx_k3 strap Cx0 supersonic (M >> 1)
		1.2 , -- Cx_k4 крутизна спада за волновым кризисом  Cx_k4 rolloff for the wave crisis
		1.5 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1)) coefficient blade polars (proportional to sqrt (M ^ 2-1))
		
		-- параметры зависимости Cy
		0.7 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1) subsonic
		0.8	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)supersonic
		1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
		
		0.31, -- 7 Alfa_max  максимальный балансировачный угол, радианы  balansirovachny (balancing?) maximum angle radians
		0.6, -- [v] угловая скорость создаваймая моментом газовых рулей  the angular velocity of the gas rudders sozdavaymaya moment -- trust vectoring?
		
	-- Engine data. Time, fuel flow, thrust.	
	--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
		-1.0,		-1.0,	4.0,  		58.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
		 0.0,		0.0,	5.44,		1.0,		0.0,			0.0,		1.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
		 0.0,		0.0,	18802.0,	7000.0,		0.0,			0.0,		18802.0,           -- thrust, newtons
	
		 1.0e9, -- таймер самоликвидации, сек  self-destruct timer , in seconds
		 100.0, -- время работы энергосистемы, сек  while the grid , seconds
		 0, -- абсолютная высота самоликвидации, м altitude self-destruct , m
		 1.0, -- время задержки включения управления (маневр отлета, безопасности), сек  delay time control ( departure maneuver , safety ) , sec
		 40000, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м range to the target at the time of start-up , above which the missile maneuver " hill" , m
		 40000, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м  range to the target at which the maneuver " hill" is completed and the rocket moves to a purely proportional navigation ( must be greater than or equal to the previous parameter ) , m
		 0.17,  -- синус угла возвышения траектории набора горки  sine of the angle of elevation of the trajectory set slides
		 50.0, -- продольное ускорения взведения взрывателя  longitudinal acceleration charging fuse
		 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд module speed soobschaymy ejection device , expelling charge , etc
		 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0 haraktristika system SAU- rocket, second order filter coefficient K0
		 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1  haraktristika system SAU- rocket, the second-order filter coefficient K1
		 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления haraktristika system SAU- rocket, bandwidth control loop
		 25200.0, -- дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 на высоте H=2000
		 3.92, -- крутизна зависимости  дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 от высоты H -- he steepness of the dependence of the range of flight in the horizon with an available overload Navail> = 1.0 from the height H
		 3.2, --  коэф поправки к дальности от скорости носителя --- Correction coefficient to the range from the carrier speed
		 0.75, -- безразмерный коэф. эффективности САУ ракеты -- - dimensionless coefficient. Effectiveness of rocket missiles
		 70.0, -- Прогноз времени полета ракеты  --- The forecast of the missile's flight time
		  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)        The data for the calculation of distances start (display at gunpoint )
		 100000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
		 25000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч, м
		 22000.0, -- дальность ракурс 	180(навстречу) град, Н=1000м, V=900км/ч, м
		 0.2, -- Уменьшение разрешенной дальности пуска при отклонении вектора скорости носителя от линии визирования цели.
		 0.6, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в нижнюю полусферу. Уменьшение дальности при стрельбе вниз.
		 1.4, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в верхнюю полусферу. Увеличение дальности при стрельбе вверх.
		-3.0, -- Вертикальная плоскость. Угол перегиба кривой разрешенной дальности, верхняя - нижняя полусфера.
		 0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
	},
}

declare_weapon(DerbyER) 

declare_loadout(
		{
			category 		= CAT_AIR_TO_AIR,
			CLSID 			= "{Refael_DerbyER}",
			Picture			=	"aim120c.png",
			displayName		=	_("Refael Derby ER"),
			wsTypeOfWeapon	=	DerbyER.wsTypeOfWeapon,
			attribute		=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
			Cx_pil   		=   0.001959765625,
			Count   		=   1,
			Weight			=	118,

			Elements   =   
			{ 
				{	ShapeName	=	"Derby" ,	Position   =   {0.0,   0.0,   0.0}},
			}, 
		})


