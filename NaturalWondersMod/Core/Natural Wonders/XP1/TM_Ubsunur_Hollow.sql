/*
	Ubsunur Hollow
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns this tile receives a free Inspiration upon earning a Great General.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_UBSUNUR_HOLLOW';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_UBSUNUR_HOLLOW'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_UBSUNUR_HOLLOW')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_ATTACH_PLAYERS',
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_UBSUNUR_HOLLOW',
		'REQSET_TM_PLAYER_HAS_FEATURE_UBSUNUR_HOLLOW'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_UBSUNUR_HOLLOW');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,			SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_GENERAL_BOOST',	'MODTYPE_TM_GP_BOOST',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_ATTACH_PLAYERS',
		'ModifierId',
		'MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_GENERAL_BOOST'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_UBSUNUR_HOLLOW');

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value							)
VALUES	('MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_GENERAL_BOOST',	'GreatPersonClass',	'GREAT_PERSON_CLASS_GENERAL'	),
		('MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_GENERAL_BOOST',	'OtherPlayers',		0								),
		('MODIFIER_TM_FEATURE_UBSUNUR_HOLLOW_GENERAL_BOOST',	'TechBoost',		0								);
				