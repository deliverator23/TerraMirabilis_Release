/*
	Cliffs of Dover
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Harbors receive standard adjacency bonuses from Cliffs for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_CLIFFS_DOVER';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_CLIFFS_DOVER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ATTACH_ADJACENCY_'||TerrainType
	FROM	Terrains
	WHERE Hills = 1
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_CLIFFS_DOVER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ATTACH_ADJACENCY_'||TerrainType,
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_CLIFFS_DOVER',
		'REQSET_TM_PLAYER_HAS_FEATURE_CLIFFS_DOVER'
FROM	Terrains WHERE Hills = 1;
		
INSERT INTO Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'
FROM	Terrains WHERE Hills = 1;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ATTACH_ADJACENCY_'||TerrainType,
		'ModifierId',
		'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'DistrictType',
		'DISTRICT_HARBOR'
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'Amount',
		1
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,	
		'YieldType',
		'YIELD_GOLD'
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'TerrainType',
		TerrainType
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'TilesRequired',
		2
FROM	Terrains WHERE Hills = 1;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_'||TerrainType,
		'Description',
		'LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION'
FROM	Terrains WHERE Hills = 1;