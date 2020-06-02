/*
	Galapagos
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Grants a free copy of the Tortoise luxury resource (not tradeable), which provides +6 Amenities, to any player that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_GALAPAGOS';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GALAPAGOS_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GALAPAGOS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GALAPAGOS_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GALAPAGOS')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,					SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_GALAPAGOS_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'REQSET_TM_MAP_HAS_FEATURE_GALAPAGOS',	'REQSET_TM_PLAYER_HAS_FEATURE_GALAPAGOS'	),
		('MODIFIER_TM_FEATURE_GALAPAGOS_IMPORT_RESOURCE',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT',		NULL,									NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_GALAPAGOS_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_GALAPAGOS_IMPORT_RESOURCE'	),
		('MODIFIER_TM_FEATURE_GALAPAGOS_IMPORT_RESOURCE',	'ResourceType',	'RESOURCE_TM_TORTOISE'							),
		('MODIFIER_TM_FEATURE_GALAPAGOS_IMPORT_RESOURCE',	'Amount',		1												);