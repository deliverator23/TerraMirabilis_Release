/*
	Globals
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Natural Wonder Minimum Distance
-----------------------------------------------

	UPDATE Features
	SET MinDistanceNW = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDER_DISTANCE')
	WHERE NaturalWonder = 1;

-----------------------------------------------
-- Natural Wonders In Game
-----------------------------------------------

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_DUEL')
	WHERE	MapSizeType = 'MAPSIZE_DUEL';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_TINY')
	WHERE	MapSizeType = 'MAPSIZE_TINY';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_SMALL')
	WHERE	MapSizeType = 'MAPSIZE_SMALL';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_STANDARD')
	WHERE	MapSizeType = 'MAPSIZE_STANDARD';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_LARGE')
	WHERE	MapSizeType = 'MAPSIZE_LARGE';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_HUGE')
	WHERE	MapSizeType = 'MAPSIZE_HUGE';

-----------------------------------------------
-- Naturalist purchase with Gold AND Faith
-----------------------------------------------

	INSERT INTO Tags
			(Tag,					Vocabulary		)
	VALUES	('CLASS_TM_NATURLIST',	'ABILITY_CLASS'	);

	INSERT INTO TypeTags
			(Type,				Tag						)
	VALUES	('UNIT_NATURALIST',	'CLASS_TM_NATURLIST'	);

	UPDATE	Units
	SET		PurchaseYield = 'YIELD_GOLD'
	WHERE	UnitType = 'UNIT_NATURALIST';

	INSERT INTO TraitModifiers
			(TraitType,					ModifierId								)
	VALUES	('TRAIT_LEADER_MAJOR_CIV',	'MODIFIER_TM_NATURALIST_FAITH_PURCHASE'	);

	INSERT INTO Modifiers
			(ModifierId,								ModifierType						)
	VALUES	('MODIFIER_TM_NATURALIST_FAITH_PURCHASE',	'MODTYPE_TM_UNIT_FAITH_PURCHASE'	);

	INSERT INTO ModifierArguments
			(ModifierId,								Name,	Value					)
	VALUES	('MODIFIER_TM_NATURALIST_FAITH_PURCHASE',	'Tag',	'CLASS_TM_NATURLIST'	);
/*
	UPDATE	Units
	SET		PurchaseYield = (SELECT Section FROM TM_UserSettings WHERE Setting = 'NATURALIST_PURCHASE')			
	WHERE	UnitType = 'UNIT_NATURALIST';
	
	UPDATE	Units
	SET		Description = (SELECT 'LOC_TM_UNIT_NATURALIST_DESCRIPTION' FROM TM_UserSettings WHERE Setting = 'NATURALIST_PURCHASE' AND Section = 'YIELD_GOLD')			
	WHERE	UnitType = 'UNIT_NATURALIST'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NATURALIST_PURCHASE' AND Section = 'YIELD_GOLD');
*/
-----------------------------------------------
-- National Parks provide Gold equal to their tourism
-----------------------------------------------

	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'PARK_GOLD_TOURISM')
	WHERE	Name = 'NATIONAL_PARK_GOLD_YIELD_PER_TOURISM';

-----------------------------------------------
-- Number of Amenities National Parks provide to their City
-----------------------------------------------
	
	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'PARK_AMENITIES')
	WHERE	Name = 'NATIONAL_PARK_AMENITIES_OWNING_CITY';

-----------------------------------------------
-- Start Distance between Major Civilization and Natural Wonder
-----------------------------------------------

	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'START_DISTANCE_MAJOR')
	WHERE	Name = 'START_DISTANCE_MAJOR_NATURAL_WONDER';

	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'START_DISTANCE_MINOR')
	WHERE	Name = 'START_DISTANCE_MINOR_NATURAL_WONDER';

-----------------------------------------------
-- Experience earned for discovering Natural Wonder
-----------------------------------------------

	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'NW_REVEAL_XP')
	WHERE	Name = 'EXPERIENCE_REVEAL_NATURAL_WONDER';

-----------------------------------------------
-- Natural Wonder adjacent fertility
-----------------------------------------------

	UPDATE	GlobalParameters
	SET		Value = (SELECT Value FROM TM_UserSettings WHERE Setting = 'NW_FERTILITY')
	WHERE	Name = 'NATURAL_WONDER_ADJACENT_FERTILITY';

-----------------------------------------------
-- Natural Wonders provide Adjacency Bonuses to all Specialty Districts
-----------------------------------------------

	INSERT INTO Adjacency_YieldChanges
			(ID,						Description,							YieldType,			YieldChange,	TilesRequired,	AdjacentNaturalWonder	)
	VALUES	('ADJ_TM_NW_FAITH',			'LOC_TM_ADJ_NW_FAITH_DESCRIPTION',		'YIELD_FAITH',		1,				1,				1						),
			('ADJ_TM_NW_SCIENCE',		'LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION',	'YIELD_SCIENCE',	1,				1,				1						),
			('ADJ_TM_NW_CULTURE',		'LOC_TM_ADJ_NW_CULTURE_DESCRIPTION',	'YIELD_CULTURE',	1,				1,				1						),
			('ADJ_TM_NW_PRODUCTION',	'LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION',	'YIELD_PRODUCTION',	1,				1,				1						),
			('ADJ_TM_NW_GOLD',			'LOC_TM_ADJ_NW_GOLD_DESCRIPTION',		'YIELD_GOLD',		1,				1,				1						);
	
	DELETE FROM District_Adjacencies
	WHERE YieldChangeId = 'NaturalWonder_Faith'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

	INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	SELECT	DistrictType, 'ADJ_TM_NW_FAITH'
	FROM	Districts WHERE DistrictType = 'DISTRICT_HOLY_SITE' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_HOLY_SITE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

	INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	SELECT	DistrictType, 'ADJ_TM_NW_SCIENCE'
	FROM	Districts WHERE DistrictType = 'DISTRICT_CAMPUS' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_CAMPUS')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

	INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	SELECT	DistrictType, 'ADJ_TM_NW_CULTURE'
	FROM	Districts WHERE DistrictType = 'DISTRICT_THEATER' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_THEATER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

	INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	SELECT	DistrictType, 'ADJ_TM_NW_PRODUCTION'
	FROM	Districts WHERE DistrictType = 'DISTRICT_INDUSTRIAL_ZONE' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_INDUSTRIAL_ZONE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

	INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	SELECT	DistrictType, 'ADJ_TM_NW_GOLD'
	FROM	Districts WHERE DistrictType IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR') OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR'))
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY' AND Value = 1);

-----------------------------------------------
-- Buildings in Specialty Districts increase the base yield of the district by +1 when adjacent to a Natural Wonder
-----------------------------------------------

	INSERT INTO BuildingModifiers (BuildingType, ModifierId)
	SELECT	BuildingType,	'MODIFIER_TM_FAITH_'||BuildingType
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_HOLY_SITE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);
	
	INSERT INTO BuildingModifiers (BuildingType, ModifierId)
	SELECT	BuildingType,	'MODIFIER_TM_SCIENCE_'||BuildingType
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_CAMPUS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);
	
	INSERT INTO BuildingModifiers (BuildingType, ModifierId)
	SELECT	BuildingType,	'MODIFIER_TM_CULTURE_'||BuildingType
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_THEATER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO BuildingModifiers (BuildingType, ModifierId)
	SELECT	BuildingType,	'MODIFIER_TM_PRODUCTION_'||BuildingType
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO BuildingModifiers (BuildingType, ModifierId)
	SELECT	BuildingType,	'MODIFIER_TM_GOLD_'||BuildingType
	FROM	Buildings WHERE PrereqDistrict IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);


	INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	SELECT	'MODIFIER_TM_FAITH_'||BuildingType, 'MODTYPE_TM_DISTRICT_BASE_YIELD', 'REQSET_TM_HAS_ADJ_NATURAL_WONDER'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_HOLY_SITE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	SELECT	'MODIFIER_TM_SCIENCE_'||BuildingType, 'MODTYPE_TM_DISTRICT_BASE_YIELD', 'REQSET_TM_HAS_ADJ_NATURAL_WONDER'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_CAMPUS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	SELECT	'MODIFIER_TM_CULTURE_'||BuildingType, 'MODTYPE_TM_DISTRICT_BASE_YIELD', 'REQSET_TM_HAS_ADJ_NATURAL_WONDER'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_THEATER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	SELECT	'MODIFIER_TM_PRODUCTION_'||BuildingType, 'MODTYPE_TM_DISTRICT_BASE_YIELD', 'REQSET_TM_HAS_ADJ_NATURAL_WONDER'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	SELECT	'MODIFIER_TM_GOLD_'||BuildingType, 'MODTYPE_TM_DISTRICT_BASE_YIELD', 'REQSET_TM_HAS_ADJ_NATURAL_WONDER'
	FROM	Buildings WHERE PrereqDistrict IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);


	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_FAITH_'||BuildingType, 'YieldType', 'YIELD_FAITH'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_HOLY_SITE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_FAITH_'||BuildingType, 'Amount', 1
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_HOLY_SITE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_SCIENCE_'||BuildingType, 'YieldType', 'YIELD_SCIENCE'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_CAMPUS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_SCIENCE_'||BuildingType, 'Amount', 1
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_CAMPUS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_CULTURE_'||BuildingType, 'YieldType', 'YIELD_CULTURE'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_THEATER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_CULTURE_'||BuildingType, 'Amount', 1
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_THEATER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_PRODUCTION_'||BuildingType, 'YieldType', 'YIELD_PRODUCTION'
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_PRODUCTION_'||BuildingType, 'Amount', 1
	FROM	Buildings WHERE PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_GOLD_'||BuildingType, 'YieldType', 'YIELD_GOLD'
	FROM	Buildings WHERE PrereqDistrict IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

	INSERT INTO ModifierArguments (ModifierId, Name, Value)
	SELECT	'MODIFIER_TM_GOLD_'||BuildingType, 'Amount', 1
	FROM	Buildings WHERE PrereqDistrict IN ('DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_ADJACENCY_BUILDING' AND Value = 1);

-----------------------------------------------
-- Natural Wonders Enabled/Disabled
-----------------------------------------------

	DELETE FROM Types
	WHERE Type IN (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation))
	AND Kind = 'KIND_FEATURE';

	DELETE FROM Features
	WHERE FeatureType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

	DELETE FROM Feature_YieldChanges
	WHERE FeatureType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

	DELETE FROM Feature_AdjacentYields
	WHERE FeatureType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

	DELETE FROM Feature_ValidTerrains
	WHERE FeatureType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

	DELETE FROM Feature_AdjacentTerrains
	WHERE FeatureType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

	DELETE FROM GameModifiers
	WHERE ModifierId IN (SELECT a.*
						FROM GameModifiers AS a
						WHERE EXISTS
							(SELECT *
							FROM TM_UserSettings AS s
							WHERE a.ModifierId LIKE '%' || s.Setting || '%'
							AND s.Section = 'DISABLED'
							)
						);

	-- Special Case for Bioluminescent Bay
	DELETE FROM ImprovementModifiers
	WHERE ModifierId IN ('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_OUTGOING_TRADE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);
