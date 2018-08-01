/*
	Lake Victoria
	Credits: ChimpanG, Deliverator
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
		(ModifierId,											ModifierType,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_LAKE_VICTORIA_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_LAKE_VICTORIA'	),
		('MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY',		'MODTYPE_TM_CITY_GROWTH',			'REQSET_TM_CITY_FOREIGN_CONTINENT'				);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_LAKE_VICTORIA_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY'	),
		('MODIFIER_TM_FEATURE_LAKE_VICTORIA_FOREIGN_CITY',		'Amount',		15													);
