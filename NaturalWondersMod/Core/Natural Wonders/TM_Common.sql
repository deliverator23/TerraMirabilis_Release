/*
	Common
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 										Kind			)
VALUES	('MODTYPE_TM_FEATURE_ADJACENCY',			'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_CITY_POPULATION',		'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_MIRROR_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_REGIONAL_AMENITIES',			'KIND_MODIFIER'	),
		('MODTYPE_TM_INITIATION_YIELD',				'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'KIND_MODIFIER'	),
		('MODTYPE_TM_GRANT_UNIT_EXPERIENCE',		'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 								CollectionType, 					EffectType												)
VALUES	('MODTYPE_TM_FEATURE_ADJACENCY',			'COLLECTION_PLAYER_CITIES',			'EFFECT_FEATURE_ADJACENCY'								),
		('MODTYPE_TM_DISTRICT_CITY_POPULATION',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ADJUST_CITY_POPULATION'							),
		('MODTYPE_TM_DISTRICT_MIRROR_YIELD',		'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_YIELD_BASED_ON_ADJACENCY_BONUS'	),
		('MODTYPE_TM_REGIONAL_AMENITIES',			'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_EXTRA_REGIONAL_ENTERTAINMENT'	),
		('MODTYPE_TM_INITIATION_YIELD',				'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_INITIATION_YIELD'					),
		('MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_IGNORE_TERRAIN_COST'				),
		('MODTYPE_TM_GRANT_UNIT_EXPERIENCE',		'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ADJUST_UNIT_GRANT_EXPERIENCE'					);
		
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_TM_PLOT_IS_DESERT',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_IS_HILLS',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_ANTIQUITY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_FLOODPLAINS',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_LUMBER_MILL',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_UNIT_IS_RELIGIOUS',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_UNIT_IS_NAVAL',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_ENTERTAINMENT',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_HAS_ADJ_NATURAL_WONDER',		'REQUIREMENTSET_TEST_ANY'	);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_MAP_HAS_'||FeatureType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_PLAYER_HAS_'||FeatureType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',
		'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_IS_'||FeatureType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId									)
VALUES	('REQSET_TM_PLOT_IS_DESERT',				'REQUIRES_PLOT_HAS_DESERT'						),
		('REQSET_TM_PLOT_IS_DESERT',				'REQUIRES_PLOT_HAS_DESERT_HILLS'				),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQUIRES_PLOT_HAS_TUNDRA'						),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQUIRES_PLOT_HAS_TUNDRA_HILLS'				),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_SNOW'							),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_SNOW_HILLS'						),
		('REQSET_TM_PLOT_IS_HILLS',					'PLOT_IS_HILLS_REQUIREMENT'						),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQUIRES_PLOT_HAS_BONUS'						),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQ_TM_PLOT_HAS_IMPROVEMENT'					),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQUIRES_PLOT_ADJACENT_TO_RIVER'				),
		('REQSET_TM_PLOT_HAS_LUMBER_MILL',			'REQ_TM_PLOT_HAS_LUMBER_MILL'					),
		('REQSET_TM_PLOT_HAS_ANTIQUITY',			'REQ_TM_PLOT_HAS_ANTIQUITY'						),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQUIRES_PLOT_HAS_BONUS'						),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQUIRES_PLOT_HAS_STRATEGIC'					),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQUIRES_PLOT_HAS_LUXURY'						),
		('REQSET_TM_PLOT_HAS_FLOODPLAINS',			'REQ_TM_PLOT_HAS_FLOODPLAINS'					),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',	'REQUIRES_PLOT_HAS_FARM'						),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',	'REQUIRES_PLOT_ADJACENT_TO_FARM'				),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQUIRES_PLOT_HAS_COAST'						),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQ_TM_PLOT_HAS_RESOURCE'						),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQ_TM_PLOT_HAS_IMPROVEMENT'					),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',	'REQUIRES_PLOT_ADJACENT_TO_RIVER'				),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',	'REQ_TM_PLOT_IS_BREATHTAKING'					),
		('REQSET_TM_UNIT_IS_RELIGIOUS',				'REQUIRES_RELIGIOUS_UNIT'						),
		('REQSET_TM_UNIT_IS_NAVAL',					'REQ_TM_UNIT_IS_NAVAL'							),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_HOLY_SITE'				),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_CAMPUS'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_THEATER'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_COMMERCIAL_HUB'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_HARBOR'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQUIRES_DISTRICT_IS_ENCAMPMENT'				),
		('REQSET_TM_DISTRICT_IS_ENTERTAINMENT',		'REQUIRES_DISTRICT_IS_ENTERTAINMENT_COMPLEX'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',	'REQ_TM_DISTRICT_IS_SPECIALTY'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',	'REQ_TM_PLOT_IS_DESERT_MET'						),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',	'REQ_TM_DISTRICT_IS_SPECIALTY'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',	'REQ_TM_PLOT_IS_TUNDRA_SNOW_MET'				);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_MAP_HAS_'||FeatureType,
		'REQ_TM_MAP_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||FeatureType,
		'REQ_TM_PLAYER_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType,
		'REQ_TM_CITY_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',
		'REQ_TM_CITY_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',
		'REQUIRES_CITY_HAS_NATIONAL_PARK'
FROM	Features WHERE NaturalWonder = 1;
		
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_IS_'||FeatureType,
		'REQ_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_HAS_ADJ_NATURAL_WONDER',
		'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,
		'REQ_TM_IS_'||ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 					RequirementType,								Inverse	)
VALUES	('REQ_TM_PLOT_IS_GRASS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_GRASS_HILLS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_PLAINS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_PLAINS_HILLS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_SNOW',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_SNOW_HILLS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_TUNDRA_SNOW_MET',	'REQUIREMENT_REQUIREMENTSET_IS_MET',			0		),
		('REQ_TM_PLOT_IS_DESERT_MET',		'REQUIREMENT_REQUIREMENTSET_IS_MET',			0		),
		('REQ_TM_PLOT_HAS_FLOODPLAINS',		'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_IS_BREATHTAKING',		'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN',			0		),
		('REQ_TM_PLOT_HAS_ANTIQUITY',		'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',		0		),
		('REQ_TM_PLOT_HAS_RESOURCE',		'REQUIREMENT_REQUIREMENTSET_IS_MET',			0		),
		('REQ_TM_PLOT_HAS_IMPROVEMENT',		'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',			0		),
		('REQ_TM_PLOT_HAS_LUMBER_MILL',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',	0		),
		('REQ_TM_UNIT_IS_LAND',				'REQUIREMENT_UNIT_DOMAIN_MATCHES',				0		),
		('REQ_TM_UNIT_IS_NAVAL',			'REQUIREMENT_UNIT_DOMAIN_MATCHES',				0		),
		('REQ_TM_DISTRICT_IS_SPECIALTY',	'REQUIREMENT_REQUIREMENTSET_IS_MET',			0		);
		
INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_MAP_HAS_'||FeatureType,
		'REQUIREMENT_MAP_HAS_FEATURE' 
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType,
		'REQUIREMENT_COLLECTION_COUNT_ATLEAST' 
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,
		'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_IS_'||FeatureType,
		'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,
		'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_TM_IS_'||ResourceType,
		'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 						Name,					Value								)
VALUES	('REQ_TM_PLOT_IS_GRASS',				'TerrainType',			'TERRAIN_GRASS'						),
		('REQ_TM_PLOT_IS_GRASS_HILLS',			'TerrainType',			'TERRAIN_GRASS_HILLS'				),
		('REQ_TM_PLOT_IS_PLAINS',				'TerrainType',			'TERRAIN_PLAINS'					),
		('REQ_TM_PLOT_IS_PLAINS_HILLS',			'TerrainType',			'TERRAIN_PLAINS_HILLS'				),
		('REQ_TM_PLOT_IS_TUNDRA_SNOW_MET',		'RequirementSetId',		'REQSET_TM_PLOT_IS_TUNDRA_SNOW'		),
		('REQ_TM_PLOT_IS_SNOW',					'TerrainType',			'TERRAIN_SNOW'						),
		('REQ_TM_PLOT_IS_SNOW_HILLS',			'TerrainType',			'TERRAIN_SNOW_HILLS'				),
		('REQ_TM_PLOT_IS_DESERT_MET',			'RequirementSetId',		'REQSET_TM_PLOT_IS_DESERT'			),
		('REQ_TM_PLOT_IS_BREATHTAKING',			'MinimumAppeal',		4									),
		('REQ_TM_PLOT_HAS_FLOODPLAINS',			'FeatureType',			'FEATURE_FLOODPLAINS'				),
		('REQ_TM_PLOT_HAS_ANTIQUITY',			'ResourceType',			'RESOURCE_ANTIQUITY_SITE'			),
		('REQ_TM_PLOT_HAS_RESOURCE',			'RequirementSetId',		'REQSET_TM_PLOT_HAS_RESOURCE'		),
		('REQ_TM_PLOT_HAS_LUMBER_MILL',			'ImprovementType',		'IMPROVEMENT_LUMBER_MILL'			),
		('REQ_TM_UNIT_IS_LAND',					'UnitDomain',			'DOMAIN_LAND'						),
		('REQ_TM_UNIT_IS_NAVAL',				'UnitDomain',			'DOMAIN_SEA'						),
		('REQ_TM_DISTRICT_IS_SPECIALTY',		'RequirementSetId',		'REQSET_TM_DISTRICT_IS_SPECIALTY'	);
		
INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_MAP_HAS_'||FeatureType,
		'FeatureType',
		FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType,
		'CollectionType',
		'COLLECTION_PLAYER_PLOT_YIELDS'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType,
		'Count',
		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType,
		'RequirementSetId',
		'REQSET_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;
		
INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,
		'CollectionType',
		'COLLECTION_CITY_PLOT_YIELDS'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,
		'Count',
		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,
		'RequirementSetId',
		'REQSET_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_IS_'||FeatureType,
		'FeatureType',
		FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,
		'FeatureType',
		FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,
		'MinRange',
		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,
		'MaxRange',
		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_TM_IS_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Triggers
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS TM_RetbaResource_Trigger
AFTER INSERT ON Resources WHEN NEW.ResourceClassType = 'RESOURCECLASS_LUXURY'
BEGIN
	
	INSERT INTO RequirementSets
			(RequirementSetId,							RequirementSetType			)
	VALUES	('REQSET_TM_PLAYER_HAS_'||NEW.ResourceType,	'REQUIREMENTSET_TEST_ALL'	);

	INSERT INTO RequirementSetRequirements
			(RequirementSetId,							RequirementId					)
	VALUES	('REQSET_TM_PLAYER_HAS_'||NEW.ResourceType,	'REQ_TM_IS_'||NEW.ResourceType	);

	INSERT INTO Requirements
			(RequirementId, 					RequirementType							)
	VALUES	('REQ_TM_IS_'||NEW.ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'	);

	INSERT INTO RequirementArguments
			(RequirementId, 					Name,			Value				)
	VALUES	('REQ_TM_IS_'||NEW.ResourceType,	'ResourceType',	NEW.ResourceType	);

END;