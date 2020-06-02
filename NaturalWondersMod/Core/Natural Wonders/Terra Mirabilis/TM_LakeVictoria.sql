/*
	Lake Victoria
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns at least one of these tiles receives +15% Growth in Cities not on their original Capital's continent.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_LAKE_VICTORIA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_LAKE_VICTORIA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,									OwnerRequirementSetId,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_LAKE_VICTORIA_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'REQSET_TM_MAP_HAS_FEATURE_LAKE_VICTORIA',	'REQSET_TM_PLAYER_HAS_FEATURE_LAKE_VICTORIA'	),
		('MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_GROWTH',	NULL,										'CITY_NOT_OWNER_CAPITAL_CONTINENT_REQUIREMENTS'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_LAKE_VICTORIA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY'	),
		('MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY',		'Amount',		15													);
