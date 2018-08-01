/*
	Krakatoa XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns this tile receives a free Eureka upon earning a Great Scientist.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId LIKE 'MODIFIER_TM_FEATURE_KRAKATOA_%';

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_KRAKATOA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

DELETE FROM Modifiers
WHERE ModifierId LIKE 'MODIFIER_TM_FEATURE_KRAKATOA_%';

INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_KRAKATOA'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'MODTYPE_TM_GP_BOOST',				NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

DELETE FROM ModifierArguments
WHERE ModifierId LIKE 'MODIFIER_TM_FEATURE_KRAKATOA_%';

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value											)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_PLAYERS',		'ModifierId',		'MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'GreatPersonClass',	'GREAT_PERSON_CLASS_ADMIRAL'					),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'OtherPlayers',		0												),
		('MODIFIER_TM_FEATURE_KRAKATOA_SCIENTIST_BOOST',	'TechBoost',		1												);
