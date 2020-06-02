/*
	Zhangye Danxia
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Commercial Hubs and Campus districts in a City that owns at least one of these tiles receive +2 Great Person Points of their respective type.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_ZHANGYE_DANXIA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_ZHANGYE_DANXIA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_CAMPUS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_COMMERCIAL'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'GREAT_GENERAL_ZHANGYE'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'GREAT_MERCHANT_ZHANGYE'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_CAMPUS',
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_ZHANGYE_DANXIA',
		'REQSET_TM_CITY_HAS_FEATURE_ZHANGYE_DANXIA'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA');
	
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_COMMERCIAL',
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_ZHANGYE_DANXIA',	
		'REQSET_TM_CITY_HAS_FEATURE_ZHANGYE_DANXIA'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA');
		
INSERT INTO Modifiers
		(ModifierId,											ModifierType,													SubjectRequirementSetId			)
VALUES	('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_CAMPUS',		'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',	'DISTRICT_IS_CAMPUS'			),
		('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_COMMERCIAL',	'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',	'DISTRICT_IS_COMMERCIAL_HUB'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_CAMPUS',
		'ModifierId',
		'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_CAMPUS'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_ATTACH_CITIES_COMMERCIAL',
		'ModifierId',
		'MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_COMMERCIAL'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_ZHANGYE_DANXIA');
		
INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value							)
VALUES	('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_CAMPUS',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_SCIENTIST'	),
		('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_CAMPUS',		'Amount',				2								),
		('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_COMMERCIAL',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'	),
		('MODIFIER_TM_FEATURE_ZHANGYE_DANXIA_GP_COMMERCIAL',	'Amount',				2								);
		