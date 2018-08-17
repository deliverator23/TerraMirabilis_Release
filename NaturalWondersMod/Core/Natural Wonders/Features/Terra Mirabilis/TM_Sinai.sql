/*
	Mount Sinai
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Holy Sites provide +1 Great Person Points toward Great Prophets for the player that owns this tile. Religious units trained in this City receive +10 Theological Combat Strength.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SINAI_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_SINAI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SINAI_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SINAI_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_SINAI_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_SINAI'	),
		('MODIFIER_TM_FEATURE_SINAI_ATTACH_CITIES',		'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_SINAI'		),
		('MODIFIER_TM_FEATURE_SINAI_HOLY_SITE_GP',		'MODTYPE_TM_ADJUST_DISTRICTS_GP',	'REQSET_TM_DISTRICT_IS_HOLY_SITE'		),
		('MODIFIER_TM_FEATURE_SINAI_ATTACH_UNITS',		'MODTYPE_TM_ATTACH_CITY_UNITS',		'REQSET_TM_UNIT_IS_RELIGIOUS'			),
		('MODIFIER_TM_FEATURE_SINAI_COMBAT_STRENGTH',	'MODTYPE_TM_ADJUST_UNIT_STRENGTH',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value										)
VALUES	('MODIFIER_TM_FEATURE_SINAI_ATTACH_PLAYERS',	'ModifierId',			'MODIFIER_TM_FEATURE_SINAI_HOLY_SITE_GP'	),
		('MODIFIER_TM_FEATURE_SINAI_HOLY_SITE_GP',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_PROPHET'				),
		('MODIFIER_TM_FEATURE_SINAI_HOLY_SITE_GP',		'Amount',				1											),
		('MODIFIER_TM_FEATURE_SINAI_ATTACH_CITIES',		'ModifierId',			'MODIFIER_TM_FEATURE_SINAI_ATTACH_UNITS'	),
		('MODIFIER_TM_FEATURE_SINAI_ATTACH_UNITS',		'ModifierId',			'MODIFIER_TM_FEATURE_SINAI_COMBAT_STRENGTH'	),
		('MODIFIER_TM_FEATURE_SINAI_COMBAT_STRENGTH',	'Amount',				10											);
				