/*
	Dallol
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Grants a free copy of the Sylvite luxury resource (not tradeable), which provides +6 Amenities, to any player that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_DALLOL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_DALLOL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_DALLOL_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_DALLOL_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_DALLOL'	),
		('MODIFIER_TM_FEATURE_DALLOL_IMPORT_RESOURCE',	'MODTYPE_TM_IMPORT_RESOURCE',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_DALLOL_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_DALLOL_IMPORT_RESOURCE'	),
		('MODIFIER_TM_FEATURE_DALLOL_IMPORT_RESOURCE',	'ResourceType',	'RESOURCE_TM_SYLVITE'							),
		('MODIFIER_TM_FEATURE_DALLOL_IMPORT_RESOURCE',	'Amount',		1												);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type, 						Kind			)
VALUES	('RESOURCE_TM_SYLVITE', 	'KIND_RESOURCE'	);

-----------------------------------------------
-- Resources
-----------------------------------------------

INSERT INTO Resources
		(ResourceType, 			Name, 							ResourceClassType, 			Happiness,	Frequency	)
VALUES	('RESOURCE_TM_SYLVITE',	'LOC_RESOURCE_TM_SYLVITE_NAME',	'RESOURCECLASS_LUXURY', 	6, 			0			);