/*
	Bioluminescent Bay
	Authors: ChimpanG, Deliverator
	Special Thanks: p0kiehl
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Fishing Boats yield +1 Science for any Civilization that owns this tile.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_BIOLUMINESCENT_BAY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,								OwnerRequirementSetId,							SubjectRequirementSetId								)
VALUES	('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'REQSET_TM_MAP_HAS_FEATURE_BIOLUMINESCENT_BAY',	'REQSET_TM_PLAYER_HAS_FEATURE_BIOLUMINESCENT_BAY'	),
		('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		NULL,											'PLOT_HAS_FISHINGBOATS_REQUIREMENTS'				);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE'	),
		('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',		'YieldType',	'YIELD_SCIENCE'											),
		('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',		'Amount',		1														);