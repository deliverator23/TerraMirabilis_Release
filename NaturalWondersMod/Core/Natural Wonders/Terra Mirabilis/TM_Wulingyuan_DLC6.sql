/*
	Wulingyuan
	Authors: ChimpanG, Deliverator

	Requires KhmerIndonesia DLC
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Great Works of Writing yield +2 Culture and +50% Tourism for any Civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_WULINGYUAN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_WULINGYUAN'
	AND EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_TOURISM'
	WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD'
	WHERE EXISTS (SELECT * FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_KHMER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_TOURISM',
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_WULINGYUAN',
		'REQSET_TM_PLAYER_HAS_FEATURE_WULINGYUAN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WULINGYUAN');

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD',
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_WULINGYUAN',
		'REQSET_TM_PLAYER_HAS_FEATURE_WULINGYUAN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WULINGYUAN');
		
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_WULINGYUAN_GW_TOURISM',	'MODIFIER_PLAYER_CITIES_ADJUST_TOURISM',			NULL					),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_TOURISM',
		'ModifierId',
		'MODIFIER_TM_FEATURE_WULINGYUAN_GW_TOURISM'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WULINGYUAN');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_WULINGYUAN_ATTACH_PLAYERS_YIELD',
		'ModifierId',
		'MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WULINGYUAN');
		
INSERT INTO ModifierArguments	
		(ModifierId,									Name,					Value						)
VALUES	('MODIFIER_TM_FEATURE_WULINGYUAN_GW_TOURISM',	'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'	),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_TOURISM',	'ScalingFactor',		150							), -- This is +50% Tourism
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',		'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'	),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',		'YieldType',			'YIELD_CULTURE'				),
		('MODIFIER_TM_FEATURE_WULINGYUAN_GW_YIELD',		'YieldChange',			2							);
