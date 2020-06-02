/*
	Rock of Gibraltar
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Harbors and Encampments in a City that owns at least one of these tiles receive +2 Great Person Points of their respective type.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GIBRALTAR_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GIBRALTAR'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_HARBOR'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_ENCAMPMENT'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,													OwnerRequirementSetId,					SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_HARBOR',		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',							'REQSET_TM_MAP_HAS_FEATURE_GIBRALTAR',	'REQSET_TM_CITY_HAS_FEATURE_GIBRALTAR'	),
		('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_ENCAMPMENT',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',							'REQSET_TM_MAP_HAS_FEATURE_GIBRALTAR',	'REQSET_TM_CITY_HAS_FEATURE_GIBRALTAR'	),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_HARBOR',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',	NULL,									'DISTRICT_IS_HARBOR'					),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_ENCAMPMENT',				'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',	NULL,									'DISTRICT_IS_ENCAMPMENT'				);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,					Value											)
VALUES	('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_HARBOR',		'ModifierId',			'MODIFIER_TM_FEATURE_GIBRALTAR_GP_HARBOR'		),
		('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_ENCAMPMENT',	'ModifierId',			'MODIFIER_TM_FEATURE_GIBRALTAR_GP_ENCAMPMENT'	),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_HARBOR',					'GreatPersonClassType',	'GREAT_PERSON_CLASS_ADMIRAL'					),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_HARBOR',					'Amount',				2												),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_ENCAMPMENT',				'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'					),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_ENCAMPMENT',				'Amount',				2												);
		