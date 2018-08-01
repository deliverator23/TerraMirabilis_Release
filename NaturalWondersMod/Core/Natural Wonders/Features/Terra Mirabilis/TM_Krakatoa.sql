/*
	Krakatoa
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Harbor buildings provide +2 Science in any City that owns this tile, increasing to +3 if the City has a National Park
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES',			'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_KRAKATOA'		),
		('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP',		'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_KRAKATOA_NP'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'MODTYPE_TM_CITY_YIELD_DISTRICTS',	NULL										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'MODTYPE_TM_CITY_YIELD_DISTRICTS',	NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES',			'ModifierId',	'MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP',		'ModifierId',	'MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'YieldType',	'YIELD_SCIENCE'										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'Amount',		2													),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'YieldType',	'YIELD_SCIENCE'										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'Amount',		1													);
