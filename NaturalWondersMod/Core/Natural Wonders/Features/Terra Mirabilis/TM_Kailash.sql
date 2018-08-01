/*
	Kailash
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Receive +1 Culture for every foreign City that follows the Religion of the Civilization that owns this tile.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KAILASH_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KAILASH'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KAILASH_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_KAILASH_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_KAILASH'	),
		('MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES',	'MODTYPE_TM_PLAYER_BELIEF_YIELD',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value											)
VALUES	('MODIFIER_TM_FEATURE_KAILASH_ATTACH_PLAYERS',	'ModifierId',		'MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES'	),
		('MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES',	'BeliefYieldType',	'BELIEF_YIELD_PER_FOREIGN_CITY'					),
		('MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES',	'YieldType',		'YIELD_CULTURE'									),
		('MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES',	'Amount',			1												),
		('MODIFIER_TM_FEATURE_KAILASH_CULTURE_CITIES',	'PerXItems',		1												);
