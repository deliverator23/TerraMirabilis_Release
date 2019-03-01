/*
	Sahara El Beyda
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Cities are immune to damage from Dust Storms for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_WHITEDESERT';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_WHITEDESERT'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_HABOOB'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WHITEDESERT')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_GRADIENT'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WHITEDESERT')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,													ModifierType,						SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_HABOOB',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_WHITEDESERT'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_HABOOB',			'MODTYPE_TM_PLAYER_EVENT_IMMUNITY',	NULL										),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_GRADIENT',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_WHITEDESERT'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_GRADIENT',			'MODTYPE_TM_PLAYER_EVENT_IMMUNITY',	NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value												)
VALUES	('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_HABOOB',	'ModifierId',		'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_HABOOB'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_HABOOB',			'RandomEventType',	'RANDOM_EVENT_DUST_STORM_HABOOB'					),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_ATTACH_IMMUNE_GRADIENT',	'ModifierId',		'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_HABOOB'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDA_IMMUNE_GRADIENT',			'RandomEventType',	'RANDOM_EVENT_DUST_STORM_GRADIENT'					);