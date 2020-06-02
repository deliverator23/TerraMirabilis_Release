/*
	Piopiotahi
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Amenities provided by regional Buildings extend 3 tiles further for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_PIOPIOTAHI';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_PIOPIOTAHI_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_PIOPIOTAHI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PIOPIOTAHI_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PIOPIOTAHI')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,												OwnerRequirementSetId,					SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_PIOPIOTAHI_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'REQSET_TM_MAP_HAS_FEATURE_PIOPIOTAHI',	'REQSET_TM_PLAYER_HAS_FEATURE_PIOPIOTAHI'	),
		('MODIFIER_TM_FEATURE_PIOPIOTAHI_REGIONAL_RANGE',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_REGIONAL_RANGE',	NULL,									'REQSET_TM_DISTRICT_IS_ENTERTAINMENT'		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_PIOPIOTAHI_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_PIOPIOTAHI_REGIONAL_RANGE'	),
		('MODIFIER_TM_FEATURE_PIOPIOTAHI_REGIONAL_RANGE',	'Amount',		3												);
