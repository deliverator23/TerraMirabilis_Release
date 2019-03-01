/*
	Salar de Uyuni
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Grants a free copy of the Lithium luxury resource (not tradeable), which provides +6 Amenities, to any player that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_SALAR_DE_UYUNI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_SALAR_DE_UYUNI'	),
		('MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_IMPORT_RESOURCE',	'MODTYPE_TM_IMPORT_RESOURCE',		NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_IMPORT_RESOURCE'	),
		('MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_IMPORT_RESOURCE',	'ResourceType',	'RESOURCE_TM_LITHIUM'									),
		('MODIFIER_TM_FEATURE_SALAR_DE_UYUNI_IMPORT_RESOURCE',	'Amount',		1														);