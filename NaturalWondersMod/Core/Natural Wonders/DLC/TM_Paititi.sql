/*
	Paititi
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Receive +100% Gold in any city that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_PAITITI_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_PAITITI';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_PAITITI_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_PAITITI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PAITITI_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PAITITI')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect
	DELETE FROM GameModifiers
	WHERE ModifierId IN ('PAITITI_GOLD_FROM_INTERNATIONAL_TRADE_ROUTES')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_PAITITI_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_PAITITI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_PAITITI_ATTACH_CITIES',
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_PAITITI',	
		'REQSET_TM_CITY_HAS_FEATURE_PAITITI'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PAITITI');

INSERT INTO Modifiers
		(ModifierId,								ModifierType,										SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_PAITITI_CITY_GOLD',	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_PAITITI_ATTACH_CITIES',
		'ModifierId',
		'MODIFIER_TM_FEATURE_PAITITI_CITY_GOLD'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PAITITI');

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value			)
VALUES	('MODIFIER_TM_FEATURE_PAITITI_CITY_GOLD',	'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_TM_FEATURE_PAITITI_CITY_GOLD',	'Amount',		100				);
