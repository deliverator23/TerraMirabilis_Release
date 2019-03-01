/*
	Everest
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Religious units ignore [ICON_Movement] Movement penalties on Hills and receive +1 additional spread charge for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_EVEREST_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_EVEREST';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EVEREST_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EVEREST'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_MOVEMENT'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EVEREST')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EVEREST')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'EVEREST_ADJACENT_UNITS_GRANT_ABILITY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,								SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_MOVEMENT',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',			'REQSET_TM_PLAYER_HAS_FEATURE_EVEREST'	),
		('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',			'REQSET_TM_PLAYER_HAS_FEATURE_EVEREST'	),
		('MODIFIER_TM_FEATURE_EVEREST_MOVEMENT',				'MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'REQSET_TM_UNIT_IS_RELIGIOUS'			),
		('MODIFIER_TM_FEATURE_EVEREST_SPREAD',					'MODTYPE_TM_ADJUST_UNIT_SPREAD',			'REQSET_TM_UNIT_IS_RELIGIOUS'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value									)
VALUES	('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_MOVEMENT',	'ModifierId',	'MODIFIER_TM_FEATURE_EVEREST_MOVEMENT'	),
		('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD',	'ModifierId',	'MODIFIER_TM_FEATURE_EVEREST_SPREAD'	),
		('MODIFIER_TM_FEATURE_EVEREST_MOVEMENT',				'Ignore',		1										),
		('MODIFIER_TM_FEATURE_EVEREST_MOVEMENT',				'Type',			'HILLS'									),
		('MODIFIER_TM_FEATURE_EVEREST_SPREAD',					'Amount',		1										);
