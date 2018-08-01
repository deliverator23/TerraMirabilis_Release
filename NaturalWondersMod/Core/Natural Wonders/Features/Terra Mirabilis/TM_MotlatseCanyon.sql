/*
	Motlatse Canyon
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Specialty Districts receive +1 of their respective yield on Breathtaking plots for any Civilization that owns at least one of these tiles
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_MOTLATSE_CANYON'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_HOLY_SITE'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);		
			
	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_CAMPUS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);	
	
	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_THEATER'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);
	
	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_COMMERCIAL_HUB'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);	
	
	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_INDUSTRIAL_ZONE'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);	

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,													ModifierType,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_HOLY_SITE',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_CAMPUS',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_THEATER',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_COMMERCIAL_HUB',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_INDUSTRIAL_ZONE',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'MODTYPE_TM_DISTRICTS_APPEAL_YIELD',	NULL											),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'MODTYPE_TM_DISTRICTS_APPEAL_YIELD',	NULL											),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'MODTYPE_TM_DISTRICTS_APPEAL_YIELD',	NULL											),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'MODTYPE_TM_DISTRICTS_APPEAL_YIELD',	NULL											),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'MODTYPE_TM_DISTRICTS_APPEAL_YIELD',	NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value															)
VALUES	('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_HOLY_SITE',		'ModifierId',		'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE'			),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_CAMPUS',			'ModifierId',		'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS'				),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_THEATER',			'ModifierId',		'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER'			),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_COMMERCIAL_HUB',	'ModifierId',		'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB'		),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_INDUSTRIAL_ZONE',	'ModifierId',		'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'DistrictType',		'DISTRICT_HOLY_SITE'											),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'RequiredAppeal',	4																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'YieldType',		'YIELD_FAITH'													),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'YieldChange',		1																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_HOLY_SITE',		'Description',		'LOC_ADJ_MOTLATSE_FAITH_DESCRIPTION'							),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'DistrictType',		'DISTRICT_CAMPUS'												),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'RequiredAppeal',	4																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'YieldType',		'YIELD_SCIENCE'													),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'YieldChange',		1																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_CAMPUS',			'Description',		'LOC_ADJ_MOTLATSE_SCIENCE_DESCRIPTION'							),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'DistrictType',		'DISTRICT_THEATER'												),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'RequiredAppeal',	4																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'YieldType',		'YIELD_CULTURE'													),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'YieldChange',		1																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_THEATER',			'Description',		'LOC_ADJ_MOTLATSE_CULTURE_DESCRIPTION'							),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'										),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'RequiredAppeal',	4																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'YieldType',		'YIELD_GOLD'													),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'YieldChange',		1																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_COMMERCIAL_HUB',	'Description',		'LOC_ADJ_MOTLATSE_GOLD_DESCRIPTION'								),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'										),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'RequiredAppeal',	4																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'YieldType',		'YIELD_PRODUCTION'												),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'YieldChange',		1																),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_APPEAL_INDUSTRIAL_ZONE',	'Description',		'LOC_ADJ_MOTLATSE_PRODUCTION_DESCRIPTION'						);
