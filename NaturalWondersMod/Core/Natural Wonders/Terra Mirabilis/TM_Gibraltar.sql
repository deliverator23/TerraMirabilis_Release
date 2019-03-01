/*
	Rock of Gibraltar
	Credits: ChimpanG, Deliverator
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
		(ModifierId,												ModifierType,							SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_HARBOR',		'MODTYPE_TM_ATTACH_ALL_CITIES',			'REQSET_TM_CITY_HAS_FEATURE_GIBRALTAR'	),
		('MODIFIER_TM_FEATURE_GIBRALTAR_ATTACH_CITIES_ENCAMPMENT',	'MODTYPE_TM_ATTACH_ALL_CITIES',			'REQSET_TM_CITY_HAS_FEATURE_GIBRALTAR'	),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_HARBOR',					'MODTYPE_TM_ADJUST_CITY_DISTRICTS_GP',	'REQSET_TM_DISTRICT_IS_HARBOR'			),
		('MODIFIER_TM_FEATURE_GIBRALTAR_GP_ENCAMPMENT',				'MODTYPE_TM_ADJUST_CITY_DISTRICTS_GP',	'REQSET_TM_DISTRICT_IS_ENCAMPMENT'		);

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
		