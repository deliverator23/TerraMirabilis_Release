/*
	Gobustan
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Improved sources of Oil accumulate 2 more resource per turn for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_GOBUSTAN';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GOBUSTAN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GOBUSTAN'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GOBUSTAN_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GOBUSTAN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_GOBUSTAN_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',					'REQSET_TM_PLAYER_HAS_FEATURE_GOBUSTAN'	),
		('MODIFIER_TM_FEATURE_GOBUSTAN_ACCUMULATE_OIL',	'MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_GOBUSTAN_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_GOBUSTAN_ACCUMULATE_OIL'	),
		('MODIFIER_TM_FEATURE_GOBUSTAN_ACCUMULATE_OIL',	'ResourceType',	'RESOURCE_OIL'									),
		('MODIFIER_TM_FEATURE_GOBUSTAN_ACCUMULATE_OIL',	'Amount',		2												);
