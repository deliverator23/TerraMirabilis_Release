/*
	Barringer Crater
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Receive +20% Production toward Space Race projects in a City that owns this tile
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_BARRINGER_CRATER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_BARRINGER_CRATER_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,													OwnerRequirementSetId,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_BARRINGER_CRATER_ATTACH_CITIES',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',							'REQSET_TM_MAP_HAS_FEATURE_BARRINGER_CRATER',	'REQSET_TM_CITY_HAS_FEATURE_BARRINGER_CRATER'	),
		('MODIFIER_TM_FEATURE_BARRINGER_CRATER_SPACE_PROJECT',	'MODIFIER_PLAYER_CITIES_ADJUST_SPACE_RACE_PROJECTS_PRODUCTION',	NULL,											NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_BARRINGER_CRATER_ATTACH_CITIES',	'ModifierId',	'MODIFIER_TM_FEATURE_BARRINGER_CRATER_SPACE_PROJECT'	),
		('MODIFIER_TM_FEATURE_BARRINGER_CRATER_SPACE_PROJECT',	'Amount',		-20														);
