/*
	Old Faithful
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Campus districts trigger a culture bomb and receive double adjacency bonuses if their City has a National Park.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_OLD_FAITHFUL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_BOMB'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_OLD_FAITHFUL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_ADJACENCY'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_OLD_FAITHFUL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,													ModifierType,									OwnerRequirementSetId,						SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_BOMB',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'REQSET_TM_MAP_HAS_FEATURE_OLD_FAITHFUL',	'REQSET_TM_PLAYER_HAS_FEATURE_OLD_FAITHFUL'	),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_ADJACENCY',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'REQSET_TM_MAP_HAS_FEATURE_OLD_FAITHFUL',	'REQSET_TM_PLAYER_HAS_FEATURE_OLD_FAITHFUL'	),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_BOMB',						'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER',		NULL,										NULL										),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ADJACENCY',					'MODTYPE_TM_DISTRICT_MIRROR_YIELD',				NULL,										'CITY_HAS_NATIONAL_PARK_REQUREMENTS'		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value											)
VALUES	('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_BOMB',		'ModifierId',		'MODIFIER_TM_FEATURE_OLD_FAITHFUL_BOMB'			),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ATTACH_PLAYERS_ADJACENCY',	'ModifierId',		'MODIFIER_TM_FEATURE_OLD_FAITHFUL_ADJACENCY'	),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_BOMB',						'DistrictType',		'DISTRICT_CAMPUS'								),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ADJACENCY',					'DistrictType',		'DISTRICT_CAMPUS'								),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ADJACENCY',					'YieldToMirror',	'YIELD_SCIENCE'									),
		('MODIFIER_TM_FEATURE_OLD_FAITHFUL_ADJACENCY',					'YieldToGrant',		'YIELD_SCIENCE'									);
