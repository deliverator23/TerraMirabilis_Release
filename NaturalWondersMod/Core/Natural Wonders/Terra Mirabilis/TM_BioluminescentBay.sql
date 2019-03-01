/*
	Bioluminescent Bay
	Credits: ChimpanG, Deliverator

	Note: We've got to set this one up differently (via Improvements) to the rest because of the effect we require doesn't exist, so we're going a different route to achieve the same result.
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Fishing Boats provide +1 Gold on outgoing international Trade Routes from their cities for any Civilization that owns this tile.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_BIOLUMINESCENT_BAY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- ImprovementModifiers instead of TraitModifiers
	INSERT INTO ImprovementModifiers (ImprovementType, ModifierId)
	SELECT	'IMPROVEMENT_FISHING_BOATS', 'MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_OUTGOING_TRADE'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,							SubjectRequirementSetId								)
VALUES	('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_OUTGOING_TRADE',	'MODTYPE_TM_TRADE_ROUTE_INTERNATIONAL',	'REQSET_TM_PLAYER_HAS_FEATURE_BIOLUMINESCENT_BAY'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value			)
VALUES	('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_OUTGOING_TRADE',	'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_TM_FEATURE_BIOLUMINESCENT_BAY_OUTGOING_TRADE',	'Amount',		1				);
