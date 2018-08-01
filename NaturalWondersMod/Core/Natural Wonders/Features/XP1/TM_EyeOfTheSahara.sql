/*
	Eye of the Sahara
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns at least one of these tiles receives +2 Era Score from Historic Moments if that Moment is usually worth at least +4 Era Score.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_EYE_OF_THE_SAHARA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EYE_OF_THE_SAHARA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EYE_OF_THE_SAHARA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId IN ('EYESAHARA_PRODUCTION_ATOMIC', 'EYESAHARA_SCIENCE_ATOMIC')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,						SubjectRequirementSetId								)
VALUES	('MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_EYE_OF_THE_SAHARA'	),
		('MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ERA_SCORE',			'MODTYPE_TM_ERA_SCORE',				NULL												);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ERA_SCORE'	),
		('MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ERA_SCORE',			'Amount',		2													),
		('MODIFIER_TM_FEATURE_EYE_OF_THE_SAHARA_ERA_SCORE',			'MinScore',		4													);
