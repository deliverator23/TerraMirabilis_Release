/*
	Sri Pada
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Religious units trained in the City that owns this tile receive Culture upon converting a City to their Religion.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SRI_PADA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_SRI_PADA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_CITIES',	'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_SRI_PADA'	),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'MODTYPE_TM_INITIATION_YIELD',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value										)
VALUES	('MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_CITIES',	'ModifierId',	'MODIFIER_TM_FEATURE_SRI_PADA_INITIATION'	),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'YieldType',	'YIELD_CULTURE'								),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'Amount',		75											);
