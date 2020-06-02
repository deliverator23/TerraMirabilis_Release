/*
	Common XP2
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 												Kind			)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_GW_TOURISM',					'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_EVENT_IMMUNITY',				'KIND_MODIFIER'	),
		('MODTYPE_TM_NATIONAL_PARK_TOURISM',				'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 										CollectionType, 				EffectType													)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE'	),
		('MODTYPE_TM_PLAYER_GW_TOURISM',					'COLLECTION_OWNER',				'EFFECT_ADJUST_GREAT_WORK_OBJECT_TOURISM_MODIFIER'			),
		('MODTYPE_TM_PLAYER_EVENT_IMMUNITY',				'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_RANDOM_EVENT_AVOID'					),
		('MODTYPE_TM_NATIONAL_PARK_TOURISM',				'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_NATIONAL_PARK_TOURISM'					);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId							)
VALUES	('REQSET_TM_PLOT_HAS_FLOODPLAINS',	'REQ_TM_PLOT_HAS_FLOODPLAINS_GRASS'		),
		('REQSET_TM_PLOT_HAS_FLOODPLAINS',	'REQ_TM_PLOT_HAS_FLOODPLAINS_PLAINS'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 						RequirementType,							Inverse	)
VALUES	('REQ_TM_PLOT_HAS_FLOODPLAINS_GRASS',	'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',	0		),
		('REQ_TM_PLOT_HAS_FLOODPLAINS_PLAINS',	'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 						Name,			Value								)
VALUES	('REQ_TM_PLOT_HAS_FLOODPLAINS_GRASS',	'FeatureType',	'FEATURE_FLOODPLAINS_GRASSLAND'		),
		('REQ_TM_PLOT_HAS_FLOODPLAINS_PLAINS',	'FeatureType',	'FEATURE_FLOODPLAINS_PLAINS'		);