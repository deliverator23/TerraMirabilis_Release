/*
	Matterhorn
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Land Units trained in a City that owns this tile ignore Movement penalties on Hills, and receive +3 Combat Strength when fighting on them.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_MATTERHORN_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_MATTERHORN';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_MATTERHORN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_MATTERHORN';

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_MOVEMENT'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_COMBAT'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'MATTERHORN_ADJACENT_UNITS_GRANT_ABILITY'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_MOVEMENT',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_MATTERHORN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_COMBAT',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_MATTERHORN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN');

INSERT INTO Modifiers
		(ModifierId,												ModifierType,								SubjectRequirementSetId		)
VALUES	('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',					'MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'REQSET_TM_UNIT_IS_LAND'	),
		('MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_ATTACH',			'MODTYPE_TM_ATTACH_PLAYER_UNITS',			'REQSET_TM_UNIT_IS_LAND'	),
		('MODIFIER_TM_FEATURE_MATTERHORN_COMBAT',					'MODTYPE_TM_ADJUST_UNIT_STRENGTH',			'REQSET_TM_PLOT_IS_HILLS'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_MOVEMENT',	'ModifierId',	'MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_MATTERHORN_ATTACH_PLAYERS_COMBAT',	'ModifierId',	'MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_ATTACH'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_MATTERHORN');

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value									)
VALUES	('MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_ATTACH',			'ModifierId',	'MODIFIER_TM_FEATURE_MATTERHORN_COMBAT'	),
		('MODIFIER_TM_FEATURE_MATTERHORN_COMBAT',					'Amount',		3										),
		('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',					'Ignore',		1										),
		('MODIFIER_TM_FEATURE_MATTERHORN_MOVEMENT',					'Type',			'HILLS'									);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text													)
VALUES	('MODIFIER_TM_FEATURE_MATTERHORN_COMBAT',	'Preview',	'LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION'	);
