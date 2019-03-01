/*
	Kilimanjaro
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Receive +1 Population in the City that owns this tile when a Specialty District is constructed
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_KILIMANJARO';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KILIMANJARO_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KILIMANJARO'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KILIMANJARO_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_KILIMANJARO')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,							SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_KILIMANJARO_ATTACH_CITIES',		'MODTYPE_TM_ATTACH_ALL_CITIES',			'REQSET_TM_CITY_HAS_FEATURE_KILIMANJARO'	),
		('MODIFIER_TM_FEATURE_KILIMANJARO_ADJUST_POPULATION',	'MODTYPE_TM_DISTRICT_CITY_POPULATION',	'REQSET_TM_DISTRICT_IS_SPECIALTY'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_KILIMANJARO_ATTACH_CITIES',		'ModifierId',	'MODIFIER_TM_FEATURE_KILIMANJARO_ADJUST_POPULATION'	),
		('MODIFIER_TM_FEATURE_KILIMANJARO_ADJUST_POPULATION',	'Amount',		1													);
