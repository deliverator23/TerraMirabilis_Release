/*
	Chocolate Hills
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns at least one of these tiles exerts +25% Tourism toward other Civilizations with whom they have a Trade Route.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_CHOCOLATEHILLS';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_CHOCOLATEHILLS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_CHOCOLATEHILLS')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,											OwnerRequirementSetId,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'REQSET_TM_MAP_HAS_FEATURE_CHOCOLATEHILLS',		'REQSET_TM_PLAYER_HAS_FEATURE_CHOCOLATEHILLS'	),
		('MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_TRADE_TOURISM',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_TOURISM_MODIFIER',	NULL,											NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_TRADE_TOURISM'	),
		('MODIFIER_TM_FEATURE_CHOCOLATE_HILLS_TRADE_TOURISM',	'Amount',		25													);
