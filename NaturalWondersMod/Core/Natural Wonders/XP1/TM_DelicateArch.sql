/*
	Delicate Arch
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Plots are 20% cheaper to purchase for any Civilization that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_DELICATE_ARCH';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_DELICATE_ARCH_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_DELICATE_ARCH'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_DELICATE_ARCH_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_DELICATE_ARCH')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_DELICATE_ARCH_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_DELICATE_ARCH'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_DELICATE_ARCH');

INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_DELICATE_ARCH_PLOT_PURCHASE',	'MODTYPE_TM_PLAYER_PLOT_PURCHASE',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_DELICATE_ARCH_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_DELICATE_ARCH_PLOT_PURCHASE'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_DELICATE_ARCH');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value	)
VALUES	('MODIFIER_TM_FEATURE_DELICATE_ARCH_PLOT_PURCHASE',		'Amount',		-20		);
