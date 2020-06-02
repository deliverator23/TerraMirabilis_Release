/*
	Ik Kil
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: +15% Production toward Wonders for any Civilization that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_IK_KIL_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_IKKIL';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_IKKIL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_IK_KIL_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_IKKIL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect
	DELETE FROM GameModifiers
	WHERE ModifierId = 'IKKIL_PRODUCTION_WONDER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'IKKIL_PRODUCTION_DISTRICT'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_IKKIL_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_IKKIL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,				SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_IK_KIL_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'REQSET_TM_MAP_HAS_FEATURE_IKKIL',	'REQSET_TM_PLAYER_HAS_FEATURE_IKKIL'	),
		('MODIFIER_TM_FEATURE_IK_KIL_WONDER_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_PRODUCTION',	NULL,								NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_IK_KIL_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_IK_KIL_WONDER_PRODUCTION'	),
		('MODIFIER_TM_FEATURE_IK_KIL_WONDER_PRODUCTION',	'Amount',		15												);
