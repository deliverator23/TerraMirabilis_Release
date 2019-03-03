/*
	Matterhorn
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Units ignore Movement penalties on Hills.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_MATTERHORN_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_MATTERHORN';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_MATTERHORN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_MATTERHORN'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId IN ('MATTERHORN_ADJACENT_UNITS_GRANT_ABILITY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',			'REQSET_TM_PLAYER_HAS_FEATURE_MATTERHORN'	),
		('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',			'MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value										)
VALUES	('MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT'	),
		('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',			'Ignore',		1											),
		('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',			'Type',			'HILLS'										);
