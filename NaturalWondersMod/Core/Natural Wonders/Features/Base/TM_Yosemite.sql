/*
	Yosemite
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Forest provides an additional +1 Appeal to adjacent plots for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_YOSEMITE_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_YOSEMITE';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_YOSEMITE_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_YOSEMITE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_YOSEMITE_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_YOSEMITE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_YOSEMITE_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_YOSEMITE'	),
		('MODIFIER_TM_FEATURE_YOSEMITE_FOREST_APPEAL',	'MODTYPE_TM_ADJUST_FEATURE_APPEAL',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_YOSEMITE_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_YOSEMITE_FOREST_APPEAL'	),
		('MODIFIER_TM_FEATURE_YOSEMITE_FOREST_APPEAL',	'FeatureType',	'FEATURE_FOREST'								),
		('MODIFIER_TM_FEATURE_YOSEMITE_FOREST_APPEAL',	'Amount',		1												);
