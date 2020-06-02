/*
	Mato Tipila
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Naturalists are 50% cheaper to purchase for any Civilization that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_DEVILSTOWER';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_DEVILSTOWER_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_DEVILSTOWER'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_DEVILSTOWER_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_DEVILSTOWER')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,										OwnerRequirementSetId,						SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_DEVILSTOWER_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'REQSET_TM_MAP_HAS_FEATURE_DEVILSTOWER',	'REQSET_TM_PLAYER_HAS_FEATURE_DEVILSTOWER'	),
		('MODIFIER_TM_FEATURE_DEVILSTOWER_NATURLIST_DISCOUNT',	'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PURCHASE_COST',	NULL,										NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_DEVILSTOWER_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_DEVILSTOWER_NATURLIST_DISCOUNT'),
		('MODIFIER_TM_FEATURE_DEVILSTOWER_NATURLIST_DISCOUNT',	'UnitType',		'UNIT_NATURALIST'									),
		('MODIFIER_TM_FEATURE_DEVILSTOWER_NATURLIST_DISCOUNT',	'Amount',		50													);
