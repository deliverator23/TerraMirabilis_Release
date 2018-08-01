/*
	Grand Mesa
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Units trained in the City that owns this tile ignore [ICON_Movement] Movement penalties in Forest or Jungle.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GRAND_MESA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GRAND_MESA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GRAND_MESA_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_GRAND_MESA_ATTACH_CITIES',	'MODTYPE_TM_ATTACH_ALL_CITIES',				'REQSET_TM_CITY_HAS_FEATURE_GRAND_MESA'	),
		('MODIFIER_TM_FEATURE_GRAND_MESA_IGNORE_FOREST',	'MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_GRAND_MESA_ATTACH_CITIES',	'ModifierId',	'MODIFIER_TM_FEATURE_GRAND_MESA_IGNORE_FOREST'	),
		('MODIFIER_TM_FEATURE_GRAND_MESA_IGNORE_FOREST',	'Type',			'FOREST'										),
		('MODIFIER_TM_FEATURE_GRAND_MESA_IGNORE_FOREST',	'Ignore',		1												);
