/*
	Uluru
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Specialty Districts constructed on tundra or snow terrain yield +2 Food for any Civilization that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_EYJAFJALLAJOKULL';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EYJAFJALLAJOKULL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EYJAFJALLAJOKULL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_ATTACH_PLAYERS',
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_EYJAFJALLAJOKULL',
		'REQSET_TM_PLAYER_HAS_FEATURE_EYJAFJALLAJOKULL'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EYJAFJALLAJOKULL');
		
INSERT INTO Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_SNOW_FOOD',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	'REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_ATTACH_PLAYERS',
		'ModifierId',
		'MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_SNOW_FOOD'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_EYJAFJALLAJOKULL');
		
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value			)
VALUES	('MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_SNOW_FOOD',		'YieldType',	'YIELD_FOOD'	),
		('MODIFIER_TM_FEATURE_EYJAFJALLAJOKULL_SNOW_FOOD',		'Amount',		1				);
