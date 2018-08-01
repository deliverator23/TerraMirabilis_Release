/*
	Wulingyuan
	Credits: ChimpanG, Deliverator

	Required KhmerIndonesia DLC
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Amphitheaters receive +1 Slot for Great Works of Writing and Great Works of Writing yield +1 Culture for any Civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_WULINGYUAN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_WULINGYUAN'
	AND EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_SLOT'
	WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD'
	WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_SLOT',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_WULINGYUAN'
WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_WULINGYUAN'
WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER');
		
INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_WULINGYUAN_GW_SLOT',		'MODTYPE_TM_BUILDING_GW_SLOT',		NULL					),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',		'MODTYPE_TM_CITY_GW_YIELD',			NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments	
		(ModifierId,											Name,					Value	)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_SLOT',	'ModifierId',			'MODIFIER_TM_FEATURE_WULINGYUAN_GW_SLOT'
WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER');

INSERT INTO ModifierArguments	
		(ModifierId,											Name,					Value	)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD',	'ModifierId',			'MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD'
WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER');
		
INSERT INTO ModifierArguments	
		(ModifierId,											Name,					Value										)
VALUES	('MODIFIER_TM_FEATURE_WULINGYUAN_GW_SLOT',				'BuildingType',			'BUILDING_AMPHITHEATER'						),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_SLOT',				'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'						),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_SLOT',				'Amount',				1											),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',				'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'					),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',				'YieldType',			'YIELD_CULTURE'								),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',				'YieldChange',			1											);
