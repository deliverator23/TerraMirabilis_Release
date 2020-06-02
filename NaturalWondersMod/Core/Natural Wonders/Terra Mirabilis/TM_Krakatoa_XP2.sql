/*
	Krakatoa
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns this tile receives a free Eureka upon earning a Great Scientist.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_KRAKATOA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,							OwnerRequirementSetId,					SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_TM_MAP_HAS_FEATURE_KRAKATOA',	'REQSET_TM_PLAYER_HAS_FEATURE_KRAKATOA'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'MODTYPE_TM_GP_BOOST',					NULL,									NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value											)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS',		'ModifierId',		'MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'GreatPersonClass',	'GREAT_PERSON_CLASS_ADMIRAL'					),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'OtherPlayers',		0												),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'TechBoost',		1												);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,									Kind				)
VALUES	('RANDOM_EVENT_KRAKATOA_GENTLE',		'KIND_RANDOM_EVENT'	),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'KIND_RANDOM_EVENT'	),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'KIND_RANDOM_EVENT'	);

-----------------------------------------------
-- Features_XP2
-----------------------------------------------

INSERT INTO Features_XP2
		(FeatureType,			Volcano	)
VALUES	('FEATURE_KRAKATOA',	1		);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------

DELETE FROM NamedVolcanoes WHERE NamedVolcanoType = 'NAMED_VOLCANO_KRAKATOA';

DELETE FROM Types WHERE Type = 'NAMED_VOLCANO_KRAKATOA';