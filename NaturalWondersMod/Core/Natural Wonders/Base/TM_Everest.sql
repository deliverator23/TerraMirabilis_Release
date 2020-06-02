/*
	Everest
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Religious units ignore Movement penalties on Hills and receive +1 additional spread charge for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_EVEREST_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_EVEREST';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EVEREST_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EVEREST'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EVEREST')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect
	DELETE FROM GameModifiers
	WHERE ModifierId = 'EVEREST_ADJACENT_UNITS_GRANT_ABILITY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EVEREST_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EVEREST'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,									OwnerRequirementSetId,					SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'REQSET_TM_MAP_HAS_FEATURE_EVEREST',	'REQSET_TM_PLAYER_HAS_FEATURE_EVEREST'	),
		('MODIFIER_TM_FEATURE_EVEREST_SPREAD',					'MODIFIER_PLAYER_UNITS_ADJUST_SPREAD_CHARGES',	NULL,									'REQSET_TM_UNIT_IS_RELIGIOUS'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value									)
VALUES	('MODIFIER_TM_FEATURE_EVEREST_ATTACH_PLAYERS_SPREAD',	'ModifierId',	'MODIFIER_TM_FEATURE_EVEREST_SPREAD'	),
		('MODIFIER_TM_FEATURE_EVEREST_SPREAD',					'Amount',		1										);
