/*
	Namib
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Foreign Trade routes that pass through your cities provide +1 Culture for any Civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_NAMIB_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_NAMIB'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_NAMIB_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,																		OwnerRequirementSetId,				SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_NAMIB_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',												'REQSET_TM_MAP_HAS_FEATURE_NAMIB',	'REQSET_TM_PLAYER_HAS_FEATURE_NAMIB'	),
		('MODIFIER_TM_FEATURE_NAMIB_FOREIGN_TRADE',		'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH',	NULL,								NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value										)
VALUES	('MODIFIER_TM_FEATURE_NAMIB_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_NAMIB_FOREIGN_TRADE'	),
		('MODIFIER_TM_FEATURE_NAMIB_FOREIGN_TRADE',		'YieldType',	'YIELD_CULTURE'								),
		('MODIFIER_TM_FEATURE_NAMIB_FOREIGN_TRADE',		'Amount',		1											);
