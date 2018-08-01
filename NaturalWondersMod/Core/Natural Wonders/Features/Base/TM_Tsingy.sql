/*
	Tsingy
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Theater districts trigger a culture bomb and receive double adjacency bonuses if their City has a National Park.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_TSINGY_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_TSINGY';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_TSINGY_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_TSINGY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_BOMB'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_TSINGY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_ADJACENCY'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_TSINGY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_BOMB',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_TSINGY'	),
		('MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_ADJACENCY',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_TSINGY'	),
		('MODIFIER_TM_FEATURE_TSINGY_BOMB',							'MODTYPE_TM_CULTURE_BOMB',			NULL									),
		('MODIFIER_TM_FEATURE_TSINGY_ADJACENCY',					'MODTYPE_TM_DISTRICT_MIRROR_YIELD',	'REQSET_TM_CITY_HAS_PARK'				);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value									)
VALUES	('MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_BOMB',		'ModifierId',		'MODIFIER_TM_FEATURE_TSINGY_BOMB'		),
		('MODIFIER_TM_FEATURE_TSINGY_ATTACH_PLAYERS_ADJACENCY',	'ModifierId',		'MODIFIER_TM_FEATURE_TSINGY_ADJACENCY'	),
		('MODIFIER_TM_FEATURE_TSINGY_BOMB',						'DistrictType',		'DISTRICT_THEATER'						),
		('MODIFIER_TM_FEATURE_TSINGY_ADJACENCY',				'DistrictType',		'DISTRICT_THEATER'						),
		('MODIFIER_TM_FEATURE_TSINGY_ADJACENCY',				'YieldToMirror',	'YIELD_CULTURE'							),
		('MODIFIER_TM_FEATURE_TSINGY_ADJACENCY',				'YieldToGrant',		'YIELD_CULTURE'							);
