/*
	Features
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types (Type, Kind)
SELECT	FeatureType, 'KIND_FEATURE'
FROM	TM_Master WHERE New = 1;

-----------------------------------------------
-- Features
-----------------------------------------------

INSERT INTO Features
		(FeatureType, Name, Description, Quote, NaturalWonder, Tiles, Impassable, Appeal, MinDistanceNW, Coast, NoCoast, Lake, NotCliff, MinDistanceLand, MaxDistanceLand, RequiresRiver, NoRiver, AddsFreshWater, NoResource, NoAdjacentFeatures, MovementChange, SightThroughModifier, DefenseModifier, Settlement, DoubleAdjacentTerrainYield, CustomPlacement, FollowRulesInWB)
SELECT	FeatureType,
		'LOC_'||FeatureType||'_NAME',
		'LOC_TM_'||FeatureType||'_DESCRIPTION',
		'LOC_TM_'||FeatureType||'_QUOTE',
		1, -- NaturalWonder
		Tiles,
		Impassable,
		Appeal,
		8, -- MinDistanceNW
		Coast,
		NoCoast,
		Lake,
		NotCliff,
		MinDistanceLand,
		MaxDistanceLand,
		RequiresRiver,
		NoRiver,
		AddsFreshWater,
		0, -- NoResource
		NoAdjacentFeatures,
		MovementChange,
		SightThroughModifier,
		DefenseModifier,
		0, -- Settlement
		DoubleAdjacentTerrainYield,
		CustomPlacement,
		0 -- FollowRulesInWB
FROM	TM_Master WHERE New = 1;

-----------------------------------------------
-- Feature_ValidTerrains
-----------------------------------------------

DELETE FROM Feature_ValidTerrains
WHERE FeatureType IN (SELECT FeatureType FROM TM_Placement WHERE Reference = 'VALID_TERRAINS');

INSERT INTO Feature_ValidTerrains
		(FeatureType,	TerrainType)
SELECT	FeatureType,	Type||'_'||Object
FROM	TM_Placement
WHERE	Reference = 'VALID_TERRAINS';

-----------------------------------------------
-- Feature_AdjacentTerrains
-----------------------------------------------

DELETE FROM Feature_AdjacentTerrains
WHERE FeatureType IN (SELECT FeatureType FROM TM_Placement WHERE Reference = 'ADJACENT_TERRAINS');

INSERT INTO Feature_AdjacentTerrains
		(FeatureType,	TerrainType)
SELECT	FeatureType,	Type||'_'||Object
FROM	TM_Placement
WHERE	Reference = 'ADJACENT_TERRAINS';

-----------------------------------------------
-- Feature_NotAdjacentTerrains
-----------------------------------------------

DELETE FROM Feature_NotAdjacentTerrains
WHERE FeatureType IN (SELECT FeatureType FROM TM_Placement WHERE Reference = 'NOT_ADJACENT_TERRAINS');

INSERT INTO Feature_NotAdjacentTerrains
		(FeatureType,	TerrainType)
SELECT	FeatureType,	Type||'_'||Object
FROM	TM_Placement
WHERE	Reference = 'NOT_ADJACENT_TERRAINS';

-----------------------------------------------
-- Feature_AdjacentFeatures
-----------------------------------------------

DELETE FROM Feature_AdjacentFeatures
WHERE FeatureType IN (SELECT FeatureType FROM TM_Placement WHERE Reference = 'ADJACENT_FEATURES');

INSERT INTO Feature_AdjacentFeatures
		(FeatureType,	FeatureTypeAdjacent)
SELECT	FeatureType,	Type||'_'||Object
FROM	TM_Placement
WHERE	Reference = 'ADJACENT_FEATURES';

-----------------------------------------------
-- Feature_YieldChanges
-----------------------------------------------

DELETE FROM Feature_YieldChanges
WHERE FeatureType IN (SELECT FeatureType FROM TM_FeatureYields WHERE Impassable = 0)
AND EXISTS (SELECT FeatureType FROM Features WHERE FeatureType = (SELECT FeatureType FROM TM_FeatureYields));

INSERT INTO Feature_YieldChanges (FeatureType, YieldType, YieldChange)
SELECT	FeatureType, YieldType, YieldChange
FROM TM_FeatureYields WHERE Impassable = 0
AND EXISTS (SELECT FeatureType FROM Features WHERE FeatureType = (SELECT FeatureType FROM TM_FeatureYields));

-----------------------------------------------
-- Feature_AdjacentYields
-----------------------------------------------

DELETE FROM Feature_AdjacentYields
WHERE FeatureType IN (SELECT FeatureType FROM TM_FeatureYields WHERE Impassable = 1)
AND EXISTS (SELECT FeatureType FROM Features WHERE FeatureType = (SELECT FeatureType FROM TM_FeatureYields));

INSERT INTO Feature_AdjacentYields (FeatureType, YieldType, YieldChange)
SELECT	FeatureType, YieldType, YieldChange
FROM TM_FeatureYields WHERE Impassable = 1
AND EXISTS (SELECT FeatureType FROM Features WHERE FeatureType = (SELECT FeatureType FROM TM_FeatureYields));