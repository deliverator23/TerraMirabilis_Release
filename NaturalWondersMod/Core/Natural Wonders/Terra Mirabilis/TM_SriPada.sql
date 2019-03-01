/*
	Sri Pada
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Religious units from any Civilization that owns this tile receive [ICON_Culture] Culture upon converting a City to their [ICON_Religion] Religion for the first time.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SRI_PADA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_SRI_PADA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_SRI_PADA'	),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'MODTYPE_TM_INITIATION_YIELD',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value										)
VALUES	('MODIFIER_TM_FEATURE_SRI_PADA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_SRI_PADA_INITIATION'	),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'YieldType',	'YIELD_CULTURE'								),
		('MODIFIER_TM_FEATURE_SRI_PADA_INITIATION',		'Amount',		75											);
