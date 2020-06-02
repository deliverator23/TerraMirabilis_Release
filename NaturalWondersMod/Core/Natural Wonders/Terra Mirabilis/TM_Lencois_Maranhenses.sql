/*
	Lencois Maranhenses
	Authors: ChimpanG, Deliverator
	Special Thanks: p0kiehl
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Floodplains yield +1 Culture for any civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_LENCOIS_MARANHENSES_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_LENCOIS_MARANHENSES'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,							OwnerRequirementSetId,								SubjectRequirementSetId								)
VALUES	('MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_TM_MAP_HAS_FEATURE_LENCOIS_MARANHENSES',	'REQSET_TM_PLAYER_HAS_FEATURE_LENCOIS_MARANHENSES'	),
		('MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	NULL,												'REQSET_TM_PLOT_HAS_FLOODPLAINS'					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE'	),
		('MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',	'YieldType',	'YIELD_CULTURE'											),
		('MODIFIER_TM_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',	'Amount',		1														);