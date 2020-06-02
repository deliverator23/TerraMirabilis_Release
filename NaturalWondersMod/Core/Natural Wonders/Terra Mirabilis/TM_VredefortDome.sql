/*
	Vredefort Dome
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Farms provide +1 [ICON_FOOD] Food when adjacent to another Farm for any Civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_VREDEFORT_DOME'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_VREDEFORT_DOME_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,								OwnerRequirementSetId,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_VREDEFORT_DOME_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'REQSET_TM_MAP_HAS_FEATURE_VREDEFORT_DOME',	'REQSET_TM_PLAYER_HAS_FEATURE_VREDEFORT_DOME'	),
		('MODIFIER_TM_FEATURE_VREDEFORT_DOME_FARM_FOOD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		NULL,										'REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_VREDEFORT_DOME_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_VREDEFORT_DOME_FARM_FOOD'	),
		('MODIFIER_TM_FEATURE_VREDEFORT_DOME_FARM_FOOD',		'YieldType',	'YIELD_FOOD'									),
		('MODIFIER_TM_FEATURE_VREDEFORT_DOME_FARM_FOOD',		'Amount',		1												);
