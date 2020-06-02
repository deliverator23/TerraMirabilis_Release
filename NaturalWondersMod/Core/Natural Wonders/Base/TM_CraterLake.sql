/*
	Crater Lake
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: May purchase any Building with Faith in the City that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_CRATER_LAKE';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_CRATER_LAKE_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_CRATER_LAKE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT DISTINCT	'MODIFIER_TM_FEATURE_CRATER_LAKE_ATTACH_'||PrereqDistrict
	FROM	Buildings
	WHERE	PrereqDistrict IS NOT NULL
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_CRATER_LAKE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_TM_FEATURE_CRATER_LAKE_ATTACH_'||PrereqDistrict,
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_CRATER_LAKE',
		'REQSET_TM_CITY_HAS_FEATURE_CRATER_LAKE'
FROM	Buildings
WHERE	PrereqDistrict IS NOT NULL;
		
INSERT INTO Modifiers (ModifierId, ModifierType)
SELECT DISTINCT
		'MODIFIER_TM_FEATURE_CRATER_LAKE_'||PrereqDistrict,
		'MODIFIER_CITY_ENABLE_BUILDING_FAITH_PURCHASE'
FROM	Buildings
WHERE	PrereqDistrict IS NOT NULL;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_TM_FEATURE_CRATER_LAKE_ATTACH_'||PrereqDistrict,
		'ModifierId',
		'MODIFIER_TM_FEATURE_CRATER_LAKE_'||PrereqDistrict
FROM	Buildings
WHERE	PrereqDistrict IS NOT NULL;
		
INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_TM_FEATURE_CRATER_LAKE_'||PrereqDistrict,
		'DistrictType',
		PrereqDistrict
FROM	Buildings
WHERE	PrereqDistrict IS NOT NULL;
