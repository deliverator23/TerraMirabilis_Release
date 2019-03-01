/*
	Preliminaries XP2
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 												Kind			)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_GW_TOURISM',					'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_EVENT_IMMUNITY',				'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 										CollectionType, 				EffectType													)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE'	),
		('MODTYPE_TM_PLAYER_GW_TOURISM',					'COLLECTION_OWNER',				'EFFECT_ADJUST_GREAT_WORK_OBJECT_TOURISM_MODIFIER'			),
		('MODTYPE_TM_PLAYER_EVENT_IMMUNITY',				'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_RANDOM_EVENT_AVOID'					);