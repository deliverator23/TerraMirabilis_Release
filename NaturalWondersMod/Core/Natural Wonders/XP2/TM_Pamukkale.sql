/*
	Pamukkale
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Regional buildings within Entertainment Complex or Waterpark districts provide +1 Amenity to cities within range for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_PAMUKKALE';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_PAMUKKALE_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_PAMUKKALE'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PAMUKKALE_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PAMUKKALE')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId IN ('PAMUKKALE_AMENITY', 'PAMUKKALE_AMENITY_ENTERTAINMENT_COMPLEX')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,							OwnerRequirementSetId,					SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_PAMUKKALE_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_TM_MAP_HAS_FEATURE_PAMUKKALE',	'REQSET_TM_PLAYER_HAS_FEATURE_PAMUKKALE'	),
		('MODIFIER_TM_FEATURE_PAMUKKALE_REGIONAL_AMENITIES',	'MODTYPE_TM_REGIONAL_AMENITIES',		NULL,									'REQSET_TM_DISTRICT_IS_ENTERTAINMENT'		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_PAMUKKALE_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_PAMUKKALE_REGIONAL_AMENITIES'	),
		('MODIFIER_TM_FEATURE_PAMUKKALE_REGIONAL_AMENITIES',	'Amount',		1													);
