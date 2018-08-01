/*
	Torres Del Paine
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any City that owns at least one of these tiles may build one extra District than the Population would normally allow.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_TORRES_DEL_PAINE';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_TORRES_DEL_PAINE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_TORRES_DEL_PAINE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_ATTACH_CITIES',	'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_TORRES_DEL_PAINE'	),
		('MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_EXTRA_DISTRICT',	'MODTYPE_TM_CITY_EXTRA_DISTRICTS',	NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_ATTACH_CITIES',	'ModifierId',	'MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_EXTRA_DISTRICT'	),
		('MODIFIER_TM_FEATURE_TORRES_DEL_PAINE_EXTRA_DISTRICT',	'Amount',		1														);
