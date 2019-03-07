/*
	Schema
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- EventMap
-----------------------------------------------

INSERT INTO EventMap
		(RandomEventType,								Animation,						Sound,									CallbackType,		VFX							)
VALUES	('RANDOM_EVENT_VOLCANO_GENTLE',					'REVEAL_ERUPTION',				'Play_Disaster_Volcano_Movie_Loop',		NULL,				NULL						),
		('RANDOM_EVENT_VOLCANO_CATASTROPHIC',			'REVEAL_ERUPTION_CATASTROPHIC',	'Play_Disaster_Volcano_Movie_Loop',		NULL,				NULL						),
		('RANDOM_EVENT_VOLCANO_MEGACOLOSSAL',			'REVEAL_ERUPTION_MEGACOLOSSAL',	'Play_Disaster_Volcano_Movie_Loop',		NULL,				NULL						),
		('RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL',			'REVEAL_ERUPTION_MEGACOLOSSAL',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_KILIMANJARO_GENTLE',				'REVEAL_ERUPTION',				'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_KILIMANJARO_CATASTROPHIC',		'REVEAL_ERUPTION_CATASTROPHIC',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_EYJAFJALLAJOKULL_CATASTROPHIC',	'REVEAL_ERUPTION_CATASTROPHIC',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_EYJAFJALLAJOKULL_MEGACOLOSSAL',	'REVEAL_ERUPTION_MEGACOLOSSAL',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_FLOOD_MODERATE',					'REVEAL_FLOOD',					'Play_Disaster_Flood_Movie_Loop',		'Flood',			NULL						),
		('RANDOM_EVENT_FLOOD_MAJOR',					'REVEAL_FLOOD',					'Play_Disaster_Flood_Movie_Loop',		'Flood',			NULL						),
		('RANDOM_EVENT_FLOOD_1000_YEAR',				'REVEAL_FLOOD',					'Play_Disaster_Flood_Movie_Loop',		'Flood',			NULL						),
		('RANDOM_EVENT_BLIZZARD_SIGNIFICANT',			'REVEAL_STORM',					'Play_Disaster_Blizzard_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_BLIZZARD_CRIPPLING',				'REVEAL_STORM',					'Play_Disaster_Blizzard_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_DUST_STORM_GRADIENT',			'REVEAL_STORM_SMALL',			'Play_Disaster_Sandstorm_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_DUST_STORM_HABOOB',				'REVEAL_STORM',					'Play_Disaster_Sandstorm_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_TORNADO_FAMILY',					'REVEAL_STORM_SMALL',			'Play_Disaster_Tornado_Movie_Loop',		'Storm',			NULL						),
		('RANDOM_EVENT_TORNADO_OUTBREAK',				'REVEAL_STORM',					'Play_Disaster_Tornado_Movie_Loop',		'Storm',			NULL						),
		('RANDOM_EVENT_HURRICANE_CAT_4',				'REVEAL_STORM',					'Play_Disaster_Hurricane_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_HURRICANE_CAT_5',				'REVEAL_STORM',					'Play_Disaster_Hurricane_Movie_Loop',	'Storm',			NULL						),
		('RANDOM_EVENT_NUCLEAR_ACCIDENT_MINOR',			'REVEAL_FLOOD',					'Play_Disaster_Meltdown_Movie_Loop',	NULL,				'DISASTER_NUCLEAR_MELTDOWN'	),
		('RANDOM_EVENT_NUCLEAR_ACCIDENT_MAJOR',			'REVEAL_FLOOD',					'Play_Disaster_Meltdown_Movie_Loop',	NULL,				'DISASTER_NUCLEAR_MELTDOWN'	),
		('RANDOM_EVENT_NUCLEAR_ACCIDENT_CATASTROPHIC',	'REVEAL_FLOOD',					'Play_Disaster_Meltdown_Movie_Loop',	NULL,				'DISASTER_NUCLEAR_MELTDOWN'	),
		('RANDOM_EVENT_DROUGHT_MAJOR',					'REVEAL_DROUGHT',				'Play_Disaster_Drought_Movie_Loop',		'Drought',			NULL						),
		('RANDOM_EVENT_DROUGHT_EXTREME',				'REVEAL_DROUGHT',				'Play_Disaster_Drought_Movie_Loop',		'Drought',			NULL						),
		('RANDOM_EVENT_KRAKATOA_GENTLE',				'REVEAL_ERUPTION',				'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',			'REVEAL_ERUPTION_CATASTROPHIC',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',			'REVEAL_ERUPTION_MEGACOLOSSAL',	'Play_Disaster_Volcano_Movie_Loop',		'NaturalWonder',	NULL						);

-----------------------------------------------
-- RandomEvents
-----------------------------------------------

INSERT INTO RandomEvents
		(NaturalWonder,			RandomEventType,						Name,											Description,											EffectString,								EffectOperatorType, Severity,	IconLarge,						IconSmall						)
VALUES	('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_GENTLE',			'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME',		'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION',			'LOC_RANDOM_EVENT_PROP_DAMAGE_FERTILITY',	'FEATURE',			0,			'ClimateEvent_VolcanoInactive',	'ClimateEventStat_Volcanoes'	),
		('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME',	'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION',	'LOC_RANDOM_EVENT_ALL_DAMAGE_FERTILITY',	'FEATURE',			1,			'ClimateEvent_VolcanoActive',	'ClimateEventStat_Volcanoes'	),
		('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME',	'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION',	'LOC_RANDOM_EVENT_ALL_DAMAGE_FERTILITY',	'FEATURE',			2,			'ClimateEvent_VolcanoErupting',	'ClimateEventStat_Volcanoes'	);

-----------------------------------------------
-- RandomEvent_Frequencies
-----------------------------------------------

INSERT INTO RandomEvent_Frequencies
		(RandomEventType,						RealismSettingType,				OccurrencesPerGame	)
VALUES	('RANDOM_EVENT_KRAKATOA_GENTLE',		'REALISM_SETTING_MINIMAL',		2					),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'REALISM_SETTING_LIGHT',		3					),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'REALISM_SETTING_MODERATE',		4					),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'REALISM_SETTING_HEAVY',		6					),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'REALISM_SETTING_HYPERREAL',	4					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'REALISM_SETTING_MINIMAL',		1					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'REALISM_SETTING_LIGHT',		2					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'REALISM_SETTING_MODERATE',		2.5					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'REALISM_SETTING_HEAVY',		4					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'REALISM_SETTING_HYPERREAL',	6					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'REALISM_SETTING_MINIMAL',		3					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'REALISM_SETTING_LIGHT',		5					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'REALISM_SETTING_MODERATE',		7					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'REALISM_SETTING_HEAVY',		9					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'REALISM_SETTING_HYPERREAL',	9					);

-----------------------------------------------
-- RandomEvent_Damages
-----------------------------------------------

INSERT INTO RandomEvent_Damages
		(RandomEventType,						DamageType,					Percentage,	MinHP,	MaxHP,	CoastalLowlandPercentage,	FalloutDuration,	ExtraRangePercentage)
VALUES	('RANDOM_EVENT_KRAKATOA_GENTLE',		'IMPROVEMENT_PILLAGED',		100,		0,		0,		NULL,						0,					0					),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'BUILDING_PILLAGED',		100,		0,		0,		NULL,						0,					0					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'IMPROVEMENT_DESTROYED',	80,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'IMPROVEMENT_PILLAGED',		100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'DISTRICT_PILLAGED',		80,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'BUILDING_PILLAGED',		100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'POPULATION_LOSS',			20,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'UNIT_KILLED_CIVILIAN',		20,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'UNIT_DAMAGE_LAND',			100,		40,		60,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'CITY_GARRISON',			100,		40,		60,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'CITY_WALLS',				100,		40,		60,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'IMPROVEMENT_DESTROYED',	80,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'IMPROVEMENT_PILLAGED',		100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'DISTRICT_PILLAGED',		80,			0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'BUILDING_PILLAGED',		100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'POPULATION_LOSS',			100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'UNIT_KILLED_CIVILIAN',		100,		0,		0,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'UNIT_DAMAGE_LAND',			100,		70,		90,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'CITY_GARRISON',			100,		70,		90,		NULL,						0,					50					),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'CITY_WALLS',				100,		70,		90,		NULL,						0,					50					);

-----------------------------------------------
-- RandomEvent_Yields
-----------------------------------------------

INSERT INTO RandomEvent_Yields
		(RandomEventType,						YieldType,			FeatureType,				Percentage, ReplaceFeature	)
VALUES	('RANDOM_EVENT_KRAKATOA_GENTLE',		'YIELD_FOOD',		'FEATURE_VOLCANIC_SOIL',	50,			1				),
		('RANDOM_EVENT_KRAKATOA_GENTLE',		'YIELD_PRODUCTION',	'FEATURE_VOLCANIC_SOIL',	25,			1				),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'YIELD_FOOD',		'FEATURE_VOLCANIC_SOIL',	50,			1				),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'YIELD_PRODUCTION',	'FEATURE_VOLCANIC_SOIL',	35,			1				),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'YIELD_SCIENCE',	'FEATURE_VOLCANIC_SOIL',	15,			1				),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'YIELD_FOOD',		'FEATURE_VOLCANIC_SOIL',	25,			1				),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'YIELD_PRODUCTION',	'FEATURE_VOLCANIC_SOIL',	25,			1				),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'YIELD_SCIENCE',	'FEATURE_VOLCANIC_SOIL',	25,			1				),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'YIELD_CULTURE',	'FEATURE_VOLCANIC_SOIL',	50,			1				);