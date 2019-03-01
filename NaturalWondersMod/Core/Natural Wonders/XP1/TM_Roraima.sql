/*
	Roraima
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Jungle does not diminish the appeal of adjacent plots for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_RORAIMA_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_RORAIMA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_RORAIMA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_RORAIMA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_RORAIMA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_RORAIMA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_RORAIMA_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_RORAIMA'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_RORAIMA');

INSERT INTO Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_RORAIMA_JUNGLE_APPEAL',	'MODTYPE_TM_ADJUST_FEATURE_APPEAL',		NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_RORAIMA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_RORAIMA_JUNGLE_APPEAL'	
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_RORAIMA');
		
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value				)
VALUES	('MODIFIER_TM_FEATURE_RORAIMA_JUNGLE_APPEAL',	'FeatureType',	'FEATURE_JUNGLE'	),
		('MODIFIER_TM_FEATURE_RORAIMA_JUNGLE_APPEAL',	'Amount',		1					);
