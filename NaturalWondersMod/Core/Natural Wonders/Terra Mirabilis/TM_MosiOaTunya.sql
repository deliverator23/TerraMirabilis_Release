/*
	Mosi Oa Tunya
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Improvements on bonus resources adjacent to a river yield +1 Food for the Civilization that owns this tile
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_MOSI_OA_TUNYA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,							OwnerRequirementSetId,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_TM_MAP_HAS_FEATURE_MOSI_OA_TUNYA',	'REQSET_TM_PLAYER_HAS_FEATURE_MOSI_OA_TUNYA'	),
		('MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_RIVER_BONUS',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	NULL,										'REQSET_TM_PLOT_HAS_IMPROVED_BONUS'				);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_RIVER_BONUS'	),
		('MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_RIVER_BONUS',		'YieldType',	'YIELD_FOOD'									),
		('MODIFIER_TM_FEATURE_MOSI_OA_TUNYA_RIVER_BONUS',		'Amount',		1												);
