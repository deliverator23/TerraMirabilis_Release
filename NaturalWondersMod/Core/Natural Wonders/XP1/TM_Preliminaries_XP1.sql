/*
	Preliminaries XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 									Kind			)
VALUES	('MODTYPE_TM_PLAYER_PLOT_PURCHASE',		'KIND_MODIFIER'	),
		('MODTYPE_TM_GP_BOOST',					'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_PLAYER_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_GPP_MODIFIER',				'KIND_MODIFIER'	),
		('MODTYPE_TM_ERA_SCORE',				'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 							CollectionType, 				EffectType											)
VALUES	('MODTYPE_TM_PLAYER_PLOT_PURCHASE',		'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_PLOT_PURCHASE_COST'					),
		('MODTYPE_TM_GP_BOOST',					'COLLECTION_OWNER',				'EFFECT_GRANT_BOOST_WITH_GREAT_PERSON'				),
		('MODTYPE_TM_ADJUST_PLAYER_YIELD',		'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_YIELD_CHANGE'					),
		('MODTYPE_TM_GPP_MODIFIER',				'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_GREAT_PERSON_POINTS_MODIFIER'	),
		('MODTYPE_TM_ERA_SCORE',				'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_ERA_SCORE_PER_PRIDE_MOMENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType	)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,	'REQUIREMENTSET_TEST_ALL'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId							)
VALUES	('REQSET_TM_DISTRICT_IS_ENTERTAINMENT',	'REQ_TM_DISTRICT_IS_WATER_PARK'			);
		
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,	'REQ_TM_IS_'||ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 					RequirementType,						Inverse	)
VALUES	('REQ_TM_DISTRICT_IS_WATER_PARK',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',	0		);

INSERT INTO Requirements
		(RequirementId, 			RequirementType	)
SELECT	'REQ_TM_IS_'||ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 					Name,			Value									)
VALUES	('REQ_TM_DISTRICT_IS_WATER_PARK',	'DistrictType',	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'	);

INSERT INTO RequirementArguments
		(RequirementId, 			Name,			Value	)
SELECT	'REQ_TM_IS_'||ResourceType,	'ResourceType',	ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';